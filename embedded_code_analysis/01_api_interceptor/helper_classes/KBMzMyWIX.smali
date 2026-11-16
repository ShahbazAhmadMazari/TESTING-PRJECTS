# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract Lcom/easypaisaTweak/newpackage/KBMzMyWIX;
.super Ljava/lang/Object;
.source "SourceFile"

.field private Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->createCount:I
.field private Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->evictionCount:I
.field private Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->hitCount:I
.field private final Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->map:Ljava/util/LinkedHashMap;
.field private Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->maxSize:I
.field private Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->missCount:I
.field private Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->putCount:I
.field private Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I

.method public constructor Lcom/easypaisaTweak/newpackage/KBMzMyWIX;-><init>()V
    .registers 5
    0000: invoke-direct {v4}, Ljava/lang/Object;-><init>()V
    0003: const/16 v0, #10
    0005: iput v0, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->maxSize:I
    0007: new-instance v0, Ljava/util/LinkedHashMap;
    0009: const/4 v1, #1
    000a: const/4 v2, #0
    000b: const/high16 v3, #1061158912
    000d: invoke-direct {v0, v2, v3, v1}, Ljava/util/LinkedHashMap;-><init>(I, F, Z)V
    0010: iput-object v0, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->map:Ljava/util/LinkedHashMap;
    0012: return-void
.end method

.method public Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    0000: const/4 v0, #0
    0001: return-object v0
.end method

.method public final declared-synchronized Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->createCount()I
    .registers 2
    0000: monitor-enter v1
    0001: iget v0, v1, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->createCount:I
    0003: monitor-exit v1
    0004: return v0
    0005: move-exception v0
    0006: monitor-exit v1
    0007: throw v0
.end method

.method public Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->entryRemoved(Z, Ljava/lang/Object;, Ljava/lang/Object;, Ljava/lang/Object;)V
    .registers 5
    0000: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->evictAll()V
    .registers 2
    0000: const/4 v0, #-1
    0001: invoke-virtual {v1, v0}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->trimToSize(I)V
    0004: return-void
.end method

.method public final declared-synchronized Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->evictionCount()I
    .registers 2
    0000: monitor-enter v1
    0001: iget v0, v1, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->evictionCount:I
    0003: monitor-exit v1
    0004: return v0
    0005: move-exception v0
    0006: monitor-exit v1
    0007: throw v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    0000: if-eqz v5, 0054
    0002: monitor-enter v4
    0003: iget-object v0, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->map:Ljava/util/LinkedHashMap;
    0005: invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    0008: move-result-object v0
    0009: if-eqz v0, 0013
    000b: iget v5, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->hitCount:I
    000d: add-int/lit8 v5, v5, #1
    000f: iput v5, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->hitCount:I
    0011: monitor-exit v4
    0012: return-object v0
    0013: iget v0, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->missCount:I
    0015: add-int/lit8 v0, v0, #1
    0017: iput v0, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->missCount:I
    0019: monitor-exit v4
    001a: invoke-virtual {v4, v5}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->create(Ljava/lang/Object;)Ljava/lang/Object;
    001d: move-result-object v0
    001e: if-nez v0, 0022
    0020: const/4 v4, #0
    0021: return-object v4
    0022: monitor-enter v4
    0023: iget v1, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->createCount:I
    0025: add-int/lit8 v1, v1, #1
    0027: iput v1, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->createCount:I
    0029: iget-object v1, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->map:Ljava/util/LinkedHashMap;
    002b: invoke-virtual {v1, v5, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    002e: move-result-object v1
    002f: if-eqz v1, 0037
    0031: iget-object v2, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->map:Ljava/util/LinkedHashMap;
    0033: invoke-virtual {v2, v5, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0036: goto 0040
    0037: iget v2, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I
    0039: invoke-virtual {v4, v5, v0}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->yWkiZmD(Ljava/lang/Object;, Ljava/lang/Object;)I
    003c: move-result v3
    003d: add-int/2addr v2, v3
    003e: iput v2, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I
    0040: monitor-exit v4
    0041: if-eqz v1, 0048
    0043: const/4 v2, #0
    0044: invoke-virtual {v4, v2, v5, v0, v1}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->entryRemoved(Z, Ljava/lang/Object;, Ljava/lang/Object;, Ljava/lang/Object;)V
    0047: return-object v1
    0048: iget v5, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->maxSize:I
    004a: invoke-virtual {v4, v5}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->trimToSize(I)V
    004d: return-object v0
    004e: move-exception v5
    004f: monitor-exit v4
    0050: throw v5
    0051: move-exception v5
    0052: monitor-exit v4
    0053: throw v5
    0054: new-instance v4, Ljava/lang/NullPointerException;
    0056: const-string v5, 'key == null'
    0058: invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    005b: throw v4
.end method

.method public final declared-synchronized Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->hitCount()I
    .registers 2
    0000: monitor-enter v1
    0001: iget v0, v1, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->hitCount:I
    0003: monitor-exit v1
    0004: return v0
    0005: move-exception v0
    0006: monitor-exit v1
    0007: throw v0
.end method

.method public final declared-synchronized Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->maxSize()I
    .registers 2
    0000: monitor-enter v1
    0001: iget v0, v1, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->maxSize:I
    0003: monitor-exit v1
    0004: return v0
    0005: move-exception v0
    0006: monitor-exit v1
    0007: throw v0
.end method

.method public final declared-synchronized Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->missCount()I
    .registers 2
    0000: monitor-enter v1
    0001: iget v0, v1, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->missCount:I
    0003: monitor-exit v1
    0004: return v0
    0005: move-exception v0
    0006: monitor-exit v1
    0007: throw v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    0000: if-eqz v4, 0035
    0002: if-eqz v5, 0035
    0004: monitor-enter v3
    0005: iget v0, v3, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->putCount:I
    0007: add-int/lit8 v0, v0, #1
    0009: iput v0, v3, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->putCount:I
    000b: iget v0, v3, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I
    000d: invoke-virtual {v3, v4, v5}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->yWkiZmD(Ljava/lang/Object;, Ljava/lang/Object;)I
    0010: move-result v1
    0011: add-int/2addr v0, v1
    0012: iput v0, v3, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I
    0014: iget-object v0, v3, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->map:Ljava/util/LinkedHashMap;
    0016: invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0019: move-result-object v0
    001a: if-eqz v0, 0025
    001c: iget v1, v3, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I
    001e: invoke-virtual {v3, v4, v0}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->yWkiZmD(Ljava/lang/Object;, Ljava/lang/Object;)I
    0021: move-result v2
    0022: sub-int/2addr v1, v2
    0023: iput v1, v3, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I
    0025: monitor-exit v3
    0026: if-eqz v0, 002c
    0028: const/4 v1, #0
    0029: invoke-virtual {v3, v1, v4, v0, v5}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->entryRemoved(Z, Ljava/lang/Object;, Ljava/lang/Object;, Ljava/lang/Object;)V
    002c: iget v4, v3, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->maxSize:I
    002e: invoke-virtual {v3, v4}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->trimToSize(I)V
    0031: return-object v0
    0032: move-exception v4
    0033: monitor-exit v3
    0034: throw v4
    0035: new-instance v3, Ljava/lang/NullPointerException;
    0037: const-string v4, 'key == null || value == null'
    0039: invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    003c: throw v3
.end method

.method public final declared-synchronized Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->putCount()I
    .registers 2
    0000: monitor-enter v1
    0001: iget v0, v1, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->putCount:I
    0003: monitor-exit v1
    0004: return v0
    0005: move-exception v0
    0006: monitor-exit v1
    0007: throw v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    0000: if-eqz v4, 0020
    0002: monitor-enter v3
    0003: iget-object v0, v3, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->map:Ljava/util/LinkedHashMap;
    0005: invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    0008: move-result-object v0
    0009: if-eqz v0, 0014
    000b: iget v1, v3, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I
    000d: invoke-virtual {v3, v4, v0}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->yWkiZmD(Ljava/lang/Object;, Ljava/lang/Object;)I
    0010: move-result v2
    0011: sub-int/2addr v1, v2
    0012: iput v1, v3, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I
    0014: monitor-exit v3
    0015: if-eqz v0, 001c
    0017: const/4 v1, #0
    0018: const/4 v2, #0
    0019: invoke-virtual {v3, v1, v4, v0, v2}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->entryRemoved(Z, Ljava/lang/Object;, Ljava/lang/Object;, Ljava/lang/Object;)V
    001c: return-object v0
    001d: move-exception v4
    001e: monitor-exit v3
    001f: throw v4
    0020: new-instance v3, Ljava/lang/NullPointerException;
    0022: const-string v4, 'key == null'
    0024: invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    0027: throw v3
.end method

.method public Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->resize(I)V
    .registers 2
    0000: if-lez v1, 000d
    0002: monitor-enter v0
    0003: iput v1, v0, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->maxSize:I
    0005: monitor-exit v0
    0006: invoke-virtual {v0, v1}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->trimToSize(I)V
    0009: return-void
    000a: move-exception v1
    000b: monitor-exit v0
    000c: throw v1
    000d: new-instance v0, Ljava/lang/IllegalArgumentException;
    000f: const-string v1, 'maxSize <= 0'
    0011: invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    0014: throw v0
.end method

.method public final declared-synchronized Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size()I
    .registers 2
    0000: monitor-enter v1
    0001: iget v0, v1, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I
    0003: monitor-exit v1
    0004: return v0
    0005: move-exception v0
    0006: monitor-exit v1
    0007: throw v0
.end method

.method public Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->sizeOf(Ljava/lang/Object;, Ljava/lang/Object;)I
    .registers 3
    0000: const/4 v0, #1
    0001: return v0
.end method

.method public final declared-synchronized Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->snapshot()Ljava/util/Map;
    .registers 3
    0000: monitor-enter v2
    0001: new-instance v0, Ljava/util/LinkedHashMap;
    0003: iget-object v1, v2, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->map:Ljava/util/LinkedHashMap;
    0005: invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    0008: monitor-exit v2
    0009: return-object v0
    000a: move-exception v0
    000b: monitor-exit v2
    000c: throw v0
.end method

.method public final declared-synchronized Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->toString()Ljava/lang/String;
    .registers 7
    0000: monitor-enter v6
    0001: iget v0, v6, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->hitCount:I
    0003: iget v1, v6, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->missCount:I
    0005: add-int/2addr v1, v0
    0006: const/4 v2, #0
    0007: if-eqz v1, 000d
    0009: mul-int/lit8 v0, v0, #100
    000b: div-int/2addr v0, v1
    000c: goto 000e
    000d: move v0, v2
    000e: sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
    0010: const-string v3, 'LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]'
    0012: const/4 v4, #4
    0013: new-array v4, v4, [Ljava/lang/Object;
    0015: iget v5, v6, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->maxSize:I
    0017: invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    001a: move-result-object v5
    001b: aput-object v5, v4, v2
    001d: iget v2, v6, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->hitCount:I
    001f: invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    0022: move-result-object v2
    0023: const/4 v5, #1
    0024: aput-object v2, v4, v5
    0026: iget v2, v6, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->missCount:I
    0028: invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    002b: move-result-object v2
    002c: const/4 v5, #2
    002d: aput-object v2, v4, v5
    002f: invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    0032: move-result-object v0
    0033: const/4 v2, #3
    0034: aput-object v0, v4, v2
    0036: invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;, Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0039: move-result-object v0
    003a: monitor-exit v6
    003b: return-object v0
    003c: move-exception v0
    003d: monitor-exit v6
    003e: throw v0
.end method

.method public Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->trimToSize(I)V
    .registers 6
    0000: monitor-enter v4
    0001: iget v0, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I
    0003: if-ltz v0, 0052
    0005: iget-object v0, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->map:Ljava/util/LinkedHashMap;
    0007: invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z
    000a: move-result v0
    000b: if-eqz v0, 0011
    000d: iget v0, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I
    000f: if-nez v0, 0052
    0011: iget v0, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I
    0013: if-le v0, v5, 0050
    0015: iget-object v0, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->map:Ljava/util/LinkedHashMap;
    0017: invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z
    001a: move-result v0
    001b: if-eqz v0, 001e
    001d: goto 0050
    001e: iget-object v0, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->map:Ljava/util/LinkedHashMap;
    0020: invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
    0023: move-result-object v0
    0024: invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    0027: move-result-object v0
    0028: invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    002b: move-result-object v0
    002c: check-cast v0, Ljava/util/Map$Entry;
    002e: invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    0031: move-result-object v1
    0032: invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    0035: move-result-object v0
    0036: iget-object v2, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->map:Ljava/util/LinkedHashMap;
    0038: invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    003b: iget v2, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I
    003d: invoke-virtual {v4, v1, v0}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->yWkiZmD(Ljava/lang/Object;, Ljava/lang/Object;)I
    0040: move-result v3
    0041: sub-int/2addr v2, v3
    0042: iput v2, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->size:I
    0044: iget v2, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->evictionCount:I
    0046: const/4 v3, #1
    0047: add-int/2addr v2, v3
    0048: iput v2, v4, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->evictionCount:I
    004a: monitor-exit v4
    004b: const/4 v2, #0
    004c: invoke-virtual {v4, v3, v1, v0, v2}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->entryRemoved(Z, Ljava/lang/Object;, Ljava/lang/Object;, Ljava/lang/Object;)V
    004f: goto 0000
    0050: monitor-exit v4
    0051: return-void
    0052: new-instance v5, Ljava/lang/IllegalStateException;
    0054: new-instance v0, Ljava/lang/StringBuilder;
    0056: invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    0059: invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    005c: move-result-object v1
    005d: invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
    0060: move-result-object v1
    0061: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0064: const-string v1, '.sizeOf() is reporting inconsistent results!'
    0066: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0069: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    006c: move-result-object v0
    006d: invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    0070: throw v5
    0071: move-exception v5
    0072: monitor-exit v4
    0073: throw v5
.end method

.method public final Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->yWkiZmD(Ljava/lang/Object;, Ljava/lang/Object;)I
    .registers 5
    0000: invoke-virtual {v2, v3, v4}, Lcom/easypaisaTweak/newpackage/KBMzMyWIX;->sizeOf(Ljava/lang/Object;, Ljava/lang/Object;)I
    0003: move-result v2
    0004: if-ltz v2, 0007
    0006: return v2
    0007: new-instance v2, Ljava/lang/IllegalStateException;
    0009: new-instance v0, Ljava/lang/StringBuilder;
    000b: const-string v1, 'Negative size: '
    000d: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0010: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0013: const-string v3, '='
    0015: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0018: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    001b: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    001e: move-result-object v3
    001f: invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    0022: throw v2
.end method
