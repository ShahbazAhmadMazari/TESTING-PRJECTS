# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/IPackageManagerDelegate$Stub;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static static Lcom/myairtelapp/hook/IPackageManagerDelegate$Stub;->asInterface:Lcom/myairtelapp/hook/ReflectMethod;
.field private static static Lcom/myairtelapp/hook/IPackageManagerDelegate$Stub;->sClass:Lcom/myairtelapp/hook/ReflectClass;

.method public static constructor Lcom/myairtelapp/hook/IPackageManagerDelegate$Stub;-><clinit>()V
    .registers 1
    0000: invoke-static {}, Lcom/myairtelapp/hook/IPackageManagerDelegate$Stub;->load()V
    0003: goto 000c
    0004: move-exception v0
    0005: invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0008: move-result-object v0
    0009: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    000c: return-void
.end method

.method public constructor Lcom/myairtelapp/hook/IPackageManagerDelegate$Stub;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: return-void
.end method

.method public static Lcom/myairtelapp/hook/IPackageManagerDelegate$Stub;->getOrigClass()Ljava/lang/Class;
    .registers 1
    0000: sget-object v0, Lcom/myairtelapp/hook/IPackageManagerDelegate$Stub;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0002: if-nez v0, 0006
    0004: const/4 v0, #0
    0005: return-object v0
    0006: invoke-virtual {v0}, Lcom/myairtelapp/hook/ReflectClass;->getOrigClass()Ljava/lang/Class;
    0009: move-result-object v0
    000a: return-object v0
.end method

.method private static Lcom/myairtelapp/hook/IPackageManagerDelegate$Stub;->load()V
    .registers 5
    0000: const-string v0, 'android.content.pm.IPackageManager$Stub'
    0002: invoke-static {v0}, Lcom/myairtelapp/hook/ReflectClass;->load(Ljava/lang/String;)Lcom/myairtelapp/hook/ReflectClass;
    0005: move-result-object v0
    0006: sput-object v0, Lcom/myairtelapp/hook/IPackageManagerDelegate$Stub;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0008: const-string v1, 'asInterface'
    000a: const/4 v2, #1
    000b: new-array v2, v2, [Ljava/lang/Class;
    000d: const-class v3, Landroid/os/IBinder;
    000f: const/4 v4, #0
    0010: aput-object v3, v2, v4
    0012: invoke-virtual {v0, v1, v2}, Lcom/myairtelapp/hook/ReflectClass;->getDeclaredMethod(Ljava/lang/String;, [Ljava/lang/Class;)Lcom/myairtelapp/hook/ReflectMethod;
    0015: move-result-object v0
    0016: sput-object v0, Lcom/myairtelapp/hook/IPackageManagerDelegate$Stub;->asInterface:Lcom/myairtelapp/hook/ReflectMethod;
    0018: goto 0021
    0019: move-exception v0
    001a: invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    001d: move-result-object v0
    001e: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    0021: return-void
.end method
