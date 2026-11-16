# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/MiscUtil;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static final static Lcom/myairtelapp/hook/MiscUtil;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
.field public static final static Lcom/myairtelapp/hook/MiscUtil;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.method public static constructor Lcom/myairtelapp/hook/MiscUtil;-><clinit>()V
    .registers 2
    0000: const/4 v0, #0
    0001: new-array v1, v0, [Ljava/lang/Object;
    0003: sput-object v1, Lcom/myairtelapp/hook/MiscUtil;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;
    0005: new-array v0, v0, [Ljava/lang/Class;
    0007: sput-object v0, Lcom/myairtelapp/hook/MiscUtil;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    0009: return-void
.end method

.method public constructor Lcom/myairtelapp/hook/MiscUtil;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: return-void
.end method

.method public static Lcom/myairtelapp/hook/MiscUtil;->nullToEmptyClassArray([Ljava/lang/Class;)[Ljava/lang/Class;
    .registers 2
    0000: if-eqz v1, 0007
    0002: array-length v0, v1
    0003: if-nez v0, 0006
    0005: goto 0007
    0006: return-object v1
    0007: sget-object v1, Lcom/myairtelapp/hook/MiscUtil;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    0009: return-object v1
.end method

.method public static Lcom/myairtelapp/hook/MiscUtil;->nullToEmptyObjectArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    0000: if-eqz v1, 0007
    0002: array-length v0, v1
    0003: if-nez v0, 0006
    0005: goto 0007
    0006: return-object v1
    0007: sget-object v1, Lcom/myairtelapp/hook/MiscUtil;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;
    0009: return-object v1
.end method
