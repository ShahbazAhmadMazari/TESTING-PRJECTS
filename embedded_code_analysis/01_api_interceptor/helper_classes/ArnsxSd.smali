# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/ArnsxSd;
.super Lcom/easypaisaTweak/newpackage/NGm4OtxWM;
.source "SourceFile"

.field public final Lcom/easypaisaTweak/newpackage/ArnsxSd;->Gi9lbFSu:Landroid/os/Parcel;
.field public final Lcom/easypaisaTweak/newpackage/ArnsxSd;->SfW5jTpdE:Landroid/util/SparseIntArray;
.field public final Lcom/easypaisaTweak/newpackage/ArnsxSd;->UjNghiE:I
.field public Lcom/easypaisaTweak/newpackage/ArnsxSd;->XywNW:I
.field public final Lcom/easypaisaTweak/newpackage/ArnsxSd;->ZDfAQYocn5:Ljava/lang/String;
.field public Lcom/easypaisaTweak/newpackage/ArnsxSd;->hXElriBC2:I
.field public Lcom/easypaisaTweak/newpackage/ArnsxSd;->k8oPY:I
.field public final Lcom/easypaisaTweak/newpackage/ArnsxSd;->zkF6VM:I

.method public constructor Lcom/easypaisaTweak/newpackage/ArnsxSd;-><init>(Landroid/os/Parcel;)V
    .registers 10
    0000: invoke-virtual {v9}, Landroid/os/Parcel;->dataPosition()I
    0003: move-result v2
    0004: invoke-virtual {v9}, Landroid/os/Parcel;->dataSize()I
    0007: move-result v3
    0008: const-string v4, ''
    000a: new-instance v5, Lcom/easypaisaTweak/newpackage/hO03fCMH;
    000c: invoke-direct {v5}, Lcom/easypaisaTweak/newpackage/hO03fCMH;-><init>()V
    000f: new-instance v6, Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0011: invoke-direct {v6}, Lcom/easypaisaTweak/newpackage/hO03fCMH;-><init>()V
    0014: new-instance v7, Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0016: invoke-direct {v7}, Lcom/easypaisaTweak/newpackage/hO03fCMH;-><init>()V
    0019: move-object v0, v8
    001a: move-object v1, v9
    001b: invoke-direct/range {v0 .. v7}, Lcom/easypaisaTweak/newpackage/ArnsxSd;-><init>(Landroid/os/Parcel;, I, I, Ljava/lang/String;, Lcom/easypaisaTweak/newpackage/hO03fCMH;, Lcom/easypaisaTweak/newpackage/hO03fCMH;, Lcom/easypaisaTweak/newpackage/hO03fCMH;)V
    001e: return-void
.end method

.method public constructor Lcom/easypaisaTweak/newpackage/ArnsxSd;-><init>(Landroid/os/Parcel;, I, I, Ljava/lang/String;, Lcom/easypaisaTweak/newpackage/hO03fCMH;, Lcom/easypaisaTweak/newpackage/hO03fCMH;, Lcom/easypaisaTweak/newpackage/hO03fCMH;)V
    .registers 8
    0000: invoke-direct {v0, v5, v6, v7}, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;-><init>(Lcom/easypaisaTweak/newpackage/hO03fCMH;, Lcom/easypaisaTweak/newpackage/hO03fCMH;, Lcom/easypaisaTweak/newpackage/hO03fCMH;)V
    0003: new-instance v5, Landroid/util/SparseIntArray;
    0005: invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V
    0008: iput-object v5, v0, Lcom/easypaisaTweak/newpackage/ArnsxSd;->SfW5jTpdE:Landroid/util/SparseIntArray;
    000a: const/4 v5, #-1
    000b: iput v5, v0, Lcom/easypaisaTweak/newpackage/ArnsxSd;->hXElriBC2:I
    000d: iput v5, v0, Lcom/easypaisaTweak/newpackage/ArnsxSd;->k8oPY:I
    000f: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/ArnsxSd;->Gi9lbFSu:Landroid/os/Parcel;
    0011: iput v2, v0, Lcom/easypaisaTweak/newpackage/ArnsxSd;->zkF6VM:I
    0013: iput v3, v0, Lcom/easypaisaTweak/newpackage/ArnsxSd;->UjNghiE:I
    0015: iput v2, v0, Lcom/easypaisaTweak/newpackage/ArnsxSd;->XywNW:I
    0017: iput-object v4, v0, Lcom/easypaisaTweak/newpackage/ArnsxSd;->ZDfAQYocn5:Ljava/lang/String;
    0019: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/ArnsxSd;->Gi9lbFSu(I)Z
    .registers 6
    0000: iget v0, v4, Lcom/easypaisaTweak/newpackage/ArnsxSd;->XywNW:I
    0002: iget v1, v4, Lcom/easypaisaTweak/newpackage/ArnsxSd;->UjNghiE:I
    0004: const/4 v2, #1
    0005: const/4 v3, #0
    0006: if-ge v0, v1, 0033
    0008: iget v0, v4, Lcom/easypaisaTweak/newpackage/ArnsxSd;->k8oPY:I
    000a: if-ne v0, v5, 000d
    000c: return v2
    000d: invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    0010: move-result-object v0
    0011: invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    0014: move-result-object v1
    0015: invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    0018: move-result v0
    0019: if-lez v0, 001c
    001b: return v3
    001c: iget v0, v4, Lcom/easypaisaTweak/newpackage/ArnsxSd;->XywNW:I
    001e: iget-object v1, v4, Lcom/easypaisaTweak/newpackage/ArnsxSd;->Gi9lbFSu:Landroid/os/Parcel;
    0020: invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V
    0023: invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    0026: move-result v0
    0027: invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    002a: move-result v1
    002b: iput v1, v4, Lcom/easypaisaTweak/newpackage/ArnsxSd;->k8oPY:I
    002d: iget v1, v4, Lcom/easypaisaTweak/newpackage/ArnsxSd;->XywNW:I
    002f: add-int/2addr v1, v0
    0030: iput v1, v4, Lcom/easypaisaTweak/newpackage/ArnsxSd;->XywNW:I
    0032: goto 0000
    0033: iget v4, v4, Lcom/easypaisaTweak/newpackage/ArnsxSd;->k8oPY:I
    0035: if-ne v4, v5, 0038
    0037: goto 0039
    0038: move v2, v3
    0039: return v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/ArnsxSd;->ZDfAQYocn5(I)V
    .registers 7
    0000: iget v0, v5, Lcom/easypaisaTweak/newpackage/ArnsxSd;->hXElriBC2:I
    0002: iget-object v1, v5, Lcom/easypaisaTweak/newpackage/ArnsxSd;->SfW5jTpdE:Landroid/util/SparseIntArray;
    0004: iget-object v2, v5, Lcom/easypaisaTweak/newpackage/ArnsxSd;->Gi9lbFSu:Landroid/os/Parcel;
    0006: if-ltz v0, 001b
    0008: invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I
    000b: move-result v0
    000c: invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I
    000f: move-result v3
    0010: sub-int v4, v3, v0
    0012: invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V
    0015: invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    0018: invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V
    001b: iput v6, v5, Lcom/easypaisaTweak/newpackage/ArnsxSd;->hXElriBC2:I
    001d: invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I
    0020: move-result v5
    0021: invoke-virtual {v1, v6, v5}, Landroid/util/SparseIntArray;->put(I, I)V
    0024: const/4 v5, #0
    0025: invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V
    0028: invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeInt(I)V
    002b: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/ArnsxSd;->yWkiZmD()Lcom/easypaisaTweak/newpackage/ArnsxSd;
    .registers 10
    0000: new-instance v8, Lcom/easypaisaTweak/newpackage/ArnsxSd;
    0002: iget-object v1, v9, Lcom/easypaisaTweak/newpackage/ArnsxSd;->Gi9lbFSu:Landroid/os/Parcel;
    0004: invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I
    0007: move-result v2
    0008: iget v0, v9, Lcom/easypaisaTweak/newpackage/ArnsxSd;->XywNW:I
    000a: iget v3, v9, Lcom/easypaisaTweak/newpackage/ArnsxSd;->zkF6VM:I
    000c: if-ne v0, v3, 0010
    000e: iget v0, v9, Lcom/easypaisaTweak/newpackage/ArnsxSd;->UjNghiE:I
    0010: move v3, v0
    0011: new-instance v0, Ljava/lang/StringBuilder;
    0013: invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    0016: iget-object v4, v9, Lcom/easypaisaTweak/newpackage/ArnsxSd;->ZDfAQYocn5:Ljava/lang/String;
    0018: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001b: const-string v4, '  '
    001d: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0020: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0023: move-result-object v4
    0024: iget-object v5, v9, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->yWkiZmD:Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0026: iget-object v6, v9, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0028: iget-object v7, v9, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->hO03fCMH:Lcom/easypaisaTweak/newpackage/hO03fCMH;
    002a: move-object v0, v8
    002b: invoke-direct/range {v0 .. v7}, Lcom/easypaisaTweak/newpackage/ArnsxSd;-><init>(Landroid/os/Parcel;, I, I, Ljava/lang/String;, Lcom/easypaisaTweak/newpackage/hO03fCMH;, Lcom/easypaisaTweak/newpackage/hO03fCMH;, Lcom/easypaisaTweak/newpackage/hO03fCMH;)V
    002e: return-object v8
.end method
