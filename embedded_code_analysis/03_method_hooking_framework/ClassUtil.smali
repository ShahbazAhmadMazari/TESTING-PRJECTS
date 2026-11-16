# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/ClassUtil;
.super Ljava/lang/Object;
.source "SourceFile"


.method public constructor Lcom/myairtelapp/hook/ClassUtil;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: return-void
.end method

.method public static Lcom/myairtelapp/hook/ClassUtil;->extractClassesFromObjects([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 5
    0000: const/4 v0, #0
    0001: if-nez v4, 0004
    0003: return-object v0
    0004: array-length v1, v4
    0005: if-nez v1, 000a
    0007: sget-object v4, Lcom/myairtelapp/hook/MiscUtil;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    0009: return-object v4
    000a: array-length v1, v4
    000b: new-array v1, v1, [Ljava/lang/Class;
    000d: const/4 v2, #0
    000e: array-length v3, v4
    000f: if-ge v2, v3, 0020
    0011: aget-object v3, v4, v2
    0013: if-nez v3, 0017
    0015: move-object v3, v0
    0016: goto 001b
    0017: invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    001a: move-result-object v3
    001b: aput-object v3, v1, v2
    001d: add-int/lit8 v2, v2, #1
    001f: goto 000e
    0020: return-object v1
.end method

.method public static Lcom/myairtelapp/hook/ClassUtil;->getAllInterfaces(Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 2
    0000: if-nez v1, 0004
    0002: const/4 v1, #0
    0003: return-object v1
    0004: new-instance v0, Ljava/util/LinkedHashSet;
    0006: invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V
    0009: invoke-static {v1, v0}, Lcom/myairtelapp/hook/ClassUtil;->getAllInterfacesInternal(Ljava/lang/Class;, Ljava/util/Set;)V
    000c: invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I
    000f: move-result v1
    0010: new-array v1, v1, [Ljava/lang/Class;
    0012: invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    0015: move-result-object v1
    0016: check-cast v1, [Ljava/lang/Class;
    0018: return-object v1
.end method

.method private static Lcom/myairtelapp/hook/ClassUtil;->getAllInterfacesInternal(Ljava/lang/Class;, Ljava/util/Set;)V
    .registers 7
    0000: if-eqz v5, 001d
    0002: invoke-virtual {v5}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;
    0005: move-result-object v0
    0006: array-length v1, v0
    0007: const/4 v2, #0
    0008: if-ge v2, v1, 0018
    000a: aget-object v3, v0, v2
    000c: invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    000f: move-result v4
    0010: if-eqz v4, 0015
    0012: invoke-static {v3, v6}, Lcom/myairtelapp/hook/ClassUtil;->getAllInterfacesInternal(Ljava/lang/Class;, Ljava/util/Set;)V
    0015: add-int/lit8 v2, v2, #1
    0017: goto 0008
    0018: invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    001b: move-result-object v5
    001c: goto 0000
    001d: return-void
.end method
