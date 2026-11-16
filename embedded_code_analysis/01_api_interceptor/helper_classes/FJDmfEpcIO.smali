# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/FJDmfEpcIO;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable$ClassLoaderCreator;


.method public final Lcom/easypaisaTweak/newpackage/FJDmfEpcIO;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    0000: new-instance v1, Lcom/easypaisaTweak/newpackage/uJhRv;
    0002: const/4 v0, #0
    0003: invoke-direct {v1, v2, v0}, Lcom/easypaisaTweak/newpackage/uJhRv;-><init>(Landroid/os/Parcel;, Ljava/lang/ClassLoader;)V
    0006: return-object v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/FJDmfEpcIO;->createFromParcel(Landroid/os/Parcel;, Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3
    0000: new-instance v0, Lcom/easypaisaTweak/newpackage/uJhRv;
    0002: invoke-direct {v0, v1, v2}, Lcom/easypaisaTweak/newpackage/uJhRv;-><init>(Landroid/os/Parcel;, Ljava/lang/ClassLoader;)V
    0005: return-object v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/FJDmfEpcIO;->newArray(I)[Ljava/lang/Object;
    .registers 2
    0000: new-array v0, v1, [Lcom/easypaisaTweak/newpackage/uJhRv;
    0002: return-object v0
.end method
