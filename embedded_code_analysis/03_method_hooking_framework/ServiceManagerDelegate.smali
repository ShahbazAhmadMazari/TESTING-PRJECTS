# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/myairtelapp/hook/ServiceManagerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static static Lcom/myairtelapp/hook/ServiceManagerDelegate;->getService:Lcom/myairtelapp/hook/ReflectMethod;
.field public static static Lcom/myairtelapp/hook/ServiceManagerDelegate;->getServiceOrThrow:Lcom/myairtelapp/hook/ReflectMethod;
.field public static static Lcom/myairtelapp/hook/ServiceManagerDelegate;->sCache:Lcom/myairtelapp/hook/ReflectObjectField;
.field private static static Lcom/myairtelapp/hook/ServiceManagerDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;

.method public static constructor Lcom/myairtelapp/hook/ServiceManagerDelegate;-><clinit>()V
    .registers 1
    0000: invoke-static {}, Lcom/myairtelapp/hook/ServiceManagerDelegate;->load()V
    0003: goto 000c
    0004: move-exception v0
    0005: invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0008: move-result-object v0
    0009: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    000c: return-void
.end method

.method public constructor Lcom/myairtelapp/hook/ServiceManagerDelegate;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: return-void
.end method

.method public static Lcom/myairtelapp/hook/ServiceManagerDelegate;->getOrigClass()Lcom/myairtelapp/hook/ReflectClass;
    .registers 1
    0000: sget-object v0, Lcom/myairtelapp/hook/ServiceManagerDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0002: if-nez v0, 0007
    0004: const/4 v0, #0
    0005: sput-object v0, Lcom/myairtelapp/hook/ServiceManagerDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0007: sget-object v0, Lcom/myairtelapp/hook/ServiceManagerDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0009: return-object v0
.end method

.method private static Lcom/myairtelapp/hook/ServiceManagerDelegate;->load()V
    .registers 6
    0000: const-class v0, Ljava/lang/String;
    0002: const-string v1, 'android.os.ServiceManager'
    0004: invoke-static {v1}, Lcom/myairtelapp/hook/ReflectClass;->load(Ljava/lang/String;)Lcom/myairtelapp/hook/ReflectClass;
    0007: move-result-object v1
    0008: sput-object v1, Lcom/myairtelapp/hook/ServiceManagerDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    000a: const-string v2, 'sCache'
    000c: invoke-virtual {v1, v2}, Lcom/myairtelapp/hook/ReflectClass;->getDeclaredField(Ljava/lang/String;)Lcom/myairtelapp/hook/ReflectField;
    000f: move-result-object v1
    0010: check-cast v1, Lcom/myairtelapp/hook/ReflectObjectField;
    0012: sput-object v1, Lcom/myairtelapp/hook/ServiceManagerDelegate;->sCache:Lcom/myairtelapp/hook/ReflectObjectField;
    0014: goto 001d
    0015: move-exception v1
    0016: invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0019: move-result-object v1
    001a: invoke-static {v1}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    001d: const/4 v1, #0
    001e: const/4 v2, #1
    001f: sget-object v3, Lcom/myairtelapp/hook/ServiceManagerDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0021: const-string v4, 'getService'
    0023: new-array v5, v2, [Ljava/lang/Class;
    0025: aput-object v0, v5, v1
    0027: invoke-virtual {v3, v4, v5}, Lcom/myairtelapp/hook/ReflectClass;->getDeclaredMethod(Ljava/lang/String;, [Ljava/lang/Class;)Lcom/myairtelapp/hook/ReflectMethod;
    002a: move-result-object v3
    002b: sput-object v3, Lcom/myairtelapp/hook/ServiceManagerDelegate;->getService:Lcom/myairtelapp/hook/ReflectMethod;
    002d: goto 0036
    002e: move-exception v3
    002f: invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0032: move-result-object v3
    0033: invoke-static {v3}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    0036: sget-object v3, Lcom/myairtelapp/hook/ServiceManagerDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0038: const-string v4, 'getServiceOrThrow'
    003a: new-array v2, v2, [Ljava/lang/Class;
    003c: aput-object v0, v2, v1
    003e: invoke-virtual {v3, v4, v2}, Lcom/myairtelapp/hook/ReflectClass;->getDeclaredMethod(Ljava/lang/String;, [Ljava/lang/Class;)Lcom/myairtelapp/hook/ReflectMethod;
    0041: move-result-object v0
    0042: sput-object v0, Lcom/myairtelapp/hook/ServiceManagerDelegate;->getServiceOrThrow:Lcom/myairtelapp/hook/ReflectMethod;
    0044: goto 004d
    0045: move-exception v0
    0046: invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0049: move-result-object v0
    004a: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    004d: return-void
.end method
