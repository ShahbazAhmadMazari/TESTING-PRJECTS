# Source DEX: classes18.dex
# Disassembled for educational analysis

.class  Lcom/myairtelapp/plugin/UtilNetworking$ConnectionOptions;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/myairtelapp/plugin/UtilNetworking$IConnectionOptions;

.field private Lcom/myairtelapp/plugin/UtilNetworking$ConnectionOptions;->headers:Ljava/util/Map;

.method private constructor Lcom/myairtelapp/plugin/UtilNetworking$ConnectionOptions;-><init>(Ljava/util/Map;)V
    .registers 2
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: iput-object v1, v0, Lcom/myairtelapp/plugin/UtilNetworking$ConnectionOptions;->headers:Ljava/util/Map;
    0005: return-void
.end method

.method public synthetic constructor Lcom/myairtelapp/plugin/UtilNetworking$ConnectionOptions;-><init>(Ljava/util/Map;, Lcom/myairtelapp/plugin/UtilNetworking$1;)V
    .registers 3
    0000: invoke-direct {v0, v1}, Lcom/myairtelapp/plugin/UtilNetworking$ConnectionOptions;-><init>(Ljava/util/Map;)V
    0003: return-void
.end method

.method public Lcom/myairtelapp/plugin/UtilNetworking$ConnectionOptions;->applyConnectionOptions(Ljava/net/HttpURLConnection;, Ljava/lang/String;)V
    .registers 4
    0000: const/16 v3, #30000
    0002: invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V
    0005: invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V
    0008: iget-object v1, v1, Lcom/myairtelapp/plugin/UtilNetworking$ConnectionOptions;->headers:Ljava/util/Map;
    000a: invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    000d: move-result-object v1
    000e: invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    0011: move-result-object v1
    0012: invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    0015: move-result v3
    0016: if-eqz v3, 0035
    0018: invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    001b: move-result-object v3
    001c: check-cast v3, Ljava/util/Map$Entry;
    001e: invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    0021: move-result-object v0
    0022: check-cast v0, Ljava/lang/String;
    0024: invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    0027: move-result-object v3
    0028: if-nez v3, 002d
    002a: const-string v3, ''
    002c: goto 0031
    002d: invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    0030: move-result-object v3
    0031: invoke-virtual {v2, v0, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;, Ljava/lang/String;)V
    0034: goto 0012
    0035: return-void
.end method
