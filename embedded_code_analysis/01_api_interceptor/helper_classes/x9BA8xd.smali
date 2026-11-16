# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final synthetic Lcom/easypaisaTweak/newpackage/x9BA8xd;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;

.field public final synthetic Lcom/easypaisaTweak/newpackage/x9BA8xd;->eRtvpvxbz:Ljava/lang/Object;
.field public final synthetic Lcom/easypaisaTweak/newpackage/x9BA8xd;->yWkiZmD:I

.method public synthetic constructor Lcom/easypaisaTweak/newpackage/x9BA8xd;-><init>(I, Ljava/lang/Object;)V
    .registers 3
    0000: iput v1, v0, Lcom/easypaisaTweak/newpackage/x9BA8xd;->yWkiZmD:I
    0002: iput-object v2, v0, Lcom/easypaisaTweak/newpackage/x9BA8xd;->eRtvpvxbz:Ljava/lang/Object;
    0004: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0007: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/x9BA8xd;->run()V
    .registers 2
    0000: iget v0, v1, Lcom/easypaisaTweak/newpackage/x9BA8xd;->yWkiZmD:I
    0002: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/x9BA8xd;->eRtvpvxbz:Ljava/lang/Object;
    0004: packed-switch v0, 001a
    0007: goto 0014
    0008: check-cast v1, Landroid/widget/Toast;
    000a: invoke-static {v1}, Lcom/easypaisaTweak/SmaliEnterPoint;->zkF6VM(Landroid/widget/Toast;)V
    000d: return-void
    000e: check-cast v1, Landroid/os/Handler;
    0010: invoke-static {v1}, Lcom/easypaisaTweak/SmaliEnterPoint;->yWkiZmD(Landroid/os/Handler;)V
    0013: return-void
    0014: check-cast v1, Ljava/lang/String;
    0016: invoke-static {v1}, Lcom/easypaisaTweak/WalletApp;->yWkiZmD(Ljava/lang/String;)V
    0019: return-void
    001a: nop
    001b: move/from16 v0, v0
    001d: nop
    001e: move-result v0
    001f: nop
    0020: move-wide v0, v0
    0021: nop
.end method
