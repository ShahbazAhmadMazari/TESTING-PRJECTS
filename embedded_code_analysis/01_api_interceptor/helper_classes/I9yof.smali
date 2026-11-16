# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/easypaisaTweak/newpackage/I9yof;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Iterable;

.field public Lcom/easypaisaTweak/newpackage/I9yof;->SfW5jTpdE:I
.field public Lcom/easypaisaTweak/newpackage/I9yof;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/J4IoO;
.field public final Lcom/easypaisaTweak/newpackage/I9yof;->hO03fCMH:Ljava/util/WeakHashMap;
.field public Lcom/easypaisaTweak/newpackage/I9yof;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;

.method public constructor Lcom/easypaisaTweak/newpackage/I9yof;-><init>()V
    .registers 2
    0000: invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    0003: new-instance v0, Ljava/util/WeakHashMap;
    0005: invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
    0008: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/I9yof;->hO03fCMH:Ljava/util/WeakHashMap;
    000a: const/4 v0, #0
    000b: iput v0, v1, Lcom/easypaisaTweak/newpackage/I9yof;->SfW5jTpdE:I
    000d: return-void
.end method

.method public Lcom/easypaisaTweak/newpackage/I9yof;->eRtvpvxbz(Lcom/easypaisaTweak/newpackage/Z2wWt;)Ljava/lang/Object;
    .registers 5
    0000: invoke-virtual {v3, v4}, Lcom/easypaisaTweak/newpackage/I9yof;->yWkiZmD(Lcom/easypaisaTweak/newpackage/Z2wWt;)Lcom/easypaisaTweak/newpackage/J4IoO;
    0003: move-result-object v4
    0004: const/4 v0, #0
    0005: if-nez v4, 0008
    0007: return-object v0
    0008: iget v1, v3, Lcom/easypaisaTweak/newpackage/I9yof;->SfW5jTpdE:I
    000a: add-int/lit8 v1, v1, #-1
    000c: iput v1, v3, Lcom/easypaisaTweak/newpackage/I9yof;->SfW5jTpdE:I
    000e: iget-object v1, v3, Lcom/easypaisaTweak/newpackage/I9yof;->hO03fCMH:Ljava/util/WeakHashMap;
    0010: invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z
    0013: move-result v2
    0014: if-nez v2, 002e
    0016: invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;
    0019: move-result-object v1
    001a: invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    001d: move-result-object v1
    001e: invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    0021: move-result v2
    0022: if-eqz v2, 002e
    0024: invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0027: move-result-object v2
    0028: check-cast v2, Lcom/easypaisaTweak/newpackage/GpKhqkq;
    002a: invoke-interface {v2, v4}, Lcom/easypaisaTweak/newpackage/GpKhqkq;->yWkiZmD(Lcom/easypaisaTweak/newpackage/J4IoO;)V
    002d: goto 001e
    002e: iget-object v1, v4, Lcom/easypaisaTweak/newpackage/J4IoO;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/J4IoO;
    0030: if-eqz v1, 0037
    0032: iget-object v2, v4, Lcom/easypaisaTweak/newpackage/J4IoO;->hO03fCMH:Lcom/easypaisaTweak/newpackage/J4IoO;
    0034: iput-object v2, v1, Lcom/easypaisaTweak/newpackage/J4IoO;->hO03fCMH:Lcom/easypaisaTweak/newpackage/J4IoO;
    0036: goto 003b
    0037: iget-object v2, v4, Lcom/easypaisaTweak/newpackage/J4IoO;->hO03fCMH:Lcom/easypaisaTweak/newpackage/J4IoO;
    0039: iput-object v2, v3, Lcom/easypaisaTweak/newpackage/I9yof;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    003b: iget-object v2, v4, Lcom/easypaisaTweak/newpackage/J4IoO;->hO03fCMH:Lcom/easypaisaTweak/newpackage/J4IoO;
    003d: if-eqz v2, 0042
    003f: iput-object v1, v2, Lcom/easypaisaTweak/newpackage/J4IoO;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/J4IoO;
    0041: goto 0044
    0042: iput-object v1, v3, Lcom/easypaisaTweak/newpackage/I9yof;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/J4IoO;
    0044: iput-object v0, v4, Lcom/easypaisaTweak/newpackage/J4IoO;->hO03fCMH:Lcom/easypaisaTweak/newpackage/J4IoO;
    0046: iput-object v0, v4, Lcom/easypaisaTweak/newpackage/J4IoO;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/J4IoO;
    0048: iget-object v3, v4, Lcom/easypaisaTweak/newpackage/J4IoO;->eRtvpvxbz:Ljava/lang/Object;
    004a: return-object v3
.end method

.method public final Lcom/easypaisaTweak/newpackage/I9yof;->equals(Ljava/lang/Object;)Z
    .registers 7
    0000: const/4 v0, #1
    0001: if-ne v6, v5, 0004
    0003: return v0
    0004: instance-of v1, v6, Lcom/easypaisaTweak/newpackage/I9yof;
    0006: const/4 v2, #0
    0007: if-nez v1, 000a
    0009: return v2
    000a: check-cast v6, Lcom/easypaisaTweak/newpackage/I9yof;
    000c: iget v1, v5, Lcom/easypaisaTweak/newpackage/I9yof;->SfW5jTpdE:I
    000e: iget v3, v6, Lcom/easypaisaTweak/newpackage/I9yof;->SfW5jTpdE:I
    0010: if-eq v1, v3, 0013
    0012: return v2
    0013: invoke-virtual {v5}, Lcom/easypaisaTweak/newpackage/I9yof;->iterator()Ljava/util/Iterator;
    0016: move-result-object v5
    0017: invoke-virtual {v6}, Lcom/easypaisaTweak/newpackage/I9yof;->iterator()Ljava/util/Iterator;
    001a: move-result-object v6
    001b: move-object v1, v5
    001c: check-cast v1, Lcom/easypaisaTweak/newpackage/tG3T8WTT;
    001e: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->hasNext()Z
    0021: move-result v3
    0022: if-eqz v3, 0044
    0024: move-object v3, v6
    0025: check-cast v3, Lcom/easypaisaTweak/newpackage/tG3T8WTT;
    0027: invoke-virtual {v3}, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->hasNext()Z
    002a: move-result v4
    002b: if-eqz v4, 0044
    002d: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->next()Ljava/lang/Object;
    0030: move-result-object v1
    0031: check-cast v1, Ljava/util/Map$Entry;
    0033: invoke-virtual {v3}, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->next()Ljava/lang/Object;
    0036: move-result-object v3
    0037: if-nez v1, 003b
    0039: if-nez v3, 0043
    003b: if-eqz v1, 001b
    003d: invoke-interface {v1, v3}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z
    0040: move-result v1
    0041: if-nez v1, 001b
    0043: return v2
    0044: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->hasNext()Z
    0047: move-result v5
    0048: if-nez v5, 0053
    004a: check-cast v6, Lcom/easypaisaTweak/newpackage/tG3T8WTT;
    004c: invoke-virtual {v6}, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->hasNext()Z
    004f: move-result v5
    0050: if-nez v5, 0053
    0052: goto 0054
    0053: move v0, v2
    0054: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/I9yof;->hashCode()I
    .registers 4
    0000: invoke-virtual {v3}, Lcom/easypaisaTweak/newpackage/I9yof;->iterator()Ljava/util/Iterator;
    0003: move-result-object v3
    0004: const/4 v0, #0
    0005: move-object v1, v3
    0006: check-cast v1, Lcom/easypaisaTweak/newpackage/tG3T8WTT;
    0008: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->hasNext()Z
    000b: move-result v2
    000c: if-eqz v2, 001a
    000e: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->next()Ljava/lang/Object;
    0011: move-result-object v1
    0012: check-cast v1, Ljava/util/Map$Entry;
    0014: invoke-interface {v1}, Ljava/util/Map$Entry;->hashCode()I
    0017: move-result v1
    0018: add-int/2addr v0, v1
    0019: goto 0005
    001a: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/I9yof;->iterator()Ljava/util/Iterator;
    .registers 5
    0000: new-instance v0, Lcom/easypaisaTweak/newpackage/cSCqVJJdV;
    0002: iget-object v1, v4, Lcom/easypaisaTweak/newpackage/I9yof;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    0004: iget-object v2, v4, Lcom/easypaisaTweak/newpackage/I9yof;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/J4IoO;
    0006: const/4 v3, #0
    0007: invoke-direct {v0, v1, v2, v3}, Lcom/easypaisaTweak/newpackage/cSCqVJJdV;-><init>(Lcom/easypaisaTweak/newpackage/J4IoO;, Lcom/easypaisaTweak/newpackage/J4IoO;, I)V
    000a: iget-object v4, v4, Lcom/easypaisaTweak/newpackage/I9yof;->hO03fCMH:Ljava/util/WeakHashMap;
    000c: sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    000e: invoke-virtual {v4, v0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0011: return-object v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/I9yof;->toString()Ljava/lang/String;
    .registers 4
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const-string v1, '['
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0007: invoke-virtual {v3}, Lcom/easypaisaTweak/newpackage/I9yof;->iterator()Ljava/util/Iterator;
    000a: move-result-object v3
    000b: move-object v1, v3
    000c: check-cast v1, Lcom/easypaisaTweak/newpackage/tG3T8WTT;
    000e: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->hasNext()Z
    0011: move-result v2
    0012: if-eqz v2, 002d
    0014: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->next()Ljava/lang/Object;
    0017: move-result-object v2
    0018: check-cast v2, Ljava/util/Map$Entry;
    001a: invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    001d: move-result-object v2
    001e: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0021: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->hasNext()Z
    0024: move-result v1
    0025: if-eqz v1, 000b
    0027: const-string v1, ', '
    0029: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    002c: goto 000b
    002d: const-string v3, ']'
    002f: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0032: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0035: move-result-object v3
    0036: return-object v3
.end method

.method public Lcom/easypaisaTweak/newpackage/I9yof;->yWkiZmD(Lcom/easypaisaTweak/newpackage/Z2wWt;)Lcom/easypaisaTweak/newpackage/J4IoO;
    .registers 3
    0000: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/I9yof;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    0002: if-eqz v1, 0010
    0004: iget-object v0, v1, Lcom/easypaisaTweak/newpackage/J4IoO;->yWkiZmD:Ljava/lang/Object;
    0006: invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    0009: move-result v0
    000a: if-eqz v0, 000d
    000c: goto 0010
    000d: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/J4IoO;->hO03fCMH:Lcom/easypaisaTweak/newpackage/J4IoO;
    000f: goto 0002
    0010: return-object v1
.end method
