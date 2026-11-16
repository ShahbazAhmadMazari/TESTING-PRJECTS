# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/Gi9lbFSu;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable$Creator;

.field public final synthetic Lcom/easypaisaTweak/newpackage/Gi9lbFSu;->yWkiZmD:I

.method public synthetic constructor Lcom/easypaisaTweak/newpackage/Gi9lbFSu;-><init>(I)V
    .registers 2
    0000: iput v1, v0, Lcom/easypaisaTweak/newpackage/Gi9lbFSu;->yWkiZmD:I
    0002: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0005: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/Gi9lbFSu;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    0000: iget v0, v0, Lcom/easypaisaTweak/newpackage/Gi9lbFSu;->yWkiZmD:I
    0002: packed-switch v0, 001e
    0005: goto 0018
    0006: new-instance v0, Lcom/easypaisaTweak/newpackage/XZnryxy;
    0008: invoke-direct {v0, v1}, Lcom/easypaisaTweak/newpackage/XZnryxy;-><init>(Landroid/os/Parcel;)V
    000b: return-object v0
    000c: new-instance v0, Lcom/easypaisaTweak/newpackage/lGDfirF;
    000e: invoke-direct {v0, v1}, Lcom/easypaisaTweak/newpackage/lGDfirF;-><init>(Landroid/os/Parcel;)V
    0011: return-object v0
    0012: new-instance v0, Lcom/easypaisaTweak/newpackage/zkF6VM;
    0014: invoke-direct {v0, v1}, Lcom/easypaisaTweak/newpackage/zkF6VM;-><init>(Landroid/os/Parcel;)V
    0017: return-object v0
    0018: new-instance v0, Landroidx/versionedparcelable/ParcelImpl;
    001a: invoke-direct {v0, v1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V
    001d: return-object v0
    001e: nop
    001f: move/16 v0, v0
    0022: return-wide v0
    0023: nop
    0024: move-result v0
    0025: nop
    0026: move-wide v0, v0
    0027: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/Gi9lbFSu;->newArray(I)[Ljava/lang/Object;
    .registers 2
    0000: iget v0, v0, Lcom/easypaisaTweak/newpackage/Gi9lbFSu;->yWkiZmD:I
    0002: packed-switch v0, 0012
    0005: goto 000f
    0006: new-array v0, v1, [Lcom/easypaisaTweak/newpackage/XZnryxy;
    0008: return-object v0
    0009: new-array v0, v1, [Lcom/easypaisaTweak/newpackage/lGDfirF;
    000b: return-object v0
    000c: new-array v0, v1, [Lcom/easypaisaTweak/newpackage/zkF6VM;
    000e: return-object v0
    000f: new-array v0, v1, [Landroidx/versionedparcelable/ParcelImpl;
    0011: return-object v0
    0012: nop
    0013: move/16 v0, v0
    0016: move-result v0
    0017: nop
    0018: move-object v0, v0
    0019: nop
    001a: move-wide v0, v0
    001b: nop
.end method
