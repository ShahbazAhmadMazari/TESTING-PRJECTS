# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/plugin/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


.method public constructor Lcom/myairtelapp/plugin/StringUtils;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: return-void
.end method

.method public static Lcom/myairtelapp/plugin/StringUtils;->addString(Ljava/util/Map;, Ljava/lang/String;, Ljava/lang/String;)V
    .registers 4
    0000: invoke-static {v3}, Lcom/myairtelapp/plugin/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    0003: move-result v0
    0004: if-eqz v0, 0007
    0006: return-void
    0007: invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    000a: return-void
.end method

.method public static Lcom/myairtelapp/plugin/StringUtils;->equals(Ljava/lang/CharSequence;, Ljava/lang/CharSequence;)Z
    .registers 8
    0000: const/4 v0, #1
    0001: if-ne v6, v7, 0004
    0003: return v0
    0004: const/4 v1, #0
    0005: if-eqz v6, 0032
    0007: if-eqz v7, 0032
    0009: invoke-interface {v6}, Ljava/lang/CharSequence;->length()I
    000c: move-result v2
    000d: invoke-interface {v7}, Ljava/lang/CharSequence;->length()I
    0010: move-result v3
    0011: if-ne v2, v3, 0032
    0013: instance-of v3, v6, Ljava/lang/String;
    0015: if-eqz v3, 0020
    0017: instance-of v3, v7, Ljava/lang/String;
    0019: if-eqz v3, 0020
    001b: invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    001e: move-result v6
    001f: return v6
    0020: move v3, v1
    0021: if-ge v3, v2, 0031
    0023: invoke-interface {v6, v3}, Ljava/lang/CharSequence;->charAt(I)C
    0026: move-result v4
    0027: invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C
    002a: move-result v5
    002b: if-eq v4, v5, 002e
    002d: return v1
    002e: add-int/lit8 v3, v3, #1
    0030: goto 0021
    0031: return v0
    0032: return v1
.end method

.method public static varargs Lcom/myairtelapp/plugin/StringUtils;->formatString(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    0000: sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    0002: invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;, Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0005: move-result-object v1
    0006: return-object v1
.end method

.method public static Lcom/myairtelapp/plugin/StringUtils;->getExtendedString(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    0000: const/4 v0, #0
    0001: invoke-static {v1, v0}, Lcom/myairtelapp/plugin/StringUtils;->getExtendedString(Ljava/util/Map;, Z)Ljava/lang/String;
    0004: move-result-object v1
    0005: return-object v1
.end method

.method public static Lcom/myairtelapp/plugin/StringUtils;->getExtendedString(Ljava/util/Map;, Z)Ljava/lang/String;
    .registers 6
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    0005: if-eqz v4, 006c
    0007: const-string v1, '\n--------------------------------------------------------------------'
    0009: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000c: const-string v2, '\n\t%-32s %s'
    000e: if-eqz v5, 003f
    0010: new-instance v5, Ljava/util/TreeMap;
    0012: invoke-direct {v5, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    0015: invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;
    0018: move-result-object v4
    0019: invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    001c: move-result-object v4
    001d: invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    0020: move-result v5
    0021: if-eqz v5, 0069
    0023: invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0026: move-result-object v5
    0027: check-cast v5, Ljava/util/Map$Entry;
    0029: invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    002c: move-result-object v3
    002d: check-cast v3, Ljava/lang/String;
    002f: invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    0032: move-result-object v5
    0033: filled-new-array {v3, v5}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    0036: move-result-object v5
    0037: invoke-static {v2, v5}, Lcom/myairtelapp/plugin/StringUtils;->formatString(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    003a: move-result-object v5
    003b: invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    003e: goto 001d
    003f: invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    0042: move-result-object v4
    0043: invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    0046: move-result-object v4
    0047: invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    004a: move-result v5
    004b: if-eqz v5, 0069
    004d: invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0050: move-result-object v5
    0051: check-cast v5, Ljava/util/Map$Entry;
    0053: invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    0056: move-result-object v3
    0057: check-cast v3, Ljava/lang/String;
    0059: invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    005c: move-result-object v5
    005d: filled-new-array {v3, v5}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    0060: move-result-object v5
    0061: invoke-static {v2, v5}, Lcom/myairtelapp/plugin/StringUtils;->formatString(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0064: move-result-object v5
    0065: invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0068: goto 0047
    0069: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    006c: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    006f: move-result-object v4
    0070: return-object v4
.end method

.method public static Lcom/myairtelapp/plugin/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    .registers 1
    0000: if-eqz v0, 000b
    0002: invoke-interface {v0}, Ljava/lang/CharSequence;->length()I
    0005: move-result v0
    0006: if-nez v0, 0009
    0008: goto 000b
    0009: const/4 v0, #0
    000a: goto 000c
    000b: const/4 v0, #1
    000c: return v0
.end method

.method public static Lcom/myairtelapp/plugin/StringUtils;->mergeParameters(Ljava/util/Map;, Ljava/util/Map;, Ljava/lang/String;)Ljava/util/Map;
    .registers 7
    0000: if-nez v4, 0003
    0002: return-object v5
    0003: if-nez v5, 0006
    0005: return-object v4
    0006: new-instance v0, Ljava/util/HashMap;
    0008: invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    000b: invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    000e: move-result-object v4
    000f: invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    0012: move-result-object v4
    0013: invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    0016: move-result v5
    0017: if-eqz v5, 0047
    0019: invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    001c: move-result-object v5
    001d: check-cast v5, Ljava/util/Map$Entry;
    001f: invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    0022: move-result-object v1
    0023: check-cast v1, Ljava/lang/String;
    0025: invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    0028: move-result-object v2
    0029: invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    002c: move-result-object v1
    002d: if-eqz v1, 0013
    002f: sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;
    0031: invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    0034: move-result-object v3
    0035: invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    0038: move-result-object v5
    0039: filled-new-array {v3, v1, v6, v5}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    003c: move-result-object v5
    003d: const-string v1, 'Key %s with value %s from %s parameter was replaced by value %s'
    003f: invoke-static {v1, v5}, Lcom/myairtelapp/plugin/StringUtils;->formatString(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0042: move-result-object v5
    0043: invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    0046: goto 0013
    0047: return-object v0
.end method
