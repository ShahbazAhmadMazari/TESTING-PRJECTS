# Source DEX: classes18.dex
# Disassembled for educational analysis

.class  Lcom/longfafa/pay/IPayService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/longfafa/pay/IPayService;

.field private Lcom/longfafa/pay/IPayService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

.method public constructor Lcom/longfafa/pay/IPayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
    .registers 2
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: iput-object v1, v0, Lcom/longfafa/pay/IPayService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    0005: return-void
.end method

.method public Lcom/longfafa/pay/IPayService$Stub$Proxy;->asBinder()Landroid/os/IBinder;
    .registers 1
    0000: iget-object v0, v0, Lcom/longfafa/pay/IPayService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    0002: return-object v0
.end method

.method public Lcom/longfafa/pay/IPayService$Stub$Proxy;->getInterfaceDescriptor()Ljava/lang/String;
    .registers 1
    0000: const-string v0, 'com.longfafa.pay.IPayService'
    0002: return-object v0
.end method

.method public Lcom/longfafa/pay/IPayService$Stub$Proxy;->getPayList(I, I)Ljava/lang/String;
    .registers 6
    0000: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0003: move-result-object v0
    0004: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0007: move-result-object v1
    0008: const-string v2, 'com.longfafa.pay.IPayService'
    000a: invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    000d: invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    0010: invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V
    0013: iget-object v3, v3, Lcom/longfafa/pay/IPayService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    0015: const/4 v4, #4
    0016: const/4 v5, #0
    0017: invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(I, Landroid/os/Parcel;, Landroid/os/Parcel;, I)Z
    001a: invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    001d: invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    0020: move-result-object v3
    0021: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    0024: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    0027: return-object v3
    0028: move-exception v3
    0029: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    002c: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    002f: throw v3
.end method

.method public Lcom/longfafa/pay/IPayService$Stub$Proxy;->getPayListByTimeStamp(J, J)Ljava/lang/String;
    .registers 8
    0000: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0003: move-result-object v0
    0004: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0007: move-result-object v1
    0008: const-string v2, 'com.longfafa.pay.IPayService'
    000a: invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    000d: invoke-virtual {v0, v4, v5}, Landroid/os/Parcel;->writeLong(J)V
    0010: invoke-virtual {v0, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    0013: iget-object v3, v3, Lcom/longfafa/pay/IPayService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    0015: const/4 v4, #7
    0016: const/4 v5, #0
    0017: invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(I, Landroid/os/Parcel;, Landroid/os/Parcel;, I)Z
    001a: invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    001d: invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    0020: move-result-object v3
    0021: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    0024: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    0027: return-object v3
    0028: move-exception v3
    0029: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    002c: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    002f: throw v3
.end method

.method public Lcom/longfafa/pay/IPayService$Stub$Proxy;->getRequestMeta()Ljava/lang/String;
    .registers 5
    0000: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0003: move-result-object v0
    0004: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0007: move-result-object v1
    0008: const-string v2, 'com.longfafa.pay.IPayService'
    000a: invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    000d: iget-object v4, v4, Lcom/longfafa/pay/IPayService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    000f: const/4 v2, #6
    0010: const/4 v3, #0
    0011: invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(I, Landroid/os/Parcel;, Landroid/os/Parcel;, I)Z
    0014: invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    0017: invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    001a: move-result-object v4
    001b: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    001e: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    0021: return-object v4
    0022: move-exception v4
    0023: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    0026: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    0029: throw v4
.end method

.method public Lcom/longfafa/pay/IPayService$Stub$Proxy;->getUPIList()Ljava/lang/String;
    .registers 5
    0000: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0003: move-result-object v0
    0004: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0007: move-result-object v1
    0008: const-string v2, 'com.longfafa.pay.IPayService'
    000a: invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    000d: iget-object v4, v4, Lcom/longfafa/pay/IPayService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    000f: const/4 v2, #5
    0010: const/4 v3, #0
    0011: invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(I, Landroid/os/Parcel;, Landroid/os/Parcel;, I)Z
    0014: invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    0017: invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    001a: move-result-object v4
    001b: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    001e: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    0021: return-object v4
    0022: move-exception v4
    0023: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    0026: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    0029: throw v4
.end method

.method public Lcom/longfafa/pay/IPayService$Stub$Proxy;->getUPIRequestMeta()Ljava/lang/String;
    .registers 5
    0000: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0003: move-result-object v0
    0004: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0007: move-result-object v1
    0008: const-string v2, 'com.longfafa.pay.IPayService'
    000a: invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    000d: iget-object v4, v4, Lcom/longfafa/pay/IPayService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    000f: const/16 v2, #8
    0011: const/4 v3, #0
    0012: invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(I, Landroid/os/Parcel;, Landroid/os/Parcel;, I)Z
    0015: invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    0018: invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    001b: move-result-object v4
    001c: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    001f: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    0022: return-object v4
    0023: move-exception v4
    0024: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    0027: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    002a: throw v4
.end method

.method public Lcom/longfafa/pay/IPayService$Stub$Proxy;->onEvent(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    0000: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0003: move-result-object v0
    0004: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0007: move-result-object v1
    0008: const-string v2, 'com.longfafa.pay.IPayService'
    000a: invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    000d: invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0010: invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0013: invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0016: iget-object v3, v3, Lcom/longfafa/pay/IPayService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    0018: const/4 v4, #2
    0019: const/4 v5, #0
    001a: invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(I, Landroid/os/Parcel;, Landroid/os/Parcel;, I)Z
    001d: invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    0020: invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    0023: move-result-object v3
    0024: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    0027: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    002a: return-object v3
    002b: move-exception v3
    002c: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    002f: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    0032: throw v3
.end method

.method public Lcom/longfafa/pay/IPayService$Stub$Proxy;->ping()Ljava/lang/String;
    .registers 5
    0000: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0003: move-result-object v0
    0004: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0007: move-result-object v1
    0008: const-string v2, 'com.longfafa.pay.IPayService'
    000a: invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    000d: iget-object v4, v4, Lcom/longfafa/pay/IPayService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    000f: const/4 v2, #1
    0010: const/4 v3, #0
    0011: invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(I, Landroid/os/Parcel;, Landroid/os/Parcel;, I)Z
    0014: invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    0017: invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    001a: move-result-object v4
    001b: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    001e: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    0021: return-object v4
    0022: move-exception v4
    0023: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    0026: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    0029: throw v4
.end method

.method public Lcom/longfafa/pay/IPayService$Stub$Proxy;->setPayBack(Lcom/longfafa/pay/IPayBack;)Ljava/lang/String;
    .registers 5
    0000: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0003: move-result-object v0
    0004: invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    0007: move-result-object v1
    0008: const-string v2, 'com.longfafa.pay.IPayService'
    000a: invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    000d: invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    0010: iget-object v3, v3, Lcom/longfafa/pay/IPayService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
    0012: const/4 v4, #3
    0013: const/4 v2, #0
    0014: invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(I, Landroid/os/Parcel;, Landroid/os/Parcel;, I)Z
    0017: invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    001a: invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    001d: move-result-object v3
    001e: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    0021: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    0024: return-object v3
    0025: move-exception v3
    0026: invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    0029: invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    002c: throw v3
.end method
