# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/pGwW4bzMk;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;

.field public final synthetic Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/JujT5;
.field public Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
.field public Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->hO03fCMH:Z
.field public Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->yWkiZmD:I

.method public constructor Lcom/easypaisaTweak/newpackage/pGwW4bzMk;-><init>(Lcom/easypaisaTweak/newpackage/JujT5;)V
    .registers 3
    0000: iput-object v2, v1, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/JujT5;
    0002: invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    0005: const/4 v0, #0
    0006: iput-boolean v0, v1, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->hO03fCMH:Z
    0008: invoke-virtual {v2}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    000b: move-result v2
    000c: add-int/lit8 v2, v2, #-1
    000e: iput v2, v1, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->yWkiZmD:I
    0010: const/4 v2, #-1
    0011: iput v2, v1, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
    0013: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->equals(Ljava/lang/Object;)Z
    .registers 7
    0000: iget-boolean v0, v5, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->hO03fCMH:Z
    0002: if-eqz v0, 0045
    0004: instance-of v0, v6, Ljava/util/Map$Entry;
    0006: const/4 v1, #0
    0007: if-nez v0, 000a
    0009: return v1
    000a: check-cast v6, Ljava/util/Map$Entry;
    000c: invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    000f: move-result-object v0
    0010: iget v2, v5, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
    0012: iget-object v3, v5, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/JujT5;
    0014: invoke-virtual {v3, v2, v1}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    0017: move-result-object v2
    0018: const/4 v4, #1
    0019: if-eq v0, v2, 0026
    001b: if-eqz v0, 0024
    001d: invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    0020: move-result v0
    0021: if-eqz v0, 0024
    0023: goto 0026
    0024: move v0, v1
    0025: goto 0027
    0026: move v0, v4
    0027: if-eqz v0, 0044
    0029: invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    002c: move-result-object v6
    002d: iget v5, v5, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
    002f: invoke-virtual {v3, v5, v4}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    0032: move-result-object v5
    0033: if-eq v6, v5, 0040
    0035: if-eqz v6, 003e
    0037: invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    003a: move-result v5
    003b: if-eqz v5, 003e
    003d: goto 0040
    003e: move v5, v1
    003f: goto 0041
    0040: move v5, v4
    0041: if-eqz v5, 0044
    0043: move v1, v4
    0044: return v1
    0045: new-instance v5, Ljava/lang/IllegalStateException;
    0047: const-string v6, 'This container does not support retaining Map.Entry objects'
    0049: invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    004c: throw v5
.end method

.method public final Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->getKey()Ljava/lang/Object;
    .registers 3
    0000: iget-boolean v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->hO03fCMH:Z
    0002: if-eqz v0, 000e
    0004: iget v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
    0006: const/4 v1, #0
    0007: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/JujT5;
    0009: invoke-virtual {v2, v0, v1}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    000c: move-result-object v2
    000d: return-object v2
    000e: new-instance v2, Ljava/lang/IllegalStateException;
    0010: const-string v0, 'This container does not support retaining Map.Entry objects'
    0012: invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    0015: throw v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->getValue()Ljava/lang/Object;
    .registers 3
    0000: iget-boolean v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->hO03fCMH:Z
    0002: if-eqz v0, 000e
    0004: iget v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
    0006: const/4 v1, #1
    0007: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/JujT5;
    0009: invoke-virtual {v2, v0, v1}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    000c: move-result-object v2
    000d: return-object v2
    000e: new-instance v2, Ljava/lang/IllegalStateException;
    0010: const-string v0, 'This container does not support retaining Map.Entry objects'
    0012: invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    0015: throw v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->hasNext()Z
    .registers 2
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
    0002: iget v1, v1, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->yWkiZmD:I
    0004: if-ge v0, v1, 0008
    0006: const/4 v1, #1
    0007: goto 0009
    0008: const/4 v1, #0
    0009: return v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->hashCode()I
    .registers 5
    0000: iget-boolean v0, v4, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->hO03fCMH:Z
    0002: if-eqz v0, 0026
    0004: iget v0, v4, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
    0006: iget-object v1, v4, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/JujT5;
    0008: const/4 v2, #0
    0009: invoke-virtual {v1, v0, v2}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    000c: move-result-object v0
    000d: iget v4, v4, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
    000f: const/4 v3, #1
    0010: invoke-virtual {v1, v4, v3}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    0013: move-result-object v4
    0014: if-nez v0, 0018
    0016: move v0, v2
    0017: goto 001c
    0018: invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    001b: move-result v0
    001c: if-nez v4, 001f
    001e: goto 0023
    001f: invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I
    0022: move-result v2
    0023: xor-int v4, v0, v2
    0025: return v4
    0026: new-instance v4, Ljava/lang/IllegalStateException;
    0028: const-string v0, 'This container does not support retaining Map.Entry objects'
    002a: invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    002d: throw v4
.end method

.method public final Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->next()Ljava/lang/Object;
    .registers 3
    0000: invoke-virtual {v2}, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->hasNext()Z
    0003: move-result v0
    0004: if-eqz v0, 000f
    0006: iget v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
    0008: const/4 v1, #1
    0009: add-int/2addr v0, v1
    000a: iput v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
    000c: iput-boolean v1, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->hO03fCMH:Z
    000e: return-object v2
    000f: new-instance v2, Ljava/util/NoSuchElementException;
    0011: invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V
    0014: throw v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->remove()V
    .registers 3
    0000: iget-boolean v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->hO03fCMH:Z
    0002: if-eqz v0, 001b
    0004: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/JujT5;
    0006: iget v1, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
    0008: invoke-virtual {v0, v1}, Lcom/easypaisaTweak/newpackage/JujT5;->zkF6VM(I)V
    000b: iget v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
    000d: add-int/lit8 v0, v0, #-1
    000f: iput v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
    0011: iget v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->yWkiZmD:I
    0013: add-int/lit8 v0, v0, #-1
    0015: iput v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->yWkiZmD:I
    0017: const/4 v0, #0
    0018: iput-boolean v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->hO03fCMH:Z
    001a: return-void
    001b: new-instance v2, Ljava/lang/IllegalStateException;
    001d: invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V
    0020: throw v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    0000: iget-boolean v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->hO03fCMH:Z
    0002: if-eqz v0, 0027
    0004: iget v0, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->eRtvpvxbz:I
    0006: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/JujT5;
    0008: check-cast v2, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    000a: iget v1, v2, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->SfW5jTpdE:I
    000c: packed-switch v1, 0030
    000f: goto 001f
    0010: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->Gi9lbFSu:Ljava/lang/Object;
    0012: check-cast v2, Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0014: shl-int/lit8 v0, v0, #1
    0016: add-int/lit8 v0, v0, #1
    0018: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    001a: aget-object v1, v2, v0
    001c: aput-object v3, v2, v0
    001e: return-object v1
    001f: new-instance v2, Ljava/lang/UnsupportedOperationException;
    0021: const-string v3, 'not a map'
    0023: invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    0026: throw v2
    0027: new-instance v2, Ljava/lang/IllegalStateException;
    0029: const-string v3, 'This container does not support retaining Map.Entry objects'
    002b: invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    002e: throw v2
    002f: nop
    0030: nop
    0031: move v0, v0
    0032: nop
    0033: nop
    0034: move-wide v0, v0
    0035: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->toString()Ljava/lang/String;
    .registers 3
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    0005: invoke-virtual {v2}, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->getKey()Ljava/lang/Object;
    0008: move-result-object v1
    0009: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    000c: const-string v1, '='
    000e: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0011: invoke-virtual {v2}, Lcom/easypaisaTweak/newpackage/pGwW4bzMk;->getValue()Ljava/lang/Object;
    0014: move-result-object v2
    0015: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0018: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    001b: move-result-object v2
    001c: return-object v2
.end method
