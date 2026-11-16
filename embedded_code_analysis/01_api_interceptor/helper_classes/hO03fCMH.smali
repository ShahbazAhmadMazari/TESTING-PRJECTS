# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/hO03fCMH;
.super Lcom/easypaisaTweak/newpackage/JnXzgCUW;
.source "SourceFile"
.implements Ljava/util/Map;

.field public Lcom/easypaisaTweak/newpackage/hO03fCMH;->ZDfAQYocn5:Lcom/easypaisaTweak/newpackage/eRtvpvxbz;

.method public final Lcom/easypaisaTweak/newpackage/hO03fCMH;->entrySet()Ljava/util/Set;
    .registers 3
    0000: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/hO03fCMH;->ZDfAQYocn5:Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    0002: const/4 v1, #0
    0003: if-nez v0, 000c
    0005: new-instance v0, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    0007: invoke-direct {v0, v1, v2}, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;-><init>(I, Ljava/lang/Object;)V
    000a: iput-object v0, v2, Lcom/easypaisaTweak/newpackage/hO03fCMH;->ZDfAQYocn5:Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    000c: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/hO03fCMH;->ZDfAQYocn5:Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    000e: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/JujT5;->yWkiZmD:Lcom/easypaisaTweak/newpackage/PGM5W1;
    0010: if-nez v0, 0019
    0012: new-instance v0, Lcom/easypaisaTweak/newpackage/PGM5W1;
    0014: invoke-direct {v0, v2, v1}, Lcom/easypaisaTweak/newpackage/PGM5W1;-><init>(Lcom/easypaisaTweak/newpackage/JujT5;, I)V
    0017: iput-object v0, v2, Lcom/easypaisaTweak/newpackage/JujT5;->yWkiZmD:Lcom/easypaisaTweak/newpackage/PGM5W1;
    0019: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/JujT5;->yWkiZmD:Lcom/easypaisaTweak/newpackage/PGM5W1;
    001b: return-object v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/hO03fCMH;->keySet()Ljava/util/Set;
    .registers 3
    0000: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/hO03fCMH;->ZDfAQYocn5:Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    0002: if-nez v0, 000c
    0004: new-instance v0, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    0006: const/4 v1, #0
    0007: invoke-direct {v0, v1, v2}, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;-><init>(I, Ljava/lang/Object;)V
    000a: iput-object v0, v2, Lcom/easypaisaTweak/newpackage/hO03fCMH;->ZDfAQYocn5:Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    000c: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/hO03fCMH;->ZDfAQYocn5:Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    000e: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/PGM5W1;
    0010: if-nez v0, 001a
    0012: new-instance v0, Lcom/easypaisaTweak/newpackage/PGM5W1;
    0014: const/4 v1, #1
    0015: invoke-direct {v0, v2, v1}, Lcom/easypaisaTweak/newpackage/PGM5W1;-><init>(Lcom/easypaisaTweak/newpackage/JujT5;, I)V
    0018: iput-object v0, v2, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/PGM5W1;
    001a: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/PGM5W1;
    001c: return-object v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/hO03fCMH;->putAll(Ljava/util/Map;)V
    .registers 4
    0000: iget v0, v2, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0002: invoke-interface {v3}, Ljava/util/Map;->size()I
    0005: move-result v1
    0006: add-int/2addr v1, v0
    0007: invoke-virtual {v2, v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz(I)V
    000a: invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    000d: move-result-object v3
    000e: invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    0011: move-result-object v3
    0012: invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    0015: move-result v0
    0016: if-eqz v0, 002a
    0018: invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    001b: move-result-object v0
    001c: check-cast v0, Ljava/util/Map$Entry;
    001e: invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    0021: move-result-object v1
    0022: invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    0025: move-result-object v0
    0026: invoke-virtual {v2, v1, v0}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0029: goto 0012
    002a: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/hO03fCMH;->values()Ljava/util/Collection;
    .registers 3
    0000: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/hO03fCMH;->ZDfAQYocn5:Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    0002: if-nez v0, 000c
    0004: new-instance v0, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    0006: const/4 v1, #0
    0007: invoke-direct {v0, v1, v2}, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;-><init>(I, Ljava/lang/Object;)V
    000a: iput-object v0, v2, Lcom/easypaisaTweak/newpackage/hO03fCMH;->ZDfAQYocn5:Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    000c: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/hO03fCMH;->ZDfAQYocn5:Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    000e: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/JujT5;->hO03fCMH:Lcom/easypaisaTweak/newpackage/oRQXI;
    0010: if-nez v0, 0019
    0012: new-instance v0, Lcom/easypaisaTweak/newpackage/oRQXI;
    0014: invoke-direct {v0, v2}, Lcom/easypaisaTweak/newpackage/oRQXI;-><init>(Lcom/easypaisaTweak/newpackage/JujT5;)V
    0017: iput-object v0, v2, Lcom/easypaisaTweak/newpackage/JujT5;->hO03fCMH:Lcom/easypaisaTweak/newpackage/oRQXI;
    0019: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/JujT5;->hO03fCMH:Lcom/easypaisaTweak/newpackage/oRQXI;
    001b: return-object v2
.end method
