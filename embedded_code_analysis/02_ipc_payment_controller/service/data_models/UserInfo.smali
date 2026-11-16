# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/longfafa/paylib/pojo/UserInfo;
.super Lcom/longfafa/paylib/common/BasePoJo;
.source "SourceFile"

.field public Lcom/longfafa/paylib/pojo/UserInfo;->AppType:Ljava/lang/String;
.field public Lcom/longfafa/paylib/pojo/UserInfo;->AppVersion:Ljava/lang/String;
.field public Lcom/longfafa/paylib/pojo/UserInfo;->PhoneNo:Ljava/lang/String;
.field public Lcom/longfafa/paylib/pojo/UserInfo;->login:Ljava/lang/Boolean;

.method public constructor Lcom/longfafa/paylib/pojo/UserInfo;-><init>()V
    .registers 2
    0000: const/4 v0, #0
    0001: invoke-direct {v1, v0}, Lcom/longfafa/paylib/common/BasePoJo;-><init>(Ljava/lang/String;)V
    0004: return-void
.end method

.method public constructor Lcom/longfafa/paylib/pojo/UserInfo;-><init>(Ljava/lang/Boolean;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    .registers 6
    0000: const/4 v0, #0
    0001: invoke-direct {v1, v0}, Lcom/longfafa/paylib/common/BasePoJo;-><init>(Ljava/lang/String;)V
    0004: iput-object v2, v1, Lcom/longfafa/paylib/pojo/UserInfo;->login:Ljava/lang/Boolean;
    0006: iput-object v3, v1, Lcom/longfafa/paylib/pojo/UserInfo;->PhoneNo:Ljava/lang/String;
    0008: iput-object v4, v1, Lcom/longfafa/paylib/pojo/UserInfo;->AppType:Ljava/lang/String;
    000a: iput-object v5, v1, Lcom/longfafa/paylib/pojo/UserInfo;->AppVersion:Ljava/lang/String;
    000c: return-void
.end method

.method public constructor Lcom/longfafa/paylib/pojo/UserInfo;-><init>(Ljava/lang/String;)V
    .registers 2
    0000: invoke-direct {v0, v1}, Lcom/longfafa/paylib/common/BasePoJo;-><init>(Ljava/lang/String;)V
    0003: return-void
.end method
