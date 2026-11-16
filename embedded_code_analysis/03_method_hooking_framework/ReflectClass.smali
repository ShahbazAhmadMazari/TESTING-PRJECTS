# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/ReflectClass;
.super Ljava/lang/Object;
.source "SourceFile"

.field private final Lcom/myairtelapp/hook/ReflectClass;->mClass:Ljava/lang/Class;

.method private constructor Lcom/myairtelapp/hook/ReflectClass;-><init>(Ljava/lang/Class;)V
    .registers 2
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: iput-object v1, v0, Lcom/myairtelapp/hook/ReflectClass;->mClass:Ljava/lang/Class;
    0005: return-void
.end method

.method public static Lcom/myairtelapp/hook/ReflectClass;->load(Ljava/lang/Class;)Lcom/myairtelapp/hook/ReflectClass;
    .registers 2
    0000: new-instance v0, Lcom/myairtelapp/hook/ReflectClass;
    0002: invoke-direct {v0, v1}, Lcom/myairtelapp/hook/ReflectClass;-><init>(Ljava/lang/Class;)V
    0005: return-object v0
.end method

.method public static Lcom/myairtelapp/hook/ReflectClass;->load(Ljava/lang/String;)Lcom/myairtelapp/hook/ReflectClass;
    .registers 2
    0000: new-instance v0, Lcom/myairtelapp/hook/ReflectClass;
    0002: invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    0005: move-result-object v1
    0006: invoke-direct {v0, v1}, Lcom/myairtelapp/hook/ReflectClass;-><init>(Ljava/lang/Class;)V
    0009: return-object v0
.end method

.method public varargs Lcom/myairtelapp/hook/ReflectClass;->getConstructor([Ljava/lang/Class;)Lcom/myairtelapp/hook/ReflectConstructor;
    .registers 3
    0000: iget-object v0, v1, Lcom/myairtelapp/hook/ReflectClass;->mClass:Ljava/lang/Class;
    0002: invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    0005: move-result-object v2
    0006: const/4 v0, #1
    0007: invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    000a: new-instance v0, Lcom/myairtelapp/hook/ReflectConstructor;
    000c: invoke-direct {v0, v1, v2}, Lcom/myairtelapp/hook/ReflectConstructor;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Constructor;)V
    000f: return-object v0
.end method

.method public Lcom/myairtelapp/hook/ReflectClass;->getDeclaredField(Ljava/lang/String;)Lcom/myairtelapp/hook/ReflectField;
    .registers 4
    0000: iget-object v0, v2, Lcom/myairtelapp/hook/ReflectClass;->mClass:Ljava/lang/Class;
    0002: invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    0005: move-result-object v3
    0006: const/4 v0, #1
    0007: invoke-virtual {v3, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    000a: invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    000d: move-result-object v0
    000e: invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z
    0011: move-result v0
    0012: if-nez v0, 001a
    0014: new-instance v0, Lcom/myairtelapp/hook/ReflectObjectField;
    0016: invoke-direct {v0, v2, v3}, Lcom/myairtelapp/hook/ReflectObjectField;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Field;)V
    0019: return-object v0
    001a: invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    001d: move-result-object v0
    001e: sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    0020: if-ne v0, v1, 0028
    0022: new-instance v0, Lcom/myairtelapp/hook/ReflectBooleanField;
    0024: invoke-direct {v0, v2, v3}, Lcom/myairtelapp/hook/ReflectBooleanField;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Field;)V
    0027: return-object v0
    0028: invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    002b: move-result-object v0
    002c: sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    002e: if-ne v0, v1, 0036
    0030: new-instance v0, Lcom/myairtelapp/hook/ReflectIntField;
    0032: invoke-direct {v0, v2, v3}, Lcom/myairtelapp/hook/ReflectIntField;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Field;)V
    0035: return-object v0
    0036: invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    0039: move-result-object v0
    003a: sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    003c: if-ne v0, v1, 0044
    003e: new-instance v0, Lcom/myairtelapp/hook/ReflectLongField;
    0040: invoke-direct {v0, v2, v3}, Lcom/myairtelapp/hook/ReflectLongField;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Field;)V
    0043: return-object v0
    0044: invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    0047: move-result-object v0
    0048: sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    004a: if-ne v0, v1, 0052
    004c: new-instance v0, Lcom/myairtelapp/hook/ReflectFloatField;
    004e: invoke-direct {v0, v2, v3}, Lcom/myairtelapp/hook/ReflectFloatField;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Field;)V
    0051: return-object v0
    0052: invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    0055: move-result-object v0
    0056: sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
    0058: if-ne v0, v1, 0060
    005a: new-instance v0, Lcom/myairtelapp/hook/ReflectDoubleField;
    005c: invoke-direct {v0, v2, v3}, Lcom/myairtelapp/hook/ReflectDoubleField;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Field;)V
    005f: return-object v0
    0060: const/4 v2, #0
    0061: return-object v2
.end method

.method public varargs Lcom/myairtelapp/hook/ReflectClass;->getDeclaredMethod(Ljava/lang/String;, [Ljava/lang/Class;)Lcom/myairtelapp/hook/ReflectMethod;
    .registers 4
    0000: iget-object v0, v1, Lcom/myairtelapp/hook/ReflectClass;->mClass:Ljava/lang/Class;
    0002: invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;, [Ljava/lang/Class;)Ljava/lang/reflect/Method;
    0005: move-result-object v2
    0006: const/4 v3, #1
    0007: invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    000a: new-instance v3, Lcom/myairtelapp/hook/ReflectMethod;
    000c: invoke-direct {v3, v1, v2}, Lcom/myairtelapp/hook/ReflectMethod;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Method;)V
    000f: return-object v3
.end method

.method public Lcom/myairtelapp/hook/ReflectClass;->getDefaultConstructor()Lcom/myairtelapp/hook/ReflectConstructor;
    .registers 3
    0000: iget-object v0, v2, Lcom/myairtelapp/hook/ReflectClass;->mClass:Ljava/lang/Class;
    0002: const/4 v1, #0
    0003: new-array v1, v1, [Ljava/lang/Class;
    0005: invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    0008: move-result-object v0
    0009: const/4 v1, #1
    000a: invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    000d: new-instance v1, Lcom/myairtelapp/hook/ReflectConstructor;
    000f: invoke-direct {v1, v2, v0}, Lcom/myairtelapp/hook/ReflectConstructor;-><init>(Lcom/myairtelapp/hook/ReflectClass;, Ljava/lang/reflect/Constructor;)V
    0012: return-object v1
.end method

.method public Lcom/myairtelapp/hook/ReflectClass;->getName()Ljava/lang/String;
    .registers 3
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    0005: iget-object v1, v2, Lcom/myairtelapp/hook/ReflectClass;->mClass:Ljava/lang/Class;
    0007: invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
    000a: move-result-object v1
    000b: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    000e: const-string v1, '.'
    0010: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0013: iget-object v2, v2, Lcom/myairtelapp/hook/ReflectClass;->mClass:Ljava/lang/Class;
    0015: invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
    0018: move-result-object v2
    0019: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001c: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    001f: move-result-object v2
    0020: return-object v2
.end method

.method public Lcom/myairtelapp/hook/ReflectClass;->getOrigClass()Ljava/lang/Class;
    .registers 1
    0000: iget-object v0, v0, Lcom/myairtelapp/hook/ReflectClass;->mClass:Ljava/lang/Class;
    0002: return-object v0
.end method
