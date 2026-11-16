# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/longfafa/paylib/JobService$IPayServiceBinder;
.super Lcom/longfafa/pay/IPayService$Stub;
.source "SourceFile"

.field public Lcom/longfafa/paylib/JobService$IPayServiceBinder;->iPayBack:Lcom/longfafa/pay/IPayBack;

.method public constructor Lcom/longfafa/paylib/JobService$IPayServiceBinder;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Lcom/longfafa/pay/IPayService$Stub;-><init>()V
    0003: return-void
.end method

.method public Lcom/longfafa/paylib/JobService$IPayServiceBinder;->getPayList(I, I)Ljava/lang/String;
    .registers 3
    0000: const-string v0, 'EasypaisaTweak'
    0002: const-string v1, 'IPayServiceBinder getPayList'
    0004: invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    0007: const-string v0, ''
    0009: return-object v0
.end method

.method public Lcom/longfafa/paylib/JobService$IPayServiceBinder;->getPayListByTimeStamp(J, J)Ljava/lang/String;
    .registers 5
    0000: const-string v0, 'EasypaisaTweak'
    0002: const-string v1, 'IPayServiceBinder getPayListByTimeStamp'
    0004: invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    0007: const-string v0, ''
    0009: return-object v0
.end method

.method public Lcom/longfafa/paylib/JobService$IPayServiceBinder;->getRequestMeta()Ljava/lang/String;
    .registers 2
    0000: const-string v1, 'EasypaisaTweak'
    0002: const-string v0, 'IPayServiceBinder getRequestMeta'
    0004: invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    0007: const-string v1, ''
    0009: return-object v1
.end method

.method public Lcom/longfafa/paylib/JobService$IPayServiceBinder;->getUPIList()Ljava/lang/String;
    .registers 2
    0000: const-string v1, 'EasypaisaTweak'
    0002: const-string v0, 'IPayServiceBinder getUPIList'
    0004: invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    0007: new-instance v1, Lorg/json/JSONArray;
    0009: invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    000c: invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    000f: move-result-object v1
    0010: return-object v1
.end method

.method public Lcom/longfafa/paylib/JobService$IPayServiceBinder;->getUPIRequestMeta()Ljava/lang/String;
    .registers 2
    0000: const-string v1, 'EasypaisaTweak'
    0002: const-string v0, 'IPayServiceBinder getUPIRequestMeta'
    0004: invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    0007: const-string v1, ''
    0009: return-object v1
.end method

.method public Lcom/longfafa/paylib/JobService$IPayServiceBinder;->onEvent(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const-string v1, 'IPayServiceBinder onEvent name='
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0007: invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000a: const-string v1, ';key='
    000c: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000f: invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0012: const-string v6, ';value='
    0014: invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0017: invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001a: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    001d: move-result-object v6
    001e: const-string v7, 'EasypaisaTweak'
    0020: invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    0023: invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    0026: invoke-virtual {v5}, Ljava/lang/String;->hashCode()I
    0029: move-result v6
    002a: const-string v0, 'init'
    002c: const/4 v1, #1
    002d: const/4 v2, #0
    002e: const/4 v3, #-1
    002f: sparse-switch v6, 00e6
    0032: goto 0051
    0033: invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    0036: move-result v5
    0037: if-nez v5, 003a
    0039: goto 0051
    003a: const/4 v3, #2
    003b: goto 0051
    003c: const-string v6, 'getInfo'
    003e: invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    0041: move-result v5
    0042: if-nez v5, 0045
    0044: goto 0051
    0045: move v3, v1
    0046: goto 0051
    0047: const-string v6, 'initState'
    0049: invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    004c: move-result v5
    004d: if-nez v5, 0050
    004f: goto 0051
    0050: move v3, v2
    0051: const-string v5, ''
    0053: packed-switch v3, 00f4
    0056: goto/16 00e0
    0058: invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    005b: invoke-static {}, Lcom/easypaisaTweak/WalletApp;->getMobileNo()Ljava/lang/String;
    005e: move-result-object v5
    005f: goto 0076
    0060: move-exception v4
    0061: new-instance v6, Ljava/lang/StringBuilder;
    0063: const-string v0, 'UpiUtils error:'
    0065: invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0068: invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    006b: move-result-object v4
    006c: invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    006f: invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0072: move-result-object v4
    0073: invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    0076: invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z
    0079: move-result v4
    007a: if-nez v4, 0081
    007c: sget-boolean v4, Lcom/easypaisaTweak/WalletApp;->isLogined:Z
    007e: if-eqz v4, 0081
    0080: goto 0082
    0081: move v1, v2
    0082: new-instance v4, Ljava/lang/StringBuilder;
    0084: const-string v6, 'isLogined:'
    0086: invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0089: invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    008c: const-string v6, ' mobileNum:'
    008e: invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0091: invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0094: invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0097: move-result-object v4
    0098: invoke-static {v4}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    009b: new-instance v4, Ljava/lang/StringBuilder;
    009d: const-string v6, 'init mobileNum:'
    009f: invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    00a2: invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00a5: const-string v6, ';isLogined='
    00a7: invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00aa: invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    00ad: invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    00b0: move-result-object v4
    00b1: invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    00b4: new-instance v4, Lcom/longfafa/paylib/pojo/UserInfo;
    00b6: invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    00b9: move-result-object v6
    00ba: const-string v7, 'easypaisa'
    00bc: const-string v0, '19'
    00be: invoke-direct {v4, v6, v5, v7, v0}, Lcom/longfafa/paylib/pojo/UserInfo;-><init>(Ljava/lang/Boolean;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    00c1: invoke-virtual {v4}, Lcom/longfafa/paylib/common/BasePoJo;->toString()Ljava/lang/String;
    00c4: move-result-object v4
    00c5: new-instance v5, Ljava/lang/StringBuilder;
    00c7: const-string v6, 'userInfoStr:'
    00c9: invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    00cc: invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00cf: invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    00d2: move-result-object v5
    00d3: invoke-static {v5}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    00d6: return-object v4
    00d7: iget-object v4, v4, Lcom/longfafa/paylib/JobService$IPayServiceBinder;->iPayBack:Lcom/longfafa/pay/IPayBack;
    00d9: const-string v6, 'getInfoBack'
    00db: const-string v7, 'userInfo'
    00dd: invoke-interface {v4, v6, v7, v5}, Lcom/longfafa/pay/IPayBack;->onEvent(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    00e0: const-string v4, 'test'
    00e2: return-object v4
    00e3: const-string v4, 'true'
    00e5: return-object v4
    00e6: nop
    00e7: move/16 v6497, v61435
    00ea: filled-new-array {v0, v1, v5, v6, v13}, <unknown_method_64384>
    00ed: cmp-long v0, v24, v0
    00ef: nop
    00f0: move-exception v0
    00f1: nop
    00f2: move-wide v0, v0
    00f3: nop
    00f4: nop
    00f5: move/16 v0, v0
    00f8: add-int v0, v0, v0
    00fa: long-to-int v0, v0
    00fb: nop
    00fc: move-wide/from16 v0, v0
.end method

.method public Lcom/longfafa/paylib/JobService$IPayServiceBinder;->ping()Ljava/lang/String;
    .registers 2
    0000: const-string v1, 'EasypaisaTweak'
    0002: const-string v0, 'IPayServiceBinder ping'
    0004: invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    0007: const-string v1, 'pong-19'
    0009: return-object v1
.end method

.method public Lcom/longfafa/paylib/JobService$IPayServiceBinder;->setPayBack(Lcom/longfafa/pay/IPayBack;)Ljava/lang/String;
    .registers 4
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const-string v1, 'IPayServiceBinder setPayBack'
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0007: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    000a: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    000d: move-result-object v0
    000e: const-string v1, 'EasypaisaTweak'
    0010: invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    0013: iput-object v3, v2, Lcom/longfafa/paylib/JobService$IPayServiceBinder;->iPayBack:Lcom/longfafa/pay/IPayBack;
    0015: const-string v2, 'success'
    0017: return-object v2
.end method
