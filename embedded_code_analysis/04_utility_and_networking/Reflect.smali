# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/plugin/Reflect;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static final static Lcom/myairtelapp/plugin/Reflect;->DEBUG:Z
.field private final Lcom/myairtelapp/plugin/Reflect;->isClass:Z
.field private final Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;

.method private constructor Lcom/myairtelapp/plugin/Reflect;-><init>(Ljava/lang/Class;)V
    .registers 2
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: iput-object v1, v0, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    0005: const/4 v1, #1
    0006: iput-boolean v1, v0, Lcom/myairtelapp/plugin/Reflect;->isClass:Z
    0008: return-void
.end method

.method private constructor Lcom/myairtelapp/plugin/Reflect;-><init>(Ljava/lang/Object;)V
    .registers 2
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: iput-object v1, v0, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    0005: const/4 v1, #0
    0006: iput-boolean v1, v0, Lcom/myairtelapp/plugin/Reflect;->isClass:Z
    0008: return-void
.end method

.method public static synthetic Lcom/myairtelapp/plugin/Reflect;->access$000(Lcom/myairtelapp/plugin/Reflect;)Ljava/lang/Object;
    .registers 1
    0000: iget-object v0, v0, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    0002: return-object v0
.end method

.method public static synthetic Lcom/myairtelapp/plugin/Reflect;->access$100(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    0000: invoke-static {v0}, Lcom/myairtelapp/plugin/Reflect;->property(Ljava/lang/String;)Ljava/lang/String;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public static Lcom/myairtelapp/plugin/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .registers 3
    0000: if-nez v2, 0004
    0002: const/4 v2, #0
    0003: return-object v2
    0004: instance-of v0, v2, Ljava/lang/reflect/Member;
    0006: if-eqz v0, 0024
    0008: move-object v0, v2
    0009: check-cast v0, Ljava/lang/reflect/Member;
    000b: invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I
    000e: move-result v1
    000f: invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z
    0012: move-result v1
    0013: if-eqz v1, 0024
    0015: invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;
    0018: move-result-object v0
    0019: invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I
    001c: move-result v0
    001d: invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z
    0020: move-result v0
    0021: if-eqz v0, 0024
    0023: return-object v2
    0024: invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z
    0027: move-result v0
    0028: if-nez v0, 002e
    002a: const/4 v0, #1
    002b: invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    002e: return-object v2
.end method

.method public static Lcom/myairtelapp/plugin/Reflect;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    0000: invoke-static {v3}, Lcom/myairtelapp/plugin/Reflect;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    0003: move-result-object v3
    0004: const/4 v0, #0
    0005: if-nez v3, 0008
    0007: return-object v0
    0008: invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z
    000b: move-result v1
    000c: if-eqz v1, 002c
    000e: const-class v1, Ljava/lang/Boolean;
    0010: if-ne v1, v3, 0015
    0012: sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    0014: return-object v3
    0015: const-class v1, Ljava/lang/Number;
    0017: invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    001a: move-result v1
    001b: const/4 v2, #0
    001c: if-eqz v1, 0023
    001e: invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    0021: move-result-object v3
    0022: return-object v3
    0023: const-class v1, Ljava/lang/Character;
    0025: if-ne v1, v3, 002c
    0027: invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
    002a: move-result-object v3
    002b: return-object v3
    002c: return-object v0
.end method

.method private Lcom/myairtelapp/plugin/Reflect;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    0000: invoke-virtual {v2}, Lcom/myairtelapp/plugin/Reflect;->type()Ljava/lang/Class;
    0003: move-result-object v2
    0004: invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    0007: move-result-object v2
    0008: return-object v2
    0009: move-exception v0
    000a: invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    000d: move-result-object v1
    000e: invoke-static {v1}, Lcom/myairtelapp/plugin/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    0011: move-result-object v1
    0012: check-cast v1, Ljava/lang/reflect/Field;
    0014: return-object v1
    0015: invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    0018: move-result-object v2
    0019: if-eqz v2, 001c
    001b: goto 000a
    001c: new-instance v2, Lcom/myairtelapp/plugin/Reflect$ReflectException;
    001e: invoke-direct {v2, v0}, Lcom/myairtelapp/plugin/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V
    0021: throw v2
.end method

.method private static Lcom/myairtelapp/plugin/Reflect;->forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    0000: invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    0003: move-result-object v1
    0004: return-object v1
    0005: move-exception v1
    0006: new-instance v0, Lcom/myairtelapp/plugin/Reflect$ReflectException;
    0008: invoke-direct {v0, v1}, Lcom/myairtelapp/plugin/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V
    000b: throw v0
.end method

.method private static Lcom/myairtelapp/plugin/Reflect;->forName(Ljava/lang/String;, Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3
    0000: const/4 v0, #1
    0001: invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;, Z, Ljava/lang/ClassLoader;)Ljava/lang/Class;
    0004: move-result-object v1
    0005: return-object v1
    0006: move-exception v1
    0007: new-instance v2, Lcom/myairtelapp/plugin/Reflect$ReflectException;
    0009: invoke-direct {v2, v1}, Lcom/myairtelapp/plugin/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V
    000c: throw v2
.end method

.method public static Lcom/myairtelapp/plugin/Reflect;->getMethodDetails(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 5
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const/16 v1, #40
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
    0007: invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I
    000a: move-result v1
    000b: invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;
    000e: move-result-object v1
    000f: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0012: const-string v1, ' '
    0014: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0017: invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    001a: move-result-object v2
    001b: invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
    001e: move-result-object v2
    001f: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0022: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0025: invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    0028: move-result-object v1
    0029: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    002c: const-string v1, '('
    002e: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0031: invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
    0034: move-result-object v4
    0035: array-length v1, v4
    0036: const/4 v2, #0
    0037: if-ge v2, v1, 004a
    0039: aget-object v3, v4, v2
    003b: invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
    003e: move-result-object v3
    003f: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0042: const-string v3, ', '
    0044: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0047: add-int/lit8 v2, v2, #1
    0049: goto 0037
    004a: array-length v4, v4
    004b: if-lez v4, 005a
    004d: invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    0050: move-result v4
    0051: add-int/lit8 v4, v4, #-2
    0053: invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    0056: move-result v1
    0057: invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->delete(I, I)Ljava/lang/StringBuilder;
    005a: const-string v4, ')'
    005c: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    005f: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0062: move-result-object v4
    0063: return-object v4
.end method

.method private Lcom/myairtelapp/plugin/Reflect;->isSimilarSignature(Ljava/lang/reflect/Method;, Ljava/lang/String;, [Ljava/lang/Class;)Z
    .registers 5
    0000: invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    0003: move-result-object v0
    0004: invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    0007: move-result v3
    0008: if-eqz v3, 0016
    000a: invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
    000d: move-result-object v2
    000e: invoke-direct {v1, v2, v4}, Lcom/myairtelapp/plugin/Reflect;->match([Ljava/lang/Class;, [Ljava/lang/Class;)Z
    0011: move-result v1
    0012: if-eqz v1, 0016
    0014: const/4 v1, #1
    0015: goto 0017
    0016: const/4 v1, #0
    0017: return v1
.end method

.method private Lcom/myairtelapp/plugin/Reflect;->match([Ljava/lang/Class;, [Ljava/lang/Class;)Z
    .registers 6
    0000: array-length v3, v4
    0001: array-length v0, v5
    0002: const/4 v1, #0
    0003: if-ne v3, v0, 0028
    0005: move v3, v1
    0006: array-length v0, v5
    0007: if-ge v3, v0, 0026
    0009: aget-object v0, v5, v3
    000b: const-class v2, Lcom/myairtelapp/plugin/Reflect$NULL;
    000d: if-ne v0, v2, 0010
    000f: goto 0022
    0010: aget-object v0, v4, v3
    0012: invoke-static {v0}, Lcom/myairtelapp/plugin/Reflect;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    0015: move-result-object v0
    0016: aget-object v2, v5, v3
    0018: invoke-static {v2}, Lcom/myairtelapp/plugin/Reflect;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    001b: move-result-object v2
    001c: invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    001f: move-result v0
    0020: if-eqz v0, 0025
    0022: add-int/lit8 v3, v3, #1
    0024: goto 0006
    0025: return v1
    0026: const/4 v3, #1
    0027: return v3
    0028: return v1
.end method

.method private Lcom/myairtelapp/plugin/Reflect;->matchObject([Ljava/lang/Class;)Z
    .registers 3
    0000: array-length v1, v2
    0001: const/4 v0, #0
    0002: if-lez v1, 000f
    0004: aget-object v1, v2, v0
    0006: const-class v2, [Ljava/lang/Object;
    0008: invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    000b: move-result v1
    000c: if-eqz v1, 000f
    000e: const/4 v0, #1
    000f: return v0
.end method

.method private Lcom/myairtelapp/plugin/Reflect;->matchObjectMethod(Ljava/lang/reflect/Method;, Ljava/lang/String;, [Ljava/lang/Class;)Z
    .registers 4
    0000: invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    0003: move-result-object v3
    0004: invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    0007: move-result v2
    0008: if-eqz v2, 0016
    000a: invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
    000d: move-result-object v1
    000e: invoke-direct {v0, v1}, Lcom/myairtelapp/plugin/Reflect;->matchObject([Ljava/lang/Class;)Z
    0011: move-result v0
    0012: if-eqz v0, 0016
    0014: const/4 v0, #1
    0015: goto 0017
    0016: const/4 v0, #0
    0017: return v0
.end method

.method public static Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/Class;)Lcom/myairtelapp/plugin/Reflect;
    .registers 2
    0000: new-instance v0, Lcom/myairtelapp/plugin/Reflect;
    0002: invoke-direct {v0, v1}, Lcom/myairtelapp/plugin/Reflect;-><init>(Ljava/lang/Class;)V
    0005: return-object v0
.end method

.method public static Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    .registers 2
    0000: new-instance v0, Lcom/myairtelapp/plugin/Reflect;
    0002: invoke-direct {v0, v1}, Lcom/myairtelapp/plugin/Reflect;-><init>(Ljava/lang/Object;)V
    0005: return-object v0
.end method

.method public static Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/String;)Lcom/myairtelapp/plugin/Reflect;
    .registers 1
    0000: invoke-static {v0}, Lcom/myairtelapp/plugin/Reflect;->forName(Ljava/lang/String;)Ljava/lang/Class;
    0003: move-result-object v0
    0004: invoke-static {v0}, Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/Class;)Lcom/myairtelapp/plugin/Reflect;
    0007: move-result-object v0
    0008: return-object v0
.end method

.method public static Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/String;, Ljava/lang/ClassLoader;)Lcom/myairtelapp/plugin/Reflect;
    .registers 2
    0000: invoke-static {v0, v1}, Lcom/myairtelapp/plugin/Reflect;->forName(Ljava/lang/String;, Ljava/lang/ClassLoader;)Ljava/lang/Class;
    0003: move-result-object v0
    0004: invoke-static {v0}, Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/Class;)Lcom/myairtelapp/plugin/Reflect;
    0007: move-result-object v0
    0008: return-object v0
.end method

.method private static varargs Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/reflect/Constructor;, [Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    .registers 2
    0000: invoke-static {v0}, Lcom/myairtelapp/plugin/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    0003: move-result-object v0
    0004: check-cast v0, Ljava/lang/reflect/Constructor;
    0006: invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    0009: move-result-object v0
    000a: invoke-static {v0}, Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    000d: move-result-object v0
    000e: return-object v0
    000f: move-exception v0
    0010: new-instance v1, Lcom/myairtelapp/plugin/Reflect$ReflectException;
    0012: invoke-direct {v1, v0}, Lcom/myairtelapp/plugin/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V
    0015: throw v1
.end method

.method private static varargs Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/reflect/Method;, Ljava/lang/Object;, [Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    .registers 5
    0000: invoke-static {v2}, Lcom/myairtelapp/plugin/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    0003: invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    0006: move-result-object v0
    0007: sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
    0009: if-ne v0, v1, 0013
    000b: invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;, [Ljava/lang/Object;)Ljava/lang/Object;
    000e: invoke-static {v3}, Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    0011: move-result-object v2
    0012: return-object v2
    0013: invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;, [Ljava/lang/Object;)Ljava/lang/Object;
    0016: move-result-object v2
    0017: invoke-static {v2}, Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    001a: move-result-object v2
    001b: return-object v2
    001c: move-exception v2
    001d: new-instance v3, Lcom/myairtelapp/plugin/Reflect$ReflectException;
    001f: invoke-direct {v3, v2}, Lcom/myairtelapp/plugin/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V
    0022: throw v3
.end method

.method private static Lcom/myairtelapp/plugin/Reflect;->property(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    0000: invoke-virtual {v3}, Ljava/lang/String;->length()I
    0003: move-result v0
    0004: if-nez v0, 0009
    0006: const-string v3, ''
    0008: return-object v3
    0009: const/4 v1, #1
    000a: if-ne v0, v1, 0011
    000c: invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    000f: move-result-object v3
    0010: return-object v3
    0011: new-instance v0, Ljava/lang/StringBuilder;
    0013: invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    0016: const/4 v2, #0
    0017: invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(I, I)Ljava/lang/String;
    001a: move-result-object v2
    001b: invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    001e: move-result-object v2
    001f: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0022: invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    0025: move-result-object v3
    0026: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0029: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    002c: move-result-object v3
    002d: return-object v3
.end method

.method private Lcom/myairtelapp/plugin/Reflect;->similarMethod(Ljava/lang/String;, [Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 10
    0000: invoke-virtual {v7}, Lcom/myairtelapp/plugin/Reflect;->type()Ljava/lang/Class;
    0003: move-result-object v0
    0004: invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
    0007: move-result-object v1
    0008: array-length v2, v1
    0009: const/4 v3, #0
    000a: move v4, v3
    000b: if-ge v4, v2, 0019
    000d: aget-object v5, v1, v4
    000f: invoke-direct {v7, v5, v8, v9}, Lcom/myairtelapp/plugin/Reflect;->isSimilarSignature(Ljava/lang/reflect/Method;, Ljava/lang/String;, [Ljava/lang/Class;)Z
    0012: move-result v6
    0013: if-eqz v6, 0016
    0015: return-object v5
    0016: add-int/lit8 v4, v4, #1
    0018: goto 000b
    0019: invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    001c: move-result-object v1
    001d: array-length v2, v1
    001e: move v4, v3
    001f: if-ge v4, v2, 002d
    0021: aget-object v5, v1, v4
    0023: invoke-direct {v7, v5, v8, v9}, Lcom/myairtelapp/plugin/Reflect;->isSimilarSignature(Ljava/lang/reflect/Method;, Ljava/lang/String;, [Ljava/lang/Class;)Z
    0026: move-result v6
    0027: if-eqz v6, 002a
    0029: return-object v5
    002a: add-int/lit8 v4, v4, #1
    002c: goto 001f
    002d: invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    0030: move-result-object v0
    0031: if-eqz v0, 0034
    0033: goto 0019
    0034: new-instance v0, Ljava/lang/NoSuchMethodException;
    0036: new-instance v1, Ljava/lang/StringBuilder;
    0038: const-string v2, 'No similar method '
    003a: invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    003d: invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0040: const-string v8, ' with params '
    0042: invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0045: invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    0048: move-result-object v8
    0049: invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    004c: const-string v8, ' could be found on type '
    004e: invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0051: invoke-virtual {v7}, Lcom/myairtelapp/plugin/Reflect;->type()Ljava/lang/Class;
    0054: move-result-object v7
    0055: invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0058: const-string v7, '.'
    005a: invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    005d: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0060: move-result-object v7
    0061: invoke-direct {v0, v7}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V
    0064: throw v0
.end method

.method private static varargs Lcom/myairtelapp/plugin/Reflect;->types([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 4
    0000: const/4 v0, #0
    0001: if-nez v3, 0006
    0003: new-array v3, v0, [Ljava/lang/Class;
    0005: return-object v3
    0006: array-length v1, v3
    0007: new-array v1, v1, [Ljava/lang/Class;
    0009: array-length v2, v3
    000a: if-ge v0, v2, 001c
    000c: aget-object v2, v3, v0
    000e: if-nez v2, 0013
    0010: const-class v2, Lcom/myairtelapp/plugin/Reflect$NULL;
    0012: goto 0017
    0013: invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    0016: move-result-object v2
    0017: aput-object v2, v1, v0
    0019: add-int/lit8 v0, v0, #1
    001b: goto 0009
    001c: return-object v1
.end method

.method private static Lcom/myairtelapp/plugin/Reflect;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    0000: instance-of v0, v1, Lcom/myairtelapp/plugin/Reflect;
    0002: if-eqz v0, 000a
    0004: check-cast v1, Lcom/myairtelapp/plugin/Reflect;
    0006: invoke-virtual {v1}, Lcom/myairtelapp/plugin/Reflect;->get()Ljava/lang/Object;
    0009: move-result-object v1
    000a: return-object v1
.end method

.method public static Lcom/myairtelapp/plugin/Reflect;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    0000: if-nez v1, 0004
    0002: const/4 v1, #0
    0003: return-object v1
    0004: invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z
    0007: move-result v0
    0008: if-eqz v0, 0048
    000a: sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    000c: if-ne v0, v1, 0011
    000e: const-class v1, Ljava/lang/Boolean;
    0010: return-object v1
    0011: sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    0013: if-ne v0, v1, 0018
    0015: const-class v1, Ljava/lang/Integer;
    0017: return-object v1
    0018: sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    001a: if-ne v0, v1, 001f
    001c: const-class v1, Ljava/lang/Long;
    001e: return-object v1
    001f: sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;
    0021: if-ne v0, v1, 0026
    0023: const-class v1, Ljava/lang/Short;
    0025: return-object v1
    0026: sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
    0028: if-ne v0, v1, 002d
    002a: const-class v1, Ljava/lang/Byte;
    002c: return-object v1
    002d: sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
    002f: if-ne v0, v1, 0034
    0031: const-class v1, Ljava/lang/Double;
    0033: return-object v1
    0034: sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    0036: if-ne v0, v1, 003b
    0038: const-class v1, Ljava/lang/Float;
    003a: return-object v1
    003b: sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;
    003d: if-ne v0, v1, 0042
    003f: const-class v1, Ljava/lang/Character;
    0041: return-object v1
    0042: sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
    0044: if-ne v0, v1, 0048
    0046: const-class v1, Ljava/lang/Void;
    0048: return-object v1
.end method

.method public Lcom/myairtelapp/plugin/Reflect;->as(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    0000: iget-object v0, v3, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    0002: instance-of v0, v0, Ljava/util/Map;
    0004: new-instance v1, Lcom/myairtelapp/plugin/Reflect$1;
    0006: invoke-direct {v1, v3, v0}, Lcom/myairtelapp/plugin/Reflect$1;-><init>(Lcom/myairtelapp/plugin/Reflect;, Z)V
    0009: invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    000c: move-result-object v3
    000d: const/4 v0, #1
    000e: new-array v0, v0, [Ljava/lang/Class;
    0010: const/4 v2, #0
    0011: aput-object v4, v0, v2
    0013: invoke-static {v3, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;, [Ljava/lang/Class;, Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    0016: move-result-object v3
    0017: return-object v3
.end method

.method public Lcom/myairtelapp/plugin/Reflect;->call(Ljava/lang/String;)Lcom/myairtelapp/plugin/Reflect;
    .registers 3
    0000: const/4 v0, #0
    0001: new-array v0, v0, [Ljava/lang/Object;
    0003: invoke-virtual {v1, v2, v0}, Lcom/myairtelapp/plugin/Reflect;->call(Ljava/lang/String;, [Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    0006: move-result-object v1
    0007: return-object v1
.end method

.method public varargs Lcom/myairtelapp/plugin/Reflect;->call(Ljava/lang/String;, [Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    .registers 6
    0000: invoke-static {v5}, Lcom/myairtelapp/plugin/Reflect;->types([Ljava/lang/Object;)[Ljava/lang/Class;
    0003: move-result-object v0
    0004: invoke-virtual {v3, v4, v0}, Lcom/myairtelapp/plugin/Reflect;->exactMethod(Ljava/lang/String;, [Ljava/lang/Class;)Ljava/lang/reflect/Method;
    0007: move-result-object v1
    0008: iget-object v2, v3, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    000a: invoke-static {v1, v2, v5}, Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/reflect/Method;, Ljava/lang/Object;, [Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    000d: move-result-object v3
    000e: return-object v3
    000f: invoke-direct {v3, v4, v0}, Lcom/myairtelapp/plugin/Reflect;->similarMethod(Ljava/lang/String;, [Ljava/lang/Class;)Ljava/lang/reflect/Method;
    0012: move-result-object v4
    0013: iget-object v3, v3, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    0015: invoke-static {v4, v3, v5}, Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/reflect/Method;, Ljava/lang/Object;, [Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    0018: move-result-object v3
    0019: return-object v3
    001a: move-exception v3
    001b: new-instance v4, Lcom/myairtelapp/plugin/Reflect$ReflectException;
    001d: invoke-direct {v4, v3}, Lcom/myairtelapp/plugin/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V
    0020: throw v4
.end method

.method public varargs Lcom/myairtelapp/plugin/Reflect;->callBest(Ljava/lang/String;, [Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    .registers 13
    0000: invoke-static {v12}, Lcom/myairtelapp/plugin/Reflect;->types([Ljava/lang/Object;)[Ljava/lang/Class;
    0003: move-result-object v0
    0004: invoke-virtual {v10}, Lcom/myairtelapp/plugin/Reflect;->type()Ljava/lang/Class;
    0007: move-result-object v1
    0008: invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    000b: move-result-object v1
    000c: array-length v2, v1
    000d: const/4 v3, #0
    000e: const/4 v4, #0
    000f: move v5, v4
    0010: move v6, v5
    0011: const/4 v7, #1
    0012: if-ge v5, v2, 003f
    0014: aget-object v8, v1, v5
    0016: invoke-direct {v10, v8, v11, v0}, Lcom/myairtelapp/plugin/Reflect;->isSimilarSignature(Ljava/lang/reflect/Method;, Ljava/lang/String;, [Ljava/lang/Class;)Z
    0019: move-result v9
    001a: if-eqz v9, 001f
    001c: const/4 v6, #2
    001d: move-object v3, v8
    001e: goto 003f
    001f: invoke-direct {v10, v8, v11, v0}, Lcom/myairtelapp/plugin/Reflect;->matchObjectMethod(Ljava/lang/reflect/Method;, Ljava/lang/String;, [Ljava/lang/Class;)Z
    0022: move-result v9
    0023: if-eqz v9, 0028
    0025: move v6, v7
    0026: move-object v3, v8
    0027: goto 003c
    0028: invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    002b: move-result-object v7
    002c: invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    002f: move-result v7
    0030: if-eqz v7, 003c
    0032: invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
    0035: move-result-object v7
    0036: array-length v7, v7
    0037: if-nez v7, 003c
    0039: if-nez v6, 003c
    003b: goto 0026
    003c: add-int/lit8 v5, v5, #1
    003e: goto 0011
    003f: if-eqz v3, 0052
    0041: if-nez v6, 0045
    0043: new-array v12, v4, [Ljava/lang/Object;
    0045: if-ne v6, v7, 004b
    0047: filled-new-array {v12}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    004a: move-result-object v12
    004b: iget-object v10, v10, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    004d: invoke-static {v3, v10, v12}, Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/reflect/Method;, Ljava/lang/Object;, [Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    0050: move-result-object v10
    0051: return-object v10
    0052: new-instance v12, Lcom/myairtelapp/plugin/Reflect$ReflectException;
    0054: new-instance v1, Ljava/lang/StringBuilder;
    0056: const-string v2, 'no method found for '
    0058: invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    005b: invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    005e: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0061: move-result-object v1
    0062: new-instance v2, Ljava/lang/NoSuchMethodException;
    0064: new-instance v3, Ljava/lang/StringBuilder;
    0066: const-string v4, 'No best method '
    0068: invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    006b: invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    006e: const-string v11, ' with params '
    0070: invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0073: invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    0076: move-result-object v11
    0077: invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    007a: const-string v11, ' could be found on type '
    007c: invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    007f: invoke-virtual {v10}, Lcom/myairtelapp/plugin/Reflect;->type()Ljava/lang/Class;
    0082: move-result-object v10
    0083: invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0086: const-string v10, '.'
    0088: invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    008b: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    008e: move-result-object v10
    008f: invoke-direct {v2, v10}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V
    0092: invoke-direct {v12, v1, v2}, Lcom/myairtelapp/plugin/Reflect$ReflectException;-><init>(Ljava/lang/String;, Ljava/lang/Throwable;)V
    0095: throw v12
.end method

.method public Lcom/myairtelapp/plugin/Reflect;->create()Lcom/myairtelapp/plugin/Reflect;
    .registers 2
    0000: const/4 v0, #0
    0001: new-array v0, v0, [Ljava/lang/Object;
    0003: invoke-virtual {v1, v0}, Lcom/myairtelapp/plugin/Reflect;->create([Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    0006: move-result-object v1
    0007: return-object v1
.end method

.method public varargs Lcom/myairtelapp/plugin/Reflect;->create([Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    .registers 9
    0000: invoke-static {v8}, Lcom/myairtelapp/plugin/Reflect;->types([Ljava/lang/Object;)[Ljava/lang/Class;
    0003: move-result-object v0
    0004: invoke-virtual {v7}, Lcom/myairtelapp/plugin/Reflect;->type()Ljava/lang/Class;
    0007: move-result-object v1
    0008: invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    000b: move-result-object v1
    000c: invoke-static {v1, v8}, Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/reflect/Constructor;, [Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    000f: move-result-object v7
    0010: return-object v7
    0011: move-exception v1
    0012: invoke-virtual {v7}, Lcom/myairtelapp/plugin/Reflect;->type()Ljava/lang/Class;
    0015: move-result-object v2
    0016: invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
    0019: move-result-object v2
    001a: array-length v3, v2
    001b: const/4 v4, #0
    001c: if-ge v4, v3, 0032
    001e: aget-object v5, v2, v4
    0020: invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
    0023: move-result-object v6
    0024: invoke-direct {v7, v6, v0}, Lcom/myairtelapp/plugin/Reflect;->match([Ljava/lang/Class;, [Ljava/lang/Class;)Z
    0027: move-result v6
    0028: if-eqz v6, 002f
    002a: invoke-static {v5, v8}, Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/reflect/Constructor;, [Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    002d: move-result-object v7
    002e: return-object v7
    002f: add-int/lit8 v4, v4, #1
    0031: goto 001c
    0032: new-instance v7, Lcom/myairtelapp/plugin/Reflect$ReflectException;
    0034: invoke-direct {v7, v1}, Lcom/myairtelapp/plugin/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V
    0037: throw v7
.end method

.method public Lcom/myairtelapp/plugin/Reflect;->equals(Ljava/lang/Object;)Z
    .registers 3
    0000: instance-of v0, v2, Lcom/myairtelapp/plugin/Reflect;
    0002: if-eqz v0, 0014
    0004: iget-object v1, v1, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    0006: check-cast v2, Lcom/myairtelapp/plugin/Reflect;
    0008: invoke-virtual {v2}, Lcom/myairtelapp/plugin/Reflect;->get()Ljava/lang/Object;
    000b: move-result-object v2
    000c: invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    000f: move-result v1
    0010: if-eqz v1, 0014
    0012: const/4 v1, #1
    0013: goto 0015
    0014: const/4 v1, #0
    0015: return v1
.end method

.method public Lcom/myairtelapp/plugin/Reflect;->exactMethod(Ljava/lang/String;, [Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 3
    0000: invoke-virtual {v0}, Lcom/myairtelapp/plugin/Reflect;->type()Ljava/lang/Class;
    0003: move-result-object v0
    0004: invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;, [Ljava/lang/Class;)Ljava/lang/reflect/Method;
    0007: move-result-object v0
    0008: return-object v0
    0009: invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;, [Ljava/lang/Class;)Ljava/lang/reflect/Method;
    000c: move-result-object v0
    000d: return-object v0
    000e: invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    0011: move-result-object v0
    0012: if-eqz v0, 0015
    0014: goto 0009
    0015: new-instance v0, Ljava/lang/NoSuchMethodException;
    0017: invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V
    001a: throw v0
.end method

.method public Lcom/myairtelapp/plugin/Reflect;->field(Ljava/lang/String;)Lcom/myairtelapp/plugin/Reflect;
    .registers 3
    0000: invoke-direct {v1, v2}, Lcom/myairtelapp/plugin/Reflect;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;
    0003: move-result-object v2
    0004: iget-object v0, v1, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    0006: invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    0009: move-result-object v2
    000a: invoke-static {v2}, Lcom/myairtelapp/plugin/Reflect;->on(Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    000d: move-result-object v1
    000e: return-object v1
    000f: move-exception v2
    0010: new-instance v0, Lcom/myairtelapp/plugin/Reflect$ReflectException;
    0012: iget-object v1, v1, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    0014: invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    0017: move-result-object v1
    0018: invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
    001b: move-result-object v1
    001c: invoke-direct {v0, v1, v2}, Lcom/myairtelapp/plugin/Reflect$ReflectException;-><init>(Ljava/lang/String;, Ljava/lang/Throwable;)V
    001f: throw v0
.end method

.method public Lcom/myairtelapp/plugin/Reflect;->fields()Ljava/util/Map;
    .registers 9
    0000: new-instance v0, Ljava/util/LinkedHashMap;
    0002: invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
    0005: invoke-virtual {v8}, Lcom/myairtelapp/plugin/Reflect;->type()Ljava/lang/Class;
    0008: move-result-object v1
    0009: invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
    000c: move-result-object v2
    000d: array-length v3, v2
    000e: const/4 v4, #0
    000f: if-ge v4, v3, 0036
    0011: aget-object v5, v2, v4
    0013: iget-boolean v6, v8, Lcom/myairtelapp/plugin/Reflect;->isClass:Z
    0015: xor-int/lit8 v6, v6, #1
    0017: invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I
    001a: move-result v7
    001b: invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    001e: move-result v7
    001f: xor-int/2addr v6, v7
    0020: if-eqz v6, 0033
    0022: invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    0025: move-result-object v5
    0026: invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    0029: move-result v6
    002a: if-nez v6, 0033
    002c: invoke-virtual {v8, v5}, Lcom/myairtelapp/plugin/Reflect;->field(Ljava/lang/String;)Lcom/myairtelapp/plugin/Reflect;
    002f: move-result-object v6
    0030: invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0033: add-int/lit8 v4, v4, #1
    0035: goto 000f
    0036: invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    0039: move-result-object v1
    003a: if-nez v1, 0009
    003c: return-object v0
.end method

.method public Lcom/myairtelapp/plugin/Reflect;->get()Ljava/lang/Object;
    .registers 1
    0000: iget-object v0, v0, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    0002: return-object v0
.end method

.method public Lcom/myairtelapp/plugin/Reflect;->get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    0000: invoke-virtual {v0, v1}, Lcom/myairtelapp/plugin/Reflect;->field(Ljava/lang/String;)Lcom/myairtelapp/plugin/Reflect;
    0003: move-result-object v0
    0004: invoke-virtual {v0}, Lcom/myairtelapp/plugin/Reflect;->get()Ljava/lang/Object;
    0007: move-result-object v0
    0008: return-object v0
.end method

.method public Lcom/myairtelapp/plugin/Reflect;->hashCode()I
    .registers 1
    0000: iget-object v0, v0, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    0002: invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    0005: move-result v0
    0006: return v0
.end method

.method public Lcom/myairtelapp/plugin/Reflect;->opt(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    0000: invoke-virtual {v0, v1}, Lcom/myairtelapp/plugin/Reflect;->field(Ljava/lang/String;)Lcom/myairtelapp/plugin/Reflect;
    0003: move-result-object v0
    0004: invoke-virtual {v0}, Lcom/myairtelapp/plugin/Reflect;->get()Ljava/lang/Object;
    0007: move-result-object v0
    0008: return-object v0
    0009: move-exception v0
    000a: invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    000d: move-result-object v0
    000e: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    0011: const/4 v0, #0
    0012: return-object v0
.end method

.method public Lcom/myairtelapp/plugin/Reflect;->set(Ljava/lang/String;, Ljava/lang/Object;)Lcom/myairtelapp/plugin/Reflect;
    .registers 4
    0000: invoke-direct {v1, v2}, Lcom/myairtelapp/plugin/Reflect;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;
    0003: move-result-object v2
    0004: const/4 v0, #1
    0005: invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    0008: iget-object v0, v1, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    000a: invoke-static {v3}, Lcom/myairtelapp/plugin/Reflect;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    000d: move-result-object v3
    000e: invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;, Ljava/lang/Object;)V
    0011: return-object v1
    0012: move-exception v1
    0013: new-instance v2, Lcom/myairtelapp/plugin/Reflect$ReflectException;
    0015: invoke-direct {v2, v1}, Lcom/myairtelapp/plugin/Reflect$ReflectException;-><init>(Ljava/lang/Throwable;)V
    0018: throw v2
.end method

.method public Lcom/myairtelapp/plugin/Reflect;->toString()Ljava/lang/String;
    .registers 1
    0000: iget-object v0, v0, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    0002: invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0005: move-result-object v0
    0006: return-object v0
.end method

.method public Lcom/myairtelapp/plugin/Reflect;->type()Ljava/lang/Class;
    .registers 2
    0000: iget-boolean v0, v1, Lcom/myairtelapp/plugin/Reflect;->isClass:Z
    0002: if-eqz v0, 0009
    0004: iget-object v1, v1, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    0006: check-cast v1, Ljava/lang/Class;
    0008: return-object v1
    0009: iget-object v1, v1, Lcom/myairtelapp/plugin/Reflect;->object:Ljava/lang/Object;
    000b: invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    000e: move-result-object v1
    000f: return-object v1
.end method
