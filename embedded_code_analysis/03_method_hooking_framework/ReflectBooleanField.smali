# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/ReflectBooleanField;
.super Lcom/myairtelapp/hook/ReflectField;
.source "SourceFile"


.method public constructor Lcom/myairtelapp/hook/ReflectBooleanField;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Field;)V
    .registers 3
    0000: invoke-direct {v0, v1, v2}, Lcom/myairtelapp/hook/ReflectField;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Field;)V
    0003: return-void
.end method

.method public Lcom/myairtelapp/hook/ReflectBooleanField;->get()Z
    .registers 2
    0000: invoke-virtual {v1}, Lcom/myairtelapp/hook/ReflectField;->isStatic()Z
    0003: move-result v0
    0004: if-eqz v0, 000c
    0006: const/4 v0, #0
    0007: invoke-virtual {v1, v0}, Lcom/myairtelapp/hook/ReflectBooleanField;->get(Ljava/lang/Object;)Z
    000a: move-result v1
    000b: return v1
    000c: new-instance v1, Ljava/lang/RuntimeException;
    000e: invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V
    0011: throw v1
.end method

.method public Lcom/myairtelapp/hook/ReflectBooleanField;->get(Ljava/lang/Object;)Z
    .registers 2
    0000: iget-object v0, v0, Lcom/myairtelapp/hook/ReflectField;->mField:Ljava/lang/reflect/Field;
    0002: invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    0005: move-result v0
    0006: return v0
    0007: const/4 v0, #0
    0008: return v0
.end method

.method public Lcom/myairtelapp/hook/ReflectBooleanField;->set(Ljava/lang/Object;, Z)V
    .registers 3
    0000: iget-object v0, v0, Lcom/myairtelapp/hook/ReflectField;->mField:Ljava/lang/reflect/Field;
    0002: invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;, Z)V
    0005: return-void
.end method

.method public Lcom/myairtelapp/hook/ReflectBooleanField;->set(Z)V
    .registers 3
    0000: invoke-virtual {v1}, Lcom/myairtelapp/hook/ReflectField;->isStatic()Z
    0003: move-result v0
    0004: if-eqz v0, 000b
    0006: const/4 v0, #0
    0007: invoke-virtual {v1, v0, v2}, Lcom/myairtelapp/hook/ReflectBooleanField;->set(Ljava/lang/Object;, Z)V
    000a: return-void
    000b: new-instance v1, Ljava/lang/RuntimeException;
    000d: invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V
    0010: throw v1
.end method
