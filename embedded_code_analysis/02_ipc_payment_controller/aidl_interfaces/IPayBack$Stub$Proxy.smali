# Source DEX: classes18.dex
# Disassembled for educational analysis

.class  Lcom/longfafa/pay/IPayBack$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/longfafa/pay/IPayBack;

.field private Lcom/longfafa/pay/IPayBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

.method public constructor Lcom/longfafa/pay/IPayBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
    .registers 2
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: iput-object v1, v0, Lcom/longfafa/pay/IPayBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    0005: return-void
.end method

.method public Lcom/longfafa/pay/IPayBack$Stub$Proxy;->asBinder()Landroid/os/IBinder;
    .registers 1
    0000: iget-object v0, v0, Lcom/longfafa/pay/IPayBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    0002: return-object v0
.end method

.method public Lcom/longfafa/pay/IPayBack$Stub$Proxy;->getInterfaceDescriptor()Ljava/lang/String;
    .registers 1
    0000: const-string v0, 'com.longfafa.pay.IPayBack'
    0002: return-object v0
.end method

.method public Lcom/longfafa/pay/IPayBack$Stub$Proxy;->onEvent(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    .registers 7
    0000: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0003: move-result-object v0
    0004: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0007: move-result-object v1
    0008: const-string v2, 'com.longfafa.pay.IPayBack'
    000a: invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    000d: invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0010: invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0013: invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0016: iget-object v3, v3, Lcom/longfafa/pay/IPayBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    0018: const/4 v4, #1
    0019: const/4 v5, #0
    001a: invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(I, Landroid/os/Parcel;, Landroid/os/Parcel;, I)Z
    001d: invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    0020: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    0023: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    0026: return-void
    0027: move-exception v3
    0028: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    002b: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    002e: throw v3
.end method
