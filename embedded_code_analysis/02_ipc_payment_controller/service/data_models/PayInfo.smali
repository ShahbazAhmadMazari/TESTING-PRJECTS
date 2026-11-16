# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/longfafa/paylib/pojo/PayInfo;
.super Lcom/longfafa/paylib/common/BasePoJo;
.source "SourceFile"

.field public Lcom/longfafa/paylib/pojo/PayInfo;->account:Ljava/lang/String;
.field public Lcom/longfafa/paylib/pojo/PayInfo;->amount:Ljava/lang/String;
.field public Lcom/longfafa/paylib/pojo/PayInfo;->appType:Ljava/lang/String;
.field public Lcom/longfafa/paylib/pojo/PayInfo;->description:Ljava/lang/String;
.field public Lcom/longfafa/paylib/pojo/PayInfo;->flowType:Ljava/lang/Integer;
.field public Lcom/longfafa/paylib/pojo/PayInfo;->payAccount:Ljava/lang/String;
.field public Lcom/longfafa/paylib/pojo/PayInfo;->reciveAccount:Ljava/lang/String;
.field public Lcom/longfafa/paylib/pojo/PayInfo;->remark:Ljava/lang/String;
.field public Lcom/longfafa/paylib/pojo/PayInfo;->showId:Ljava/lang/String;
.field public Lcom/longfafa/paylib/pojo/PayInfo;->state:Ljava/lang/String;
.field public Lcom/longfafa/paylib/pojo/PayInfo;->txnDate:Ljava/lang/String;
.field public Lcom/longfafa/paylib/pojo/PayInfo;->txnId:Ljava/lang/String;
.field public Lcom/longfafa/paylib/pojo/PayInfo;->utr:Ljava/lang/String;

.method public constructor Lcom/longfafa/paylib/pojo/PayInfo;-><init>()V
    .registers 2
    0000: const/4 v0, #0
    0001: invoke-direct {v1, v0}, Lcom/longfafa/paylib/common/BasePoJo;-><init>(Ljava/lang/String;)V
    0004: return-void
.end method

.method public constructor Lcom/longfafa/paylib/pojo/PayInfo;-><init>(Ljava/lang/String;)V
    .registers 2
    0000: invoke-direct {v0, v1}, Lcom/longfafa/paylib/common/BasePoJo;-><init>(Ljava/lang/String;)V
    0003: return-void
.end method
