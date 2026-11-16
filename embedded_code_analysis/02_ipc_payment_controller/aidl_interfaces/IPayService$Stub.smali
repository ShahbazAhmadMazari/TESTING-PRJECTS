# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract Lcom/longfafa/pay/IPayService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"
.implements Lcom/longfafa/pay/IPayService;

.field static final static Lcom/longfafa/pay/IPayService$Stub;->TRANSACTION_getPayList:I
.field static final static Lcom/longfafa/pay/IPayService$Stub;->TRANSACTION_getPayListByTimeStamp:I
.field static final static Lcom/longfafa/pay/IPayService$Stub;->TRANSACTION_getRequestMeta:I
.field static final static Lcom/longfafa/pay/IPayService$Stub;->TRANSACTION_getUPIList:I
.field static final static Lcom/longfafa/pay/IPayService$Stub;->TRANSACTION_getUPIRequestMeta:I
.field static final static Lcom/longfafa/pay/IPayService$Stub;->TRANSACTION_onEvent:I
.field static final static Lcom/longfafa/pay/IPayService$Stub;->TRANSACTION_ping:I
.field static final static Lcom/longfafa/pay/IPayService$Stub;->TRANSACTION_setPayBack:I

.method public constructor Lcom/longfafa/pay/IPayService$Stub;-><init>()V
    .registers 2
    0000: invoke-direct {v1}, Landroid/os/Binder;-><init>()V
    0003: const-string v0, 'com.longfafa.pay.IPayService'
    0005: invoke-virtual {v1, v1, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;, Ljava/lang/String;)V
    0008: return-void
.end method

.method public static Lcom/longfafa/pay/IPayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/longfafa/pay/IPayService;
    .registers 3
    0000: if-nez v2, 0004
    0002: const/4 v2, #0
    0003: return-object v2
    0004: const-string v0, 'com.longfafa.pay.IPayService'
    0006: invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
    0009: move-result-object v0
    000a: if-eqz v0, 0013
    000c: instance-of v1, v0, Lcom/longfafa/pay/IPayService;
    000e: if-eqz v1, 0013
    0010: check-cast v0, Lcom/longfafa/pay/IPayService;
    0012: return-object v0
    0013: new-instance v0, Lcom/longfafa/pay/IPayService$Stub$Proxy;
    0015: invoke-direct {v0, v2}, Lcom/longfafa/pay/IPayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
    0018: return-object v0
.end method

.method public Lcom/longfafa/pay/IPayService$Stub;->asBinder()Landroid/os/IBinder;
    .registers 1
    0000: return-object v0
.end method

.method public Lcom/longfafa/pay/IPayService$Stub;->onTransact(I, Landroid/os/Parcel;, Landroid/os/Parcel;, I)Z
    .registers 9
    0000: const-string v0, 'com.longfafa.pay.IPayService'
    0002: const/4 v1, #1
    0003: if-lt v5, v1, 000d
    0005: const v2, #16777215
    0008: if-gt v5, v2, 000d
    000a: invoke-virtual {v6, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
    000d: const v2, #1598968902
    0010: if-eq v5, v2, 0096
    0012: packed-switch v5, 009a
    0015: invoke-super {v4, v5, v6, v7, v8}, Landroid/os/Binder;->onTransact(I, Landroid/os/Parcel;, Landroid/os/Parcel;, I)Z
    0018: move-result v4
    0019: return v4
    001a: invoke-interface {v4}, Lcom/longfafa/pay/IPayService;->getUPIRequestMeta()Ljava/lang/String;
    001d: move-result-object v4
    001e: invoke-virtual {v7}, Landroid/os/Parcel;->writeNoException()V
    0021: invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0024: goto 0095
    0025: invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J
    0028: move-result-wide v2
    0029: invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J
    002c: move-result-wide v5
    002d: invoke-interface {v4, v2, v3, v5, v6}, Lcom/longfafa/pay/IPayService;->getPayListByTimeStamp(J, J)Ljava/lang/String;
    0030: move-result-object v4
    0031: invoke-virtual {v7}, Landroid/os/Parcel;->writeNoException()V
    0034: invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0037: goto 0095
    0038: invoke-interface {v4}, Lcom/longfafa/pay/IPayService;->getRequestMeta()Ljava/lang/String;
    003b: move-result-object v4
    003c: invoke-virtual {v7}, Landroid/os/Parcel;->writeNoException()V
    003f: invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0042: goto 0095
    0043: invoke-interface {v4}, Lcom/longfafa/pay/IPayService;->getUPIList()Ljava/lang/String;
    0046: move-result-object v4
    0047: invoke-virtual {v7}, Landroid/os/Parcel;->writeNoException()V
    004a: invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    004d: goto 0095
    004e: invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I
    0051: move-result v5
    0052: invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I
    0055: move-result v6
    0056: invoke-interface {v4, v5, v6}, Lcom/longfafa/pay/IPayService;->getPayList(I, I)Ljava/lang/String;
    0059: move-result-object v4
    005a: invoke-virtual {v7}, Landroid/os/Parcel;->writeNoException()V
    005d: invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0060: goto 0095
    0061: invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
    0064: move-result-object v5
    0065: invoke-static {v5}, Lcom/longfafa/pay/IPayBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/longfafa/pay/IPayBack;
    0068: move-result-object v5
    0069: invoke-interface {v4, v5}, Lcom/longfafa/pay/IPayService;->setPayBack(Lcom/longfafa/pay/IPayBack;)Ljava/lang/String;
    006c: move-result-object v4
    006d: invoke-virtual {v7}, Landroid/os/Parcel;->writeNoException()V
    0070: invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0073: goto 0095
    0074: invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    0077: move-result-object v5
    0078: invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    007b: move-result-object v8
    007c: invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    007f: move-result-object v6
    0080: invoke-interface {v4, v5, v8, v6}, Lcom/longfafa/pay/IPayService;->onEvent(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    0083: move-result-object v4
    0084: invoke-virtual {v7}, Landroid/os/Parcel;->writeNoException()V
    0087: invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    008a: goto 0095
    008b: invoke-interface {v4}, Lcom/longfafa/pay/IPayService;->ping()Ljava/lang/String;
    008e: move-result-object v4
    008f: invoke-virtual {v7}, Landroid/os/Parcel;->writeNoException()V
    0092: invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0095: return v1
    0096: invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    0099: return v1
    009a: nop
    009b: move-object/from16 v0, v1
    009d: nop
    009e: .unknown-op 0x79
    009f: nop
    00a0: sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;
    00a2: aput-byte v0, v0, v0
    00a4: if-gtz v0, 00a4
    00a6: cmp-long v0, v0, v0
    00a8: fill-array-data v0, 1300a8
    00ab: nop
    00ac: move-object/from16 v0, v0
.end method
