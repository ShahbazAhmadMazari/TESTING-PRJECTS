# Source DEX: classes17.dex
# Disassembled for educational analysis

.class public Lz/z/loader/BridgeService;
.super Landroid/app/Service;
.source "BridgeService.java"

.field public static bridge static Lz/z/loader/BridgeService;->binder:Landroid/os/IBinder;

.method static constructor Lz/z/loader/BridgeService;-><clinit>()V
    .registers 1
    0000: const/4 v0, #0
    0001: sput-object v0, Lz/z/loader/BridgeService;->binder:Landroid/os/IBinder;
    0003: return-void
.end method

.method public constructor Lz/z/loader/BridgeService;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Landroid/app/Service;-><init>()V
    0003: return-void
.end method

.method public static Lz/z/loader/BridgeService;->setBinder(Landroid/os/IBinder;)V
    .registers 1
    0000: sput-object v0, Lz/z/loader/BridgeService;->binder:Landroid/os/IBinder;
    0002: return-void
.end method

.method public Lz/z/loader/BridgeService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    0000: sget-object v0, Lz/z/loader/BridgeService;->binder:Landroid/os/IBinder;
    0002: return-object v0
.end method
