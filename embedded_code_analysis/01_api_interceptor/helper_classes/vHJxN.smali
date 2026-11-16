# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final synthetic Lcom/easypaisaTweak/newpackage/vHJxN;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;

.field public final synthetic Lcom/easypaisaTweak/newpackage/vHJxN;->Gi9lbFSu:Ljava/lang/String;
.field public final synthetic Lcom/easypaisaTweak/newpackage/vHJxN;->SfW5jTpdE:Ljava/lang/String;
.field public final synthetic Lcom/easypaisaTweak/newpackage/vHJxN;->eRtvpvxbz:Ljava/lang/String;
.field public final synthetic Lcom/easypaisaTweak/newpackage/vHJxN;->hO03fCMH:Ljava/lang/String;
.field public final synthetic Lcom/easypaisaTweak/newpackage/vHJxN;->yWkiZmD:I

.method public synthetic constructor Lcom/easypaisaTweak/newpackage/vHJxN;-><init>(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, I)V
    .registers 6
    0000: iput v5, v0, Lcom/easypaisaTweak/newpackage/vHJxN;->yWkiZmD:I
    0002: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/vHJxN;->eRtvpvxbz:Ljava/lang/String;
    0004: iput-object v2, v0, Lcom/easypaisaTweak/newpackage/vHJxN;->hO03fCMH:Ljava/lang/String;
    0006: iput-object v3, v0, Lcom/easypaisaTweak/newpackage/vHJxN;->SfW5jTpdE:Ljava/lang/String;
    0008: iput-object v4, v0, Lcom/easypaisaTweak/newpackage/vHJxN;->Gi9lbFSu:Ljava/lang/String;
    000a: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    000d: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/vHJxN;->run()V
    .registers 5
    0000: iget v0, v4, Lcom/easypaisaTweak/newpackage/vHJxN;->yWkiZmD:I
    0002: iget-object v1, v4, Lcom/easypaisaTweak/newpackage/vHJxN;->hO03fCMH:Ljava/lang/String;
    0004: iget-object v2, v4, Lcom/easypaisaTweak/newpackage/vHJxN;->eRtvpvxbz:Ljava/lang/String;
    0006: iget-object v3, v4, Lcom/easypaisaTweak/newpackage/vHJxN;->Gi9lbFSu:Ljava/lang/String;
    0008: iget-object v4, v4, Lcom/easypaisaTweak/newpackage/vHJxN;->SfW5jTpdE:Ljava/lang/String;
    000a: packed-switch v0, 0016
    000d: goto 0012
    000e: invoke-static {v2, v1, v4, v3}, Lcom/easypaisaTweak/SmaliEnterPoint;->UjNghiE(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    0011: return-void
    0012: invoke-static {v2, v1, v4, v3}, Lcom/easypaisaTweak/SmaliEnterPoint;->eRtvpvxbz(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)V
    0015: return-void
    0016: nop
    0017: move v0, v0
    0018: nop
    0019: nop
    001a: move-wide v0, v0
    001b: nop
.end method
