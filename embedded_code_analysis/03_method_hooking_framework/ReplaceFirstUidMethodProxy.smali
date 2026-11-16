# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/ReplaceFirstUidMethodProxy;
.super Lcom/myairtelapp/hook/MethodProxy;
.source "SourceFile"


.method public constructor Lcom/myairtelapp/hook/ReplaceFirstUidMethodProxy;-><init>(Ljava/lang/String;)V
    .registers 2
    0000: invoke-direct {v0}, Lcom/myairtelapp/hook/MethodProxy;-><init>()V
    0003: invoke-virtual {v0, v1}, Lcom/myairtelapp/hook/MethodProxy;->setMethodName(Ljava/lang/String;)V
    0006: return-void
.end method

.method public varargs Lcom/myairtelapp/hook/ReplaceFirstUidMethodProxy;->beforeInvoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)Z
    .registers 4
    0000: invoke-virtual {v0, v3}, Lcom/myairtelapp/hook/MethodProxy;->replaceFirstUid([Ljava/lang/Object;)V
    0003: invoke-super {v0, v1, v2, v3}, Lcom/myairtelapp/hook/MethodProxy;->beforeInvoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)Z
    0006: move-result v0
    0007: return v0
.end method
