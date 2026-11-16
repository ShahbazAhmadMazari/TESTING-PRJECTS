# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/ReplaceIndexMethodProxy;
.super Lcom/myairtelapp/hook/MethodProxy;
.source "SourceFile"

.field private final Lcom/myairtelapp/hook/ReplaceIndexMethodProxy;->mIndex:I
.field private final Lcom/myairtelapp/hook/ReplaceIndexMethodProxy;->mValue:Ljava/lang/Object;

.method public constructor Lcom/myairtelapp/hook/ReplaceIndexMethodProxy;-><init>(Ljava/lang/String;, I, Ljava/lang/Object;)V
    .registers 4
    0000: invoke-direct {v0}, Lcom/myairtelapp/hook/MethodProxy;-><init>()V
    0003: invoke-virtual {v0, v1}, Lcom/myairtelapp/hook/MethodProxy;->setMethodName(Ljava/lang/String;)V
    0006: iput v2, v0, Lcom/myairtelapp/hook/ReplaceIndexMethodProxy;->mIndex:I
    0008: iput-object v3, v0, Lcom/myairtelapp/hook/ReplaceIndexMethodProxy;->mValue:Ljava/lang/Object;
    000a: return-void
.end method

.method public varargs Lcom/myairtelapp/hook/ReplaceIndexMethodProxy;->beforeInvoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)Z
    .registers 6
    0000: iget v0, v2, Lcom/myairtelapp/hook/ReplaceIndexMethodProxy;->mIndex:I
    0002: if-ltz v0, 000b
    0004: array-length v1, v5
    0005: if-ge v0, v1, 000b
    0007: iget-object v1, v2, Lcom/myairtelapp/hook/ReplaceIndexMethodProxy;->mValue:Ljava/lang/Object;
    0009: aput-object v1, v5, v0
    000b: invoke-super {v2, v3, v4, v5}, Lcom/myairtelapp/hook/MethodProxy;->beforeInvoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)Z
    000e: move-result v2
    000f: return v2
.end method
