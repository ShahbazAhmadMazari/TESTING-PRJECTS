# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/zkF6VM;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;

.field public static final static Lcom/easypaisaTweak/newpackage/zkF6VM;->CREATOR:Landroid/os/Parcelable$Creator;
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->Eb2Nbe:Z
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->Gi9lbFSu:I
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->SfW5jTpdE:[I
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->UjNghiE:Ljava/lang/String;
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->XywNW:Ljava/lang/CharSequence;
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->ZDfAQYocn5:I
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->ZjVQ1KP:Ljava/util/ArrayList;
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->eRtvpvxbz:Ljava/util/ArrayList;
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->hO03fCMH:[I
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->hXElriBC2:I
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->k8oPY:I
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->nWvTLA:Ljava/util/ArrayList;
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->slv1iQ8:Ljava/lang/CharSequence;
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->yWkiZmD:[I
.field public final Lcom/easypaisaTweak/newpackage/zkF6VM;->zkF6VM:I

.method public static constructor Lcom/easypaisaTweak/newpackage/zkF6VM;-><clinit>()V
    .registers 2
    0000: new-instance v0, Lcom/easypaisaTweak/newpackage/Gi9lbFSu;
    0002: const/4 v1, #0
    0003: invoke-direct {v0, v1}, Lcom/easypaisaTweak/newpackage/Gi9lbFSu;-><init>(I)V
    0006: sput-object v0, Lcom/easypaisaTweak/newpackage/zkF6VM;->CREATOR:Landroid/os/Parcelable$Creator;
    0008: return-void
.end method

.method public constructor Lcom/easypaisaTweak/newpackage/zkF6VM;-><init>(Landroid/os/Parcel;)V
    .registers 3
    0000: invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    0003: invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I
    0006: move-result-object v0
    0007: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->yWkiZmD:[I
    0009: invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    000c: move-result-object v0
    000d: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->eRtvpvxbz:Ljava/util/ArrayList;
    000f: invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I
    0012: move-result-object v0
    0013: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->hO03fCMH:[I
    0015: invoke-virtual {v2}, Landroid/os/Parcel;->createIntArray()[I
    0018: move-result-object v0
    0019: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->SfW5jTpdE:[I
    001b: invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    001e: move-result v0
    001f: iput v0, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->Gi9lbFSu:I
    0021: invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    0024: move-result v0
    0025: iput v0, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->zkF6VM:I
    0027: invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    002a: move-result-object v0
    002b: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->UjNghiE:Ljava/lang/String;
    002d: invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    0030: move-result v0
    0031: iput v0, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->ZDfAQYocn5:I
    0033: invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    0036: move-result v0
    0037: iput v0, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->hXElriBC2:I
    0039: sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    003b: invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    003e: move-result-object v0
    003f: check-cast v0, Ljava/lang/CharSequence;
    0041: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->XywNW:Ljava/lang/CharSequence;
    0043: invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    0046: move-result v0
    0047: iput v0, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->k8oPY:I
    0049: sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    004b: invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    004e: move-result-object v0
    004f: check-cast v0, Ljava/lang/CharSequence;
    0051: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->slv1iQ8:Ljava/lang/CharSequence;
    0053: invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    0056: move-result-object v0
    0057: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->nWvTLA:Ljava/util/ArrayList;
    0059: invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    005c: move-result-object v0
    005d: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->ZjVQ1KP:Ljava/util/ArrayList;
    005f: invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    0062: move-result v2
    0063: if-eqz v2, 0067
    0065: const/4 v2, #1
    0066: goto 0068
    0067: const/4 v2, #0
    0068: iput-boolean v2, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->Eb2Nbe:Z
    006a: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/zkF6VM;->describeContents()I
    .registers 1
    0000: const/4 v0, #0
    0001: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/zkF6VM;->writeToParcel(Landroid/os/Parcel;, I)V
    .registers 4
    0000: iget-object v3, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->yWkiZmD:[I
    0002: invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeIntArray([I)V
    0005: iget-object v3, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->eRtvpvxbz:Ljava/util/ArrayList;
    0007: invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
    000a: iget-object v3, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->hO03fCMH:[I
    000c: invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeIntArray([I)V
    000f: iget-object v3, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->SfW5jTpdE:[I
    0011: invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeIntArray([I)V
    0014: iget v3, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->Gi9lbFSu:I
    0016: invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    0019: iget v3, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->zkF6VM:I
    001b: invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    001e: iget-object v3, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->UjNghiE:Ljava/lang/String;
    0020: invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0023: iget v3, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->ZDfAQYocn5:I
    0025: invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    0028: iget v3, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->hXElriBC2:I
    002a: invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    002d: iget-object v3, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->XywNW:Ljava/lang/CharSequence;
    002f: const/4 v0, #0
    0030: invoke-static {v3, v2, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;, Landroid/os/Parcel;, I)V
    0033: iget v3, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->k8oPY:I
    0035: invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V
    0038: iget-object v3, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->slv1iQ8:Ljava/lang/CharSequence;
    003a: invoke-static {v3, v2, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;, Landroid/os/Parcel;, I)V
    003d: iget-object v3, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->nWvTLA:Ljava/util/ArrayList;
    003f: invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
    0042: iget-object v3, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->ZjVQ1KP:Ljava/util/ArrayList;
    0044: invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
    0047: iget-boolean v1, v1, Lcom/easypaisaTweak/newpackage/zkF6VM;->Eb2Nbe:Z
    0049: invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    004c: return-void
.end method
