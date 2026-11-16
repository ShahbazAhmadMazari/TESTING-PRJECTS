# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/ReplaceIndexUidMethodProxy;
.super Lcom/myairtelapp/hook/MethodProxy;
.source "SourceFile"

.field private final Lcom/myairtelapp/hook/ReplaceIndexUidMethodProxy;->mIndex:I

.method public constructor Lcom/myairtelapp/hook/ReplaceIndexUidMethodProxy;-><init>(Ljava/lang/String;, I)V
    .registers 3
    0000: invoke-direct {v0}, Lcom/myairtelapp/hook/MethodProxy;-><init>()V
    0003: iput v2, v0, Lcom/myairtelapp/hook/ReplaceIndexUidMethodProxy;->mIndex:I
    0005: invoke-virtual {v0, v1}, Lcom/myairtelapp/hook/MethodProxy;->setMethodName(Ljava/lang/String;)V
    0008: return-void
.end method

.method public varargs Lcom/myairtelapp/hook/ReplaceIndexUidMethodProxy;->beforeInvoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)Z
    .registers 5
    0000: iget v0, v1, Lcom/myairtelapp/hook/ReplaceIndexUidMethodProxy;->mIndex:I
    0002: invoke-virtual {v1, v0, v4}, Lcom/myairtelapp/hook/MethodProxy;->replaceIndexUid(I, [Ljava/lang/Object;)V
    0005: invoke-super {v1, v2, v3, v4}, Lcom/myairtelapp/hook/MethodProxy;->beforeInvoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)Z
    0008: move-result v1
    0009: return v1
.end method
