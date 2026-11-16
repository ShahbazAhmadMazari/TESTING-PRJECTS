# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/oRQXI;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Collection;

.field public final synthetic Lcom/easypaisaTweak/newpackage/oRQXI;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JujT5;

.method public constructor Lcom/easypaisaTweak/newpackage/oRQXI;-><init>(Lcom/easypaisaTweak/newpackage/JujT5;)V
    .registers 2
    0000: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/oRQXI;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JujT5;
    0002: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0005: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/oRQXI;->add(Ljava/lang/Object;)Z
    .registers 2
    0000: new-instance v0, Ljava/lang/UnsupportedOperationException;
    0002: invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
    0005: throw v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/oRQXI;->addAll(Ljava/util/Collection;)Z
    .registers 2
    0000: new-instance v0, Ljava/lang/UnsupportedOperationException;
    0002: invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
    0005: throw v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/oRQXI;->clear()V
    .registers 1
    0000: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/oRQXI;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JujT5;
    0002: invoke-virtual {v0}, Lcom/easypaisaTweak/newpackage/JujT5;->yWkiZmD()V
    0005: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/oRQXI;->contains(Ljava/lang/Object;)Z
    .registers 3
    0000: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/oRQXI;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JujT5;
    0002: check-cast v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    0004: iget v0, v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->SfW5jTpdE:I
    0006: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->Gi9lbFSu:Ljava/lang/Object;
    0008: packed-switch v0, 0020
    000b: goto 0013
    000c: check-cast v1, Lcom/easypaisaTweak/newpackage/hO03fCMH;
    000e: invoke-virtual {v1, v2}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->UjNghiE(Ljava/lang/Object;)I
    0011: move-result v1
    0012: goto 0019
    0013: check-cast v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;
    0015: invoke-virtual {v1, v2}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->indexOf(Ljava/lang/Object;)I
    0018: move-result v1
    0019: if-ltz v1, 001d
    001b: const/4 v1, #1
    001c: goto 001e
    001d: const/4 v1, #0
    001e: return v1
    001f: nop
    0020: nop
    0021: move v0, v0
    0022: nop
    0023: nop
    0024: move-wide v0, v0
    0025: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/oRQXI;->containsAll(Ljava/util/Collection;)Z
    .registers 3
    0000: invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    0003: move-result-object v2
    0004: invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    0007: move-result v0
    0008: if-eqz v0, 0016
    000a: invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    000d: move-result-object v0
    000e: invoke-virtual {v1, v0}, Lcom/easypaisaTweak/newpackage/oRQXI;->contains(Ljava/lang/Object;)Z
    0011: move-result v0
    0012: if-nez v0, 0004
    0014: const/4 v1, #0
    0015: return v1
    0016: const/4 v1, #1
    0017: return v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/oRQXI;->isEmpty()Z
    .registers 1
    0000: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/oRQXI;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JujT5;
    0002: invoke-virtual {v0}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    0005: move-result v0
    0006: if-nez v0, 000a
    0008: const/4 v0, #1
    0009: goto 000b
    000a: const/4 v0, #0
    000b: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/oRQXI;->iterator()Ljava/util/Iterator;
    .registers 3
    0000: new-instance v0, Lcom/easypaisaTweak/newpackage/u1ndNnOb;
    0002: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/oRQXI;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JujT5;
    0004: const/4 v1, #1
    0005: invoke-direct {v0, v2, v1}, Lcom/easypaisaTweak/newpackage/u1ndNnOb;-><init>(Lcom/easypaisaTweak/newpackage/JujT5;, I)V
    0008: return-object v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/oRQXI;->remove(Ljava/lang/Object;)Z
    .registers 4
    0000: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/oRQXI;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JujT5;
    0002: move-object v0, v2
    0003: check-cast v0, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    0005: iget v1, v0, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->SfW5jTpdE:I
    0007: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->Gi9lbFSu:Ljava/lang/Object;
    0009: packed-switch v1, 0024
    000c: goto 0014
    000d: check-cast v0, Lcom/easypaisaTweak/newpackage/hO03fCMH;
    000f: invoke-virtual {v0, v3}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->UjNghiE(Ljava/lang/Object;)I
    0012: move-result v3
    0013: goto 001a
    0014: check-cast v0, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;
    0016: invoke-virtual {v0, v3}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->indexOf(Ljava/lang/Object;)I
    0019: move-result v3
    001a: if-ltz v3, 0021
    001c: invoke-virtual {v2, v3}, Lcom/easypaisaTweak/newpackage/JujT5;->zkF6VM(I)V
    001f: const/4 v2, #1
    0020: return v2
    0021: const/4 v2, #0
    0022: return v2
    0023: nop
    0024: nop
    0025: move v0, v0
    0026: nop
    0027: nop
    0028: move-wide v0, v0
    0029: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/oRQXI;->removeAll(Ljava/util/Collection;)Z
    .registers 7
    0000: iget-object v5, v5, Lcom/easypaisaTweak/newpackage/oRQXI;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JujT5;
    0002: invoke-virtual {v5}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    0005: move-result v0
    0006: const/4 v1, #0
    0007: move v2, v1
    0008: if-ge v1, v0, 001f
    000a: const/4 v3, #1
    000b: invoke-virtual {v5, v1, v3}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    000e: move-result-object v4
    000f: invoke-interface {v6, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    0012: move-result v4
    0013: if-eqz v4, 001d
    0015: invoke-virtual {v5, v1}, Lcom/easypaisaTweak/newpackage/JujT5;->zkF6VM(I)V
    0018: add-int/lit8 v1, v1, #-1
    001a: add-int/lit8 v0, v0, #-1
    001c: move v2, v3
    001d: add-int/2addr v1, v3
    001e: goto 0008
    001f: return v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/oRQXI;->retainAll(Ljava/util/Collection;)Z
    .registers 7
    0000: iget-object v5, v5, Lcom/easypaisaTweak/newpackage/oRQXI;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JujT5;
    0002: invoke-virtual {v5}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    0005: move-result v0
    0006: const/4 v1, #0
    0007: move v2, v1
    0008: if-ge v1, v0, 001f
    000a: const/4 v3, #1
    000b: invoke-virtual {v5, v1, v3}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    000e: move-result-object v4
    000f: invoke-interface {v6, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    0012: move-result v4
    0013: if-nez v4, 001d
    0015: invoke-virtual {v5, v1}, Lcom/easypaisaTweak/newpackage/JujT5;->zkF6VM(I)V
    0018: add-int/lit8 v1, v1, #-1
    001a: add-int/lit8 v0, v0, #-1
    001c: move v2, v3
    001d: add-int/2addr v1, v3
    001e: goto 0008
    001f: return v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/oRQXI;->size()I
    .registers 1
    0000: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/oRQXI;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JujT5;
    0002: invoke-virtual {v0}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    0005: move-result v0
    0006: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/oRQXI;->toArray()[Ljava/lang/Object;
    .registers 5
    0000: iget-object v4, v4, Lcom/easypaisaTweak/newpackage/oRQXI;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JujT5;
    0002: invoke-virtual {v4}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    0005: move-result v0
    0006: new-array v1, v0, [Ljava/lang/Object;
    0008: const/4 v2, #0
    0009: if-ge v2, v0, 0015
    000b: const/4 v3, #1
    000c: invoke-virtual {v4, v2, v3}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    000f: move-result-object v3
    0010: aput-object v3, v1, v2
    0012: add-int/lit8 v2, v2, #1
    0014: goto 0009
    0015: return-object v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/oRQXI;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    0000: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/oRQXI;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JujT5;
    0002: const/4 v0, #1
    0003: invoke-virtual {v1, v2, v0}, Lcom/easypaisaTweak/newpackage/JujT5;->hXElriBC2([Ljava/lang/Object;, I)[Ljava/lang/Object;
    0006: move-result-object v1
    0007: return-object v1
.end method
