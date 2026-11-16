# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/ReflectField;
.super Ljava/lang/Object;
.source "SourceFile"

.field protected final Lcom/myairtelapp/hook/ReflectField;->mClass:Lcom/myairtelapp/hook/ReflectClass;
.field protected final Lcom/myairtelapp/hook/ReflectField;->mField:Ljava/lang/reflect/Field;
.field protected final Lcom/myairtelapp/hook/ReflectField;->mIsStatic:Z

.method public constructor Lcom/myairtelapp/hook/ReflectField;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Field;)V
    .registers 3
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: iput-object v1, v0, Lcom/myairtelapp/hook/ReflectField;->mClass:Lcom/myairtelapp/hook/ReflectClass;
    0005: iput-object v2, v0, Lcom/myairtelapp/hook/ReflectField;->mField:Ljava/lang/reflect/Field;
    0007: invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I
    000a: move-result v1
    000b: invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    000e: move-result v1
    000f: iput-boolean v1, v0, Lcom/myairtelapp/hook/ReflectField;->mIsStatic:Z
    0011: return-void
.end method

.method public Lcom/myairtelapp/hook/ReflectField;->getType()Ljava/lang/Class;
    .registers 1
    0000: iget-object v0, v0, Lcom/myairtelapp/hook/ReflectField;->mField:Ljava/lang/reflect/Field;
    0002: invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    0005: move-result-object v0
    0006: return-object v0
.end method

.method public Lcom/myairtelapp/hook/ReflectField;->isStatic()Z
    .registers 1
    0000: iget-boolean v0, v0, Lcom/myairtelapp/hook/ReflectField;->mIsStatic:Z
    0002: return v0
.end method
