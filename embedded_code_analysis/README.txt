================================================================================
  EMBEDDED CODE ANALYSIS — EasyPaisa Modified APK (ep_19.apk)
  FOR EDUCATIONAL & SECURITY RESEARCH PURPOSES ONLY
================================================================================

This directory contains the fully disassembled and extracted source code of
the embedded components found in a modified EasyPaisa (pk.com.telenor.phoenix)
Android application. The original base.apk from Google Play contains NONE of
these components — they were all added during repackaging.

Remote Server:  https://log-bg.rushsms.xyz/easypaisa_logger.php
Build Author:   aaron (/Users/aaron/WorkHub/PakistanWalletGateway/)

================================================================================
OPERATION FLOW MAP:
================================================================================

  ┌──────────────────────────────────────────────────────────────────────┐
  │                     APP LAUNCH (Modified Build)                     │
  │                                                                     │
  │  EasyPaisaApplication (replaces original Application class)         │
  │       │                                                             │
  │       ▼                                                             │
  │  05_loader_and_bridge/                                              │
  │  ┌─ BridgeService.smali ─── initializes embedded modules            │
  │  └─ StubActivity.smali ──── placeholder Activity for lifecycle      │
  │       │                                                             │
  │       ▼                                                             │
  │  01_api_interceptor/                                                │
  │  ┌─ SmaliEnterPoint.smali ── MAIN ENTRY: hooks into app APIs        │
  │  │   • Intercepts OkHttp3 network builder                           │
  │  │   • Captures RSA encryption keys during login                    │
  │  │   • Captures login passwords before encryption                   │
  │  │   • Auto-fills money transfer amount fields                      │
  │  │                                                                  │
  │  ├─ SmaliEnterPoint$1.smali ── OkHttp Network Interceptor           │
  │  │   • Monitors /security/login API responses                       │
  │  │   • Extracts auth tokens from server responses                   │
  │  │   • Forwards captured data to HttpHelper                         │
  │  │                                                                  │
  │  ├─ HttpHelper.smali ── Remote Communication Handler                │
  │  │   • Background HTTP loop to remote server                        │
  │  │   • Posts captured credentials & session data                    │
  │  │   • Receives commands from remote server                         │
  │  │                                                                  │
  │  └─ WalletApp.smali ── Automated Transfer Controller                │
  │      • Initiates money transfers programmatically                   │
  │      • Syncs device metadata to remote server                       │
  │      • Coordinates with native Go module (libgojni.so)              │
  │       │                                                             │
  │       ▼                                                             │
  │  03_method_hooking_framework/                                       │
  │  ┌─ ProxyHook.smali ──────── Java Dynamic Proxy hook injector       │
  │  ├─ BinderHook.smali ─────── Android Binder IPC interceptor         │
  │  ├─ ServiceCache.smali ────── Cached service manager hooks          │
  │  └─ ServiceManagerCacheHook ─ System service interception           │
  │       │                                                             │
  │       ▼                                                             │
  │  02_ipc_payment_controller/                                         │
  │  ┌─ JobService.smali ──────── Exported IPC service                  │
  │  │   • Exposes IPayService AIDL interface                           │
  │  │   • Allows external apps to query payment lists                  │
  │  │   • ping() returns "pong-19" (version identifier)                │
  │  │   • Can trigger payment callbacks externally                     │
  │  │                                                                  │
  │  ├─ IPayService.smali ─────── AIDL: getPayList, getUPIList, ping    │
  │  └─ IPayBack.smali ────────── AIDL: callback for payment results    │
  │       │                                                             │
  │       ▼                                                             │
  │  04_utility_and_networking/                                         │
  │  ┌─ NotifListenerService ──── Reads incoming SMS/notifications      │
  │  │   • Captures OTP codes from notifications                        │
  │  │   • Forwards to remote server for auto-verification              │
  │  │                                                                  │
  │  ├─ KeepAliveService ──────── Persistent background service         │
  │  ├─ Reflect.smali ─────────── Deep Java reflection utility          │
  │  ├─ UtilNetworking.smali ──── HTTP GET/POST helper                  │
  │  └─ UrlUtils / StringUtils ── String & URL utilities                │
  │       │                                                             │
  │       ▼                                                             │
  │  06_native_binary_analysis/                                         │
  │  ┌─ libgojni.so (Go 1.25) ── Native credential sync module          │
  │  │   • SetEasypaisaLoginRsaKey() — stores RSA public key            │
  │  │   • SetEasypaisaLoginPwd() — stores password                     │
  │  │   • SetEasypaisaLoginBody() — stores full login body             │
  │  │   • SyncMeta() — transmits all captured data                     │
  │  │                                                                  │
  │  └─ libshadowhook.so ──────── ByteDance inline method hooking       │
  │      • PLT/GOT hooking for native function interception             │
  │      • Trampoline-based inline hooks                                │
  └──────────────────────────────────────────────────────────────────────┘

================================================================================
DIRECTORY STRUCTURE:
================================================================================

embedded_code_analysis/
│
├── README.txt                             (This file)
│
├── 01_api_interceptor/                    API Hooking & Data Capture
│   ├── SmaliEnterPoint.smali              Main entry — hooks login & transfers
│   ├── SmaliEnterPoint$1.smali            OkHttp interceptor — captures responses
│   ├── WalletApp.smali                    Automated transfer & metadata sync
│   ├── HttpHelper.smali                   HTTP loop — sends data to remote server
│   ├── yWkiZmD.smali                      Obfuscated helper
│   ├── tweak/                             Build resources (R.smali, BuildConfig)
│   └── helper_classes/                    90+ obfuscated utility wrappers
│
├── 02_ipc_payment_controller/             Inter-Process Communication Service
│   ├── aidl_interfaces/                   AIDL definitions
│   │   ├── IPayService.smali              getPayList, getUPIList, ping, setPayBack
│   │   └── IPayBack.smali                 Payment callback interface
│   └── service/
│       ├── JobService.smali               Exported bound service
│       └── data_models/                   PayInfo, UserInfo, BasePoJo, FieldDesc
│
├── 03_method_hooking_framework/           Java-Level Method Interception
│   ├── ProxyHook.smali                    Dynamic proxy injector
│   ├── BinderHook.smali                   Android Binder IPC hook
│   ├── ServiceCache.smali                 Service manager cache hook
│   ├── ServiceManagerCacheHook.smali      System-level service interception
│   ├── ReflectMethod.smali                Method reflection wrapper
│   ├── ReflectField.smali                 Field reflection wrapper
│   ├── MethodProxy.smali                  Base method proxy class
│   └── (20+ additional hook utilities)
│
├── 04_utility_and_networking/             Support Libraries & Services
│   ├── Reflect.smali                      Deep reflection utility
│   ├── UtilNetworking.smali               HTTP networking (GET/POST)
│   ├── L.smali                            Logging utility
│   ├── StringUtils.smali                  String helpers
│   └── UrlUtils.smali                     URL encoding/parsing
│
├── 05_loader_and_bridge/                  Initialization & Bootstrap
│   ├── BridgeService.smali                Service — initializes embedded modules
│   └── StubActivity.smali                 Stub Activity for lifecycle
│
├── 06_native_binary_analysis/             Native Library Analysis
│   ├── libgojni_analysis.txt              Go binary symbol dump (687 refs)
│   ├── all_native_libraries.txt           All 57 embedded .so files
│   └── libshadowhook_strings.txt          Inline hooking engine strings
│
├── 07_web_interface_assets/               Embedded HTML/JavaScript
│   ├── javascript.html                    Payment JS bridge interface
│   ├── miniapp_demo.html                  MiniApp payment demo
│   ├── about.htm                          About page
│   ├── agreementTips.htm                  Terms/agreement page
│   ├── error_page.html                    Error display
│   └── customview.js                      PDF viewer script
│
├── 08_configuration_files/                App Configuration & Settings
│   ├── security.properties                Security config
│   ├── mobilegateway.properties           Gateway endpoints
│   ├── configurations.properties          App settings
│   ├── framework.json                     Framework config
│   ├── emv.yaml / upi.yaml               NFC payment configs
│   └── (20+ additional config files)
│
└── 09_manifest_data/                      AndroidManifest Analysis
    ├── manifest_strings_full.txt          All 1,081 manifest strings
    └── injected_components.txt            Summary of added components

================================================================================
KEY FILES — START HERE:
================================================================================

 #  File                         What It Does
 1  SmaliEnterPoint.smali        Hooks login & transfer APIs, captures RSA keys
 2  SmaliEnterPoint$1.smali      Intercepts /security/login HTTP responses
 3  WalletApp.smali              Automated transfer controller, metadata sync
 4  HttpHelper.smali             Background HTTP loop to remote server
 5  JobService.smali             Exported IPC service for external payment control
 6  ProxyHook.smali              Java dynamic proxy method interception
 7  BinderHook.smali             Android Binder-level service interception
 8  libgojni_analysis.txt        Go native module — RSA key & credential sync

================================================================================
HOW TO READ SMALI CODE:
================================================================================

Smali is the human-readable form of Android Dalvik bytecode. Key patterns:

  INSTRUCTION                              MEANING
  ─────────────────────────────────────────────────────────────────────
  .class public Lcom/pkg/Class;            Class declaration
  .field private name:Type                 Field declaration
  .method public name(args)Return          Method declaration
  invoke-static {v0}, Lclass;->m(T)V       Call static method
  invoke-virtual {v0, v1}, Lclass;->m(T)R  Call instance method
  const-string v0, 'text'                  Load string constant
  iget-object v0, v1, Lclass;->f:T         Read instance field
  new-instance v0, Lclass;                 Create new object
  move-result-object v0                    Store method return value

  Registers: v0-vN are local variables, p0 = 'this', p1-pN = parameters

================================================================================
