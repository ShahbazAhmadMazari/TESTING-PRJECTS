# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/XZnryxy;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;

.field public static final static Lcom/easypaisaTweak/newpackage/XZnryxy;->CREATOR:Landroid/os/Parcelable$Creator;
.field public final Lcom/easypaisaTweak/newpackage/XZnryxy;->Gi9lbFSu:I
.field public final Lcom/easypaisaTweak/newpackage/XZnryxy;->SfW5jTpdE:I
.field public final Lcom/easypaisaTweak/newpackage/XZnryxy;->UjNghiE:Z
.field public final Lcom/easypaisaTweak/newpackage/XZnryxy;->XywNW:Landroid/os/Bundle;
.field public final Lcom/easypaisaTweak/newpackage/XZnryxy;->ZDfAQYocn5:Z
.field public final Lcom/easypaisaTweak/newpackage/XZnryxy;->eRtvpvxbz:Ljava/lang/String;
.field public final Lcom/easypaisaTweak/newpackage/XZnryxy;->hO03fCMH:Z
.field public final Lcom/easypaisaTweak/newpackage/XZnryxy;->hXElriBC2:Z
.field public final Lcom/easypaisaTweak/newpackage/XZnryxy;->k8oPY:Z
.field public Lcom/easypaisaTweak/newpackage/XZnryxy;->nWvTLA:Landroid/os/Bundle;
.field public final Lcom/easypaisaTweak/newpackage/XZnryxy;->slv1iQ8:I
.field public final Lcom/easypaisaTweak/newpackage/XZnryxy;->yWkiZmD:Ljava/lang/String;
.field public final Lcom/easypaisaTweak/newpackage/XZnryxy;->zkF6VM:Ljava/lang/String;

.method public static constructor Lcom/easypaisaTweak/newpackage/XZnryxy;-><clinit>()V
    .registers 2
    0000: new-instance v0, Lcom/easypaisaTweak/newpackage/Gi9lbFSu;
    0002: const/4 v1, #2
    0003: invoke-direct {v0, v1}, Lcom/easypaisaTweak/newpackage/Gi9lbFSu;-><init>(I)V
    0006: sput-object v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->CREATOR:Landroid/os/Parcelable$Creator;
    0008: return-void
.end method

.method public constructor Lcom/easypaisaTweak/newpackage/XZnryxy;-><init>(Landroid/os/Parcel;)V
    .registers 5
    0000: invoke-direct {v3}, Ljava/lang/Object;-><init>()V
    0003: invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    0006: move-result-object v0
    0007: iput-object v0, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->yWkiZmD:Ljava/lang/String;
    0009: invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    000c: move-result-object v0
    000d: iput-object v0, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->eRtvpvxbz:Ljava/lang/String;
    000f: invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    0012: move-result v0
    0013: const/4 v1, #1
    0014: const/4 v2, #0
    0015: if-eqz v0, 0019
    0017: move v0, v1
    0018: goto 001a
    0019: move v0, v2
    001a: iput-boolean v0, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->hO03fCMH:Z
    001c: invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    001f: move-result v0
    0020: iput v0, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->SfW5jTpdE:I
    0022: invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    0025: move-result v0
    0026: iput v0, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->Gi9lbFSu:I
    0028: invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    002b: move-result-object v0
    002c: iput-object v0, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->zkF6VM:Ljava/lang/String;
    002e: invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    0031: move-result v0
    0032: if-eqz v0, 0036
    0034: move v0, v1
    0035: goto 0037
    0036: move v0, v2
    0037: iput-boolean v0, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->UjNghiE:Z
    0039: invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    003c: move-result v0
    003d: if-eqz v0, 0041
    003f: move v0, v1
    0040: goto 0042
    0041: move v0, v2
    0042: iput-boolean v0, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->ZDfAQYocn5:Z
    0044: invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    0047: move-result v0
    0048: if-eqz v0, 004c
    004a: move v0, v1
    004b: goto 004d
    004c: move v0, v2
    004d: iput-boolean v0, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->hXElriBC2:Z
    004f: invoke-virtual {v4}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    0052: move-result-object v0
    0053: iput-object v0, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->XywNW:Landroid/os/Bundle;
    0055: invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    0058: move-result v0
    0059: if-eqz v0, 005c
    005b: goto 005d
    005c: move v1, v2
    005d: iput-boolean v1, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->k8oPY:Z
    005f: invoke-virtual {v4}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    0062: move-result-object v0
    0063: iput-object v0, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->nWvTLA:Landroid/os/Bundle;
    0065: invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    0068: move-result v4
    0069: iput v4, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->slv1iQ8:I
    006b: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/XZnryxy;->describeContents()I
    .registers 1
    0000: const/4 v0, #0
    0001: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/XZnryxy;->toString()Ljava/lang/String;
    .registers 4
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const/16 v1, #128
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
    0007: const-string v1, 'FragmentState{'
    0009: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000c: iget-object v1, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->yWkiZmD:Ljava/lang/String;
    000e: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0011: const-string v1, ' ('
    0013: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0016: iget-object v1, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->eRtvpvxbz:Ljava/lang/String;
    0018: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001b: const-string v1, ')}:'
    001d: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0020: iget-boolean v1, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->hO03fCMH:Z
    0022: if-eqz v1, 0029
    0024: const-string v1, ' fromLayout'
    0026: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0029: iget v1, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->Gi9lbFSu:I
    002b: if-eqz v1, 0039
    002d: const-string v2, ' id=0x'
    002f: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0032: invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    0035: move-result-object v1
    0036: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0039: iget-object v1, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->zkF6VM:Ljava/lang/String;
    003b: if-eqz v1, 004b
    003d: invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    0040: move-result v2
    0041: if-nez v2, 004b
    0043: const-string v2, ' tag='
    0045: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0048: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    004b: iget-boolean v1, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->UjNghiE:Z
    004d: if-eqz v1, 0054
    004f: const-string v1, ' retainInstance'
    0051: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0054: iget-boolean v1, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->ZDfAQYocn5:Z
    0056: if-eqz v1, 005d
    0058: const-string v1, ' removing'
    005a: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    005d: iget-boolean v1, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->hXElriBC2:Z
    005f: if-eqz v1, 0066
    0061: const-string v1, ' detached'
    0063: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0066: iget-boolean v3, v3, Lcom/easypaisaTweak/newpackage/XZnryxy;->k8oPY:Z
    0068: if-eqz v3, 006f
    006a: const-string v3, ' hidden'
    006c: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    006f: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0072: move-result-object v3
    0073: return-object v3
.end method

.method public final Lcom/easypaisaTweak/newpackage/XZnryxy;->writeToParcel(Landroid/os/Parcel;, I)V
    .registers 3
    0000: iget-object v2, v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->yWkiZmD:Ljava/lang/String;
    0002: invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0005: iget-object v2, v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->eRtvpvxbz:Ljava/lang/String;
    0007: invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    000a: iget-boolean v2, v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->hO03fCMH:Z
    000c: invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    000f: iget v2, v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->SfW5jTpdE:I
    0011: invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    0014: iget v2, v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->Gi9lbFSu:I
    0016: invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    0019: iget-object v2, v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->zkF6VM:Ljava/lang/String;
    001b: invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    001e: iget-boolean v2, v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->UjNghiE:Z
    0020: invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    0023: iget-boolean v2, v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->ZDfAQYocn5:Z
    0025: invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    0028: iget-boolean v2, v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->hXElriBC2:Z
    002a: invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    002d: iget-object v2, v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->XywNW:Landroid/os/Bundle;
    002f: invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    0032: iget-boolean v2, v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->k8oPY:Z
    0034: invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V
    0037: iget-object v2, v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->nWvTLA:Landroid/os/Bundle;
    0039: invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    003c: iget v0, v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->slv1iQ8:I
    003e: invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    0041: return-void
.end method
