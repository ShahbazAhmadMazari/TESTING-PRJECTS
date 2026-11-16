# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/ReflectConstructor;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final Lcom/myairtelapp/hook/ReflectConstructor;->mClass:Lcom/myairtelapp/hook/ReflectClass;
.field private final Lcom/myairtelapp/hook/ReflectConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

.method public constructor Lcom/myairtelapp/hook/ReflectConstructor;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Constructor;)V
    .registers 3
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: iput-object v1, v0, Lcom/myairtelapp/hook/ReflectConstructor;->mClass:Lcom/myairtelapp/hook/ReflectClass;
    0005: iput-object v2, v0, Lcom/myairtelapp/hook/ReflectConstructor;->mConstructor:Ljava/lang/reflect/Constructor;
    0007: return-void
.end method

.method public Lcom/myairtelapp/hook/ReflectConstructor;->newInstance()Ljava/lang/Object;
    .registers 2
    0000: iget-object v1, v1, Lcom/myairtelapp/hook/ReflectConstructor;->mConstructor:Ljava/lang/reflect/Constructor;
    0002: const/4 v0, #0
    0003: new-array v0, v0, [Ljava/lang/Object;
    0005: invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    0008: move-result-object v1
    0009: return-object v1
    000a: const/4 v1, #0
    000b: return-object v1
.end method

.method public varargs Lcom/myairtelapp/hook/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    0000: iget-object v0, v0, Lcom/myairtelapp/hook/ReflectConstructor;->mConstructor:Ljava/lang/reflect/Constructor;
    0002: invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    0005: move-result-object v0
    0006: return-object v0
    0007: const/4 v0, #0
    0008: return-object v0
.end method
