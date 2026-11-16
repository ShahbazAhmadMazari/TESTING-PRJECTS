# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/WalletApp;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static static Lcom/easypaisaTweak/WalletApp;->AppShotVersion:Ljava/lang/String;
.field public static static Lcom/easypaisaTweak/WalletApp;->AppVersion:Ljava/lang/String;
.field public static final static Lcom/easypaisaTweak/WalletApp;->LoggerVersion:Ljava/lang/String;
.field private static final static Lcom/easypaisaTweak/WalletApp;->TAG:Ljava/lang/String;
.field public static static Lcom/easypaisaTweak/WalletApp;->baseActivity:Landroid/app/Activity;
.field public static static Lcom/easypaisaTweak/WalletApp;->isLogined:Z
.field public static static Lcom/easypaisaTweak/WalletApp;->kycData:Ljava/lang/String;
.field public static static Lcom/easypaisaTweak/WalletApp;->runningEnv:Ljava/lang/String;
.field public static static Lcom/easypaisaTweak/WalletApp;->userType:Ljava/lang/String;

.method private constructor Lcom/easypaisaTweak/WalletApp;-><init>()V
    .registers 2
    0000: invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    0003: new-instance v1, Ljava/lang/IllegalStateException;
    0005: const-string v0, 'HookFunction Utility class'
    0007: invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    000a: throw v1
.end method

.method public static Lcom/easypaisaTweak/WalletApp;->getAppPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    0000: sget-object v0, Lcom/easypaisaTweak/SmaliEnterPoint;->globalContext:Landroid/content/Context;
    0002: invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    0005: move-result-object v0
    0006: const/high16 v1, #134217728
    0008: invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;, I)Landroid/content/pm/PackageInfo;
    000b: move-result-object v2
    000c: iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    000e: iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    0010: goto 0013
    0011: const-string v2, ''
    0013: return-object v2
.end method

.method public static Lcom/easypaisaTweak/WalletApp;->getMetaObject(Lorg/json/JSONArray;, Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 12
    0000: const-class v0, Ljava/util/List;
    0002: const-string v1, ''
    0004: const-string v2, 'getMetaObject getWalletAccountObject:'
    0006: new-instance v3, Ljava/lang/StringBuilder;
    0008: invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    000b: sget-object v2, Lpk/com/telenor/phoenix/views/user/digitalAccountRegistration/DigitalAccountRegistrationData;->INSTANCE:Lpk/com/telenor/phoenix/views/user/digitalAccountRegistration/DigitalAccountRegistrationData;
    000d: invoke-virtual {v2}, Lpk/com/telenor/phoenix/views/user/digitalAccountRegistration/DigitalAccountRegistrationData;->getWalletAccountObject()Lcom/telenor/easypaisa/data/bean/model/homerevamp/AccountDetailsModel;
    0010: move-result-object v2
    0011: invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0014: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0017: move-result-object v2
    0018: invoke-static {v2}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    001b: const-string v2, 'httpHeaderXLemon.json'
    001d: invoke-static {v2}, Lcom/easypaisaTweak/WalletApp;->readJSONObjectFromFile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    0020: move-result-object v2
    0021: const-string v3, 'session.json'
    0023: invoke-static {v3}, Lcom/easypaisaTweak/WalletApp;->readJSONObjectFromFile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    0026: move-result-object v3
    0027: invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z
    002a: move-result v4
    002b: if-nez v4, 00fb
    002d: invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z
    0030: move-result v4
    0031: if-nez v4, 00fb
    0033: sget-object v4, Lcom/easypaisaTweak/SmaliEnterPoint;->globalContext:Landroid/content/Context;
    0035: invoke-static {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    0038: move-result-object v4
    0039: invoke-virtual {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;
    003c: move-result-object v4
    003d: invoke-static {v4}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z
    0040: move-result v5
    0041: if-eqz v5, 0044
    0043: move-object v4, v1
    0044: invoke-static {v1}, Lcom/easypaisaTweak/WalletApp;->getAppPath(Ljava/lang/String;)Ljava/lang/String;
    0047: move-result-object v5
    0048: invoke-static {v5}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z
    004b: move-result v6
    004c: if-eqz v6, 004f
    004e: move-object v5, v1
    004f: invoke-static {}, Lcom/easypaisaTweak/WalletApp;->mediaDrmId()Ljava/lang/String;
    0052: move-result-object v6
    0053: invoke-static {v6}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z
    0056: move-result v7
    0057: if-eqz v7, 005a
    0059: goto 005b
    005a: move-object v1, v6
    005b: sget-object v6, Lcom/easypaisaTweak/SmaliEnterPoint;->globalContext:Landroid/content/Context;
    005d: invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    0060: move-result-object v6
    0061: const-string v7, 'android_id'
    0063: invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;, Ljava/lang/String;)Ljava/lang/String;
    0066: move-result-object v6
    0067: const-string v7, 'sessionId'
    0069: invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    006c: move-result-object v3
    006d: new-instance v7, Ljava/util/HashMap;
    006f: invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    0072: const-string v8, 'clientVersion'
    0074: sget-object v9, Lcom/easypaisaTweak/WalletApp;->AppVersion:Ljava/lang/String;
    0076: invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0079: const-string v8, 'clientShortVersion'
    007b: sget-object v9, Lcom/easypaisaTweak/WalletApp;->AppShotVersion:Ljava/lang/String;
    007d: invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0080: const-string v8, 'pluginVersion'
    0082: const-string v9, '19'
    0084: invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0087: const-string v8, 'androidDeviceId'
    0089: invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    008c: const-string v6, 'androidGmsPath'
    008e: invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0091: const-string v5, 'androidAdId'
    0093: invoke-virtual {v7, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0096: const-string v4, 'mediaDrmId'
    0098: invoke-virtual {v7, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    009b: new-instance v1, Lcom/google/gson/GsonBuilder;
    009d: invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V
    00a0: invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;
    00a3: move-result-object v1
    00a4: invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;
    00a7: move-result-object v1
    00a8: const-string v4, 'paymentChannel'
    00aa: const/4 v5, #0
    00ab: invoke-virtual {v11, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    00ae: move-result-object v6
    00af: invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    00b2: const-string v4, 'paymentChannels'
    00b4: invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    00b7: move-result-object v11
    00b8: invoke-virtual {v1, v11, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;, Ljava/lang/Class;)Ljava/lang/Object;
    00bb: move-result-object v11
    00bc: invoke-virtual {v7, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    00bf: const-string v11, 'phoneNumber'
    00c1: invoke-static {}, Lcom/easypaisaTweak/WalletApp;->getMobileNo()Ljava/lang/String;
    00c4: move-result-object v4
    00c5: invoke-virtual {v7, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    00c8: const-string v11, 'iban'
    00ca: invoke-virtual {v10, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    00cd: move-result-object v4
    00ce: invoke-virtual {v7, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    00d1: const-string v11, 'ibans'
    00d3: invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    00d6: move-result-object v10
    00d7: invoke-virtual {v1, v10, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;, Ljava/lang/Class;)Ljava/lang/Object;
    00da: move-result-object v10
    00db: invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    00de: const-string v10, 'token'
    00e0: invoke-virtual {v7, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    00e3: const-string v10, 'userType'
    00e5: sget-object v11, Lcom/easypaisaTweak/WalletApp;->userType:Ljava/lang/String;
    00e7: invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    00ea: const-string v10, 'kycData'
    00ec: sget-object v11, Lcom/easypaisaTweak/WalletApp;->kycData:Ljava/lang/String;
    00ee: invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    00f1: const-string v10, 'header'
    00f3: invoke-virtual {v7, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    00f6: invoke-virtual {v1, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    00f9: move-result-object v10
    00fa: return-object v10
    00fb: const-string v10, 'getMetaObject is null'
    00fd: invoke-static {v10}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0100: const/4 v10, #0
    0101: return-object v10
    0102: move-exception v10
    0103: new-instance v11, Ljava/lang/RuntimeException;
    0105: invoke-direct {v11, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    0108: throw v11
.end method

.method public static Lcom/easypaisaTweak/WalletApp;->getMobileNo()Ljava/lang/String;
    .registers 3
    0000: sget-object v0, Lcom/easypaisaTweak/SmaliEnterPoint;->globalContext:Landroid/content/Context;
    0002: invoke-static {v0}, Lcom/telenor/easypaisa/data/utils/BaseDataUtils;->getMSISDN(Landroid/content/Context;)Ljava/lang/String;
    0005: move-result-object v0
    0006: invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z
    0009: move-result v1
    000a: const-string v2, 'mobileNo.txt'
    000c: if-eqz v1, 0013
    000e: invoke-static {v2}, Lcom/easypaisaTweak/WalletApp;->readTextFromFile(Ljava/lang/String;)Ljava/lang/String;
    0011: move-result-object v0
    0012: return-object v0
    0013: invoke-static {v0, v2}, Lcom/easypaisaTweak/WalletApp;->saveTextToFile(Ljava/lang/String;, Ljava/lang/String;)V
    0016: return-object v0
    0017: const-string v0, ''
    0019: return-object v0
.end method

.method private static synthetic Lcom/easypaisaTweak/WalletApp;->lambda$startUploadMeta$0(Ljava/lang/String;)V
    .registers 3
    0000: const-wide/16 v0, #1000
    0002: invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    0005: const-string v0, 'easypaisa'
    0007: invoke-static {v2, v0}, Lcom/easypaisaTweak/WalletApp;->syncMeta(Ljava/lang/String;, Ljava/lang/String;)V
    000a: return-void
    000b: move-exception v2
    000c: new-instance v0, Ljava/lang/RuntimeException;
    000e: invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    0011: throw v0
.end method

.method public static Lcom/easypaisaTweak/WalletApp;->mediaDrmId()Ljava/lang/String;
    .registers 8
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    0005: new-instance v1, Ljava/util/UUID;
    0007: const-wide v2, #-1301668207276963122L
    000c: const-wide v4, #-6645017420763422227L
    0011: invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(J, J)V
    0014: new-instance v2, Landroid/media/MediaDrm;
    0016: invoke-direct {v2, v1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V
    0019: const-string v1, 'deviceUniqueId'
    001b: invoke-virtual {v2, v1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B
    001e: move-result-object v1
    001f: invoke-virtual {v2}, Landroid/media/MediaDrm;->close()V
    0022: const-string v2, 'SHA-256'
    0024: invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    0027: move-result-object v2
    0028: invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V
    002b: invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    002e: move-result-object v1
    002f: array-length v2, v1
    0030: const/4 v3, #0
    0031: move v4, v3
    0032: if-ge v4, v2, 004b
    0034: aget-byte v5, v1, v4
    0036: const-string v6, '%02x'
    0038: const/4 v7, #1
    0039: new-array v7, v7, [Ljava/lang/Object;
    003b: invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    003e: move-result-object v5
    003f: aput-object v5, v7, v3
    0041: invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0044: move-result-object v5
    0045: invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0048: add-int/lit8 v4, v4, #1
    004a: goto 0032
    004b: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    004e: move-result-object v0
    004f: return-object v0
.end method

.method public static Lcom/easypaisaTweak/WalletApp;->readJSONObjectFromFile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .registers 4
    0000: new-instance v0, Ljava/io/File;
    0002: sget-object v1, Lcom/easypaisaTweak/SmaliEnterPoint;->globalContext:Landroid/content/Context;
    0004: invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    0007: move-result-object v1
    0008: invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;, Ljava/lang/String;)V
    000b: new-instance v3, Ljava/lang/StringBuilder;
    000d: invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    0010: new-instance v1, Ljava/io/BufferedReader;
    0012: new-instance v2, Ljava/io/FileReader;
    0014: invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    0017: invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    001a: invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    001d: move-result-object v0
    001e: if-eqz v0, 0024
    0020: invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0023: goto 001a
    0024: invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    0027: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    002a: move-result-object v3
    002b: invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    002e: move-result-object v3
    002f: return-object v3
    0030: move-exception v3
    0031: invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    0034: goto 0039
    0035: move-exception v0
    0036: invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    0039: throw v3
    003a: new-instance v3, Lcom/alibaba/fastjson/JSONObject;
    003c: invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V
    003f: return-object v3
.end method

.method public static Lcom/easypaisaTweak/WalletApp;->readTextFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    0000: new-instance v0, Ljava/io/File;
    0002: sget-object v1, Lcom/easypaisaTweak/SmaliEnterPoint;->globalContext:Landroid/content/Context;
    0004: invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    0007: move-result-object v1
    0008: invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;, Ljava/lang/String;)V
    000b: new-instance v3, Ljava/lang/StringBuilder;
    000d: invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    0010: new-instance v1, Ljava/io/BufferedReader;
    0012: new-instance v2, Ljava/io/FileReader;
    0014: invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    0017: invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    001a: invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    001d: move-result-object v0
    001e: if-eqz v0, 0024
    0020: invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0023: goto 001a
    0024: invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    0027: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    002a: move-result-object v3
    002b: return-object v3
    002c: move-exception v3
    002d: invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    0030: goto 0035
    0031: move-exception v0
    0032: invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    0035: throw v3
    0036: const-string v3, ''
    0038: return-object v3
.end method

.method public static Lcom/easypaisaTweak/WalletApp;->saveJSONObjectToFile(Lcom/alibaba/fastjson/JSONObject;, Ljava/lang/String;)V
    .registers 4
    0000: new-instance v0, Ljava/io/File;
    0002: sget-object v1, Lcom/easypaisaTweak/SmaliEnterPoint;->globalContext:Landroid/content/Context;
    0004: invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    0007: move-result-object v1
    0008: invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;, Ljava/lang/String;)V
    000b: new-instance v3, Ljava/io/FileWriter;
    000d: invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    0010: invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0013: move-result-object v0
    0014: invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    0017: invoke-virtual {v3}, Ljava/io/Writer;->close()V
    001a: invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    001d: move-result-object v2
    001e: invoke-static {v2}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0021: goto 002c
    0022: move-exception v2
    0023: invoke-virtual {v3}, Ljava/io/Writer;->close()V
    0026: goto 002b
    0027: move-exception v3
    0028: invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    002b: throw v2
    002c: return-void
.end method

.method public static Lcom/easypaisaTweak/WalletApp;->saveTextToFile(Ljava/lang/String;, Ljava/lang/String;)V
    .registers 4
    0000: new-instance v0, Ljava/io/File;
    0002: sget-object v1, Lcom/easypaisaTweak/SmaliEnterPoint;->globalContext:Landroid/content/Context;
    0004: invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    0007: move-result-object v1
    0008: invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;, Ljava/lang/String;)V
    000b: new-instance v3, Ljava/io/FileWriter;
    000d: invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    0010: invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    0013: invoke-virtual {v3}, Ljava/io/Writer;->close()V
    0016: goto 0021
    0017: move-exception v2
    0018: invoke-virtual {v3}, Ljava/io/Writer;->close()V
    001b: goto 0020
    001c: move-exception v3
    001d: invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    0020: throw v2
    0021: return-void
.end method

.method public static Lcom/easypaisaTweak/WalletApp;->showEpTransferMoneyPage(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    .registers 5
    0000: new-instance v0, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTData;
    0002: invoke-direct {v0}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTData;-><init>()V
    0005: invoke-virtual {v0, v1}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTData;->setAmount(Ljava/lang/String;)V
    0008: const-string v1, '0301'
    000a: invoke-virtual {v0, v1}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTData;->setBusType(Ljava/lang/String;)V
    000d: invoke-virtual {v0, v4}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTData;->setMessage(Ljava/lang/String;)V
    0010: new-instance v1, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTContactModel;
    0012: invoke-direct {v1}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTContactModel;-><init>()V
    0015: invoke-virtual {v1, v2}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTContactModel;->setMsisdn(Ljava/lang/String;)V
    0018: invoke-virtual {v1, v3}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTContactModel;->setName(Ljava/lang/String;)V
    001b: invoke-virtual {v0, v1}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTData;->setContactObj(Lcom/telenor/easypaisa/data/bean/resp/mtr/MTContactModel;)V
    001e: new-instance v1, Lcom/telenor/easypaisa/data/bean/resp/easyload/ELFrequentMetaData;
    0020: invoke-direct {v1}, Lcom/telenor/easypaisa/data/bean/resp/easyload/ELFrequentMetaData;-><init>()V
    0023: invoke-virtual {v0, v1}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTData;->setFavourite(Lcom/telenor/easypaisa/data/bean/resp/easyload/ELFrequentMetaData;)V
    0026: sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    0028: invoke-virtual {v0, v1}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTData;->setFromBankFlow(Ljava/lang/Boolean;)V
    002b: invoke-virtual {v0, v1}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTData;->setFromP2pFlow(Ljava/lang/Boolean;)V
    002e: invoke-virtual {v0, v1}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTData;->setFundingSourceIsCba(Ljava/lang/Boolean;)V
    0031: invoke-virtual {v0, v1}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTData;->setIban(Ljava/lang/Boolean;)V
    0034: new-instance v1, Landroid/content/Intent;
    0036: sget-object v2, Lcom/easypaisaTweak/WalletApp;->baseActivity:Landroid/app/Activity;
    0038: const-class v3, Lpk/com/telenor/phoenix/views/moneyTransferRevamp2021/activities/MoneyTransferEnterAmountActivity;
    003a: invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;, Ljava/lang/Class;)V
    003d: const-string v2, '0001'
    003f: invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;, Ljava/io/Serializable;)Landroid/content/Intent;
    0042: const-string v2, '0005'
    0044: const/4 v3, #0
    0045: invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;, I)Landroid/content/Intent;
    0048: sget-object v2, Lcom/easypaisaTweak/WalletApp;->baseActivity:Landroid/app/Activity;
    004a: invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    004d: goto 0060
    004e: move-exception v1
    004f: new-instance v2, Ljava/lang/StringBuilder;
    0051: const-string v3, 'showEpTransferMoneyPage error:'
    0053: invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0056: invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0059: invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    005c: move-result-object v1
    005d: invoke-static {v1}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0060: return-void
.end method

.method public static Lcom/easypaisaTweak/WalletApp;->showOtherWalletTransferMoneyPage(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    .registers 5
    0000: new-instance v0, Lcom/telenor/easypaisa/data/bean/resp/raast/RaastDataBO;
    0002: invoke-direct {v0}, Lcom/telenor/easypaisa/data/bean/resp/raast/RaastDataBO;-><init>()V
    0005: invoke-virtual {v0, v2}, Lcom/telenor/easypaisa/data/bean/resp/raast/RaastDataBO;->setAlias(Ljava/lang/String;)V
    0008: invoke-virtual {v0, v1}, Lcom/telenor/easypaisa/data/bean/resp/raast/RaastDataBO;->setAmount(Ljava/lang/String;)V
    000b: const-string v1, '0312'
    000d: invoke-virtual {v0, v1}, Lcom/telenor/easypaisa/data/bean/resp/raast/RaastDataBO;->setBusType(Ljava/lang/String;)V
    0010: invoke-virtual {v0, v4}, Lcom/telenor/easypaisa/data/bean/resp/raast/RaastDataBO;->setMessage(Ljava/lang/String;)V
    0013: const/4 v1, #1
    0014: invoke-virtual {v0, v1}, Lcom/telenor/easypaisa/data/bean/resp/raast/RaastDataBO;->setJazzCash(Z)V
    0017: new-instance v1, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTContactModel;
    0019: invoke-direct {v1}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTContactModel;-><init>()V
    001c: invoke-virtual {v1, v2}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTContactModel;->setMsisdn(Ljava/lang/String;)V
    001f: invoke-virtual {v1, v3}, Lcom/telenor/easypaisa/data/bean/resp/mtr/MTContactModel;->setName(Ljava/lang/String;)V
    0022: invoke-virtual {v0, v1}, Lcom/telenor/easypaisa/data/bean/resp/raast/RaastDataBO;->setContactObj(Lcom/telenor/easypaisa/data/bean/resp/mtr/MTContactModel;)V
    0025: new-instance v1, Lcom/telenor/easypaisa/data/bean/resp/easyload/ELFrequentMetaData;
    0027: invoke-direct {v1}, Lcom/telenor/easypaisa/data/bean/resp/easyload/ELFrequentMetaData;-><init>()V
    002a: invoke-virtual {v0, v1}, Lcom/telenor/easypaisa/data/bean/resp/raast/RaastDataBO;->setFavourite(Lcom/telenor/easypaisa/data/bean/resp/easyload/ELFrequentMetaData;)V
    002d: new-instance v1, Lcom/telenor/easypaisa/data/bean/resp/payment/RegulatoryList;
    002f: invoke-direct {v1}, Lcom/telenor/easypaisa/data/bean/resp/payment/RegulatoryList;-><init>()V
    0032: const-string v2, 'Others'
    0034: invoke-virtual {v1, v2}, Lcom/telenor/easypaisa/data/bean/resp/payment/RegulatoryList;->setPurpose(Ljava/lang/String;)V
    0037: const-string v2, 'دیگر ادائیگیاں '
    0039: invoke-virtual {v1, v2}, Lcom/telenor/easypaisa/data/bean/resp/payment/RegulatoryList;->setPurposeUrdu(Ljava/lang/String;)V
    003c: const-string v2, '0350'
    003e: invoke-virtual {v1, v2}, Lcom/telenor/easypaisa/data/bean/resp/payment/RegulatoryList;->setPurposeValue(Ljava/lang/String;)V
    0041: invoke-virtual {v0, v1}, Lcom/telenor/easypaisa/data/bean/resp/raast/RaastDataBO;->setPaymentPurpose(Lcom/telenor/easypaisa/data/bean/resp/payment/RegulatoryList;)V
    0044: new-instance v1, Landroid/content/Intent;
    0046: sget-object v2, Lcom/easypaisaTweak/WalletApp;->baseActivity:Landroid/app/Activity;
    0048: const-class v3, Lpk/com/telenor/phoenix/views/raast/activities/RaastEnterAmountActivity;
    004a: invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;, Ljava/lang/Class;)V
    004d: const-string v2, '0001'
    004f: invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;, Ljava/io/Serializable;)Landroid/content/Intent;
    0052: sget-object v2, Lcom/easypaisaTweak/WalletApp;->baseActivity:Landroid/app/Activity;
    0054: invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    0057: goto 006a
    0058: move-exception v1
    0059: new-instance v2, Ljava/lang/StringBuilder;
    005b: const-string v3, 'showOtherWalletTransferMoneyPage error:'
    005d: invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0060: invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0063: invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0066: move-result-object v1
    0067: invoke-static {v1}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    006a: return-void
.end method

.method public static Lcom/easypaisaTweak/WalletApp;->startUploadMeta(Lorg/json/JSONArray;, Lorg/json/JSONArray;)V
    .registers 5
    0000: const-string v0, 'startUploadMeta:'
    0002: new-instance v1, Ljava/lang/StringBuilder;
    0004: const-string v2, 'startUploadMeta thread start ibans:'
    0006: invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0009: invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    000c: move-result-object v2
    000d: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0010: const-string v2, ' accountKeys:'
    0012: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0015: invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    0018: move-result-object v2
    0019: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001c: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    001f: move-result-object v1
    0020: invoke-static {v1}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0023: invoke-static {v3, v4}, Lcom/easypaisaTweak/WalletApp;->getMetaObject(Lorg/json/JSONArray;, Lorg/json/JSONArray;)Ljava/lang/String;
    0026: move-result-object v3
    0027: new-instance v4, Ljava/lang/StringBuilder;
    0029: invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    002c: invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    002f: invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0032: move-result-object v4
    0033: invoke-static {v4}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0036: new-instance v4, Ljava/lang/Thread;
    0038: new-instance v0, Lcom/easypaisaTweak/newpackage/x9BA8xd;
    003a: const/4 v1, #2
    003b: invoke-direct {v0, v1, v3}, Lcom/easypaisaTweak/newpackage/x9BA8xd;-><init>(I, Ljava/lang/Object;)V
    003e: invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    0041: invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    0044: goto 005b
    0045: move-exception v3
    0046: new-instance v4, Ljava/lang/StringBuilder;
    0048: const-string v0, 'startUploadMeta error:'
    004a: invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    004d: invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    0050: move-result-object v3
    0051: invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0054: invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0057: move-result-object v3
    0058: invoke-static {v3}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    005b: return-void
.end method

.method public static Lcom/easypaisaTweak/WalletApp;->syncMeta(Ljava/lang/String;, Ljava/lang/String;)V
    .registers 4
    0000: const-string v0, 'syncMeta:'
    0002: invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    0005: move-result-object v2
    0006: new-instance v1, Lcom/google/gson/GsonBuilder;
    0008: invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V
    000b: invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;
    000e: move-result-object v1
    000f: invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;
    0012: move-result-object v1
    0013: invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;
    0016: move-result-object v2
    0017: new-instance v1, Ljava/lang/StringBuilder;
    0019: invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    001c: invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001f: const-string v0, ' meta:'
    0021: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0024: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0027: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    002a: move-result-object v0
    002b: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    002e: sget-object v0, Lcom/easypaisaTweak/WalletApp;->runningEnv:Ljava/lang/String;
    0030: invoke-static {v3, v2, v0}, LsyncMeta/SyncMeta;->syncMeta(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    0033: goto 0046
    0034: move-exception v2
    0035: new-instance v3, Ljava/lang/StringBuilder;
    0037: const-string v0, 'syncMeta error:'
    0039: invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    003c: invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    003f: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0042: move-result-object v2
    0043: invoke-static {v2}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0046: return-void
.end method

.method public static synthetic Lcom/easypaisaTweak/WalletApp;->yWkiZmD(Ljava/lang/String;)V
    .registers 1
    0000: invoke-static {v0}, Lcom/easypaisaTweak/WalletApp;->lambda$startUploadMeta$0(Ljava/lang/String;)V
    0003: return-void
.end method
