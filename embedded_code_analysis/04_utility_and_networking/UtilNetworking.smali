# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/plugin/UtilNetworking;
.super Ljava/lang/Object;
.source "SourceFile"


.method public constructor Lcom/myairtelapp/plugin/UtilNetworking;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: return-void
.end method

.method public static Lcom/myairtelapp/plugin/UtilNetworking;->createGETHttpURLConnection(Ljava/lang/String;, Ljava/util/Map;, Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    0000: const-string v0, '[*] The request properties is: '
    0002: const-string v1, '[*] '
    0004: new-instance v2, Ljava/lang/StringBuilder;
    0006: invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    0009: invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000c: invoke-static {v7}, Lcom/myairtelapp/plugin/UtilNetworking;->getMergedData(Ljava/util/Map;)Ljava/lang/String;
    000f: move-result-object v6
    0010: invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0013: invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0016: move-result-object v6
    0017: new-instance v7, Ljava/net/URL;
    0019: invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    001c: invoke-static {v7}, Lcom/myairtelapp/plugin/UtilNetworking;->getHttpURLConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    001f: move-result-object v6
    0020: const/4 v2, #1
    0021: invoke-static {v2}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V
    0024: invoke-static {v8}, Lcom/myairtelapp/plugin/UtilNetworking;->getConnectionOptions(Ljava/util/Map;)Lcom/myairtelapp/plugin/UtilNetworking$IConnectionOptions;
    0027: move-result-object v8
    0028: invoke-virtual {v7}, Ljava/net/URL;->getPath()Ljava/lang/String;
    002b: move-result-object v3
    002c: invoke-interface {v8, v6, v3}, Lcom/myairtelapp/plugin/UtilNetworking$IConnectionOptions;->applyConnectionOptions(Ljava/net/HttpURLConnection;, Ljava/lang/String;)V
    002f: const-string v8, 'GET'
    0031: invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    0034: new-instance v8, Ljava/lang/StringBuilder;
    0036: invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0039: const-string v1, '====> [%s] url: %s'
    003b: const/4 v3, #2
    003c: new-array v3, v3, [Ljava/lang/Object;
    003e: invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;
    0041: move-result-object v4
    0042: const/4 v5, #0
    0043: aput-object v4, v3, v5
    0045: aput-object v7, v3, v2
    0047: invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    004a: move-result-object v7
    004b: invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    004e: invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0051: move-result-object v7
    0052: invoke-static {v7}, Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    0055: new-instance v7, Ljava/lang/StringBuilder;
    0057: invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    005a: invoke-virtual {v6}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;
    005d: move-result-object v8
    005e: invoke-static {v8}, Lcom/myairtelapp/plugin/StringUtils;->getExtendedString(Ljava/util/Map;)Ljava/lang/String;
    0061: move-result-object v8
    0062: invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0065: invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0068: move-result-object v7
    0069: invoke-static {v7}, Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    006c: invoke-static {v6}, Lcom/myairtelapp/plugin/UtilNetworking;->readHttpResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    006f: move-result-object v6
    0070: return-object v6
.end method

.method public static Lcom/myairtelapp/plugin/UtilNetworking;->createGETHttpURLConnection(Ljava/lang/String;, Ljava/util/Map;, Ljava/util/Map;, Ljava/lang/String;, I)Ljava/lang/String;
    .registers 9
    0000: const-string v0, '[*] The request properties is: '
    0002: const-string v1, '[*] '
    0004: new-instance v2, Ljava/lang/StringBuilder;
    0006: invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    0009: invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000c: invoke-static {v5}, Lcom/myairtelapp/plugin/UtilNetworking;->getMergedData(Ljava/util/Map;)Ljava/lang/String;
    000f: move-result-object v4
    0010: invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0013: invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0016: move-result-object v4
    0017: new-instance v5, Ljava/net/URL;
    0019: invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    001c: new-instance v4, Ljava/net/Proxy;
    001e: sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;
    0020: new-instance v3, Ljava/net/InetSocketAddress;
    0022: invoke-direct {v3, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;, I)V
    0025: invoke-direct {v4, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;, Ljava/net/SocketAddress;)V
    0028: invoke-static {v5, v4}, Lcom/myairtelapp/plugin/UtilNetworking;->getHttpURLConnection(Ljava/net/URL;, Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    002b: move-result-object v4
    002c: const/4 v7, #1
    002d: invoke-static {v7}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V
    0030: invoke-static {v6}, Lcom/myairtelapp/plugin/UtilNetworking;->getConnectionOptions(Ljava/util/Map;)Lcom/myairtelapp/plugin/UtilNetworking$IConnectionOptions;
    0033: move-result-object v6
    0034: invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;
    0037: move-result-object v8
    0038: invoke-interface {v6, v4, v8}, Lcom/myairtelapp/plugin/UtilNetworking$IConnectionOptions;->applyConnectionOptions(Ljava/net/HttpURLConnection;, Ljava/lang/String;)V
    003b: const-string v6, 'GET'
    003d: invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    0040: new-instance v6, Ljava/lang/StringBuilder;
    0042: invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0045: const-string v8, '====> [%s] url: %s'
    0047: const/4 v1, #2
    0048: new-array v1, v1, [Ljava/lang/Object;
    004a: invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;
    004d: move-result-object v2
    004e: const/4 v3, #0
    004f: aput-object v2, v1, v3
    0051: aput-object v5, v1, v7
    0053: invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0056: move-result-object v5
    0057: invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    005a: invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    005d: move-result-object v5
    005e: invoke-static {v5}, Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    0061: new-instance v5, Ljava/lang/StringBuilder;
    0063: invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0066: invoke-virtual {v4}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;
    0069: move-result-object v6
    006a: invoke-static {v6}, Lcom/myairtelapp/plugin/StringUtils;->getExtendedString(Ljava/util/Map;)Ljava/lang/String;
    006d: move-result-object v6
    006e: invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0071: invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0074: move-result-object v5
    0075: invoke-static {v5}, Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    0078: invoke-static {v4}, Lcom/myairtelapp/plugin/UtilNetworking;->readHttpResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    007b: move-result-object v4
    007c: return-object v4
.end method

.method public static Lcom/myairtelapp/plugin/UtilNetworking;->createPOSTHttpURLConnection(Ljava/lang/String;, Ljava/lang/Object;, Ljava/util/Map;)Ljava/lang/String;
    .registers 11
    0000: const-string v0, '[*] The request properties is: '
    0002: const-string v1, '[*] '
    0004: const/4 v2, #0
    0005: new-instance v3, Ljava/net/URL;
    0007: invoke-direct {v3, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    000a: invoke-static {v3}, Lcom/myairtelapp/plugin/UtilNetworking;->getHttpURLConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    000d: move-result-object v8
    000e: const/4 v4, #0
    000f: invoke-static {v4}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V
    0012: invoke-static {v10}, Lcom/myairtelapp/plugin/UtilNetworking;->getConnectionOptions(Ljava/util/Map;)Lcom/myairtelapp/plugin/UtilNetworking$IConnectionOptions;
    0015: move-result-object v10
    0016: invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;
    0019: move-result-object v5
    001a: invoke-interface {v10, v8, v5}, Lcom/myairtelapp/plugin/UtilNetworking$IConnectionOptions;->applyConnectionOptions(Ljava/net/HttpURLConnection;, Ljava/lang/String;)V
    001d: const-string v10, 'POST'
    001f: invoke-virtual {v8, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    0022: invoke-virtual {v8, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V
    0025: const/4 v10, #1
    0026: invoke-virtual {v8, v10}, Ljava/net/URLConnection;->setDoInput(Z)V
    0029: invoke-virtual {v8, v10}, Ljava/net/URLConnection;->setDoOutput(Z)V
    002c: new-instance v5, Ljava/lang/StringBuilder;
    002e: invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0031: const-string v1, '====> [%s] \n  ---- url: %s\n  ---- body: %s'
    0033: const/4 v6, #3
    0034: new-array v6, v6, [Ljava/lang/Object;
    0036: invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;
    0039: move-result-object v7
    003a: aput-object v7, v6, v4
    003c: aput-object v3, v6, v10
    003e: const/4 v10, #2
    003f: aput-object v9, v6, v10
    0041: invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0044: move-result-object v10
    0045: invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0048: invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    004b: move-result-object v10
    004c: invoke-static {v10}, Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    004f: new-instance v10, Ljava/lang/StringBuilder;
    0051: invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0054: invoke-virtual {v8}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;
    0057: move-result-object v0
    0058: invoke-static {v0}, Lcom/myairtelapp/plugin/StringUtils;->getExtendedString(Ljava/util/Map;)Ljava/lang/String;
    005b: move-result-object v0
    005c: invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    005f: invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0062: move-result-object v10
    0063: invoke-static {v10}, Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    0066: new-instance v10, Ljava/io/DataOutputStream;
    0068: invoke-virtual {v8}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;
    006b: move-result-object v0
    006c: invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    006f: invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0072: move-result-object v9
    0073: invoke-virtual {v10, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    0076: invoke-static {v8}, Lcom/myairtelapp/plugin/UtilNetworking;->readHttpResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    0079: move-result-object v8
    007a: invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V
    007d: invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    0080: return-object v8
    0081: move-exception v8
    0082: move-object v2, v10
    0083: goto 0085
    0084: move-exception v8
    0085: throw v8
    0086: move-exception v8
    0087: if-eqz v2, 008f
    0089: invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    008c: invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    008f: throw v8
.end method

.method public static Lcom/myairtelapp/plugin/UtilNetworking;->createPOSTHttpURLConnection(Ljava/lang/String;, Ljava/lang/Object;, Ljava/util/Map;, Ljava/lang/String;, I)Ljava/lang/String;
    .registers 11
    0000: const-string v0, '[*] The request properties is: '
    0002: const-string v1, '[*] '
    0004: const/4 v2, #0
    0005: new-instance v3, Ljava/net/URL;
    0007: invoke-direct {v3, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    000a: new-instance v6, Ljava/net/Proxy;
    000c: sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;
    000e: new-instance v5, Ljava/net/InetSocketAddress;
    0010: invoke-direct {v5, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;, I)V
    0013: invoke-direct {v6, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;, Ljava/net/SocketAddress;)V
    0016: invoke-static {v3, v6}, Lcom/myairtelapp/plugin/UtilNetworking;->getHttpURLConnection(Ljava/net/URL;, Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    0019: move-result-object v6
    001a: const/4 v9, #0
    001b: invoke-static {v9}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V
    001e: invoke-static {v8}, Lcom/myairtelapp/plugin/UtilNetworking;->getConnectionOptions(Ljava/util/Map;)Lcom/myairtelapp/plugin/UtilNetworking$IConnectionOptions;
    0021: move-result-object v8
    0022: invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;
    0025: move-result-object v10
    0026: invoke-interface {v8, v6, v10}, Lcom/myairtelapp/plugin/UtilNetworking$IConnectionOptions;->applyConnectionOptions(Ljava/net/HttpURLConnection;, Ljava/lang/String;)V
    0029: const-string v8, 'POST'
    002b: invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    002e: invoke-virtual {v6, v9}, Ljava/net/URLConnection;->setUseCaches(Z)V
    0031: const/4 v8, #1
    0032: invoke-virtual {v6, v8}, Ljava/net/URLConnection;->setDoInput(Z)V
    0035: invoke-virtual {v6, v8}, Ljava/net/URLConnection;->setDoOutput(Z)V
    0038: new-instance v10, Ljava/lang/StringBuilder;
    003a: invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    003d: const-string v1, '====> [%s] \n  ---- url: %s\n  ---- body: %s'
    003f: const/4 v4, #3
    0040: new-array v4, v4, [Ljava/lang/Object;
    0042: invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;
    0045: move-result-object v5
    0046: aput-object v5, v4, v9
    0048: aput-object v3, v4, v8
    004a: const/4 v8, #2
    004b: aput-object v7, v4, v8
    004d: invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0050: move-result-object v8
    0051: invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0054: invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0057: move-result-object v8
    0058: invoke-static {v8}, Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    005b: new-instance v8, Ljava/lang/StringBuilder;
    005d: invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0060: invoke-virtual {v6}, Ljava/net/URLConnection;->getRequestProperties()Ljava/util/Map;
    0063: move-result-object v9
    0064: invoke-static {v9}, Lcom/myairtelapp/plugin/StringUtils;->getExtendedString(Ljava/util/Map;)Ljava/lang/String;
    0067: move-result-object v9
    0068: invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    006b: invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    006e: move-result-object v8
    006f: invoke-static {v8}, Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    0072: new-instance v8, Ljava/io/DataOutputStream;
    0074: invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;
    0077: move-result-object v9
    0078: invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    007b: invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
    007e: move-result-object v7
    007f: invoke-virtual {v8, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    0082: invoke-static {v6}, Lcom/myairtelapp/plugin/UtilNetworking;->readHttpResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    0085: move-result-object v6
    0086: invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V
    0089: invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    008c: return-object v6
    008d: move-exception v6
    008e: move-object v2, v8
    008f: goto 0091
    0090: move-exception v6
    0091: throw v6
    0092: move-exception v6
    0093: if-eqz v2, 009b
    0095: invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    0098: invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    009b: throw v6
.end method

.method private static Lcom/myairtelapp/plugin/UtilNetworking;->getConnectionOptions(Ljava/util/Map;)Lcom/myairtelapp/plugin/UtilNetworking$IConnectionOptions;
    .registers 3
    0000: new-instance v0, Lcom/myairtelapp/plugin/UtilNetworking$ConnectionOptions;
    0002: const/4 v1, #0
    0003: invoke-direct {v0, v2, v1}, Lcom/myairtelapp/plugin/UtilNetworking$ConnectionOptions;-><init>(Ljava/util/Map;, Lcom/myairtelapp/plugin/UtilNetworking$1;)V
    0006: return-object v0
.end method

.method private static Lcom/myairtelapp/plugin/UtilNetworking;->getHttpURLConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 1
    0000: invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    0003: move-result-object v0
    0004: check-cast v0, Ljava/net/HttpURLConnection;
    0006: return-object v0
.end method

.method private static Lcom/myairtelapp/plugin/UtilNetworking;->getHttpURLConnection(Ljava/net/URL;, Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .registers 2
    0000: invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    0003: move-result-object v0
    0004: check-cast v0, Ljava/net/HttpURLConnection;
    0006: return-object v0
.end method

.method private static Lcom/myairtelapp/plugin/UtilNetworking;->getMergedData(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    0000: const-string v0, ''
    0002: if-nez v5, 0005
    0004: return-object v0
    0005: new-instance v1, Ljava/lang/StringBuilder;
    0007: invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    000a: invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    000d: move-result-object v5
    000e: invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    0011: move-result-object v5
    0012: invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    0015: move-result v2
    0016: if-eqz v2, 0051
    0018: invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    001b: move-result-object v2
    001c: check-cast v2, Ljava/util/Map$Entry;
    001e: invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    0021: move-result-object v3
    0022: check-cast v3, Ljava/lang/String;
    0024: invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    0027: move-result-object v2
    0028: if-eqz v2, 0033
    002a: invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    002d: move-result-object v2
    002e: invoke-static {v2}, Lcom/myairtelapp/plugin/UrlUtils;->toURLEncoded(Ljava/lang/String;)Ljava/lang/String;
    0031: move-result-object v2
    0032: goto 0034
    0033: move-object v2, v0
    0034: invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
    0037: move-result v4
    0038: if-lez v4, 0040
    003a: const-string v4, '&'
    003c: invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    003f: goto 0045
    0040: const-string v4, '?'
    0042: invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0045: invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0048: const-string v3, '='
    004a: invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    004d: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0050: goto 0012
    0051: new-instance v5, Ljava/lang/StringBuilder;
    0053: const-string v0, '[*] '
    0055: invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0058: const-string v0, 'merged data: %s'
    005a: filled-new-array {v1}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    005d: move-result-object v2
    005e: invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0061: move-result-object v0
    0062: invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0065: invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0068: move-result-object v5
    0069: invoke-static {v5}, Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    006c: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    006f: move-result-object v5
    0070: return-object v5
.end method

.method private static Lcom/myairtelapp/plugin/UtilNetworking;->readHttpResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 11
    0000: const-string v0, '[.] responseCode: '
    0002: const-string v1, '[*] The response header fields is: '
    0004: new-instance v2, Ljava/lang/StringBuffer;
    0006: invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
    0009: const/4 v3, #0
    000a: const/4 v4, #1
    000b: const/4 v5, #0
    000c: invoke-virtual {v10}, Ljava/net/URLConnection;->connect()V
    000f: new-instance v6, Ljava/lang/StringBuilder;
    0011: invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0014: invoke-virtual {v10}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;
    0017: move-result-object v1
    0018: invoke-static {v1}, Lcom/myairtelapp/plugin/StringUtils;->getExtendedString(Ljava/util/Map;)Ljava/lang/String;
    001b: move-result-object v1
    001c: invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001f: invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0022: move-result-object v1
    0023: invoke-static {v1}, Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    0026: invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I
    0029: move-result v1
    002a: new-instance v6, Ljava/lang/StringBuilder;
    002c: invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    002f: invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    0032: invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0035: move-result-object v0
    0036: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    0039: const/16 v0, #400
    003b: if-lt v1, v0, 0042
    003d: invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    0040: move-result-object v0
    0041: goto 008d
    0042: const/16 v0, #302
    0044: if-ne v1, v0, 0089
    0046: new-instance v0, Ljava/util/HashMap;
    0048: invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    004b: invoke-virtual {v10}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;
    004e: move-result-object v1
    004f: invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    0052: move-result-object v1
    0053: invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    0056: move-result-object v1
    0057: invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    005a: move-result v2
    005b: if-eqz v2, 0081
    005d: invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0060: move-result-object v2
    0061: check-cast v2, Ljava/util/Map$Entry;
    0063: invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    0066: move-result-object v6
    0067: check-cast v6, Ljava/lang/String;
    0069: const-string v7, 'Location'
    006b: invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    006e: move-result v7
    006f: if-nez v7, 0079
    0071: const-string v7, 'Set-Cookie'
    0073: invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    0076: move-result v7
    0077: if-eqz v7, 0057
    0079: invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    007c: move-result-object v2
    007d: invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0080: goto 0057
    0081: invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0084: move-result-object v0
    0085: invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    0088: return-object v0
    0089: invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    008c: move-result-object v0
    008d: invoke-virtual {v10}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;
    0090: move-result-object v6
    0091: if-eqz v6, 00c3
    0093: const-string v7, 'gzip'
    0095: invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    0098: move-result v7
    0099: if-eqz v7, 00c3
    009b: new-instance v6, Ljava/io/BufferedReader;
    009d: new-instance v7, Ljava/io/InputStreamReader;
    009f: new-instance v8, Ljava/util/zip/GZIPInputStream;
    00a1: invoke-direct {v8, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    00a4: invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    00a7: invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    00aa: invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    00ad: move-result-object v7
    00ae: if-eqz v7, 00bf
    00b0: new-instance v8, Ljava/lang/String;
    00b2: sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    00b4: invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    00b7: move-result-object v7
    00b8: invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V
    00bb: invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    00be: goto 00aa
    00bf: invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    00c2: goto 0106
    00c3: if-eqz v6, 00ef
    00c5: const-string v7, 'deflate'
    00c7: invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    00ca: move-result v6
    00cb: if-eqz v6, 00ef
    00cd: new-instance v6, Ljava/io/BufferedReader;
    00cf: new-instance v7, Ljava/io/InputStreamReader;
    00d1: new-instance v8, Ljava/util/zip/InflaterInputStream;
    00d3: new-instance v9, Ljava/util/zip/Inflater;
    00d5: invoke-direct {v9, v4}, Ljava/util/zip/Inflater;-><init>(Z)V
    00d8: invoke-direct {v8, v0, v9}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;, Ljava/util/zip/Inflater;)V
    00db: invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    00de: invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    00e1: invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    00e4: move-result-object v7
    00e5: if-eqz v7, 00eb
    00e7: invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    00ea: goto 00e1
    00eb: invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    00ee: goto 0106
    00ef: new-instance v6, Ljava/io/BufferedReader;
    00f1: new-instance v7, Ljava/io/InputStreamReader;
    00f3: invoke-direct {v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    00f6: invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    00f9: invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    00fc: move-result-object v7
    00fd: if-eqz v7, 0103
    00ff: invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    0102: goto 00f9
    0103: invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    0106: if-eqz v0, 010b
    0108: invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    010b: invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    010e: invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    0111: move-result-object v10
    0112: const/16 v0, #429
    0114: if-ne v1, v0, 0122
    0116: const-string v10, 'Too frequent requests to the endpoint (429)'
    0118: new-array v0, v3, [Ljava/lang/Object;
    011a: invoke-static {v10, v0}, Lcom/myairtelapp/plugin/StringUtils;->formatString(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    011d: move-result-object v10
    011e: invoke-static {v10}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    0121: return-object v5
    0122: new-instance v0, Ljava/lang/StringBuilder;
    0124: const-string v2, '[*] '
    0126: invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0129: const/4 v2, #2
    012a: new-array v2, v2, [Ljava/lang/Object;
    012c: invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    012f: move-result-object v1
    0130: aput-object v1, v2, v3
    0132: invoke-static {v10}, Lcom/myairtelapp/plugin/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    0135: move-result v1
    0136: if-eqz v1, 013b
    0138: const-string v1, '(no content)'
    013a: goto 013c
    013b: move-object v1, v10
    013c: aput-object v1, v2, v4
    013e: const-string v1, '<=== response received [%s] - %s'
    0140: invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0143: move-result-object v1
    0144: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0147: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    014a: move-result-object v0
    014b: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    014e: return-object v10
    014f: move-exception v1
    0150: move-object v5, v0
    0151: move-object v0, v1
    0152: goto 0154
    0153: move-exception v0
    0154: const-string v1, 'Failed to read response. (%s)'
    0156: new-array v2, v4, [Ljava/lang/Object;
    0158: invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    015b: move-result-object v4
    015c: aput-object v4, v2, v3
    015e: invoke-static {v1, v2}, Lcom/myairtelapp/plugin/StringUtils;->formatString(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0161: move-result-object v1
    0162: invoke-static {v1}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    0165: throw v0
    0166: move-exception v0
    0167: if-eqz v5, 016c
    0169: invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    016c: if-eqz v10, 0171
    016e: invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    0171: throw v0
.end method
