"""
APK Patcher — Replace C2 backend URL with Google Apps Script endpoint.
Patches DEX string table, repackages APK, and signs with debug key.

Usage: python patch_apk.py <APPS_SCRIPT_URL>
"""
import sys, os, struct, hashlib, zipfile, shutil, subprocess, tempfile

# ── Configuration ──
APK_PATH      = r"c:\Users\shahb\OneDrive\Documents\TESTING !!!\ep_19.apk"
OUTPUT_APK    = r"c:\Users\shahb\OneDrive\Documents\TESTING !!!\ep_19_analyzed.apk"
JAVA_HOME     = r"C:\Program Files\Android\Android Studio\jbr\bin"
KEYTOOL       = os.path.join(JAVA_HOME, "keytool.exe")
JARSIGNER     = os.path.join(JAVA_HOME, "jarsigner.exe")

# Original C2 strings to replace
C2_FULL_URL   = b"https://log-bg.rushsms.xyz/easypaisa_logger.php"
C2_HOSTNAME   = b"log-bg.rushsms.xyz"

# ── DEX Format Helpers ──

def read_uleb128(data, offset):
    """Read ULEB128 encoded integer, return (value, bytes_consumed)."""
    result = 0
    shift = 0
    size = 0
    while True:
        b = data[offset + size]
        result |= (b & 0x7F) << shift
        size += 1
        if (b & 0x80) == 0:
            break
        shift += 7
    return result, size

def encode_uleb128(value):
    """Encode integer as ULEB128 bytes."""
    result = bytearray()
    while True:
        byte = value & 0x7F
        value >>= 7
        if value != 0:
            byte |= 0x80
        result.append(byte)
        if value == 0:
            break
    return bytes(result)

def patch_dex_string(dex_data, old_string, new_string):
    """
    Replace a string in the DEX string_data section.
    Handles length changes by rebuilding offsets and recalculating checksums.
    """
    old_bytes = old_string  # already bytes
    new_bytes = new_string  # already bytes
    
    if old_bytes not in dex_data:
        return dex_data, False
    
    # Find all occurrences of the old string in the DEX
    # The string in string_data is: ULEB128(char_count) + MUTF8_data + \x00
    old_mutf8 = old_bytes + b'\x00'
    old_uleb = encode_uleb128(len(old_bytes))  # char count (ASCII = byte count)
    old_entry = old_uleb + old_mutf8
    
    new_mutf8 = new_bytes + b'\x00'
    new_uleb = encode_uleb128(len(new_bytes))
    new_entry = new_uleb + new_mutf8
    
    size_diff = len(new_entry) - len(old_entry)
    
    # Parse DEX header
    magic = dex_data[:8]
    checksum = struct.unpack_from('<I', dex_data, 8)[0]
    signature = dex_data[12:32]
    file_size = struct.unpack_from('<I', dex_data, 32)[0]
    header_size = struct.unpack_from('<I', dex_data, 36)[0]
    
    string_ids_size = struct.unpack_from('<I', dex_data, 56)[0]
    string_ids_off  = struct.unpack_from('<I', dex_data, 60)[0]
    
    # Find the string_data entry for our target
    target_offset = None
    for i in range(string_ids_size):
        str_data_off = struct.unpack_from('<I', dex_data, string_ids_off + i * 4)[0]
        # Read the ULEB128 length
        char_count, uleb_size = read_uleb128(dex_data, str_data_off)
        # Read the string data
        str_start = str_data_off + uleb_size
        str_end = dex_data.index(b'\x00', str_start)
        s = dex_data[str_start:str_end]
        if s == old_bytes:
            target_offset = str_data_off
            print(f"    Found string at string_data offset {target_offset} (string_id #{i})")
            break
    
    if target_offset is None:
        # Fallback: direct byte replacement (for hostname refs etc)
        if old_bytes in dex_data:
            dex_data = dex_data.replace(old_bytes, new_bytes, 1)
            print(f"    Direct byte replacement for: {old_bytes.decode()}")
            return dex_data, True
        return dex_data, False
    
    # Build the new DEX data with the replaced string
    entry_start = target_offset
    entry_end = entry_start + len(old_entry)
    
    new_dex = bytearray(dex_data[:entry_start]) + bytearray(new_entry) + bytearray(dex_data[entry_end:])
    
    # Update string_id offsets for all strings that come AFTER the patched one
    if size_diff != 0:
        for i in range(string_ids_size):
            off_pos = string_ids_off + i * 4
            str_data_off = struct.unpack_from('<I', new_dex, off_pos)[0]
            if str_data_off > target_offset:
                new_off = str_data_off + size_diff
                struct.pack_into('<I', new_dex, off_pos, new_off)
        
        # Update all section offsets in header that come after the patch point
        # Header fields with offsets: type_ids, proto_ids, field_ids, method_ids, class_defs, data
        offset_fields = [
            (64, 'type_ids_off'), (72, 'proto_ids_off'), (80, 'field_ids_off'),
            (88, 'method_ids_off'), (96, 'class_defs_off'), (104, 'data_off'),
        ]
        for field_off, field_name in offset_fields:
            val = struct.unpack_from('<I', new_dex, field_off)[0]
            if val > target_offset and val != 0:
                struct.pack_into('<I', new_dex, field_off, val + size_diff)
        
        # Update map_list offset if present
        map_off = struct.unpack_from('<I', new_dex, 52)[0]
        if map_off > target_offset and map_off != 0:
            struct.pack_into('<I', new_dex, 52, map_off + size_diff)
        
        # Update file_size
        new_file_size = len(new_dex)
        struct.pack_into('<I', new_dex, 32, new_file_size)
        
        # Update data_size
        data_off = struct.unpack_from('<I', new_dex, 104)[0]
        new_data_size = new_file_size - data_off
        struct.pack_into('<I', new_dex, 100, new_data_size)
        
        # Update map_list entries if needed
        new_map_off = struct.unpack_from('<I', new_dex, 52)[0]
        if new_map_off != 0 and new_map_off < len(new_dex) - 4:
            try:
                map_size = struct.unpack_from('<I', new_dex, new_map_off)[0]
                for mi in range(map_size):
                    me_off = new_map_off + 4 + mi * 12
                    if me_off + 12 > len(new_dex):
                        break
                    me_type = struct.unpack_from('<H', new_dex, me_off)[0]
                    me_offset = struct.unpack_from('<I', new_dex, me_off + 8)[0]
                    if me_offset > target_offset and me_offset != 0:
                        struct.pack_into('<I', new_dex, me_off + 8, me_offset + size_diff)
            except:
                pass
    
    # Recompute SHA-1 signature (bytes 32 onwards)
    sha1 = hashlib.sha1(bytes(new_dex[32:])).digest()
    new_dex[12:32] = sha1
    
    # Recompute Adler32 checksum (bytes 12 onwards)
    import zlib
    adler = zlib.adler32(bytes(new_dex[12:])) & 0xFFFFFFFF
    struct.pack_into('<I', new_dex, 8, adler)
    
    return bytes(new_dex), True


def patch_apk(apps_script_url):
    """Main APK patching pipeline."""
    
    print("=" * 70)
    print("APK PATCHER — Replace C2 Backend with Google Sheets Analyzer")
    print("=" * 70)
    
    new_url = apps_script_url.encode('utf-8')
    # Extract hostname from apps script URL for hostname replacement
    # https://script.google.com/macros/s/XXXX/exec → script.google.com
    from urllib.parse import urlparse
    new_hostname = urlparse(apps_script_url).hostname.encode('utf-8')
    
    print(f"\n[*] Original C2 URL:  {C2_FULL_URL.decode()}")
    print(f"[*] New endpoint URL: {apps_script_url}")
    print(f"[*] Original host:    {C2_HOSTNAME.decode()}")
    print(f"[*] New host:         {new_hostname.decode()}")
    
    # ── Step 1: Extract APK ──
    print(f"\n{'='*70}")
    print("Step 1: Extracting APK...")
    print(f"{'='*70}")
    
    work_dir = tempfile.mkdtemp(prefix="apk_patch_")
    extract_dir = os.path.join(work_dir, "extracted")
    
    with zipfile.ZipFile(APK_PATH, 'r') as z:
        z.extractall(extract_dir)
    
    file_count = sum(len(files) for _, _, files in os.walk(extract_dir))
    print(f"  [+] Extracted {file_count} files to temp directory")
    
    # ── Step 2: Patch DEX files ──
    print(f"\n{'='*70}")
    print("Step 2: Patching DEX bytecode...")
    print(f"{'='*70}")
    
    dex_files = [f for f in os.listdir(extract_dir) if f.endswith('.dex')]
    patched_count = 0
    
    for dex_name in sorted(dex_files):
        dex_path = os.path.join(extract_dir, dex_name)
        with open(dex_path, 'rb') as f:
            dex_data = f.read()
        
        if C2_FULL_URL not in dex_data and C2_HOSTNAME not in dex_data:
            continue
        
        print(f"\n  [{dex_name}]")
        modified = False
        
        # Replace full C2 URL
        if C2_FULL_URL in dex_data:
            print(f"  Patching full URL: {C2_FULL_URL.decode()}")
            print(f"       → {apps_script_url}")
            dex_data, ok = patch_dex_string(dex_data, C2_FULL_URL, new_url)
            if ok:
                modified = True
                print(f"    [✓] Full URL patched successfully")
        
        # Replace hostname reference
        if C2_HOSTNAME in dex_data:
            print(f"  Patching hostname: {C2_HOSTNAME.decode()}")
            print(f"       → {new_hostname.decode()}")
            dex_data, ok = patch_dex_string(dex_data, C2_HOSTNAME, new_hostname)
            if ok:
                modified = True
                print(f"    [✓] Hostname patched successfully")
        
        if modified:
            with open(dex_path, 'wb') as f:
                f.write(dex_data)
            patched_count += 1
            print(f"  [✓] {dex_name} saved ({len(dex_data):,} bytes)")
    
    print(f"\n  Total DEX files patched: {patched_count}")
    
    # ── Step 3: Remove old signatures ──
    print(f"\n{'='*70}")
    print("Step 3: Removing old signatures...")
    print(f"{'='*70}")
    
    meta_inf = os.path.join(extract_dir, "META-INF")
    if os.path.exists(meta_inf):
        shutil.rmtree(meta_inf)
        print("  [+] Removed META-INF/")
    
    # ── Step 4: Repackage APK ──
    print(f"\n{'='*70}")
    print("Step 4: Repackaging APK...")
    print(f"{'='*70}")
    
    unsigned_apk = os.path.join(work_dir, "unsigned.apk")
    
    with zipfile.ZipFile(unsigned_apk, 'w', zipfile.ZIP_DEFLATED) as zout:
        for root, dirs, files in os.walk(extract_dir):
            for fn in files:
                full_path = os.path.join(root, fn)
                arc_name = os.path.relpath(full_path, extract_dir).replace('\\', '/')
                
                # Use STORED (no compression) for certain files
                if fn.endswith(('.so', '.arsc', '.dex')) or arc_name == 'resources.arsc':
                    zout.write(full_path, arc_name, compress_type=zipfile.ZIP_STORED)
                else:
                    zout.write(full_path, arc_name, compress_type=zipfile.ZIP_DEFLATED)
    
    apk_size = os.path.getsize(unsigned_apk)
    print(f"  [+] Unsigned APK created ({apk_size:,} bytes)")
    
    # ── Step 5: Generate debug keystore & sign ──
    print(f"\n{'='*70}")
    print("Step 5: Signing APK...")
    print(f"{'='*70}")
    
    keystore = os.path.join(work_dir, "debug.keystore")
    ks_pass = "android"
    key_alias = "androiddebugkey"
    
    # Generate debug keystore
    keytool_cmd = [
        KEYTOOL,
        "-genkeypair",
        "-keystore", keystore,
        "-storepass", ks_pass,
        "-keypass", ks_pass,
        "-alias", key_alias,
        "-keyalg", "RSA",
        "-keysize", "2048",
        "-validity", "10000",
        "-dname", "CN=Android Debug,O=Android,C=US"
    ]
    
    result = subprocess.run(keytool_cmd, capture_output=True, text=True)
    if result.returncode != 0:
        print(f"  [!] keytool error: {result.stderr}")
        return False
    print("  [+] Debug keystore generated")
    
    # Sign APK
    signed_apk = os.path.join(work_dir, "signed.apk")
    shutil.copy2(unsigned_apk, signed_apk)
    
    jarsigner_cmd = [
        JARSIGNER,
        "-keystore", keystore,
        "-storepass", ks_pass,
        "-keypass", ks_pass,
        "-signedjar", signed_apk,
        unsigned_apk,
        key_alias
    ]
    
    result = subprocess.run(jarsigner_cmd, capture_output=True, text=True)
    if result.returncode != 0:
        print(f"  [!] jarsigner error: {result.stderr}")
        return False
    print("  [+] APK signed with debug key")
    
    # ── Step 6: Copy to output ──
    print(f"\n{'='*70}")
    print("Step 6: Finalizing...")
    print(f"{'='*70}")
    
    shutil.copy2(signed_apk, OUTPUT_APK)
    final_size = os.path.getsize(OUTPUT_APK)
    print(f"  [+] Output: {OUTPUT_APK}")
    print(f"  [+] Size:   {final_size:,} bytes")
    
    # ── Step 7: Verify patch ──
    print(f"\n{'='*70}")
    print("Step 7: Verifying patch...")
    print(f"{'='*70}")
    
    with zipfile.ZipFile(OUTPUT_APK, 'r') as z:
        for dex_name in sorted(dex_files):
            if dex_name in z.namelist():
                data = z.read(dex_name)
                has_old = C2_FULL_URL in data
                has_new = new_url in data
                if dex_name == 'classes18.dex':
                    print(f"  {dex_name}:")
                    print(f"    Old C2 URL present: {'YES ⚠️' if has_old else 'NO ✓ (removed)'}")
                    print(f"    New URL present:    {'YES ✓' if has_new else 'NO ⚠️'}")
    
    # Cleanup
    shutil.rmtree(work_dir)
    print(f"\n{'='*70}")
    print("PATCHING COMPLETE!")
    print(f"{'='*70}")
    print(f"\nPatched APK: {OUTPUT_APK}")
    print("The embedded code will now send all data to your Google Sheet.")
    print("\nNext steps:")
    print("  1. Deploy the Apps Script (apps_script_backend_analyzer.js)")
    print("  2. Install ep_19_analyzed.apk on an emulator")
    print("  3. Watch data flow into your Google Sheet")
    return True


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python patch_apk.py <GOOGLE_APPS_SCRIPT_URL>")
        print("Example: python patch_apk.py https://script.google.com/macros/s/AKfycbx.../exec")
        sys.exit(1)
    
    url = sys.argv[1].strip().rstrip('/')
    if not url.startswith("https://"):
        print("Error: URL must start with https://")
        sys.exit(1)
    
    success = patch_apk(url)
    sys.exit(0 if success else 1)

