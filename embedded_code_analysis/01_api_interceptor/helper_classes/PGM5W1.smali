# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/PGM5W1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Set;

.field public final synthetic Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
.field public final synthetic Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I

.method public synthetic constructor Lcom/easypaisaTweak/newpackage/PGM5W1;-><init>(Lcom/easypaisaTweak/newpackage/JujT5;, I)V
    .registers 3
    0000: iput v2, v0, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
    0004: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0007: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->add(Ljava/lang/Object;)Z
    .registers 2
    0000: iget v0, v0, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: packed-switch v0, 0014
    0005: goto 000e
    0006: check-cast v1, Ljava/util/Map$Entry;
    0008: new-instance v0, Ljava/lang/UnsupportedOperationException;
    000a: invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
    000d: throw v0
    000e: new-instance v0, Ljava/lang/UnsupportedOperationException;
    0010: invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
    0013: throw v0
    0014: nop
    0015: move v0, v0
    0016: nop
    0017: nop
    0018: move-wide v0, v0
    0019: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->addAll(Ljava/util/Collection;)Z
    .registers 7
    0000: iget v0, v5, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: packed-switch v0, 004c
    0005: goto 0045
    0006: iget-object v5, v5, Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
    0008: invoke-virtual {v5}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    000b: move-result v0
    000c: invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    000f: move-result-object v6
    0010: invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    0013: move-result v1
    0014: if-eqz v1, 003b
    0016: invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0019: move-result-object v1
    001a: check-cast v1, Ljava/util/Map$Entry;
    001c: invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    001f: move-result-object v2
    0020: invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    0023: move-result-object v1
    0024: move-object v3, v5
    0025: check-cast v3, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    0027: iget v4, v3, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->SfW5jTpdE:I
    0029: iget-object v3, v3, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->Gi9lbFSu:Ljava/lang/Object;
    002b: packed-switch v4, 0052
    002e: goto 0035
    002f: check-cast v3, Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0031: invoke-virtual {v3, v2, v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0034: goto 0010
    0035: check-cast v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;
    0037: invoke-virtual {v3, v2}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->add(Ljava/lang/Object;)Z
    003a: goto 0010
    003b: invoke-virtual {v5}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    003e: move-result v5
    003f: if-eq v0, v5, 0043
    0041: const/4 v5, #1
    0042: goto 0044
    0043: const/4 v5, #0
    0044: return v5
    0045: new-instance v5, Ljava/lang/UnsupportedOperationException;
    0047: invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V
    004a: throw v5
    004b: nop
    004c: nop
    004d: move v0, v0
    004e: nop
    004f: nop
    0050: move-wide v0, v0
    0051: nop
    0052: nop
    0053: move v0, v0
    0054: nop
    0055: nop
    0056: move-wide v0, v0
    0057: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->clear()V
    .registers 2
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
    0004: packed-switch v0, 0010
    0007: goto 000c
    0008: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/JujT5;->yWkiZmD()V
    000b: return-void
    000c: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/JujT5;->yWkiZmD()V
    000f: return-void
    0010: nop
    0011: move v0, v0
    0012: nop
    0013: nop
    0014: move-wide v0, v0
    0015: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->contains(Ljava/lang/Object;)Z
    .registers 5
    0000: iget v0, v3, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: const/4 v1, #1
    0003: iget-object v3, v3, Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
    0005: const/4 v2, #0
    0006: packed-switch v0, 003c
    0009: goto 0032
    000a: instance-of v0, v4, Ljava/util/Map$Entry;
    000c: if-nez v0, 000f
    000e: goto 0031
    000f: check-cast v4, Ljava/util/Map$Entry;
    0011: invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    0014: move-result-object v0
    0015: invoke-virtual {v3, v0}, Lcom/easypaisaTweak/newpackage/JujT5;->Gi9lbFSu(Ljava/lang/Object;)I
    0018: move-result v0
    0019: if-gez v0, 001c
    001b: goto 0031
    001c: invoke-virtual {v3, v0, v1}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    001f: move-result-object v3
    0020: invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    0023: move-result-object v4
    0024: if-eq v3, v4, 0030
    0026: if-eqz v3, 002f
    0028: invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    002b: move-result v3
    002c: if-eqz v3, 002f
    002e: goto 0030
    002f: move v1, v2
    0030: move v2, v1
    0031: return v2
    0032: invoke-virtual {v3, v4}, Lcom/easypaisaTweak/newpackage/JujT5;->Gi9lbFSu(Ljava/lang/Object;)I
    0035: move-result v3
    0036: if-ltz v3, 0039
    0038: goto 003a
    0039: move v1, v2
    003a: return v1
    003b: nop
    003c: nop
    003d: move v0, v0
    003e: nop
    003f: nop
    0040: move-wide v0, v0
    0041: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->containsAll(Ljava/util/Collection;)Z
    .registers 5
    0000: iget v0, v3, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: const/4 v1, #0
    0003: const/4 v2, #1
    0004: packed-switch v0, 003c
    0007: goto 001f
    0008: invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    000b: move-result-object v4
    000c: invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    000f: move-result v0
    0010: if-eqz v0, 001d
    0012: invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0015: move-result-object v0
    0016: invoke-virtual {v3, v0}, Lcom/easypaisaTweak/newpackage/PGM5W1;->contains(Ljava/lang/Object;)Z
    0019: move-result v0
    001a: if-nez v0, 000c
    001c: goto 001e
    001d: move v1, v2
    001e: return v1
    001f: iget-object v3, v3, Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
    0021: invoke-virtual {v3}, Lcom/easypaisaTweak/newpackage/JujT5;->hO03fCMH()Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0024: move-result-object v3
    0025: invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    0028: move-result-object v4
    0029: invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    002c: move-result v0
    002d: if-eqz v0, 003a
    002f: invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0032: move-result-object v0
    0033: invoke-virtual {v3, v0}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->containsKey(Ljava/lang/Object;)Z
    0036: move-result v0
    0037: if-nez v0, 0029
    0039: goto 003b
    003a: move v1, v2
    003b: return v1
    003c: nop
    003d: move v0, v0
    003e: nop
    003f: nop
    0040: move-wide v0, v0
    0041: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->equals(Ljava/lang/Object;)Z
    .registers 3
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: packed-switch v0, 0010
    0005: goto 000b
    0006: invoke-static {v1, v2}, Lcom/easypaisaTweak/newpackage/JujT5;->UjNghiE(Ljava/util/Set;, Ljava/lang/Object;)Z
    0009: move-result v1
    000a: return v1
    000b: invoke-static {v1, v2}, Lcom/easypaisaTweak/newpackage/JujT5;->UjNghiE(Ljava/util/Set;, Ljava/lang/Object;)Z
    000e: move-result v1
    000f: return v1
    0010: nop
    0011: move v0, v0
    0012: nop
    0013: nop
    0014: move-wide v0, v0
    0015: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->hashCode()I
    .registers 7
    0000: iget v0, v6, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: const/4 v1, #0
    0003: iget-object v6, v6, Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
    0005: packed-switch v0, 004a
    0008: goto 0030
    0009: invoke-virtual {v6}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    000c: move-result v0
    000d: const/4 v2, #1
    000e: sub-int/2addr v0, v2
    000f: move v3, v1
    0010: if-ltz v0, 002f
    0012: invoke-virtual {v6, v0, v1}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    0015: move-result-object v4
    0016: invoke-virtual {v6, v0, v2}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    0019: move-result-object v5
    001a: if-nez v4, 001e
    001c: move v4, v1
    001d: goto 0022
    001e: invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I
    0021: move-result v4
    0022: if-nez v5, 0026
    0024: move v5, v1
    0025: goto 002a
    0026: invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I
    0029: move-result v5
    002a: xor-int/2addr v4, v5
    002b: add-int/2addr v3, v4
    002c: add-int/lit8 v0, v0, #-1
    002e: goto 0010
    002f: return v3
    0030: invoke-virtual {v6}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    0033: move-result v0
    0034: add-int/lit8 v0, v0, #-1
    0036: move v2, v1
    0037: if-ltz v0, 0049
    0039: invoke-virtual {v6, v0, v1}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    003c: move-result-object v3
    003d: if-nez v3, 0041
    003f: move v3, v1
    0040: goto 0045
    0041: invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I
    0044: move-result v3
    0045: add-int/2addr v2, v3
    0046: add-int/lit8 v0, v0, #-1
    0048: goto 0037
    0049: return v2
    004a: nop
    004b: move v0, v0
    004c: nop
    004d: nop
    004e: move-wide v0, v0
    004f: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->isEmpty()Z
    .registers 4
    0000: iget v0, v3, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: const/4 v1, #1
    0003: const/4 v2, #0
    0004: iget-object v3, v3, Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
    0006: packed-switch v0, 001c
    0009: goto 0013
    000a: invoke-virtual {v3}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    000d: move-result v3
    000e: if-nez v3, 0011
    0010: goto 0012
    0011: move v1, v2
    0012: return v1
    0013: invoke-virtual {v3}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    0016: move-result v3
    0017: if-nez v3, 001a
    0019: goto 001b
    001a: move v1, v2
    001b: return v1
    001c: nop
    001d: move v0, v0
    001e: nop
    001f: nop
    0020: move-wide v0, v0
    0021: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->iterator()Ljava/util/Iterator;
    .registers 3
    0000: iget v0, v2, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
    0004: packed-switch v0, 0016
    0007: goto 000e
    0008: new-instance v0, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;
    000a: invoke-direct {v0, v2}, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;-><init>(Lcom/easypaisaTweak/newpackage/JujT5;)V
    000d: return-object v0
    000e: new-instance v0, Lcom/easypaisaTweak/newpackage/u1ndNnOb;
    0010: const/4 v1, #0
    0011: invoke-direct {v0, v2, v1}, Lcom/easypaisaTweak/newpackage/u1ndNnOb;-><init>(Lcom/easypaisaTweak/newpackage/JujT5;, I)V
    0014: return-object v0
    0015: nop
    0016: nop
    0017: move v0, v0
    0018: nop
    0019: nop
    001a: move-wide v0, v0
    001b: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->remove(Ljava/lang/Object;)Z
    .registers 3
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: packed-switch v0, 001c
    0005: goto 000c
    0006: new-instance v1, Ljava/lang/UnsupportedOperationException;
    0008: invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V
    000b: throw v1
    000c: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
    000e: invoke-virtual {v1, v2}, Lcom/easypaisaTweak/newpackage/JujT5;->Gi9lbFSu(Ljava/lang/Object;)I
    0011: move-result v2
    0012: if-ltz v2, 0019
    0014: invoke-virtual {v1, v2}, Lcom/easypaisaTweak/newpackage/JujT5;->zkF6VM(I)V
    0017: const/4 v1, #1
    0018: goto 001a
    0019: const/4 v1, #0
    001a: return v1
    001b: nop
    001c: nop
    001d: move v0, v0
    001e: nop
    001f: nop
    0020: move-wide v0, v0
    0021: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->removeAll(Ljava/util/Collection;)Z
    .registers 4
    0000: iget v0, v2, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: packed-switch v0, 002e
    0005: goto 000c
    0006: new-instance v2, Ljava/lang/UnsupportedOperationException;
    0008: invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V
    000b: throw v2
    000c: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
    000e: invoke-virtual {v2}, Lcom/easypaisaTweak/newpackage/JujT5;->hO03fCMH()Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0011: move-result-object v2
    0012: iget v0, v2, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0014: invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    0017: move-result-object v3
    0018: invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    001b: move-result v1
    001c: if-eqz v1, 0026
    001e: invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0021: move-result-object v1
    0022: invoke-virtual {v2, v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    0025: goto 0018
    0026: iget v2, v2, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0028: if-eq v0, v2, 002c
    002a: const/4 v2, #1
    002b: goto 002d
    002c: const/4 v2, #0
    002d: return v2
    002e: nop
    002f: move v0, v0
    0030: nop
    0031: nop
    0032: move-wide v0, v0
    0033: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->retainAll(Ljava/util/Collection;)Z
    .registers 3
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: packed-switch v0, 0018
    0005: goto 000c
    0006: new-instance v1, Ljava/lang/UnsupportedOperationException;
    0008: invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V
    000b: throw v1
    000c: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
    000e: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/JujT5;->hO03fCMH()Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0011: move-result-object v1
    0012: invoke-static {v1, v2}, Lcom/easypaisaTweak/newpackage/JujT5;->ZDfAQYocn5(Lcom/easypaisaTweak/newpackage/hO03fCMH;, Ljava/util/Collection;)Z
    0015: move-result v1
    0016: return v1
    0017: nop
    0018: nop
    0019: move v0, v0
    001a: nop
    001b: nop
    001c: move-wide v0, v0
    001d: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->size()I
    .registers 2
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
    0004: packed-switch v0, 0012
    0007: goto 000d
    0008: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    000b: move-result v1
    000c: return v1
    000d: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    0010: move-result v1
    0011: return v1
    0012: nop
    0013: move v0, v0
    0014: nop
    0015: nop
    0016: move-wide v0, v0
    0017: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->toArray()[Ljava/lang/Object;
    .registers 6
    0000: iget v0, v5, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: packed-switch v0, 0022
    0005: goto 000c
    0006: new-instance v5, Ljava/lang/UnsupportedOperationException;
    0008: invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V
    000b: throw v5
    000c: iget-object v5, v5, Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
    000e: invoke-virtual {v5}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    0011: move-result v0
    0012: new-array v1, v0, [Ljava/lang/Object;
    0014: const/4 v2, #0
    0015: move v3, v2
    0016: if-ge v3, v0, 0021
    0018: invoke-virtual {v5, v3, v2}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    001b: move-result-object v4
    001c: aput-object v4, v1, v3
    001e: add-int/lit8 v3, v3, #1
    0020: goto 0016
    0021: return-object v1
    0022: nop
    0023: move v0, v0
    0024: nop
    0025: nop
    0026: move-wide v0, v0
    0027: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/PGM5W1;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/PGM5W1;->yWkiZmD:I
    0002: packed-switch v0, 0014
    0005: goto 000c
    0006: new-instance v1, Ljava/lang/UnsupportedOperationException;
    0008: invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V
    000b: throw v1
    000c: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/PGM5W1;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/JujT5;
    000e: const/4 v0, #0
    000f: invoke-virtual {v1, v2, v0}, Lcom/easypaisaTweak/newpackage/JujT5;->hXElriBC2([Ljava/lang/Object;, I)[Ljava/lang/Object;
    0012: move-result-object v1
    0013: return-object v1
    0014: nop
    0015: move v0, v0
    0016: nop
    0017: nop
    0018: move-wide v0, v0
    0019: nop
.end method
