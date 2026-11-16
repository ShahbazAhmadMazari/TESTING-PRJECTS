# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/SmaliEnterPoint;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static final static Lcom/easypaisaTweak/SmaliEnterPoint;->TAG:Ljava/lang/String;
.field public static static Lcom/easypaisaTweak/SmaliEnterPoint;->globalContext:Landroid/content/Context;

.method public constructor Lcom/easypaisaTweak/SmaliEnterPoint;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: return-void
.end method

.method public static synthetic Lcom/easypaisaTweak/SmaliEnterPoint;->Gi9lbFSu(Lpk/com/telenor/phoenix/views/moneyTransferRevamp2021/activities/MoneyTransferEnterAmountActivity;, Ljava/lang/String;)V
    .registers 2
    0000: invoke-static {v0, v1}, Lcom/easypaisaTweak/SmaliEnterPoint;->lambda$autoFillAmount$6(Lpk/com/telenor/phoenix/views/moneyTransferRevamp2021/activities/MoneyTransferEnterAmountActivity;, Ljava/lang/String;)V
    0003: return-void
.end method

.method public static Lcom/easypaisaTweak/SmaliEnterPoint;->Okhttp3Build(Lokhttp3/OkHttpClient$Builder;)V
    .registers 3
    0000: const-string v0, 'EasypaisaTweak'
    0002: const-string v1, 'Okhttp3Build'
    0004: invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    0007: new-instance v0, Lcom/easypaisaTweak/SmaliEnterPoint$1;
    0009: invoke-direct {v0}, Lcom/easypaisaTweak/SmaliEnterPoint$1;-><init>()V
    000c: invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    000f: goto 0014
    0010: move-exception v2
    0011: invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    0014: return-void
.end method

.method public static Lcom/easypaisaTweak/SmaliEnterPoint;->RSAEncode(Ljava/lang/String;, Ljava/lang/String;)V
    .registers 4
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const-string v1, 'RSAEncode LoginRsaKey:'
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0007: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000a: const-string v1, ' LoginPwd:'
    000c: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000f: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0012: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0015: move-result-object v0
    0016: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0019: invoke-static {v2}, LsyncMeta/SyncMeta;->setEasypaisaLoginRsaKey(Ljava/lang/String;)V
    001c: invoke-static {v3}, LsyncMeta/SyncMeta;->setEasypaisaLoginPwd(Ljava/lang/String;)V
    001f: return-void
.end method

.method public static synthetic Lcom/easypaisaTweak/SmaliEnterPoint;->SfW5jTpdE(Landroidx/appcompat/widget/AppCompatEditText;, Ljava/lang/String;)V
    .registers 2
    0000: invoke-static {v0, v1}, Lcom/easypaisaTweak/SmaliEnterPoint;->lambda$autoFillAmount$5(Landroidx/appcompat/widget/AppCompatEditText;, Ljava/lang/String;)V
    0003: return-void
.end method

.method public static synthetic Lcom/easypaisaTweak/SmaliEnterPoint;->UjNghiE(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    .registers 4
    0000: invoke-static {v0, v1, v2, v3}, Lcom/easypaisaTweak/SmaliEnterPoint;->lambda$autoJumpToTransfer$3(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    0003: return-void
.end method

.method public static Lcom/easypaisaTweak/SmaliEnterPoint;->autoFillAmount(Lpk/com/telenor/phoenix/views/moneyTransferRevamp2021/activities/MoneyTransferEnterAmountActivity;)V
    .registers 9
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const-string v1, 'hookPoint5 selfObject:'
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0007: invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    000a: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    000d: move-result-object v0
    000e: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0011: sget-object v0, Lcom/easypaisaTweak/WalletApp;->baseActivity:Landroid/app/Activity;
    0013: invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
    0016: move-result-object v0
    0017: invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    001a: move-result-object v0
    001b: new-instance v1, Ljava/lang/StringBuilder;
    001d: const-string v2, 'hookPoint5 bundle:'
    001f: invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0022: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0025: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0028: move-result-object v1
    0029: invoke-static {v1}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    002c: if-eqz v0, 006b
    002e: const-string v1, 'amount'
    0030: invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    0033: move-result-object v1
    0034: const-string v2, 'timeStamp'
    0036: invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J
    0039: move-result-wide v2
    003a: invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    003d: move-result-wide v4
    003e: const-wide/16 v6, #1000
    0040: .unknown-op 0xbe
    0041: invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    0044: move-result-object v0
    0045: invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    0048: move-result-object v6
    0049: filled-new-array {v0, v6}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    004c: move-result-object v0
    004d: const-string v6, 'hookPoint5 %d %d'
    004f: invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0052: move-result-object v0
    0053: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0056: .unknown-op 0xbc
    0057: const-wide/16 v2, #5
    0059: cmp-long v0, v4, v2
    005b: if-gez v0, 006b
    005d: new-instance v0, Ljava/lang/Thread;
    005f: new-instance v2, Lcom/easypaisaTweak/yWkiZmD;
    0061: const/4 v3, #1
    0062: invoke-direct {v2, v8, v1, v3}, Lcom/easypaisaTweak/yWkiZmD;-><init>(Ljava/lang/Object;, Ljava/lang/Object;, I)V
    0065: invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    0068: invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    006b: return-void
.end method

.method public static Lcom/easypaisaTweak/SmaliEnterPoint;->autoJumpToTransfer(Lpk/com/telenor/phoenix/views/moneyTransferRevamp2021/activities/MoneyTransferMainActivity;)V
    .registers 18
    0000: move-object/from16 v0, v17
    0002: new-instance v1, Ljava/lang/StringBuilder;
    0004: const-string v2, 'hookPoint3-1:'
    0006: invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0009: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    000c: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    000f: move-result-object v1
    0010: invoke-static {v1}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0013: if-nez v0, 0016
    0015: return-void
    0016: sput-object v0, Lcom/easypaisaTweak/WalletApp;->baseActivity:Landroid/app/Activity;
    0018: invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
    001b: move-result-object v0
    001c: invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    001f: move-result-object v0
    0020: sget-boolean v1, Lcom/easypaisaTweak/WalletApp;->isLogined:Z
    0022: if-nez v1, 003c
    0024: new-instance v0, Landroid/os/Handler;
    0026: invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    0029: move-result-object v1
    002a: invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    002d: new-instance v1, Ljava/lang/Thread;
    002f: new-instance v2, Lcom/easypaisaTweak/newpackage/x9BA8xd;
    0031: const/4 v3, #0
    0032: invoke-direct {v2, v3, v0}, Lcom/easypaisaTweak/newpackage/x9BA8xd;-><init>(I, Ljava/lang/Object;)V
    0035: invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    0038: invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    003b: return-void
    003c: if-eqz v0, 00cc
    003e: const-string v1, 'account'
    0040: invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    0043: move-result-object v1
    0044: const-string v2, 'amount'
    0046: invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    0049: move-result-object v9
    004a: const-string v2, 'name'
    004c: invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    004f: move-result-object v10
    0050: const-string v2, 'comment'
    0052: invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    0055: move-result-object v11
    0056: const-string v2, 'type'
    0058: invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    005b: move-result-object v12
    005c: const-string v2, 'timeStamp'
    005e: invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J
    0061: move-result-wide v13
    0062: invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    0065: move-result-wide v2
    0066: const-wide/16 v4, #1000
    0068: .unknown-op 0x9e
    0069: move/from16 v4, v8305
    006b: invoke-interface {v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;, Z)Landroid/content/Intent;
    006e: invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    0071: move-result-object v7
    0072: move-object v2, v1
    0073: move-object v3, v9
    0074: move-object v4, v10
    0075: move-object v5, v11
    0076: move-object v8, v12
    0077: filled-new-array/range {v2 .. v8}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    007a: move-result-object v0
    007b: const-string v2, 'show transfer %s %s %s %s %d %d %s'
    007d: invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0080: move-result-object v0
    0081: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0084: invoke-static {v1}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z
    0087: move-result v0
    0088: if-nez v0, 00cc
    008a: .unknown-op 0xbc
    008b: const-wide/16 v2, #5
    008d: cmp-long v0, v15, v2
    008f: if-gez v0, 00cc
    0091: const-string v0, 'show transfer money page 0'
    0093: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0096: const-string v0, 'epWallet'
    0098: invoke-static {v12, v0}, Lorg/apache/commons/lang/StringUtils;->equalsIgnoreCase(Ljava/lang/String;, Ljava/lang/String;)Z
    009b: move-result v0
    009c: if-eqz v0, 00b1
    009e: new-instance v0, Ljava/lang/Thread;
    00a0: new-instance v8, Lcom/easypaisaTweak/newpackage/vHJxN;
    00a2: const/4 v7, #0
    00a3: move-object v2, v8
    00a4: move-object v3, v9
    00a5: move-object v4, v1
    00a6: move-object v5, v10
    00a7: move-object v6, v11
    00a8: invoke-direct/range {v2 .. v7}, Lcom/easypaisaTweak/newpackage/vHJxN;-><init>(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, I)V
    00ab: invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    00ae: invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    00b1: const-string v0, 'otherWallet'
    00b3: invoke-static {v12, v0}, Lorg/apache/commons/lang/StringUtils;->equalsIgnoreCase(Ljava/lang/String;, Ljava/lang/String;)Z
    00b6: move-result v0
    00b7: if-eqz v0, 00cc
    00b9: new-instance v0, Ljava/lang/Thread;
    00bb: new-instance v8, Lcom/easypaisaTweak/newpackage/vHJxN;
    00bd: const/4 v7, #1
    00be: move-object v2, v8
    00bf: move-object v3, v9
    00c0: move-object v4, v1
    00c1: move-object v5, v10
    00c2: move-object v6, v11
    00c3: invoke-direct/range {v2 .. v7}, Lcom/easypaisaTweak/newpackage/vHJxN;-><init>(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, I)V
    00c6: invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    00c9: invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    00cc: return-void
.end method

.method public static Lcom/easypaisaTweak/SmaliEnterPoint;->customEncodeArgs(Ljava/lang/String;, Ljava/lang/String;)V
    .registers 4
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const-string v1, 'customEncodeArgs CustomEncodeArgs1:'
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0007: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000a: const-string v1, ' CustomEncodeArgs2:'
    000c: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000f: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0012: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0015: move-result-object v0
    0016: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0019: invoke-static {v2}, LsyncMeta/SyncMeta;->setEasypaisaCustomEncodeArgs1(Ljava/lang/String;)V
    001c: invoke-static {v3}, LsyncMeta/SyncMeta;->setEasypaisaCustomEncodeArgs2(Ljava/lang/String;)V
    001f: return-void
.end method

.method public static Lcom/easypaisaTweak/SmaliEnterPoint;->customEncodeLine(Ljava/lang/String;)V
    .registers 3
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const-string v1, 'customEncodeLine:'
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0007: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000a: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    000d: move-result-object v0
    000e: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0011: invoke-static {v2}, LsyncMeta/SyncMeta;->setEasypaisaCustomEncodeLine(Ljava/lang/String;)V
    0014: return-void
.end method

.method public static Lcom/easypaisaTweak/SmaliEnterPoint;->dumpObject(Ljava/lang/Object;)V
    .registers 10
    0000: const-string v0, 'dumpObject:'
    0002: invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    0005: move-result-object v1
    0006: invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
    0009: move-result-object v1
    000a: array-length v2, v1
    000b: const/4 v3, #0
    000c: move v4, v3
    000d: if-ge v4, v2, 00be
    000f: aget-object v5, v1, v4
    0011: invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    0014: move-result-object v6
    0015: const-string v7, 'get'
    0017: invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    001a: move-result v7
    001b: if-eqz v7, 00ba
    001d: invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterCount()I
    0020: move-result v7
    0021: if-nez v7, 00ba
    0023: const-string v7, 'getClass'
    0025: invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    0028: move-result v7
    0029: if-nez v7, 00ba
    002b: new-array v7, v3, [Ljava/lang/Object;
    002d: invoke-virtual {v5, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;, [Ljava/lang/Object;)Ljava/lang/Object;
    0030: move-result-object v5
    0031: new-instance v7, Ljava/lang/StringBuilder;
    0033: invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    0036: invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0039: invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    003c: const-string v8, ' -> '
    003e: invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0041: invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0044: const-string v8, ' ('
    0046: invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0049: if-eqz v5, 0054
    004b: invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    004e: move-result-object v8
    004f: invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;
    0052: move-result-object v8
    0053: goto 0056
    0054: const-string v8, 'null'
    0056: invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0059: const-string v8, ')'
    005b: invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    005e: invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0061: move-result-object v7
    0062: invoke-static {v7}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0065: invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0068: move-result-object v7
    0069: const-string v8, 'MTContactModel'
    006b: invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    006e: move-result v7
    006f: if-eqz v7, 0074
    0071: invoke-static {v5}, Lcom/easypaisaTweak/SmaliEnterPoint;->dumpObject(Ljava/lang/Object;)V
    0074: invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0077: move-result-object v7
    0078: const-string v8, 'ELFrequentMetaData'
    007a: invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    007d: move-result v7
    007e: if-eqz v7, 0083
    0080: invoke-static {v5}, Lcom/easypaisaTweak/SmaliEnterPoint;->dumpObject(Ljava/lang/Object;)V
    0083: invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0086: move-result-object v7
    0087: const-string v8, 'ELKYCResp'
    0089: invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    008c: move-result v7
    008d: if-eqz v7, 0092
    008f: invoke-static {v5}, Lcom/easypaisaTweak/SmaliEnterPoint;->dumpObject(Ljava/lang/Object;)V
    0092: invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0095: move-result-object v7
    0096: const-string v8, 'RegulatoryList'
    0098: invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    009b: move-result v7
    009c: if-eqz v7, 00ba
    009e: invoke-static {v5}, Lcom/easypaisaTweak/SmaliEnterPoint;->dumpObject(Ljava/lang/Object;)V
    00a1: goto 00ba
    00a2: move-exception v5
    00a3: new-instance v7, Ljava/lang/StringBuilder;
    00a5: invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    00a8: invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00ab: const-string v6, ' -> <invoke failed>: '
    00ad: invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00b0: invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    00b3: invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    00b6: move-result-object v5
    00b7: invoke-static {v5}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    00ba: add-int/lit8 v4, v4, #1
    00bc: goto/16 000d
    00be: return-void
.end method

.method public static synthetic Lcom/easypaisaTweak/SmaliEnterPoint;->eRtvpvxbz(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    .registers 4
    0000: invoke-static {v0, v1, v2, v3}, Lcom/easypaisaTweak/SmaliEnterPoint;->lambda$autoJumpToTransfer$4(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    0003: return-void
.end method

.method public static synthetic Lcom/easypaisaTweak/SmaliEnterPoint;->hO03fCMH()V
    .registers 0
    0000: invoke-static {}, Lcom/easypaisaTweak/SmaliEnterPoint;->lambda$autoJumpToTransfer$1()V
    0003: return-void
.end method

.method public static Lcom/easypaisaTweak/SmaliEnterPoint;->hookRaastEnterAmountActivityInitData(Landroid/content/Intent;)V
    .registers 6
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const-string v1, 'hookRaastEnterAmountActivityInitData:'
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0007: invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    000a: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    000d: move-result-object v0
    000e: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0011: invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    0014: move-result-object v5
    0015: invoke-virtual {v5}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;
    0018: move-result-object v0
    0019: invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    001c: move-result-object v0
    001d: invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    0020: move-result v1
    0021: if-eqz v1, 004a
    0023: invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0026: move-result-object v1
    0027: check-cast v1, Ljava/lang/String;
    0029: invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    002c: move-result-object v2
    002d: new-instance v3, Ljava/lang/StringBuilder;
    002f: const-string v4, 'hookRaastEnterAmountActivityInitData key:'
    0031: invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0034: invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0037: const-string v1, ' value:'
    0039: invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    003c: invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    003f: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0042: move-result-object v1
    0043: invoke-static {v1}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0046: invoke-static {v2}, Lcom/easypaisaTweak/SmaliEnterPoint;->dumpObject(Ljava/lang/Object;)V
    0049: goto 001d
    004a: return-void
.end method

.method private static synthetic Lcom/easypaisaTweak/SmaliEnterPoint;->lambda$autoFillAmount$5(Landroidx/appcompat/widget/AppCompatEditText;, Ljava/lang/String;)V
    .registers 2
    0000: invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    0003: return-void
.end method

.method private static synthetic Lcom/easypaisaTweak/SmaliEnterPoint;->lambda$autoFillAmount$6(Lpk/com/telenor/phoenix/views/moneyTransferRevamp2021/activities/MoneyTransferEnterAmountActivity;, Ljava/lang/String;)V
    .registers 4
    0000: const-string v0, 'hookPoint5 amountEditText:'
    0002: iget-object v2, v2, Lpk/com/telenor/phoenix/views/moneyTransferRevamp2021/activities/MoneyTransferEnterAmountActivity;->binding:Lpk/com/telenor/phoenix/databinding/ActivityMtEpEnterAmountMtrevampBinding;
    0004: iget-object v2, v2, Lpk/com/telenor/phoenix/databinding/ActivityMtEpEnterAmountMtrevampBinding;->tvAmount:Landroidx/appcompat/widget/AppCompatEditText;
    0006: new-instance v1, Ljava/lang/StringBuilder;
    0008: invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    000b: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    000e: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0011: move-result-object v0
    0012: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0015: new-instance v0, Lcom/easypaisaTweak/yWkiZmD;
    0017: const/4 v1, #2
    0018: invoke-direct {v0, v2, v3, v1}, Lcom/easypaisaTweak/yWkiZmD;-><init>(Ljava/lang/Object;, Ljava/lang/Object;, I)V
    001b: invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    001e: const/4 v3, #0
    001f: invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V
    0022: goto 0035
    0023: move-exception v2
    0024: new-instance v3, Ljava/lang/StringBuilder;
    0026: const-string v0, 'hookPoint5 error:'
    0028: invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    002b: invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    002e: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0031: move-result-object v2
    0032: invoke-static {v2}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0035: return-void
.end method

.method private static synthetic Lcom/easypaisaTweak/SmaliEnterPoint;->lambda$autoJumpToTransfer$0(Landroid/widget/Toast;)V
    .registers 1
    0000: invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    0003: return-void
.end method

.method private static synthetic Lcom/easypaisaTweak/SmaliEnterPoint;->lambda$autoJumpToTransfer$1()V
    .registers 6
    0000: sget-object v0, Lcom/easypaisaTweak/SmaliEnterPoint;->globalContext:Landroid/content/Context;
    0002: const-string v1, 'Please Login First!'
    0004: const/4 v2, #1
    0005: invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;, Ljava/lang/CharSequence;, I)Landroid/widget/Toast;
    0008: move-result-object v0
    0009: invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    000c: new-instance v1, Landroid/os/Handler;
    000e: invoke-direct {v1}, Landroid/os/Handler;-><init>()V
    0011: new-instance v3, Lcom/easypaisaTweak/newpackage/x9BA8xd;
    0013: invoke-direct {v3, v2, v0}, Lcom/easypaisaTweak/newpackage/x9BA8xd;-><init>(I, Ljava/lang/Object;)V
    0016: const-wide/16 v4, #3000
    0018: invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;, J)Z
    001b: return-void
.end method

.method private static synthetic Lcom/easypaisaTweak/SmaliEnterPoint;->lambda$autoJumpToTransfer$2(Landroid/os/Handler;)V
    .registers 3
    0000: new-instance v0, Lcom/easypaisaTweak/newpackage/ZkcTAP1xkT;
    0002: const/4 v1, #1
    0003: invoke-direct {v0, v1}, Lcom/easypaisaTweak/newpackage/ZkcTAP1xkT;-><init>(I)V
    0006: invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    0009: return-void
.end method

.method private static synthetic Lcom/easypaisaTweak/SmaliEnterPoint;->lambda$autoJumpToTransfer$3(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    .registers 6
    0000: const-string v0, 'show transfer money page 1'
    0002: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0005: const-wide/16 v0, #1000
    0007: invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    000a: invoke-static {v2, v3, v4, v5}, Lcom/easypaisaTweak/WalletApp;->showEpTransferMoneyPage(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    000d: const-string v2, 'show transfer money page 2'
    000f: invoke-static {v2}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0012: goto 0025
    0013: move-exception v2
    0014: new-instance v3, Ljava/lang/StringBuilder;
    0016: const-string v4, 'show transfer money page:'
    0018: invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    001b: invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    001e: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0021: move-result-object v2
    0022: invoke-static {v2}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0025: return-void
.end method

.method private static synthetic Lcom/easypaisaTweak/SmaliEnterPoint;->lambda$autoJumpToTransfer$4(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    .registers 6
    0000: const-string v0, 'show transfer money page 1'
    0002: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0005: const-wide/16 v0, #1000
    0007: invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    000a: invoke-static {v2, v3, v4, v5}, Lcom/easypaisaTweak/WalletApp;->showOtherWalletTransferMoneyPage(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    000d: const-string v2, 'show transfer money page 2'
    000f: invoke-static {v2}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0012: goto 0025
    0013: move-exception v2
    0014: new-instance v3, Ljava/lang/StringBuilder;
    0016: const-string v4, 'show transfer money page:'
    0018: invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    001b: invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    001e: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0021: move-result-object v2
    0022: invoke-static {v2}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0025: return-void
.end method

.method public static Lcom/easypaisaTweak/SmaliEnterPoint;->md5Hook(Ljava/lang/String;)V
    .registers 3
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const-string v1, 'md5Hook:'
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0007: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000a: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    000d: move-result-object v2
    000e: invoke-static {v2}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0011: return-void
.end method

.method public static Lcom/easypaisaTweak/SmaliEnterPoint;->showInitData(Landroid/content/Intent;)V
    .registers 6
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const-string v1, 'showInitData:'
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0007: invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    000a: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    000d: move-result-object v0
    000e: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0011: invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    0014: move-result-object v5
    0015: invoke-virtual {v5}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;
    0018: move-result-object v0
    0019: invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    001c: move-result-object v0
    001d: invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    0020: move-result v1
    0021: if-eqz v1, 004a
    0023: invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0026: move-result-object v1
    0027: check-cast v1, Ljava/lang/String;
    0029: invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    002c: move-result-object v2
    002d: new-instance v3, Ljava/lang/StringBuilder;
    002f: const-string v4, 'showInitData key:'
    0031: invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0034: invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0037: const-string v1, ' value:'
    0039: invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    003c: invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    003f: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0042: move-result-object v1
    0043: invoke-static {v1}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0046: invoke-static {v2}, Lcom/easypaisaTweak/SmaliEnterPoint;->dumpObject(Ljava/lang/Object;)V
    0049: goto 001d
    004a: return-void
.end method

.method public static Lcom/easypaisaTweak/SmaliEnterPoint;->startMain(Landroid/content/Context;)V
    .registers 4
    0000: const-string v0, 'AppInfo versionCode: '
    0002: new-instance v1, Ljava/lang/StringBuilder;
    0004: const-string v2, 'startMain í\xa0½í²\x95í\xa0½í²\x95í\xa0½í²\x95:'
    0006: invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0009: invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    000c: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    000f: move-result-object v1
    0010: invoke-static {v1}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0013: sput-object v3, Lcom/easypaisaTweak/SmaliEnterPoint;->globalContext:Landroid/content/Context;
    0015: invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    0018: move-result-object v1
    0019: invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    001c: move-result-object v3
    001d: const/4 v2, #0
    001e: invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;, I)Landroid/content/pm/PackageInfo;
    0021: move-result-object v3
    0022: invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J
    0025: move-result-wide v1
    0026: long-to-int v1, v1
    0027: iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    0029: new-instance v2, Ljava/lang/StringBuilder;
    002b: invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    002e: invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    0031: const-string v0, ', versionName: '
    0033: invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0036: invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0039: invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    003c: move-result-object v0
    003d: invoke-static {v0}, Lcom/easypaisaTweak/HttpHelper;->saveToCache(Ljava/lang/String;)V
    0040: sput-object v3, Lcom/easypaisaTweak/WalletApp;->AppVersion:Ljava/lang/String;
    0042: invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    0045: move-result-object v3
    0046: sput-object v3, Lcom/easypaisaTweak/WalletApp;->AppShotVersion:Ljava/lang/String;
    0048: goto 004d
    0049: move-exception v3
    004a: invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    004d: return-void
.end method

.method public static synthetic Lcom/easypaisaTweak/SmaliEnterPoint;->yWkiZmD(Landroid/os/Handler;)V
    .registers 1
    0000: invoke-static {v0}, Lcom/easypaisaTweak/SmaliEnterPoint;->lambda$autoJumpToTransfer$2(Landroid/os/Handler;)V
    0003: return-void
.end method

.method public static synthetic Lcom/easypaisaTweak/SmaliEnterPoint;->zkF6VM(Landroid/widget/Toast;)V
    .registers 1
    0000: invoke-static {v0}, Lcom/easypaisaTweak/SmaliEnterPoint;->lambda$autoJumpToTransfer$0(Landroid/widget/Toast;)V
    0003: return-void
.end method
