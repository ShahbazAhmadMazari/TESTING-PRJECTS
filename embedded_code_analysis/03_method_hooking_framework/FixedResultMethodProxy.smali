# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/FixedResultMethodProxy;
.super Lcom/myairtelapp/hook/MethodProxy;
.source "SourceFile"

.field private Lcom/myairtelapp/hook/FixedResultMethodProxy;->mResult:Ljava/lang/Object;

.method public constructor Lcom/myairtelapp/hook/FixedResultMethodProxy;-><init>(Ljava/lang/String;, Ljava/lang/Object;)V
    .registers 3
    0000: invoke-direct {v0}, Lcom/myairtelapp/hook/MethodProxy;-><init>()V
    0003: invoke-virtual {v0, v1}, Lcom/myairtelapp/hook/MethodProxy;->setMethodName(Ljava/lang/String;)V
    0006: iput-object v2, v0, Lcom/myairtelapp/hook/FixedResultMethodProxy;->mResult:Ljava/lang/Object;
    0008: return-void
.end method

.method public Lcom/myairtelapp/hook/FixedResultMethodProxy;->getResult()Ljava/lang/Object;
    .registers 1
    0000: iget-object v0, v0, Lcom/myairtelapp/hook/FixedResultMethodProxy;->mResult:Ljava/lang/Object;
    0002: return-object v0
.end method

.method public varargs Lcom/myairtelapp/hook/FixedResultMethodProxy;->invoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    0000: iget-object v0, v0, Lcom/myairtelapp/hook/FixedResultMethodProxy;->mResult:Ljava/lang/Object;
    0002: return-object v0
.end method
