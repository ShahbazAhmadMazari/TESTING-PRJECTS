# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract Lcom/myairtelapp/hook/MethodProxy;
.super Ljava/lang/Object;
.source "SourceFile"

.field private Lcom/myairtelapp/hook/MethodProxy;->mEnable:Z
.field private Lcom/myairtelapp/hook/MethodProxy;->mMethodName:Ljava/lang/String;

.method public constructor Lcom/myairtelapp/hook/MethodProxy;-><init>()V
    .registers 2
    0000: invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    0003: const/4 v0, #0
    0004: iput-boolean v0, v1, Lcom/myairtelapp/hook/MethodProxy;->mEnable:Z
    0006: return-void
.end method

.method public Lcom/myairtelapp/hook/MethodProxy;->afterInvoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    0000: return-object v4
.end method

.method public varargs Lcom/myairtelapp/hook/MethodProxy;->beforeInvoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)Z
    .registers 4
    0000: const/4 v0, #1
    0001: return v0
.end method

.method public Lcom/myairtelapp/hook/MethodProxy;->getMethodName()Ljava/lang/String;
    .registers 1
    0000: iget-object v0, v0, Lcom/myairtelapp/hook/MethodProxy;->mMethodName:Ljava/lang/String;
    0002: return-object v0
.end method

.method public varargs Lcom/myairtelapp/hook/MethodProxy;->invoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    0000: invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;, [Ljava/lang/Object;)Ljava/lang/Object;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public Lcom/myairtelapp/hook/MethodProxy;->isEnable()Z
    .registers 1
    0000: iget-boolean v0, v0, Lcom/myairtelapp/hook/MethodProxy;->mEnable:Z
    0002: return v0
.end method

.method public varargs Lcom/myairtelapp/hook/MethodProxy;->replaceFirstUid([Ljava/lang/Object;)V
    .registers 3
    0000: const-class v0, Ljava/lang/Integer;
    0002: invoke-static {v2, v0}, Lcom/myairtelapp/hook/MethodUtil;->indexOfFirstArgType([Ljava/lang/Object;, Ljava/lang/Class;)I
    0005: move-result v0
    0006: invoke-virtual {v1, v0, v2}, Lcom/myairtelapp/hook/MethodProxy;->replaceIndexUid(I, [Ljava/lang/Object;)V
    0009: return-void
.end method

.method public varargs Lcom/myairtelapp/hook/MethodProxy;->replaceFirstUserId([Ljava/lang/Object;)V
    .registers 3
    0000: const-class v0, Ljava/lang/Integer;
    0002: invoke-static {v2, v0}, Lcom/myairtelapp/hook/MethodUtil;->indexOfFirstArgType([Ljava/lang/Object;, Ljava/lang/Class;)I
    0005: move-result v0
    0006: invoke-virtual {v1, v0, v2}, Lcom/myairtelapp/hook/MethodProxy;->replaceIndexUserId(I, [Ljava/lang/Object;)V
    0009: return-void
.end method

.method public varargs Lcom/myairtelapp/hook/MethodProxy;->replaceIndexUid(I, [Ljava/lang/Object;)V
    .registers 4
    0000: if-ltz v2, 001e
    0002: array-length v1, v3
    0003: if-ge v2, v1, 001e
    0005: aget-object v1, v3, v2
    0007: instance-of v0, v1, Ljava/lang/Integer;
    0009: if-nez v0, 000c
    000b: goto 001e
    000c: check-cast v1, Ljava/lang/Integer;
    000e: invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    0011: move-result v1
    0012: invoke-static {}, Landroid/os/Process;->myUid()I
    0015: move-result v0
    0016: if-eq v1, v0, 001e
    0018: invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    001b: move-result-object v1
    001c: aput-object v1, v3, v2
    001e: return-void
.end method

.method public varargs Lcom/myairtelapp/hook/MethodProxy;->replaceIndexUserId(I, [Ljava/lang/Object;)V
    .registers 5
    0000: if-ltz v3, 0032
    0002: array-length v2, v4
    0003: if-ge v3, v2, 0032
    0005: aget-object v2, v4, v3
    0007: instance-of v0, v2, Ljava/lang/Integer;
    0009: if-nez v0, 000c
    000b: goto 0032
    000c: check-cast v2, Ljava/lang/Integer;
    000e: invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    0011: move-result v2
    0012: sget-object v0, Lcom/myairtelapp/hook/UserHandleDelegate;->getUserId:Lcom/myairtelapp/hook/ReflectMethod;
    0014: invoke-static {}, Landroid/os/Process;->myUid()I
    0017: move-result v1
    0018: invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    001b: move-result-object v1
    001c: filled-new-array {v1}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    001f: move-result-object v1
    0020: invoke-virtual {v0, v1}, Lcom/myairtelapp/hook/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    0023: move-result-object v0
    0024: check-cast v0, Ljava/lang/Integer;
    0026: invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    0029: move-result v0
    002a: if-eq v2, v0, 0032
    002c: invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    002f: move-result-object v2
    0030: aput-object v2, v4, v3
    0032: return-void
.end method

.method public varargs Lcom/myairtelapp/hook/MethodProxy;->replaceLastUid([Ljava/lang/Object;)V
    .registers 3
    0000: const-class v0, Ljava/lang/Integer;
    0002: invoke-static {v2, v0}, Lcom/myairtelapp/hook/MethodUtil;->indexOfLastArgType([Ljava/lang/Object;, Ljava/lang/Class;)I
    0005: move-result v0
    0006: invoke-virtual {v1, v0, v2}, Lcom/myairtelapp/hook/MethodProxy;->replaceIndexUid(I, [Ljava/lang/Object;)V
    0009: return-void
.end method

.method public varargs Lcom/myairtelapp/hook/MethodProxy;->replaceLastUserId([Ljava/lang/Object;)V
    .registers 3
    0000: const-class v0, Ljava/lang/Integer;
    0002: invoke-static {v2, v0}, Lcom/myairtelapp/hook/MethodUtil;->indexOfLastArgType([Ljava/lang/Object;, Ljava/lang/Class;)I
    0005: move-result v0
    0006: invoke-virtual {v1, v0, v2}, Lcom/myairtelapp/hook/MethodProxy;->replaceIndexUserId(I, [Ljava/lang/Object;)V
    0009: return-void
.end method

.method public Lcom/myairtelapp/hook/MethodProxy;->setEnable(Z)V
    .registers 2
    0000: iput-boolean v1, v0, Lcom/myairtelapp/hook/MethodProxy;->mEnable:Z
    0002: return-void
.end method

.method public Lcom/myairtelapp/hook/MethodProxy;->setMethodName(Ljava/lang/String;)V
    .registers 2
    0000: iput-object v1, v0, Lcom/myairtelapp/hook/MethodProxy;->mMethodName:Ljava/lang/String;
    0002: return-void
.end method
