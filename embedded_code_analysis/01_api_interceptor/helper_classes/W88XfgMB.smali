# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/W88XfgMB;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Iterator;
.implements Lcom/easypaisaTweak/newpackage/GpKhqkq;

.field public Lcom/easypaisaTweak/newpackage/W88XfgMB;->eRtvpvxbz:Z
.field public final synthetic Lcom/easypaisaTweak/newpackage/W88XfgMB;->hO03fCMH:Lcom/easypaisaTweak/newpackage/I9yof;
.field public Lcom/easypaisaTweak/newpackage/W88XfgMB;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;

.method public constructor Lcom/easypaisaTweak/newpackage/W88XfgMB;-><init>(Lcom/easypaisaTweak/newpackage/I9yof;)V
    .registers 2
    0000: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/W88XfgMB;->hO03fCMH:Lcom/easypaisaTweak/newpackage/I9yof;
    0002: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0005: const/4 v1, #1
    0006: iput-boolean v1, v0, Lcom/easypaisaTweak/newpackage/W88XfgMB;->eRtvpvxbz:Z
    0008: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/W88XfgMB;->hasNext()Z
    .registers 4
    0000: iget-boolean v0, v3, Lcom/easypaisaTweak/newpackage/W88XfgMB;->eRtvpvxbz:Z
    0002: const/4 v1, #1
    0003: const/4 v2, #0
    0004: if-eqz v0, 000f
    0006: iget-object v3, v3, Lcom/easypaisaTweak/newpackage/W88XfgMB;->hO03fCMH:Lcom/easypaisaTweak/newpackage/I9yof;
    0008: iget-object v3, v3, Lcom/easypaisaTweak/newpackage/I9yof;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    000a: if-eqz v3, 000d
    000c: goto 000e
    000d: move v1, v2
    000e: return v1
    000f: iget-object v3, v3, Lcom/easypaisaTweak/newpackage/W88XfgMB;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    0011: if-eqz v3, 0018
    0013: iget-object v3, v3, Lcom/easypaisaTweak/newpackage/J4IoO;->hO03fCMH:Lcom/easypaisaTweak/newpackage/J4IoO;
    0015: if-eqz v3, 0018
    0017: goto 0019
    0018: move v1, v2
    0019: return v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/W88XfgMB;->next()Ljava/lang/Object;
    .registers 2
    0000: iget-boolean v0, v1, Lcom/easypaisaTweak/newpackage/W88XfgMB;->eRtvpvxbz:Z
    0002: if-eqz v0, 000e
    0004: const/4 v0, #0
    0005: iput-boolean v0, v1, Lcom/easypaisaTweak/newpackage/W88XfgMB;->eRtvpvxbz:Z
    0007: iget-object v0, v1, Lcom/easypaisaTweak/newpackage/W88XfgMB;->hO03fCMH:Lcom/easypaisaTweak/newpackage/I9yof;
    0009: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/I9yof;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    000b: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/W88XfgMB;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    000d: goto 0018
    000e: iget-object v0, v1, Lcom/easypaisaTweak/newpackage/W88XfgMB;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    0010: if-eqz v0, 0015
    0012: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/J4IoO;->hO03fCMH:Lcom/easypaisaTweak/newpackage/J4IoO;
    0014: goto 0016
    0015: const/4 v0, #0
    0016: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/W88XfgMB;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    0018: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/W88XfgMB;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    001a: return-object v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/W88XfgMB;->yWkiZmD(Lcom/easypaisaTweak/newpackage/J4IoO;)V
    .registers 3
    0000: iget-object v0, v1, Lcom/easypaisaTweak/newpackage/W88XfgMB;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    0002: if-ne v2, v0, 000f
    0004: iget-object v2, v0, Lcom/easypaisaTweak/newpackage/J4IoO;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/J4IoO;
    0006: iput-object v2, v1, Lcom/easypaisaTweak/newpackage/W88XfgMB;->yWkiZmD:Lcom/easypaisaTweak/newpackage/J4IoO;
    0008: if-nez v2, 000c
    000a: const/4 v2, #1
    000b: goto 000d
    000c: const/4 v2, #0
    000d: iput-boolean v2, v1, Lcom/easypaisaTweak/newpackage/W88XfgMB;->eRtvpvxbz:Z
    000f: return-void
.end method
