# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/plugin/UrlUtils;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static final static Lcom/myairtelapp/plugin/UrlUtils;->ENCODING:Ljava/lang/String;

.method public constructor Lcom/myairtelapp/plugin/UrlUtils;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: return-void
.end method

.method public static Lcom/myairtelapp/plugin/UrlUtils;->toURLDecoded(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    0000: invoke-static {v2}, Lcom/myairtelapp/plugin/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    0003: move-result v0
    0004: const/4 v1, #0
    0005: if-eqz v0, 0008
    0007: return-object v1
    0008: const-string v0, 'UTF-8'
    000a: invoke-static {v2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    000d: move-result-object v2
    000e: return-object v2
    000f: move-exception v2
    0010: invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    0013: return-object v1
.end method

.method public static Lcom/myairtelapp/plugin/UrlUtils;->toURLEncoded(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    0000: invoke-static {v2}, Lcom/myairtelapp/plugin/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    0003: move-result v0
    0004: const/4 v1, #0
    0005: if-eqz v0, 0008
    0007: return-object v1
    0008: const-string v0, 'UTF-8'
    000a: invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    000d: move-result-object v2
    000e: return-object v2
    000f: move-exception v2
    0010: invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    0013: return-object v1
.end method
