# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/MethodUtil;
.super Ljava/lang/Object;
.source "SourceFile"


.method public constructor Lcom/myairtelapp/hook/MethodUtil;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: return-void
.end method

.method public static Lcom/myairtelapp/hook/MethodUtil;->indexOfFirstArgInstance([Ljava/lang/Object;, Ljava/lang/Class;)I
    .registers 3
    0000: const/4 v0, #0
    0001: invoke-static {v1, v2, v0}, Lcom/myairtelapp/hook/MethodUtil;->indexOfFirstArgInstance([Ljava/lang/Object;, Ljava/lang/Class;, I)I
    0004: move-result v1
    0005: return v1
.end method

.method public static Lcom/myairtelapp/hook/MethodUtil;->indexOfFirstArgInstance([Ljava/lang/Object;, Ljava/lang/Class;, I)I
    .registers 4
    0000: if-eqz v1, 0013
    0002: array-length v0, v1
    0003: if-ge v3, v0, 0013
    0005: aget-object v0, v1, v3
    0007: if-eqz v0, 0010
    0009: invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    000c: move-result v0
    000d: if-eqz v0, 0010
    000f: return v3
    0010: add-int/lit8 v3, v3, #1
    0012: goto 0002
    0013: const/4 v1, #-1
    0014: return v1
.end method

.method public static Lcom/myairtelapp/hook/MethodUtil;->indexOfFirstArgType([Ljava/lang/Object;, Ljava/lang/Class;)I
    .registers 3
    0000: const/4 v0, #0
    0001: invoke-static {v1, v2, v0}, Lcom/myairtelapp/hook/MethodUtil;->indexOfFirstArgType([Ljava/lang/Object;, Ljava/lang/Class;, I)I
    0004: move-result v1
    0005: return v1
.end method

.method public static Lcom/myairtelapp/hook/MethodUtil;->indexOfFirstArgType([Ljava/lang/Object;, Ljava/lang/Class;, I)I
    .registers 4
    0000: if-eqz v1, 0016
    0002: array-length v0, v1
    0003: if-lez v0, 0016
    0005: array-length v0, v1
    0006: if-ge v3, v0, 0016
    0008: aget-object v0, v1, v3
    000a: if-eqz v0, 0013
    000c: invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    000f: move-result-object v0
    0010: if-ne v0, v2, 0013
    0012: return v3
    0013: add-int/lit8 v3, v3, #1
    0015: goto 0005
    0016: const/4 v1, #-1
    0017: return v1
.end method

.method public static Lcom/myairtelapp/hook/MethodUtil;->indexOfLastArgType([Ljava/lang/Object;, Ljava/lang/Class;)I
    .registers 4
    0000: if-eqz v2, 0018
    0002: array-length v0, v2
    0003: if-lez v0, 0018
    0005: array-length v0, v2
    0006: add-int/lit8 v0, v0, #-1
    0008: if-ltz v0, 0018
    000a: aget-object v1, v2, v0
    000c: if-eqz v1, 0015
    000e: invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    0011: move-result-object v1
    0012: if-ne v1, v3, 0015
    0014: return v0
    0015: add-int/lit8 v0, v0, #-1
    0017: goto 0008
    0018: const/4 v2, #-1
    0019: return v2
.end method

.method public static Lcom/myairtelapp/hook/MethodUtil;->isMethodDeclaredThrowable(Ljava/lang/reflect/Method;, Ljava/lang/Throwable;)Z
    .registers 8
    0000: instance-of v0, v7, Ljava/lang/RuntimeException;
    0002: const/4 v1, #1
    0003: if-eqz v0, 0006
    0005: return v1
    0006: const/4 v0, #0
    0007: if-eqz v6, 002f
    0009: if-nez v7, 000c
    000b: goto 002f
    000c: invoke-virtual {v6}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;
    000f: move-result-object v6
    0010: array-length v2, v6
    0011: if-nez v2, 0014
    0013: return v0
    0014: array-length v2, v6
    0015: move v3, v0
    0016: if-ge v3, v2, 002f
    0018: aget-object v4, v6, v3
    001a: invoke-virtual {v4, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    001d: move-result v5
    001e: if-nez v5, 002e
    0020: invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    0023: move-result-object v5
    0024: invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    0027: move-result v4
    0028: if-eqz v4, 002b
    002a: goto 002e
    002b: add-int/lit8 v3, v3, #1
    002d: goto 0016
    002e: return v1
    002f: return v0
.end method
