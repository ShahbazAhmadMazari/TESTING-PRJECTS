# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/UserHandleDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static static Lcom/myairtelapp/hook/UserHandleDelegate;->getUserId:Lcom/myairtelapp/hook/ReflectMethod;
.field private static static Lcom/myairtelapp/hook/UserHandleDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;

.method public static constructor Lcom/myairtelapp/hook/UserHandleDelegate;-><clinit>()V
    .registers 1
    0000: invoke-static {}, Lcom/myairtelapp/hook/UserHandleDelegate;->load()V
    0003: goto 000c
    0004: move-exception v0
    0005: invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0008: move-result-object v0
    0009: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    000c: return-void
.end method

.method public constructor Lcom/myairtelapp/hook/UserHandleDelegate;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: return-void
.end method

.method public static Lcom/myairtelapp/hook/UserHandleDelegate;->getOrigClass()Ljava/lang/Class;
    .registers 1
    0000: sget-object v0, Lcom/myairtelapp/hook/UserHandleDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0002: if-nez v0, 0007
    0004: const/4 v0, #0
    0005: sput-object v0, Lcom/myairtelapp/hook/UserHandleDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0007: sget-object v0, Lcom/myairtelapp/hook/UserHandleDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0009: invoke-virtual {v0}, Lcom/myairtelapp/hook/ReflectClass;->getOrigClass()Ljava/lang/Class;
    000c: move-result-object v0
    000d: return-object v0
.end method

.method public static Lcom/myairtelapp/hook/UserHandleDelegate;->load()V
    .registers 5
    0000: const-string v0, 'android.os.UserHandle'
    0002: invoke-static {v0}, Lcom/myairtelapp/hook/ReflectClass;->load(Ljava/lang/String;)Lcom/myairtelapp/hook/ReflectClass;
    0005: move-result-object v0
    0006: sput-object v0, Lcom/myairtelapp/hook/UserHandleDelegate;->sClass:Lcom/myairtelapp/hook/ReflectClass;
    0008: const-string v1, 'getUserId'
    000a: const/4 v2, #1
    000b: new-array v2, v2, [Ljava/lang/Class;
    000d: sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    000f: const/4 v4, #0
    0010: aput-object v3, v2, v4
    0012: invoke-virtual {v0, v1, v2}, Lcom/myairtelapp/hook/ReflectClass;->getDeclaredMethod(Ljava/lang/String;, [Ljava/lang/Class;)Lcom/myairtelapp/hook/ReflectMethod;
    0015: move-result-object v0
    0016: sput-object v0, Lcom/myairtelapp/hook/UserHandleDelegate;->getUserId:Lcom/myairtelapp/hook/ReflectMethod;
    0018: goto 0021
    0019: move-exception v0
    001a: invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    001d: move-result-object v0
    001e: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    0021: return-void
.end method
