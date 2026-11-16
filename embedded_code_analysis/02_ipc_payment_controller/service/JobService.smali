# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/longfafa/paylib/JobService;
.super Landroid/app/Service;
.source "SourceFile"

.field private static final static Lcom/longfafa/paylib/JobService;->TAG:Ljava/lang/String;
.field private Lcom/longfafa/paylib/JobService;->iPayServiceBinder:Lcom/longfafa/paylib/JobService$IPayServiceBinder;

.method public constructor Lcom/longfafa/paylib/JobService;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Landroid/app/Service;-><init>()V
    0003: return-void
.end method

.method public Lcom/longfafa/paylib/JobService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2
    0000: new-instance v1, Lcom/longfafa/paylib/JobService$IPayServiceBinder;
    0002: invoke-direct {v1}, Lcom/longfafa/paylib/JobService$IPayServiceBinder;-><init>()V
    0005: iput-object v1, v0, Lcom/longfafa/paylib/JobService;->iPayServiceBinder:Lcom/longfafa/paylib/JobService$IPayServiceBinder;
    0007: return-object v1
.end method

.method public Lcom/longfafa/paylib/JobService;->onCreate()V
    .registers 1
    0000: invoke-super {v0}, Landroid/app/Service;->onCreate()V
    0003: return-void
.end method
