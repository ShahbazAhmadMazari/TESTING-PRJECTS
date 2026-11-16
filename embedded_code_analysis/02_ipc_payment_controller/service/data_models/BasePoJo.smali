# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract Lcom/longfafa/paylib/common/BasePoJo;
.super Ljava/lang/Object;
.source "SourceFile"


.method public constructor Lcom/longfafa/paylib/common/BasePoJo;-><init>(Ljava/lang/String;)V
    .registers 2
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: invoke-static {v1, v0}, Lcom/longfafa/paylib/common/BasePoJo;->fromJsonStr(Ljava/lang/String;, Lcom/longfafa/paylib/common/BasePoJo;)Lcom/longfafa/paylib/common/BasePoJo;
    0006: return-void
.end method

.method public static Lcom/longfafa/paylib/common/BasePoJo;->JSONArrayStrToArray(Ljava/lang/Class;, Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    0000: new-instance v0, Ljava/util/ArrayList;
    0002: invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    0005: if-eqz v2, 0012
    0007: new-instance v0, Lorg/json/JSONArray;
    0009: invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    000c: goto 000e
    000d: const/4 v0, #0
    000e: invoke-static {v1, v0}, Lcom/longfafa/paylib/common/BasePoJo;->JSONArrayToArray(Ljava/lang/Class;, Lorg/json/JSONArray;)Ljava/util/ArrayList;
    0011: move-result-object v0
    0012: return-object v0
.end method

.method public static Lcom/longfafa/paylib/common/BasePoJo;->JSONArrayToArray(Ljava/lang/Class;, Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 8
    0000: new-instance v0, Ljava/util/ArrayList;
    0002: invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    0005: if-eqz v7, 004e
    0007: if-eqz v6, 004e
    0009: const-class v1, Lcom/longfafa/paylib/common/BasePoJo;
    000b: invoke-virtual {v1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    000e: move-result v1
    000f: const/4 v2, #0
    0010: if-eqz v1, 003e
    0012: const/4 v1, #1
    0013: new-array v3, v1, [Ljava/lang/Class;
    0015: const-class v4, Ljava/lang/String;
    0017: aput-object v4, v3, v2
    0019: invoke-virtual {v6, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    001c: move-result-object v6
    001d: goto 001f
    001e: const/4 v6, #0
    001f: if-eqz v6, 004e
    0021: move v3, v2
    0022: invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
    0025: move-result v4
    0026: if-ge v3, v4, 004e
    0028: invoke-virtual {v7, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    002b: move-result-object v4
    002c: new-array v5, v1, [Ljava/lang/Object;
    002e: invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0031: move-result-object v4
    0032: aput-object v4, v5, v2
    0034: invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    0037: move-result-object v4
    0038: invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    003b: add-int/lit8 v3, v3, #1
    003d: goto 0022
    003e: invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
    0041: move-result v6
    0042: if-ge v2, v6, 004e
    0044: invoke-virtual {v7, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    0047: move-result-object v6
    0048: invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    004b: add-int/lit8 v2, v2, #1
    004d: goto 003e
    004e: return-object v0
.end method

.method public static Lcom/longfafa/paylib/common/BasePoJo;->JSONObjectToObject(Ljava/lang/Class;, Lorg/json/JSONObject;)Lcom/longfafa/paylib/common/BasePoJo;
    .registers 7
    0000: const/4 v0, #0
    0001: if-nez v6, 0004
    0003: return-object v0
    0004: const/4 v1, #1
    0005: new-array v2, v1, [Ljava/lang/Class;
    0007: const-class v3, Ljava/lang/String;
    0009: const/4 v4, #0
    000a: aput-object v3, v2, v4
    000c: invoke-virtual {v5, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    000f: move-result-object v5
    0010: if-eqz v5, 0021
    0012: new-array v1, v1, [Ljava/lang/Object;
    0014: invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    0017: move-result-object v6
    0018: aput-object v6, v1, v4
    001a: invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    001d: move-result-object v5
    001e: check-cast v5, Lcom/longfafa/paylib/common/BasePoJo;
    0020: move-object v0, v5
    0021: return-object v0
.end method

.method public static Lcom/longfafa/paylib/common/BasePoJo;->arrayToJsonArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .registers 5
    0000: new-instance v0, Lorg/json/JSONArray;
    0002: invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    0005: if-eqz v4, 0026
    0007: const/4 v1, #0
    0008: invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    000b: move-result v2
    000c: if-ge v1, v2, 0026
    000e: invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    0011: move-result-object v2
    0012: instance-of v3, v2, Lcom/longfafa/paylib/common/BasePoJo;
    0014: if-eqz v3, 0020
    0016: check-cast v2, Lcom/longfafa/paylib/common/BasePoJo;
    0018: invoke-virtual {v2}, Lcom/longfafa/paylib/common/BasePoJo;->toJSONObject()Lorg/json/JSONObject;
    001b: move-result-object v2
    001c: invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    001f: goto 0023
    0020: invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    0023: add-int/lit8 v1, v1, #1
    0025: goto 0008
    0026: return-object v0
.end method

.method public static Lcom/longfafa/paylib/common/BasePoJo;->fromJsonStr(Ljava/lang/String;, Lcom/longfafa/paylib/common/BasePoJo;)Lcom/longfafa/paylib/common/BasePoJo;
    .registers 4
    0000: const/4 v0, #0
    0001: if-eqz v2, 0027
    0003: invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    0006: move-result v1
    0007: if-nez v1, 0027
    0009: if-nez v3, 000c
    000b: goto 0027
    000c: new-instance v1, Lorg/json/JSONObject;
    000e: invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    0011: goto 0013
    0012: move-object v1, v0
    0013: if-nez v1, 0016
    0015: return-object v0
    0016: invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    0019: move-result-object v2
    001a: const-class v0, Lcom/longfafa/paylib/common/BasePoJo;
    001c: if-eq v0, v2, 0026
    001e: invoke-virtual {v3, v1, v2}, Lcom/longfafa/paylib/common/BasePoJo;->initField(Lorg/json/JSONObject;, Ljava/lang/Class;)V
    0021: invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    0024: move-result-object v2
    0025: goto 001a
    0026: return-object v3
    0027: return-object v0
.end method

.method private Lcom/longfafa/paylib/common/BasePoJo;->getObj(Lorg/json/JSONObject;, Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 8
    0000: const-class v0, Lcom/longfafa/paylib/common/FieldDesc;
    0002: invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    0005: move-result-object v0
    0006: check-cast v0, Lcom/longfafa/paylib/common/FieldDesc;
    0008: const/4 v1, #0
    0009: if-nez v0, 000c
    000b: return-object v1
    000c: invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    000f: move-result-object v7
    0010: invoke-interface {v0}, Lcom/longfafa/paylib/common/FieldDesc;->key()Ljava/lang/String;
    0013: move-result-object v2
    0014: invoke-interface {v0}, Lcom/longfafa/paylib/common/FieldDesc;->arrayType()Ljava/lang/Class;
    0017: move-result-object v3
    0018: invoke-interface {v0}, Lcom/longfafa/paylib/common/FieldDesc;->mapType()Ljava/lang/Class;
    001b: move-result-object v0
    001c: const-class v4, Ljava/lang/String;
    001e: if-ne v7, v4, 0026
    0020: invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    0023: move-result-object v1
    0024: goto/16 00e8
    0026: invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z
    0029: move-result v4
    002a: if-eqz v4, 0036
    002c: invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    002f: move-result-object v5
    0030: invoke-static {v7, v5}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;, Ljava/lang/String;)Ljava/lang/Enum;
    0033: move-result-object v1
    0034: goto/16 00e8
    0036: sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    0038: if-eq v7, v4, 00e0
    003a: const-class v4, Ljava/lang/Integer;
    003c: if-ne v7, v4, 0040
    003e: goto/16 00e0
    0040: sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    0042: if-eq v7, v4, 00d7
    0044: const-class v4, Ljava/lang/Long;
    0046: if-ne v7, v4, 004a
    0048: goto/16 00d7
    004a: sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    004c: if-eq v7, v4, 00ce
    004e: const-class v4, Ljava/lang/Boolean;
    0050: if-ne v7, v4, 0054
    0052: goto/16 00ce
    0054: sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    0056: if-eq v7, v4, 00c5
    0058: const-class v4, Ljava/lang/Float;
    005a: if-ne v7, v4, 005e
    005c: goto/16 00c5
    005e: sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
    0060: if-eq v7, v4, 00bc
    0062: const-class v4, Ljava/lang/Double;
    0064: if-ne v7, v4, 0067
    0066: goto 00bc
    0067: const-class v4, Ljava/util/ArrayList;
    0069: if-ne v4, v7, 0081
    006b: new-instance v5, Lorg/json/JSONArray;
    006d: invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    0070: move-result-object v7
    0071: invoke-direct {v5, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    0074: move-object v1, v5
    0075: if-nez v1, 007b
    0077: invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    007a: move-result-object v1
    007b: invoke-static {v3, v1}, Lcom/longfafa/paylib/common/BasePoJo;->JSONArrayToArray(Ljava/lang/Class;, Lorg/json/JSONArray;)Ljava/util/ArrayList;
    007e: move-result-object v1
    007f: goto/16 00e8
    0081: const-class v3, Ljava/util/HashMap;
    0083: if-ne v3, v7, 009a
    0085: new-instance v7, Lorg/json/JSONObject;
    0087: invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    008a: move-result-object v3
    008b: invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    008e: move-object v1, v7
    008f: if-nez v1, 0095
    0091: invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    0094: move-result-object v1
    0095: invoke-direct {v5, v0, v1}, Lcom/longfafa/paylib/common/BasePoJo;->jsonObject2Map(Ljava/lang/Class;, Lorg/json/JSONObject;)Ljava/util/HashMap;
    0098: move-result-object v1
    0099: goto 00e8
    009a: const-class v0, Lcom/longfafa/paylib/common/BasePoJo;
    009c: invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    009f: move-result v0
    00a0: if-eqz v0, 00b7
    00a2: new-instance v0, Lorg/json/JSONObject;
    00a4: invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    00a7: move-result-object v3
    00a8: invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    00ab: move-object v1, v0
    00ac: if-nez v1, 00b2
    00ae: invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    00b1: move-result-object v1
    00b2: invoke-direct {v5, v7, v1}, Lcom/longfafa/paylib/common/BasePoJo;->jsonObject2Object(Ljava/lang/Class;, Lorg/json/JSONObject;)Ljava/lang/Object;
    00b5: move-result-object v1
    00b6: goto 00e8
    00b7: invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    00ba: move-result-object v1
    00bb: goto 00e8
    00bc: invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D
    00bf: move-result-wide v5
    00c0: invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    00c3: move-result-object v1
    00c4: goto 00e8
    00c5: invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D
    00c8: move-result-wide v5
    00c9: invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    00cc: move-result-object v1
    00cd: goto 00e8
    00ce: invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    00d1: move-result v5
    00d2: invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    00d5: move-result-object v1
    00d6: goto 00e8
    00d7: invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
    00da: move-result-wide v5
    00db: invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    00de: move-result-object v1
    00df: goto 00e8
    00e0: invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    00e3: move-result v5
    00e4: invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    00e7: move-result-object v1
    00e8: return-object v1
.end method

.method private Lcom/longfafa/paylib/common/BasePoJo;->initJSON(Lorg/json/JSONObject;, Ljava/lang/Class;)V
    .registers 9
    0000: if-nez v8, 0003
    0002: return-void
    0003: invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
    0006: move-result-object v8
    0007: if-nez v8, 000a
    0009: return-void
    000a: array-length v0, v8
    000b: const/4 v1, #0
    000c: if-ge v1, v0, 006a
    000e: aget-object v2, v8, v1
    0010: const-class v3, Lcom/longfafa/paylib/common/FieldDesc;
    0012: invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    0015: move-result-object v3
    0016: check-cast v3, Lcom/longfafa/paylib/common/FieldDesc;
    0018: if-nez v3, 001b
    001a: goto 0067
    001b: invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    001e: move-result-object v4
    001f: invoke-interface {v3}, Lcom/longfafa/paylib/common/FieldDesc;->key()Ljava/lang/String;
    0022: move-result-object v3
    0023: invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    0026: move-result v5
    0027: if-eqz v5, 002a
    0029: goto 0067
    002a: invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    002d: move-result-object v2
    002e: if-eqz v2, 0034
    0030: invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    0033: move-result-object v4
    0034: const-class v5, Ljava/util/ArrayList;
    0036: if-ne v5, v4, 0042
    0038: check-cast v2, Ljava/util/ArrayList;
    003a: invoke-static {v2}, Lcom/longfafa/paylib/common/BasePoJo;->arrayToJsonArray(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    003d: move-result-object v2
    003e: invoke-direct {v6, v7, v3, v2}, Lcom/longfafa/paylib/common/BasePoJo;->putObject(Lorg/json/JSONObject;, Ljava/lang/String;, Ljava/lang/Object;)V
    0041: goto 0067
    0042: const-class v5, Ljava/util/HashMap;
    0044: if-ne v5, v4, 0050
    0046: check-cast v2, Ljava/util/HashMap;
    0048: invoke-static {v2}, Lcom/longfafa/paylib/common/BasePoJo;->map2JsonObject(Ljava/util/HashMap;)Lorg/json/JSONObject;
    004b: move-result-object v2
    004c: invoke-direct {v6, v7, v3, v2}, Lcom/longfafa/paylib/common/BasePoJo;->putObject(Lorg/json/JSONObject;, Ljava/lang/String;, Ljava/lang/Object;)V
    004f: goto 0067
    0050: const-class v5, Lcom/longfafa/paylib/common/BasePoJo;
    0052: invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    0055: move-result v4
    0056: if-eqz v4, 0064
    0058: if-eqz v2, 0064
    005a: check-cast v2, Lcom/longfafa/paylib/common/BasePoJo;
    005c: invoke-virtual {v2}, Lcom/longfafa/paylib/common/BasePoJo;->toJSONObject()Lorg/json/JSONObject;
    005f: move-result-object v2
    0060: invoke-direct {v6, v7, v3, v2}, Lcom/longfafa/paylib/common/BasePoJo;->putObject(Lorg/json/JSONObject;, Ljava/lang/String;, Ljava/lang/Object;)V
    0063: goto 0067
    0064: invoke-direct {v6, v7, v3, v2}, Lcom/longfafa/paylib/common/BasePoJo;->putObject(Lorg/json/JSONObject;, Ljava/lang/String;, Ljava/lang/Object;)V
    0067: add-int/lit8 v1, v1, #1
    0069: goto 000c
    006a: return-void
.end method

.method private Lcom/longfafa/paylib/common/BasePoJo;->jsonObject2Map(Ljava/lang/Class;, Lorg/json/JSONObject;)Ljava/util/HashMap;
    .registers 11
    0000: new-instance v8, Ljava/util/HashMap;
    0002: invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    0005: if-nez v10, 0008
    0007: return-object v8
    0008: invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
    000b: move-result-object v0
    000c: invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    000f: move-result v1
    0010: if-eqz v1, 00ed
    0012: invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0015: move-result-object v1
    0016: check-cast v1, Ljava/lang/String;
    0018: invoke-virtual {v10, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    001b: move-result-object v2
    001c: const-class v3, Ljava/lang/String;
    001e: if-ne v9, v3, 0028
    0020: invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0023: move-result-object v2
    0024: invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0027: goto 000c
    0028: invoke-virtual {v9}, Ljava/lang/Class;->isEnum()Z
    002b: move-result v4
    002c: if-eqz v4, 003a
    002e: invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0031: move-result-object v2
    0032: invoke-static {v9, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;, Ljava/lang/String;)Ljava/lang/Enum;
    0035: move-result-object v2
    0036: invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0039: goto 000c
    003a: sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    003c: if-eq v9, v4, 00dc
    003e: const-class v4, Ljava/lang/Integer;
    0040: if-ne v9, v4, 0044
    0042: goto/16 00dc
    0044: sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    0046: if-eq v9, v4, 00cb
    0048: const-class v4, Ljava/lang/Long;
    004a: if-ne v9, v4, 004e
    004c: goto/16 00cb
    004e: sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    0050: if-eq v9, v4, 00ba
    0052: const-class v4, Ljava/lang/Boolean;
    0054: if-ne v9, v4, 0057
    0056: goto 00ba
    0057: sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    0059: if-eq v9, v4, 00a9
    005b: const-class v4, Ljava/lang/Float;
    005d: if-ne v9, v4, 0060
    005f: goto 00a9
    0060: sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
    0062: if-eq v9, v4, 0098
    0064: const-class v4, Ljava/lang/Double;
    0066: if-ne v9, v4, 0069
    0068: goto 0098
    0069: const-class v4, Lcom/longfafa/paylib/common/BasePoJo;
    006b: invoke-virtual {v4, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    006e: move-result v4
    006f: if-eqz v4, 008f
    0071: const/4 v4, #1
    0072: const/4 v5, #0
    0073: new-array v6, v4, [Ljava/lang/Class;
    0075: const/4 v7, #0
    0076: aput-object v3, v6, v7
    0078: invoke-virtual {v9, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    007b: move-result-object v3
    007c: if-eqz v3, 008a
    007e: new-array v4, v4, [Ljava/lang/Object;
    0080: invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0083: move-result-object v2
    0084: aput-object v2, v4, v7
    0086: invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    0089: move-result-object v5
    008a: invoke-virtual {v8, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    008d: goto/16 000c
    008f: invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    0092: move-result-object v2
    0093: invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0096: goto/16 000c
    0098: invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    009b: move-result-object v2
    009c: invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    009f: move-result-wide v2
    00a0: invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    00a3: move-result-object v2
    00a4: invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    00a7: goto/16 000c
    00a9: invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    00ac: move-result-object v2
    00ad: invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    00b0: move-result v2
    00b1: invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    00b4: move-result-object v2
    00b5: invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    00b8: goto/16 000c
    00ba: invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    00bd: move-result-object v2
    00be: invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    00c1: move-result v2
    00c2: invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    00c5: move-result-object v2
    00c6: invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    00c9: goto/16 000c
    00cb: invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    00ce: move-result-object v2
    00cf: invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    00d2: move-result-wide v2
    00d3: invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    00d6: move-result-object v2
    00d7: invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    00da: goto/16 000c
    00dc: invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    00df: move-result-object v2
    00e0: invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    00e3: move-result v2
    00e4: invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    00e7: move-result-object v2
    00e8: invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    00eb: goto/16 000c
    00ed: return-object v8
.end method

.method private Lcom/longfafa/paylib/common/BasePoJo;->jsonObject2Object(Ljava/lang/Class;, Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 7
    0000: const/4 v4, #0
    0001: if-nez v6, 0004
    0003: return-object v4
    0004: const/4 v0, #1
    0005: new-array v1, v0, [Ljava/lang/Class;
    0007: const-class v2, Ljava/lang/String;
    0009: const/4 v3, #0
    000a: aput-object v2, v1, v3
    000c: invoke-virtual {v5, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    000f: move-result-object v5
    0010: if-eqz v5, 001e
    0012: new-array v0, v0, [Ljava/lang/Object;
    0014: invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    0017: move-result-object v6
    0018: aput-object v6, v0, v3
    001a: invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    001d: move-result-object v4
    001e: return-object v4
.end method

.method public static Lcom/longfafa/paylib/common/BasePoJo;->map2JsonObject(Ljava/util/HashMap;)Lorg/json/JSONObject;
    .registers 5
    0000: new-instance v0, Lorg/json/JSONObject;
    0002: invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    0005: if-eqz v4, 003d
    0007: invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
    000a: move-result-object v4
    000b: invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    000e: move-result-object v4
    000f: invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    0012: move-result v1
    0013: if-eqz v1, 003d
    0015: invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0018: move-result-object v1
    0019: check-cast v1, Ljava/util/Map$Entry;
    001b: invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    001e: move-result-object v2
    001f: instance-of v3, v2, Lcom/longfafa/paylib/common/BasePoJo;
    0021: if-eqz v3, 0033
    0023: invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    0026: move-result-object v1
    0027: check-cast v1, Ljava/lang/String;
    0029: check-cast v2, Lcom/longfafa/paylib/common/BasePoJo;
    002b: invoke-virtual {v2}, Lcom/longfafa/paylib/common/BasePoJo;->toJSONObject()Lorg/json/JSONObject;
    002e: move-result-object v2
    002f: invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;, Ljava/lang/Object;)Lorg/json/JSONObject;
    0032: goto 000f
    0033: invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    0036: move-result-object v1
    0037: check-cast v1, Ljava/lang/String;
    0039: invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;, Ljava/lang/Object;)Lorg/json/JSONObject;
    003c: goto 000f
    003d: return-object v0
.end method

.method private Lcom/longfafa/paylib/common/BasePoJo;->putObject(Lorg/json/JSONObject;, Ljava/lang/String;, Ljava/lang/Object;)V
    .registers 4
    0000: if-nez v3, 0008
    0002: const-string v0, ''
    0004: invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;, Ljava/lang/Object;)Lorg/json/JSONObject;
    0007: goto 000b
    0008: invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;, Ljava/lang/Object;)Lorg/json/JSONObject;
    000b: return-void
.end method

.method public static Lcom/longfafa/paylib/common/BasePoJo;->strToObject(Ljava/lang/Class;, Ljava/lang/String;)Lcom/longfafa/paylib/common/BasePoJo;
    .registers 3
    0000: new-instance v0, Lorg/json/JSONObject;
    0002: invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    0005: goto 0007
    0006: const/4 v0, #0
    0007: invoke-static {v1, v0}, Lcom/longfafa/paylib/common/BasePoJo;->JSONObjectToObject(Ljava/lang/Class;, Lorg/json/JSONObject;)Lcom/longfafa/paylib/common/BasePoJo;
    000a: move-result-object v1
    000b: return-object v1
.end method

.method public Lcom/longfafa/paylib/common/BasePoJo;->initField(Lorg/json/JSONObject;, Ljava/lang/Class;)V
    .registers 7
    0000: if-nez v6, 0003
    0002: return-void
    0003: invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
    0006: move-result-object v6
    0007: if-nez v6, 000a
    0009: return-void
    000a: array-length v0, v6
    000b: const/4 v1, #0
    000c: if-ge v1, v0, 001a
    000e: aget-object v2, v6, v1
    0010: invoke-direct {v4, v5, v2}, Lcom/longfafa/paylib/common/BasePoJo;->getObj(Lorg/json/JSONObject;, Ljava/lang/reflect/Field;)Ljava/lang/Object;
    0013: move-result-object v3
    0014: invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;, Ljava/lang/Object;)V
    0017: add-int/lit8 v1, v1, #1
    0019: goto 000c
    001a: return-void
.end method

.method public Lcom/longfafa/paylib/common/BasePoJo;->toJSONObject()Lorg/json/JSONObject;
    .registers 4
    0000: new-instance v0, Lorg/json/JSONObject;
    0002: invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    0005: invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    0008: move-result-object v1
    0009: const-class v2, Lcom/longfafa/paylib/common/BasePoJo;
    000b: if-eq v2, v1, 0015
    000d: invoke-direct {v3, v0, v1}, Lcom/longfafa/paylib/common/BasePoJo;->initJSON(Lorg/json/JSONObject;, Ljava/lang/Class;)V
    0010: invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    0013: move-result-object v1
    0014: goto 0009
    0015: return-object v0
.end method

.method public Lcom/longfafa/paylib/common/BasePoJo;->toString()Ljava/lang/String;
    .registers 1
    0000: invoke-virtual {v0}, Lcom/longfafa/paylib/common/BasePoJo;->toJSONObject()Lorg/json/JSONObject;
    0003: move-result-object v0
    0004: invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    0007: move-result-object v0
    0008: return-object v0
.end method
