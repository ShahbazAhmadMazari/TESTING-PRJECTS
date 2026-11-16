# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/ReflectDoubleField;
.super Lcom/myairtelapp/hook/ReflectField;
.source "SourceFile"


.method public constructor Lcom/myairtelapp/hook/ReflectDoubleField;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Field;)V
    .registers 3
    0000: invoke-direct {v0, v1, v2}, Lcom/myairtelapp/hook/ReflectField;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Field;)V
    0003: return-void
.end method

.method public Lcom/myairtelapp/hook/ReflectDoubleField;->get()D
    .registers 3
    0000: invoke-virtual {v2}, Lcom/myairtelapp/hook/ReflectField;->isStatic()Z
    0003: move-result v0
    0004: if-eqz v0, 000c
    0006: const/4 v0, #0
    0007: invoke-virtual {v2, v0}, Lcom/myairtelapp/hook/ReflectDoubleField;->get(Ljava/lang/Object;)D
    000a: move-result-wide v0
    000b: return-wide v0
    000c: new-instance v2, Ljava/lang/RuntimeException;
    000e: invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V
    0011: throw v2
.end method

.method public Lcom/myairtelapp/hook/ReflectDoubleField;->get(Ljava/lang/Object;)D
    .registers 2
    0000: iget-object v0, v0, Lcom/myairtelapp/hook/ReflectField;->mField:Ljava/lang/reflect/Field;
    0002: invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D
    0005: move-result-wide v0
    0006: return-wide v0
    0007: const-wide/16 v0, #0
    0009: return-wide v0
.end method

.method public Lcom/myairtelapp/hook/ReflectDoubleField;->set(D)V
    .registers 4
    0000: invoke-virtual {v1}, Lcom/myairtelapp/hook/ReflectField;->isStatic()Z
    0003: move-result v0
    0004: if-eqz v0, 000b
    0006: const/4 v0, #0
    0007: invoke-virtual {v1, v0, v2, v3}, Lcom/myairtelapp/hook/ReflectDoubleField;->set(Ljava/lang/Object;, D)V
    000a: return-void
    000b: new-instance v1, Ljava/lang/RuntimeException;
    000d: invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V
    0010: throw v1
.end method

.method public Lcom/myairtelapp/hook/ReflectDoubleField;->set(Ljava/lang/Object;, D)V
    .registers 4
    0000: iget-object v0, v0, Lcom/myairtelapp/hook/ReflectField;->mField:Ljava/lang/reflect/Field;
    0002: invoke-virtual {v0, v1, v2, v3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;, D)V
    0005: return-void
.end method
