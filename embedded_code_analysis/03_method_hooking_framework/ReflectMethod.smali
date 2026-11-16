# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/ReflectMethod;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final Lcom/myairtelapp/hook/ReflectMethod;->mClass:Lcom/myairtelapp/hook/ReflectClass;
.field private final Lcom/myairtelapp/hook/ReflectMethod;->mIsStatic:Z
.field private final Lcom/myairtelapp/hook/ReflectMethod;->mMethod:Ljava/lang/reflect/Method;

.method public constructor Lcom/myairtelapp/hook/ReflectMethod;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Method;)V
    .registers 3
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: iput-object v1, v0, Lcom/myairtelapp/hook/ReflectMethod;->mClass:Lcom/myairtelapp/hook/ReflectClass;
    0005: iput-object v2, v0, Lcom/myairtelapp/hook/ReflectMethod;->mMethod:Ljava/lang/reflect/Method;
    0007: invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I
    000a: move-result v1
    000b: invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    000e: move-result v1
    000f: iput-boolean v1, v0, Lcom/myairtelapp/hook/ReflectMethod;->mIsStatic:Z
    0011: return-void
.end method

.method public Lcom/myairtelapp/hook/ReflectMethod;->argsNum()I
    .registers 1
    0000: iget-object v0, v0, Lcom/myairtelapp/hook/ReflectMethod;->mMethod:Ljava/lang/reflect/Method;
    0002: invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
    0005: move-result-object v0
    0006: array-length v0, v0
    0007: return v0
.end method

.method public varargs Lcom/myairtelapp/hook/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    0000: invoke-virtual {v2, v3}, Lcom/myairtelapp/hook/ReflectMethod;->invokeWithException([Ljava/lang/Object;)Ljava/lang/Object;
    0003: move-result-object v2
    0004: return-object v2
    0005: move-exception v2
    0006: new-instance v0, Ljava/lang/StringBuilder;
    0008: const-string v1, 'invoke '
    000a: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    000d: invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    0010: move-result-object v3
    0011: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0014: const-string v3, ' error: '
    0016: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0019: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    001c: move-result-object v3
    001d: invoke-static {v3, v2}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;, Ljava/lang/Throwable;)V
    0020: const/4 v2, #0
    0021: return-object v2
.end method

.method public varargs Lcom/myairtelapp/hook/ReflectMethod;->invokeWithException([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    0000: iget-boolean v0, v4, Lcom/myairtelapp/hook/ReflectMethod;->mIsStatic:Z
    0002: const/4 v1, #0
    0003: if-eqz v0, 0006
    0005: goto 0015
    0006: const/4 v0, #0
    0007: aget-object v0, v5, v0
    0009: array-length v2, v5
    000a: const/4 v3, #1
    000b: if-le v2, v3, 0013
    000d: array-length v1, v5
    000e: invoke-static {v5, v3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;, I, I)[Ljava/lang/Object;
    0011: move-result-object v5
    0012: goto 0014
    0013: move-object v5, v1
    0014: move-object v1, v0
    0015: iget-object v4, v4, Lcom/myairtelapp/hook/ReflectMethod;->mMethod:Ljava/lang/reflect/Method;
    0017: invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;, [Ljava/lang/Object;)Ljava/lang/Object;
    001a: move-result-object v4
    001b: return-object v4
.end method

.method public Lcom/myairtelapp/hook/ReflectMethod;->isStatic()Z
    .registers 1
    0000: iget-boolean v0, v0, Lcom/myairtelapp/hook/ReflectMethod;->mIsStatic:Z
    0002: return v0
.end method
