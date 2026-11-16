# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract Lcom/easypaisaTweak/newpackage/tG3T8WTT;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Iterator;
.implements Lcom/easypaisaTweak/newpackage/GpKhqkq;

.field public Lcom/easypaisaTweak/newpackage/tG3T8WTT;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/J4IoO;
.field public Lcom/easypaisaTweak/newpackage/tG3T8WTT;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;

.method public constructor Lcom/easypaisaTweak/newpackage/tG3T8WTT;-><init>(Lcom/easypaisaTweak/newpackage/J4IoO;, Lcom/easypaisaTweak/newpackage/J4IoO;)V
    .registers 3
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: iput-object v2, v0, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    0005: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/J4IoO;
    0007: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/tG3T8WTT;->eRtvpvxbz()Lcom/easypaisaTweak/newpackage/J4IoO;
    .registers 3
    0000: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/J4IoO;
    0002: iget-object v1, v2, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    0004: if-eq v0, v1, 0017
    0006: if-nez v1, 0009
    0008: goto 0017
    0009: check-cast v2, Lcom/easypaisaTweak/newpackage/cSCqVJJdV;
    000b: iget v2, v2, Lcom/easypaisaTweak/newpackage/cSCqVJJdV;->hO03fCMH:I
    000d: packed-switch v2, 001a
    0010: goto 0014
    0011: iget-object v2, v0, Lcom/easypaisaTweak/newpackage/J4IoO;->hO03fCMH:Lcom/easypaisaTweak/newpackage/J4IoO;
    0013: goto 0016
    0014: iget-object v2, v0, Lcom/easypaisaTweak/newpackage/J4IoO;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/J4IoO;
    0016: return-object v2
    0017: const/4 v2, #0
    0018: return-object v2
    0019: nop
    001a: nop
    001b: move v0, v0
    001c: nop
    001d: nop
    001e: move-wide v0, v0
    001f: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/tG3T8WTT;->hasNext()Z
    .registers 1
    0000: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/J4IoO;
    0002: if-eqz v0, 0006
    0004: const/4 v0, #1
    0005: goto 0007
    0006: const/4 v0, #0
    0007: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/tG3T8WTT;->next()Ljava/lang/Object;
    .registers 3
    0000: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/J4IoO;
    0002: invoke-virtual {v2}, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->eRtvpvxbz()Lcom/easypaisaTweak/newpackage/J4IoO;
    0005: move-result-object v1
    0006: iput-object v1, v2, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/J4IoO;
    0008: return-object v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/tG3T8WTT;->yWkiZmD(Lcom/easypaisaTweak/newpackage/J4IoO;)V
    .registers 4
    0000: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    0002: if-ne v0, v3, 000d
    0004: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/J4IoO;
    0006: if-ne v3, v0, 000d
    0008: const/4 v0, #0
    0009: iput-object v0, v2, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/J4IoO;
    000b: iput-object v0, v2, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    000d: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    000f: if-ne v0, v3, 0021
    0011: move-object v1, v2
    0012: check-cast v1, Lcom/easypaisaTweak/newpackage/cSCqVJJdV;
    0014: iget v1, v1, Lcom/easypaisaTweak/newpackage/cSCqVJJdV;->hO03fCMH:I
    0016: packed-switch v1, 002c
    0019: goto 001d
    001a: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/J4IoO;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/J4IoO;
    001c: goto 001f
    001d: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/J4IoO;->hO03fCMH:Lcom/easypaisaTweak/newpackage/J4IoO;
    001f: iput-object v0, v2, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    0021: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/J4IoO;
    0023: if-ne v0, v3, 002b
    0025: invoke-virtual {v2}, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->eRtvpvxbz()Lcom/easypaisaTweak/newpackage/J4IoO;
    0028: move-result-object v3
    0029: iput-object v3, v2, Lcom/easypaisaTweak/newpackage/tG3T8WTT;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/J4IoO;
    002b: return-void
    002c: nop
    002d: move v0, v0
    002e: nop
    002f: nop
    0030: move-wide v0, v0
    0031: nop
.end method
