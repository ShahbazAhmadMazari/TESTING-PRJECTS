# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/J4IoO;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Map$Entry;

.field public Lcom/easypaisaTweak/newpackage/J4IoO;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/J4IoO;
.field public final Lcom/easypaisaTweak/newpackage/J4IoO;->eRtvpvxbz:Ljava/lang/Object;
.field public Lcom/easypaisaTweak/newpackage/J4IoO;->hO03fCMH:Lcom/easypaisaTweak/newpackage/J4IoO;
.field public final Lcom/easypaisaTweak/newpackage/J4IoO;->yWkiZmD:Ljava/lang/Object;

.method public constructor Lcom/easypaisaTweak/newpackage/J4IoO;-><init>(Lcom/easypaisaTweak/newpackage/Z2wWt;, Lcom/easypaisaTweak/newpackage/NYjz3;)V
    .registers 3
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/J4IoO;->yWkiZmD:Ljava/lang/Object;
    0005: iput-object v2, v0, Lcom/easypaisaTweak/newpackage/J4IoO;->eRtvpvxbz:Ljava/lang/Object;
    0007: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/J4IoO;->equals(Ljava/lang/Object;)Z
    .registers 6
    0000: const/4 v0, #1
    0001: if-ne v5, v4, 0004
    0003: return v0
    0004: instance-of v1, v5, Lcom/easypaisaTweak/newpackage/J4IoO;
    0006: const/4 v2, #0
    0007: if-nez v1, 000a
    0009: return v2
    000a: check-cast v5, Lcom/easypaisaTweak/newpackage/J4IoO;
    000c: iget-object v1, v5, Lcom/easypaisaTweak/newpackage/J4IoO;->yWkiZmD:Ljava/lang/Object;
    000e: iget-object v3, v4, Lcom/easypaisaTweak/newpackage/J4IoO;->yWkiZmD:Ljava/lang/Object;
    0010: invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    0013: move-result v1
    0014: if-eqz v1, 0021
    0016: iget-object v4, v4, Lcom/easypaisaTweak/newpackage/J4IoO;->eRtvpvxbz:Ljava/lang/Object;
    0018: iget-object v5, v5, Lcom/easypaisaTweak/newpackage/J4IoO;->eRtvpvxbz:Ljava/lang/Object;
    001a: invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    001d: move-result v4
    001e: if-eqz v4, 0021
    0020: goto 0022
    0021: move v0, v2
    0022: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/J4IoO;->getKey()Ljava/lang/Object;
    .registers 1
    0000: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/J4IoO;->yWkiZmD:Ljava/lang/Object;
    0002: return-object v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/J4IoO;->getValue()Ljava/lang/Object;
    .registers 1
    0000: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/J4IoO;->eRtvpvxbz:Ljava/lang/Object;
    0002: return-object v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/J4IoO;->hashCode()I
    .registers 2
    0000: iget-object v0, v1, Lcom/easypaisaTweak/newpackage/J4IoO;->yWkiZmD:Ljava/lang/Object;
    0002: invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    0005: move-result v0
    0006: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/J4IoO;->eRtvpvxbz:Ljava/lang/Object;
    0008: invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    000b: move-result v1
    000c: xor-int/2addr v1, v0
    000d: return v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/J4IoO;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    0000: new-instance v0, Ljava/lang/UnsupportedOperationException;
    0002: const-string v1, 'An entry modification is not supported'
    0004: invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
    0007: throw v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/J4IoO;->toString()Ljava/lang/String;
    .registers 3
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    0005: iget-object v1, v2, Lcom/easypaisaTweak/newpackage/J4IoO;->yWkiZmD:Ljava/lang/Object;
    0007: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    000a: const-string v1, '='
    000c: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000f: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/J4IoO;->eRtvpvxbz:Ljava/lang/Object;
    0011: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0014: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0017: move-result-object v2
    0018: return-object v2
.end method
