# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/uJhRv;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;

.field public static final static Lcom/easypaisaTweak/newpackage/uJhRv;->CREATOR:Landroid/os/Parcelable$Creator;
.field public final Lcom/easypaisaTweak/newpackage/uJhRv;->yWkiZmD:Landroid/os/Bundle;

.method public static constructor Lcom/easypaisaTweak/newpackage/uJhRv;-><clinit>()V
    .registers 1
    0000: new-instance v0, Lcom/easypaisaTweak/newpackage/FJDmfEpcIO;
    0002: invoke-direct {v0}, Lcom/easypaisaTweak/newpackage/FJDmfEpcIO;-><init>()V
    0005: sput-object v0, Lcom/easypaisaTweak/newpackage/uJhRv;->CREATOR:Landroid/os/Parcelable$Creator;
    0007: return-void
.end method

.method public constructor Lcom/easypaisaTweak/newpackage/uJhRv;-><init>(Landroid/os/Parcel;, Ljava/lang/ClassLoader;)V
    .registers 3
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    0006: move-result-object v1
    0007: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/uJhRv;->yWkiZmD:Landroid/os/Bundle;
    0009: if-eqz v2, 0010
    000b: if-eqz v1, 0010
    000d: invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    0010: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/uJhRv;->describeContents()I
    .registers 1
    0000: const/4 v0, #0
    0001: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/uJhRv;->writeToParcel(Landroid/os/Parcel;, I)V
    .registers 3
    0000: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/uJhRv;->yWkiZmD:Landroid/os/Bundle;
    0002: invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    0005: return-void
.end method
