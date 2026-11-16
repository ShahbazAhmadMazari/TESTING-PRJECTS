# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract Lcom/easypaisaTweak/newpackage/NGm4OtxWM;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/hO03fCMH;
.field public final Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->hO03fCMH:Lcom/easypaisaTweak/newpackage/hO03fCMH;
.field public final Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->yWkiZmD:Lcom/easypaisaTweak/newpackage/hO03fCMH;

.method public constructor Lcom/easypaisaTweak/newpackage/NGm4OtxWM;-><init>(Lcom/easypaisaTweak/newpackage/hO03fCMH;, Lcom/easypaisaTweak/newpackage/hO03fCMH;, Lcom/easypaisaTweak/newpackage/hO03fCMH;)V
    .registers 4
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->yWkiZmD:Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0005: iput-object v2, v0, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0007: iput-object v3, v0, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->hO03fCMH:Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0009: return-void
.end method

.method public abstract Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->Gi9lbFSu(I)Z
    # abstract or native method

.end method

.method public final Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->SfW5jTpdE(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    0000: invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;
    0003: move-result-object v0
    0004: iget-object v1, v4, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0006: const/4 v2, #0
    0007: invoke-virtual {v1, v0, v2}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->getOrDefault(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    000a: move-result-object v0
    000b: check-cast v0, Ljava/lang/reflect/Method;
    000d: if-nez v0, 002e
    000f: invoke-virtual {v4, v5}, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->eRtvpvxbz(Ljava/lang/Class;)Ljava/lang/Class;
    0012: move-result-object v4
    0013: invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    0016: const/4 v0, #2
    0017: new-array v0, v0, [Ljava/lang/Class;
    0019: const/4 v2, #0
    001a: aput-object v5, v0, v2
    001c: const/4 v2, #1
    001d: const-class v3, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;
    001f: aput-object v3, v0, v2
    0021: const-string v2, 'write'
    0023: invoke-virtual {v4, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;, [Ljava/lang/Class;)Ljava/lang/reflect/Method;
    0026: move-result-object v0
    0027: invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;
    002a: move-result-object v4
    002b: invoke-virtual {v1, v4, v0}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    002e: return-object v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->UjNghiE()Lcom/easypaisaTweak/newpackage/SXoJU1IXvP;
    .registers 4
    0000: move-object v0, v3
    0001: check-cast v0, Lcom/easypaisaTweak/newpackage/ArnsxSd;
    0003: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/ArnsxSd;->Gi9lbFSu:Landroid/os/Parcel;
    0005: invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    0008: move-result-object v0
    0009: const/4 v1, #0
    000a: if-nez v0, 000d
    000c: return-object v1
    000d: invoke-virtual {v3}, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->yWkiZmD()Lcom/easypaisaTweak/newpackage/ArnsxSd;
    0010: move-result-object v2
    0011: invoke-virtual {v3, v0}, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->hO03fCMH(Ljava/lang/String;)Ljava/lang/reflect/Method;
    0014: move-result-object v3
    0015: filled-new-array {v2}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    0018: move-result-object v0
    0019: invoke-virtual {v3, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;, [Ljava/lang/Object;)Ljava/lang/Object;
    001c: move-result-object v3
    001d: check-cast v3, Lcom/easypaisaTweak/newpackage/SXoJU1IXvP;
    001f: return-object v3
    0020: move-exception v3
    0021: new-instance v0, Ljava/lang/RuntimeException;
    0023: const-string v1, 'VersionedParcel encountered ClassNotFoundException'
    0025: invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;, Ljava/lang/Throwable;)V
    0028: throw v0
    0029: move-exception v3
    002a: new-instance v0, Ljava/lang/RuntimeException;
    002c: const-string v1, 'VersionedParcel encountered NoSuchMethodException'
    002e: invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;, Ljava/lang/Throwable;)V
    0031: throw v0
    0032: move-exception v3
    0033: invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
    0036: move-result-object v0
    0037: instance-of v0, v0, Ljava/lang/RuntimeException;
    0039: if-eqz v0, 0042
    003b: invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
    003e: move-result-object v3
    003f: check-cast v3, Ljava/lang/RuntimeException;
    0041: throw v3
    0042: new-instance v0, Ljava/lang/RuntimeException;
    0044: const-string v1, 'VersionedParcel encountered InvocationTargetException'
    0046: invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;, Ljava/lang/Throwable;)V
    0049: throw v0
    004a: move-exception v3
    004b: new-instance v0, Ljava/lang/RuntimeException;
    004d: const-string v1, 'VersionedParcel encountered IllegalAccessException'
    004f: invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;, Ljava/lang/Throwable;)V
    0052: throw v0
.end method

.method public abstract Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->ZDfAQYocn5(I)V
    # abstract or native method

.end method

.method public final Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->eRtvpvxbz(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 5
    0000: invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
    0003: move-result-object v0
    0004: iget-object v3, v3, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->hO03fCMH:Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0006: const/4 v1, #0
    0007: invoke-virtual {v3, v0, v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->getOrDefault(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    000a: move-result-object v0
    000b: check-cast v0, Ljava/lang/Class;
    000d: if-nez v0, 0035
    000f: invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
    0012: move-result-object v0
    0013: invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;
    0016: move-result-object v0
    0017: invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    001a: move-result-object v1
    001b: filled-new-array {v0, v1}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    001e: move-result-object v0
    001f: const-string v1, '%s.%sParcelizer'
    0021: invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0024: move-result-object v0
    0025: const/4 v1, #0
    0026: invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    0029: move-result-object v2
    002a: invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;, Z, Ljava/lang/ClassLoader;)Ljava/lang/Class;
    002d: move-result-object v0
    002e: invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
    0031: move-result-object v4
    0032: invoke-virtual {v3, v4, v0}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0035: return-object v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->hO03fCMH(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6
    0000: iget-object v4, v4, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->yWkiZmD:Lcom/easypaisaTweak/newpackage/hO03fCMH;
    0002: const/4 v0, #0
    0003: invoke-virtual {v4, v5, v0}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->getOrDefault(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0006: move-result-object v0
    0007: check-cast v0, Ljava/lang/reflect/Method;
    0009: if-nez v0, 0027
    000b: invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    000e: const-class v0, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;
    0010: invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    0013: move-result-object v1
    0014: const/4 v2, #1
    0015: invoke-static {v5, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;, Z, Ljava/lang/ClassLoader;)Ljava/lang/Class;
    0018: move-result-object v1
    0019: new-array v2, v2, [Ljava/lang/Class;
    001b: const/4 v3, #0
    001c: aput-object v0, v2, v3
    001e: const-string v0, 'read'
    0020: invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;, [Ljava/lang/Class;)Ljava/lang/reflect/Method;
    0023: move-result-object v0
    0024: invoke-virtual {v4, v5, v0}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0027: return-object v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->hXElriBC2(Lcom/easypaisaTweak/newpackage/SXoJU1IXvP;)V
    .registers 5
    0000: const/4 v0, #0
    0001: if-nez v4, 000b
    0003: check-cast v3, Lcom/easypaisaTweak/newpackage/ArnsxSd;
    0005: iget-object v3, v3, Lcom/easypaisaTweak/newpackage/ArnsxSd;->Gi9lbFSu:Landroid/os/Parcel;
    0007: invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    000a: return-void
    000b: invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    000e: move-result-object v1
    000f: invoke-virtual {v3, v1}, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->eRtvpvxbz(Ljava/lang/Class;)Ljava/lang/Class;
    0012: move-result-object v1
    0013: invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
    0016: move-result-object v1
    0017: move-object v2, v3
    0018: check-cast v2, Lcom/easypaisaTweak/newpackage/ArnsxSd;
    001a: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/ArnsxSd;->Gi9lbFSu:Landroid/os/Parcel;
    001c: invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    001f: invoke-virtual {v3}, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->yWkiZmD()Lcom/easypaisaTweak/newpackage/ArnsxSd;
    0022: move-result-object v1
    0023: invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    0026: move-result-object v2
    0027: invoke-virtual {v3, v2}, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->SfW5jTpdE(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    002a: move-result-object v3
    002b: filled-new-array {v4, v1}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    002e: move-result-object v4
    002f: invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;, [Ljava/lang/Object;)Ljava/lang/Object;
    0032: iget v3, v1, Lcom/easypaisaTweak/newpackage/ArnsxSd;->hXElriBC2:I
    0034: if-ltz v3, 004d
    0036: iget-object v4, v1, Lcom/easypaisaTweak/newpackage/ArnsxSd;->SfW5jTpdE:Landroid/util/SparseIntArray;
    0038: invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I
    003b: move-result v3
    003c: iget-object v4, v1, Lcom/easypaisaTweak/newpackage/ArnsxSd;->Gi9lbFSu:Landroid/os/Parcel;
    003e: invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I
    0041: move-result v0
    0042: sub-int v1, v0, v3
    0044: invoke-virtual {v4, v3}, Landroid/os/Parcel;->setDataPosition(I)V
    0047: invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V
    004a: invoke-virtual {v4, v0}, Landroid/os/Parcel;->setDataPosition(I)V
    004d: return-void
    004e: move-exception v3
    004f: new-instance v4, Ljava/lang/RuntimeException;
    0051: const-string v0, 'VersionedParcel encountered ClassNotFoundException'
    0053: invoke-direct {v4, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;, Ljava/lang/Throwable;)V
    0056: throw v4
    0057: move-exception v3
    0058: new-instance v4, Ljava/lang/RuntimeException;
    005a: const-string v0, 'VersionedParcel encountered NoSuchMethodException'
    005c: invoke-direct {v4, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;, Ljava/lang/Throwable;)V
    005f: throw v4
    0060: move-exception v3
    0061: invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
    0064: move-result-object v4
    0065: instance-of v4, v4, Ljava/lang/RuntimeException;
    0067: if-eqz v4, 0070
    0069: invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
    006c: move-result-object v3
    006d: check-cast v3, Ljava/lang/RuntimeException;
    006f: throw v3
    0070: new-instance v4, Ljava/lang/RuntimeException;
    0072: const-string v0, 'VersionedParcel encountered InvocationTargetException'
    0074: invoke-direct {v4, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;, Ljava/lang/Throwable;)V
    0077: throw v4
    0078: move-exception v3
    0079: new-instance v4, Ljava/lang/RuntimeException;
    007b: const-string v0, 'VersionedParcel encountered IllegalAccessException'
    007d: invoke-direct {v4, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;, Ljava/lang/Throwable;)V
    0080: throw v4
    0081: move-exception v3
    0082: new-instance v0, Ljava/lang/RuntimeException;
    0084: invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    0087: move-result-object v4
    0088: invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    008b: move-result-object v4
    008c: const-string v1, ' does not have a Parcelizer'
    008e: invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    0091: move-result-object v4
    0092: invoke-direct {v0, v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;, Ljava/lang/Throwable;)V
    0095: throw v0
.end method

.method public abstract Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->yWkiZmD()Lcom/easypaisaTweak/newpackage/ArnsxSd;
    # abstract or native method

.end method

.method public final Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->zkF6VM(Landroid/os/Parcelable;, I)Landroid/os/Parcelable;
    .registers 3
    0000: invoke-virtual {v0, v2}, Lcom/easypaisaTweak/newpackage/NGm4OtxWM;->Gi9lbFSu(I)Z
    0003: move-result v2
    0004: if-nez v2, 0007
    0006: return-object v1
    0007: check-cast v0, Lcom/easypaisaTweak/newpackage/ArnsxSd;
    0009: const-class v1, Lcom/easypaisaTweak/newpackage/ArnsxSd;
    000b: invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    000e: move-result-object v1
    000f: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/ArnsxSd;->Gi9lbFSu:Landroid/os/Parcel;
    0011: invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    0014: move-result-object v0
    0015: return-object v0
.end method
