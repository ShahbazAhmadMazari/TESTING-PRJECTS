# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/d7yoF;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final Lcom/easypaisaTweak/newpackage/d7yoF;->eRtvpvxbz:Ljava/lang/Object;
.field public final Lcom/easypaisaTweak/newpackage/d7yoF;->yWkiZmD:Ljava/lang/Object;

.method public constructor Lcom/easypaisaTweak/newpackage/d7yoF;-><init>(Ljava/lang/CharSequence;, Landroid/graphics/drawable/Drawable;)V
    .registers 3
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/d7yoF;->yWkiZmD:Ljava/lang/Object;
    0005: iput-object v2, v0, Lcom/easypaisaTweak/newpackage/d7yoF;->eRtvpvxbz:Ljava/lang/Object;
    0007: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/d7yoF;->equals(Ljava/lang/Object;)Z
    .registers 5
    0000: instance-of v0, v4, Lcom/easypaisaTweak/newpackage/d7yoF;
    0002: const/4 v1, #0
    0003: if-nez v0, 0006
    0005: return v1
    0006: check-cast v4, Lcom/easypaisaTweak/newpackage/d7yoF;
    0008: iget-object v0, v4, Lcom/easypaisaTweak/newpackage/d7yoF;->yWkiZmD:Ljava/lang/Object;
    000a: iget-object v2, v3, Lcom/easypaisaTweak/newpackage/d7yoF;->yWkiZmD:Ljava/lang/Object;
    000c: invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;, Ljava/lang/Object;)Z
    000f: move-result v0
    0010: if-eqz v0, 001d
    0012: iget-object v4, v4, Lcom/easypaisaTweak/newpackage/d7yoF;->eRtvpvxbz:Ljava/lang/Object;
    0014: iget-object v3, v3, Lcom/easypaisaTweak/newpackage/d7yoF;->eRtvpvxbz:Ljava/lang/Object;
    0016: invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;, Ljava/lang/Object;)Z
    0019: move-result v3
    001a: if-eqz v3, 001d
    001c: const/4 v1, #1
    001d: return v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/d7yoF;->hashCode()I
    .registers 3
    0000: const/4 v0, #0
    0001: iget-object v1, v2, Lcom/easypaisaTweak/newpackage/d7yoF;->yWkiZmD:Ljava/lang/Object;
    0003: if-nez v1, 0007
    0005: move v1, v0
    0006: goto 000b
    0007: invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    000a: move-result v1
    000b: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/d7yoF;->eRtvpvxbz:Ljava/lang/Object;
    000d: if-nez v2, 0010
    000f: goto 0014
    0010: invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    0013: move-result v0
    0014: xor-int v2, v1, v0
    0016: return v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/d7yoF;->toString()Ljava/lang/String;
    .registers 3
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const-string v1, 'Pair{'
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0007: iget-object v1, v2, Lcom/easypaisaTweak/newpackage/d7yoF;->yWkiZmD:Ljava/lang/Object;
    0009: invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    000c: move-result-object v1
    000d: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0010: const-string v1, ' '
    0012: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0015: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/d7yoF;->eRtvpvxbz:Ljava/lang/Object;
    0017: invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    001a: move-result-object v2
    001b: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001e: const-string v2, '}'
    0020: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0023: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0026: move-result-object v2
    0027: return-object v2
.end method
