# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/u1ndNnOb;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Iterator;

.field public final synthetic Lcom/easypaisaTweak/newpackage/u1ndNnOb;->Gi9lbFSu:Lcom/easypaisaTweak/newpackage/JujT5;
.field public Lcom/easypaisaTweak/newpackage/u1ndNnOb;->SfW5jTpdE:Z
.field public Lcom/easypaisaTweak/newpackage/u1ndNnOb;->eRtvpvxbz:I
.field public Lcom/easypaisaTweak/newpackage/u1ndNnOb;->hO03fCMH:I
.field public final Lcom/easypaisaTweak/newpackage/u1ndNnOb;->yWkiZmD:I

.method public constructor Lcom/easypaisaTweak/newpackage/u1ndNnOb;-><init>(Lcom/easypaisaTweak/newpackage/JujT5;, I)V
    .registers 4
    0000: iput-object v2, v1, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->Gi9lbFSu:Lcom/easypaisaTweak/newpackage/JujT5;
    0002: invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    0005: const/4 v0, #0
    0006: iput-boolean v0, v1, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->SfW5jTpdE:Z
    0008: iput v3, v1, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->yWkiZmD:I
    000a: invoke-virtual {v2}, Lcom/easypaisaTweak/newpackage/JujT5;->SfW5jTpdE()I
    000d: move-result v2
    000e: iput v2, v1, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->eRtvpvxbz:I
    0010: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/u1ndNnOb;->hasNext()Z
    .registers 2
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->hO03fCMH:I
    0002: iget v1, v1, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->eRtvpvxbz:I
    0004: if-ge v0, v1, 0008
    0006: const/4 v1, #1
    0007: goto 0009
    0008: const/4 v1, #0
    0009: return v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/u1ndNnOb;->next()Ljava/lang/Object;
    .registers 4
    0000: invoke-virtual {v3}, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->hasNext()Z
    0003: move-result v0
    0004: if-eqz v0, 0019
    0006: iget v0, v3, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->hO03fCMH:I
    0008: iget v1, v3, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->yWkiZmD:I
    000a: iget-object v2, v3, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->Gi9lbFSu:Lcom/easypaisaTweak/newpackage/JujT5;
    000c: invoke-virtual {v2, v0, v1}, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz(I, I)Ljava/lang/Object;
    000f: move-result-object v0
    0010: iget v1, v3, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->hO03fCMH:I
    0012: const/4 v2, #1
    0013: add-int/2addr v1, v2
    0014: iput v1, v3, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->hO03fCMH:I
    0016: iput-boolean v2, v3, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->SfW5jTpdE:Z
    0018: return-object v0
    0019: new-instance v3, Ljava/util/NoSuchElementException;
    001b: invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V
    001e: throw v3
.end method

.method public final Lcom/easypaisaTweak/newpackage/u1ndNnOb;->remove()V
    .registers 3
    0000: iget-boolean v0, v2, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->SfW5jTpdE:Z
    0002: if-eqz v0, 0019
    0004: iget v0, v2, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->hO03fCMH:I
    0006: add-int/lit8 v0, v0, #-1
    0008: iput v0, v2, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->hO03fCMH:I
    000a: iget v1, v2, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->eRtvpvxbz:I
    000c: add-int/lit8 v1, v1, #-1
    000e: iput v1, v2, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->eRtvpvxbz:I
    0010: const/4 v1, #0
    0011: iput-boolean v1, v2, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->SfW5jTpdE:Z
    0013: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/u1ndNnOb;->Gi9lbFSu:Lcom/easypaisaTweak/newpackage/JujT5;
    0015: invoke-virtual {v2, v0}, Lcom/easypaisaTweak/newpackage/JujT5;->zkF6VM(I)V
    0018: return-void
    0019: new-instance v2, Ljava/lang/IllegalStateException;
    001b: invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V
    001e: throw v2
.end method
