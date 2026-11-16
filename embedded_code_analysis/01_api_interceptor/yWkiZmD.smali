# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final synthetic Lcom/easypaisaTweak/yWkiZmD;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;

.field public final synthetic Lcom/easypaisaTweak/yWkiZmD;->eRtvpvxbz:Ljava/lang/Object;
.field public final synthetic Lcom/easypaisaTweak/yWkiZmD;->hO03fCMH:Ljava/lang/Object;
.field public final synthetic Lcom/easypaisaTweak/yWkiZmD;->yWkiZmD:I

.method public synthetic constructor Lcom/easypaisaTweak/yWkiZmD;-><init>(Ljava/lang/Object;, Ljava/lang/Object;, I)V
    .registers 4
    0000: iput v3, v0, Lcom/easypaisaTweak/yWkiZmD;->yWkiZmD:I
    0002: iput-object v1, v0, Lcom/easypaisaTweak/yWkiZmD;->eRtvpvxbz:Ljava/lang/Object;
    0004: iput-object v2, v0, Lcom/easypaisaTweak/yWkiZmD;->hO03fCMH:Ljava/lang/Object;
    0006: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0009: return-void
.end method

.method public final Lcom/easypaisaTweak/yWkiZmD;->run()V
    .registers 3
    0000: iget v0, v2, Lcom/easypaisaTweak/yWkiZmD;->yWkiZmD:I
    0002: iget-object v1, v2, Lcom/easypaisaTweak/yWkiZmD;->hO03fCMH:Ljava/lang/Object;
    0004: iget-object v2, v2, Lcom/easypaisaTweak/yWkiZmD;->eRtvpvxbz:Ljava/lang/Object;
    0006: packed-switch v0, 0022
    0009: goto 001a
    000a: check-cast v2, Lpk/com/telenor/phoenix/views/moneyTransferRevamp2021/activities/MoneyTransferEnterAmountActivity;
    000c: check-cast v1, Ljava/lang/String;
    000e: invoke-static {v2, v1}, Lcom/easypaisaTweak/SmaliEnterPoint;->Gi9lbFSu(Lpk/com/telenor/phoenix/views/moneyTransferRevamp2021/activities/MoneyTransferEnterAmountActivity;, Ljava/lang/String;)V
    0011: return-void
    0012: check-cast v2, Lorg/json/JSONArray;
    0014: check-cast v1, Lorg/json/JSONArray;
    0016: invoke-static {v2, v1}, Lcom/easypaisaTweak/SmaliEnterPoint$1;->yWkiZmD(Lorg/json/JSONArray;, Lorg/json/JSONArray;)V
    0019: return-void
    001a: check-cast v2, Landroidx/appcompat/widget/AppCompatEditText;
    001c: check-cast v1, Ljava/lang/String;
    001e: invoke-static {v2, v1}, Lcom/easypaisaTweak/SmaliEnterPoint;->SfW5jTpdE(Landroidx/appcompat/widget/AppCompatEditText;, Ljava/lang/String;)V
    0021: return-void
    0022: nop
    0023: move/from16 v0, v0
    0025: nop
    0026: move-result-object v0
    0027: nop
    0028: move-wide v0, v0
    0029: nop
.end method
