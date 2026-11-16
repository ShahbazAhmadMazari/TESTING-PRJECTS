# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
.super Lcom/easypaisaTweak/newpackage/JujT5;
.source "SourceFile"

.field public final synthetic Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->Gi9lbFSu:Ljava/lang/Object;
.field public final synthetic Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->SfW5jTpdE:I

.method public synthetic constructor Lcom/easypaisaTweak/newpackage/eRtvpvxbz;-><init>(I, Ljava/lang/Object;)V
    .registers 3
    0000: iput v1, v0, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->SfW5jTpdE:I
    0002: iput-object v2, v0, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->Gi9lbFSu:Ljava/lang/Object;
    0004: invoke-direct {v0}, Lcom/easypaisaTweak/newpackage/JujT5;-><init>()V
    0007: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->Gi9lbFSu(Ljava/lang/Object;)I
    .registers 3
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->SfW5jTpdE:I
    0002: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->Gi9lbFSu:Ljava/lang/Object;
    0004: packed-switch v0, 0016
    0007: goto 000f
    0008: check-cast v1, Lcom/easypaisaTweak/newpackage/hO03fCMH;
    000a: invoke-virtual {v1, v2}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->Gi9lbFSu(Ljava/lang/Object;)I
    000d: move-result v1
    000e: return v1
    000f: check-cast v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;
    0011: invoke-virtual {v1, v2}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->indexOf(Ljava/lang/Object;)I
    0014: move-result v1
    0015: return v1
    0016: nop
    0017: move v0, v0
    0018: nop
    0019: nop
    001a: move-wide v0, v0
    001b: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->SfW5jTpdE()I
    .registers 2
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->SfW5jTpdE:I
    0002: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->Gi9lbFSu:Ljava/lang/Object;
    0004: packed-switch v0, 0012
    0007: goto 000d
    0008: check-cast v1, Lcom/easypaisaTweak/newpackage/hO03fCMH;
    000a: iget v1, v1, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    000c: return v1
    000d: check-cast v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;
    000f: iget v1, v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0011: return v1
    0012: nop
    0013: move v0, v0
    0014: nop
    0015: nop
    0016: move-wide v0, v0
    0017: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->eRtvpvxbz(I, I)Ljava/lang/Object;
    .registers 4
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->SfW5jTpdE:I
    0002: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->Gi9lbFSu:Ljava/lang/Object;
    0004: packed-switch v0, 001a
    0007: goto 0012
    0008: check-cast v1, Lcom/easypaisaTweak/newpackage/hO03fCMH;
    000a: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    000c: shl-int/lit8 v2, v2, #1
    000e: add-int/2addr v2, v3
    000f: aget-object v1, v1, v2
    0011: return-object v1
    0012: check-cast v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;
    0014: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0016: aget-object v1, v1, v2
    0018: return-object v1
    0019: nop
    001a: nop
    001b: move v0, v0
    001c: nop
    001d: nop
    001e: move-wide v0, v0
    001f: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->hO03fCMH()Lcom/easypaisaTweak/newpackage/hO03fCMH;
    .registers 2
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->SfW5jTpdE:I
    0002: packed-switch v0, 0014
    0005: goto 000b
    0006: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->Gi9lbFSu:Ljava/lang/Object;
    0008: check-cast v1, Lcom/easypaisaTweak/newpackage/hO03fCMH;
    000a: return-object v1
    000b: new-instance v1, Ljava/lang/UnsupportedOperationException;
    000d: const-string v0, 'not a map'
    000f: invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    0012: throw v1
    0013: nop
    0014: nop
    0015: move v0, v0
    0016: nop
    0017: nop
    0018: move-wide v0, v0
    0019: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->yWkiZmD()V
    .registers 2
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->SfW5jTpdE:I
    0002: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->Gi9lbFSu:Ljava/lang/Object;
    0004: packed-switch v0, 0014
    0007: goto 000e
    0008: check-cast v1, Lcom/easypaisaTweak/newpackage/hO03fCMH;
    000a: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->clear()V
    000d: return-void
    000e: check-cast v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;
    0010: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->clear()V
    0013: return-void
    0014: nop
    0015: move v0, v0
    0016: nop
    0017: nop
    0018: move-wide v0, v0
    0019: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->zkF6VM(I)V
    .registers 3
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->SfW5jTpdE:I
    0002: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;->Gi9lbFSu:Ljava/lang/Object;
    0004: packed-switch v0, 0014
    0007: goto 000e
    0008: check-cast v1, Lcom/easypaisaTweak/newpackage/hO03fCMH;
    000a: invoke-virtual {v1, v2}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->ZDfAQYocn5(I)Ljava/lang/Object;
    000d: return-void
    000e: check-cast v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;
    0010: invoke-virtual {v1, v2}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->Gi9lbFSu(I)V
    0013: return-void
    0014: nop
    0015: move v0, v0
    0016: nop
    0017: nop
    0018: move-wide v0, v0
    0019: nop
.end method
