# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract Lcom/easypaisaTweak/newpackage/JujT5;
.super Ljava/lang/Object;
.source "SourceFile"

.field public Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/PGM5W1;
.field public Lcom/easypaisaTweak/newpackage/JujT5;->hO03fCMH:Lcom/easypaisaTweak/newpackage/oRQXI;
.field public Lcom/easypaisaTweak/newpackage/JujT5;->yWkiZmD:Lcom/easypaisaTweak/newpackage/PGM5W1;

.method public static Lcom/easypaisaTweak/newpackage/JujT5;->UjNghiE(Ljava/util/Set;, Ljava/lang/Object;)Z
    .registers 6
    0000: const/4 v0, #1
    0001: if-ne v4, v5, 0004
    0003: return v0
    0004: instance-of v1, v5, Ljava/util/Set;
    0006: const/4 v2, #0
    0007: if-eqz v1, 001e
    0009: check-cast v5, Ljava/util/Set;
    000b: invoke-interface {v4}, Ljava/util/Set;->size()I
    000e: move-result v1
    000f: invoke-interface {v5}, Ljava/util/Set;->size()I
    0012: move-result v3
    0013: if-ne v1, v3, 001c
    0015: invoke-interface {v4, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    0018: move-result v4
    0019: if-eqz v4, 001c
    001b: goto 001d
    001c: move v0, v2
    001d: return v0
    001e: return v2
.end method

.method public static Lcom/easypaisaTweak/newpackage/JujT5;->ZDfAQYocn5(Lcom/easypaisaTweak/newpackage/hO03fCMH;, Ljava/util/Collection;)Z
    .registers 5
    0000: iget v0, v3, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0002: invoke-virtual {v3}, Lcom/easypaisaTweak/newpackage/hO03fCMH;->keySet()Ljava/util/Set;
    0005: move-result-object v1
    0006: check-cast v1, Lcom/easypaisaTweak/newpackage/PGM5W1;
    0008: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/PGM5W1;->iterator()Ljava/util/Iterator;
    000b: move-result-object v1
    000c: invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    000f: move-result v2
    0010: if-eqz v2, 0020
    0012: invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0015: move-result-object v2
    0016: invoke-interface {v4, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    0019: move-result v2
    001a: if-nez v2, 000c
    001c: invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    001f: goto 000c
    0020: iget v3, v3, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0022: if-eq v0, v3, 0026
    0024: const/4 v3, #1
    0025: goto 0027
    0026: const/4 v3, #0
    0027: return v3
.end method

.method public abstract Lcom/easypaisaTweak/newpackage/JujT5;->Gi9lbFSu(Ljava/lang/Object;)I
    # abstract or native method

.end method

.method public abstract Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    # abstract or native method

.end method

.method public abstract Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    # abstract or native method

.end method

.method public abstract Lcom/easypaisaTweak/newpackage/JujT5;->hO03fCMH()Lcom/easypaisaTweak/newpackage/hO03fCMH;
    # abstract or native method

.end method

.method public final Lcom/easypaisaTweak/newpackage/JujT5;->hXElriBC2([Ljava/lang/Object;, I)[Ljava/lang/Object;
    .registers 6
    0000: invoke-virtual {v3}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    0003: move-result v0
    0004: array-length v1, v4
    0005: if-ge v1, v0, 0015
    0007: invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    000a: move-result-object v4
    000b: invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
    000e: move-result-object v4
    000f: invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;, I)Ljava/lang/Object;
    0012: move-result-object v4
    0013: check-cast v4, [Ljava/lang/Object;
    0015: const/4 v1, #0
    0016: if-ge v1, v0, 0021
    0018: invoke-virtual {v3, v1, v5}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    001b: move-result-object v2
    001c: aput-object v2, v4, v1
    001e: add-int/lit8 v1, v1, #1
    0020: goto 0016
    0021: array-length v3, v4
    0022: if-le v3, v0, 0027
    0024: const/4 v3, #0
    0025: aput-object v3, v4, v0
    0027: return-object v4
.end method

.method public abstract Lcom/easypaisaTweak/newpackage/JujT5;->yWkiZmD()V
    # abstract or native method

.end method

.method public abstract Lcom/easypaisaTweak/newpackage/JujT5;->zkF6VM(I)V
    # abstract or native method

.end method
