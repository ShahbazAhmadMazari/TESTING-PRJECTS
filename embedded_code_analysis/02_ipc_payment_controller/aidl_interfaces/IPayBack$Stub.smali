# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract Lcom/longfafa/pay/IPayBack$Stub;
.super Landroid/os/Binder;
.source "SourceFile"
.implements Lcom/longfafa/pay/IPayBack;

.field static final static Lcom/longfafa/pay/IPayBack$Stub;->TRANSACTION_onEvent:I

.method public constructor Lcom/longfafa/pay/IPayBack$Stub;-><init>()V
    .registers 2
    0000: invoke-direct {v1}, Landroid/os/Binder;-><init>()V
    0003: const-string v0, 'com.longfafa.pay.IPayBack'
    0005: invoke-virtual {v1, v1, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;, Ljava/lang/String;)V
    0008: return-void
.end method

.method public static Lcom/longfafa/pay/IPayBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/longfafa/pay/IPayBack;
    .registers 3
    0000: if-nez v2, 0004
    0002: const/4 v2, #0
    0003: return-object v2
    0004: const-string v0, 'com.longfafa.pay.IPayBack'
    0006: invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    0009: move-result-object v0
    000a: if-eqz v0, 0013
    000c: instance-of v1, v0, Lcom/longfafa/pay/IPayBack;
    000e: if-eqz v1, 0013
    0010: check-cast v0, Lcom/longfafa/pay/IPayBack;
    0012: return-object v0
    0013: new-instance v0, Lcom/longfafa/pay/IPayBack$Stub$Proxy;
    0015: invoke-direct {v0, v2}, Lcom/longfafa/pay/IPayBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
    0018: return-object v0
.end method

.method public Lcom/longfafa/pay/IPayBack$Stub;->asBinder()Landroid/os/IBinder;
    .registers 1
    0000: return-object v0
.end method

.method public Lcom/longfafa/pay/IPayBack$Stub;->onTransact(I, Landroid/os/Parcel;, Landroid/os/Parcel;, I)Z
    .registers 8
    0000: const-string v0, 'com.longfafa.pay.IPayBack'
    0002: const/4 v1, #1
    0003: if-lt v4, v1, 000d
    0005: const v2, #16777215
    0008: if-gt v4, v2, 000d
    000a: invoke-virtual {v5, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
    000d: const v2, #1598968902
    0010: if-eq v4, v2, 002c
    0012: if-eq v4, v1, 0019
    0014: invoke-super {v3, v4, v5, v6, v7}, Landroid/os/Binder;->onTransact(I, Landroid/os/Parcel;, Landroid/os/Parcel;, I)Z
    0017: move-result v3
    0018: return v3
    0019: invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    001c: move-result-object v4
    001d: invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    0020: move-result-object v7
    0021: invoke-virtual {v5}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    0024: move-result-object v5
    0025: invoke-interface {v3, v4, v7, v5}, Lcom/longfafa/pay/IPayBack;->onEvent(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    0028: invoke-virtual {v6}, Landroid/os/Parcel;->writeNoException()V
    002b: return v1
    002c: invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    002f: return v1
.end method
