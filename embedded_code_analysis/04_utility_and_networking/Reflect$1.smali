# Source DEX: classes18.dex
# Disassembled for educational analysis

.class  Lcom/myairtelapp/plugin/Reflect$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/reflect/InvocationHandler;

.field final synthetic Lcom/myairtelapp/plugin/Reflect$1;->this$0:Lcom/myairtelapp/plugin/Reflect;
.field final synthetic Lcom/myairtelapp/plugin/Reflect$1;->val$isMap:Z

.method public constructor Lcom/myairtelapp/plugin/Reflect$1;-><init>(Lcom/myairtelapp/plugin/Reflect;, Z)V
    .registers 3
    0000: iput-object v1, v0, Lcom/myairtelapp/plugin/Reflect$1;->this$0:Lcom/myairtelapp/plugin/Reflect;
    0002: iput-boolean v2, v0, Lcom/myairtelapp/plugin/Reflect$1;->val$isMap:Z
    0004: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0007: return-void
.end method

.method public Lcom/myairtelapp/plugin/Reflect$1;->invoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    0000: invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    0003: move-result-object v5
    0004: iget-object v6, v4, Lcom/myairtelapp/plugin/Reflect$1;->this$0:Lcom/myairtelapp/plugin/Reflect;
    0006: invoke-static {v6}, Lcom/myairtelapp/plugin/Reflect;->access$000(Lcom/myairtelapp/plugin/Reflect;)Ljava/lang/Object;
    0009: move-result-object v6
    000a: invoke-static {v6}, Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    000d: move-result-object v6
    000e: invoke-virtual {v6, v5, v7}, Lcom/myairtelapp/plugin/Reflect;->call(Ljava/lang/String;, [Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    0011: move-result-object v6
    0012: invoke-virtual {v6}, Lcom/myairtelapp/plugin/Reflect;->get()Ljava/lang/Object;
    0015: move-result-object v4
    0016: return-object v4
    0017: move-exception v6
    0018: iget-boolean v0, v4, Lcom/myairtelapp/plugin/Reflect$1;->val$isMap:Z
    001a: if-eqz v0, 0074
    001c: iget-object v4, v4, Lcom/myairtelapp/plugin/Reflect$1;->this$0:Lcom/myairtelapp/plugin/Reflect;
    001e: invoke-static {v4}, Lcom/myairtelapp/plugin/Reflect;->access$000(Lcom/myairtelapp/plugin/Reflect;)Ljava/lang/Object;
    0021: move-result-object v4
    0022: check-cast v4, Ljava/util/Map;
    0024: const/4 v0, #0
    0025: if-nez v7, 0029
    0027: move v1, v0
    0028: goto 002a
    0029: array-length v1, v7
    002a: const/4 v2, #3
    002b: if-nez v1, 0042
    002d: const-string v3, 'get'
    002f: invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    0032: move-result v3
    0033: if-eqz v3, 0042
    0035: invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    0038: move-result-object v5
    0039: invoke-static {v5}, Lcom/myairtelapp/plugin/Reflect;->access$100(Ljava/lang/String;)Ljava/lang/String;
    003c: move-result-object v5
    003d: invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    0040: move-result-object v4
    0041: return-object v4
    0042: if-nez v1, 005a
    0044: const-string v3, 'is'
    0046: invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    0049: move-result v3
    004a: if-eqz v3, 005a
    004c: const/4 v6, #2
    004d: invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    0050: move-result-object v5
    0051: invoke-static {v5}, Lcom/myairtelapp/plugin/Reflect;->access$100(Ljava/lang/String;)Ljava/lang/String;
    0054: move-result-object v5
    0055: invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    0058: move-result-object v4
    0059: return-object v4
    005a: const/4 v3, #1
    005b: if-ne v1, v3, 0074
    005d: const-string v1, 'set'
    005f: invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    0062: move-result v1
    0063: if-eqz v1, 0074
    0065: invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    0068: move-result-object v5
    0069: invoke-static {v5}, Lcom/myairtelapp/plugin/Reflect;->access$100(Ljava/lang/String;)Ljava/lang/String;
    006c: move-result-object v5
    006d: aget-object v6, v7, v0
    006f: invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0072: const/4 v4, #0
    0073: return-object v4
    0074: throw v6
.end method
