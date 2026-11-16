# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/lGDfirF;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;

.field public static final static Lcom/easypaisaTweak/newpackage/lGDfirF;->CREATOR:Landroid/os/Parcelable$Creator;
.field public Lcom/easypaisaTweak/newpackage/lGDfirF;->Gi9lbFSu:I
.field public Lcom/easypaisaTweak/newpackage/lGDfirF;->SfW5jTpdE:Ljava/lang/String;
.field public Lcom/easypaisaTweak/newpackage/lGDfirF;->eRtvpvxbz:Ljava/util/ArrayList;
.field public Lcom/easypaisaTweak/newpackage/lGDfirF;->hO03fCMH:[Lcom/easypaisaTweak/newpackage/zkF6VM;
.field public Lcom/easypaisaTweak/newpackage/lGDfirF;->yWkiZmD:Ljava/util/ArrayList;

.method public static constructor Lcom/easypaisaTweak/newpackage/lGDfirF;-><clinit>()V
    .registers 2
    0000: new-instance v0, Lcom/easypaisaTweak/newpackage/Gi9lbFSu;
    0002: const/4 v1, #1
    0003: invoke-direct {v0, v1}, Lcom/easypaisaTweak/newpackage/Gi9lbFSu;-><init>(I)V
    0006: sput-object v0, Lcom/easypaisaTweak/newpackage/lGDfirF;->CREATOR:Landroid/os/Parcelable$Creator;
    0008: return-void
.end method

.method public constructor Lcom/easypaisaTweak/newpackage/lGDfirF;-><init>(Landroid/os/Parcel;)V
    .registers 3
    0000: invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    0003: const/4 v0, #0
    0004: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/lGDfirF;->SfW5jTpdE:Ljava/lang/String;
    0006: sget-object v0, Lcom/easypaisaTweak/newpackage/XZnryxy;->CREATOR:Landroid/os/Parcelable$Creator;
    0008: invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    000b: move-result-object v0
    000c: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/lGDfirF;->yWkiZmD:Ljava/util/ArrayList;
    000e: invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    0011: move-result-object v0
    0012: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/lGDfirF;->eRtvpvxbz:Ljava/util/ArrayList;
    0014: sget-object v0, Lcom/easypaisaTweak/newpackage/zkF6VM;->CREATOR:Landroid/os/Parcelable$Creator;
    0016: invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    0019: move-result-object v0
    001a: check-cast v0, [Lcom/easypaisaTweak/newpackage/zkF6VM;
    001c: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/lGDfirF;->hO03fCMH:[Lcom/easypaisaTweak/newpackage/zkF6VM;
    001e: invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    0021: move-result-object v0
    0022: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/lGDfirF;->SfW5jTpdE:Ljava/lang/String;
    0024: invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    0027: move-result v2
    0028: iput v2, v1, Lcom/easypaisaTweak/newpackage/lGDfirF;->Gi9lbFSu:I
    002a: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/lGDfirF;->describeContents()I
    .registers 1
    0000: const/4 v0, #0
    0001: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/lGDfirF;->writeToParcel(Landroid/os/Parcel;, I)V
    .registers 4
    0000: iget-object v0, v1, Lcom/easypaisaTweak/newpackage/lGDfirF;->yWkiZmD:Ljava/util/ArrayList;
    0002: invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    0005: iget-object v0, v1, Lcom/easypaisaTweak/newpackage/lGDfirF;->eRtvpvxbz:Ljava/util/ArrayList;
    0007: invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
    000a: iget-object v0, v1, Lcom/easypaisaTweak/newpackage/lGDfirF;->hO03fCMH:[Lcom/easypaisaTweak/newpackage/zkF6VM;
    000c: invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;, I)V
    000f: iget-object v3, v1, Lcom/easypaisaTweak/newpackage/lGDfirF;->SfW5jTpdE:Ljava/lang/String;
    0011: invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0014: iget v1, v1, Lcom/easypaisaTweak/newpackage/lGDfirF;->Gi9lbFSu:I
    0016: invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    0019: return-void
.end method
