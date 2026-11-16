# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/SingletonDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static static Lcom/myairtelapp/hook/SingletonDelegate;->mInstance:Lcom/myairtelapp/hook/ReflectObjectField;
.field private static static Lcom/myairtelapp/hook/SingletonDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;

.method public static constructor Lcom/myairtelapp/hook/SingletonDelegate;-><clinit>()V
    .registers 1
    0000: invoke-static {}, Lcom/myairtelapp/hook/SingletonDelegate;->load()V
    0003: goto 000c
    0004: move-exception v0
    0005: invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0008: move-result-object v0
    0009: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    000c: return-void
.end method

.method public constructor Lcom/myairtelapp/hook/SingletonDelegate;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: return-void
.end method

.method public static Lcom/myairtelapp/hook/SingletonDelegate;->getOrigClass()Ljava/lang/Class;
    .registers 1
    0000: sget-object v0, Lcom/myairtelapp/hook/SingletonDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0002: if-nez v0, 0007
    0004: const/4 v0, #0
    0005: sput-object v0, Lcom/myairtelapp/hook/SingletonDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0007: sget-object v0, Lcom/myairtelapp/hook/SingletonDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0009: invoke-virtual {v0}, Lcom/myairtelapp/hook/ReflectClass;->getOrigClass()Ljava/lang/Class;
    000c: move-result-object v0
    000d: return-object v0
.end method

.method private static Lcom/myairtelapp/hook/SingletonDelegate;->load()V
    .registers 2
    0000: const-string v0, 'android.util.Singleton'
    0002: invoke-static {v0}, Lcom/myairtelapp/hook/ReflectClass;->load(Ljava/lang/String;)Lcom/myairtelapp/hook/ReflectClass;
    0005: move-result-object v0
    0006: sput-object v0, Lcom/myairtelapp/hook/SingletonDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0008: const-string v1, 'mInstance'
    000a: invoke-virtual {v0, v1}, Lcom/myairtelapp/hook/ReflectClass;->getDeclaredField(Ljava/lang/String;)Lcom/myairtelapp/hook/ReflectField;
    000d: move-result-object v0
    000e: check-cast v0, Lcom/myairtelapp/hook/ReflectObjectField;
    0010: sput-object v0, Lcom/myairtelapp/hook/SingletonDelegate;->mInstance:Lcom/myairtelapp/hook/ReflectObjectField;
    0012: goto 001b
    0013: move-exception v0
    0014: invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0017: move-result-object v0
    0018: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    001b: return-void
.end method
