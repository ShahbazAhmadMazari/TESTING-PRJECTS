# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/NYjz3;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final Lcom/easypaisaTweak/newpackage/NYjz3;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/Z2wWt;
.field public Lcom/easypaisaTweak/newpackage/NYjz3;->yWkiZmD:Lcom/easypaisaTweak/newpackage/i10j1NTc;

.method public constructor Lcom/easypaisaTweak/newpackage/NYjz3;-><init>(Lcom/easypaisaTweak/newpackage/Z2wWt;, Lcom/easypaisaTweak/newpackage/i10j1NTc;)V
    .registers 4
    0000: invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    0003: sget v0, Lcom/easypaisaTweak/newpackage/CgHDC4o28;->yWkiZmD:I
    0005: iput-object v2, v1, Lcom/easypaisaTweak/newpackage/NYjz3;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/Z2wWt;
    0007: iput-object v3, v1, Lcom/easypaisaTweak/newpackage/NYjz3;->yWkiZmD:Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0009: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/NYjz3;->yWkiZmD(Lcom/easypaisaTweak/newpackage/QO9Az;, Lcom/easypaisaTweak/newpackage/uJgCpY;)V
    .registers 6
    0000: invoke-static {v5}, Lcom/easypaisaTweak/newpackage/E4lo6Jd;->hO03fCMH(Lcom/easypaisaTweak/newpackage/uJgCpY;)Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0003: move-result-object v0
    0004: iget-object v1, v3, Lcom/easypaisaTweak/newpackage/NYjz3;->yWkiZmD:Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0006: invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I
    0009: move-result v2
    000a: if-gez v2, 000d
    000c: move-object v1, v0
    000d: iput-object v1, v3, Lcom/easypaisaTweak/newpackage/NYjz3;->yWkiZmD:Lcom/easypaisaTweak/newpackage/i10j1NTc;
    000f: iget-object v1, v3, Lcom/easypaisaTweak/newpackage/NYjz3;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/Z2wWt;
    0011: invoke-interface {v1, v4, v5}, Lcom/easypaisaTweak/newpackage/Z2wWt;->yWkiZmD(Lcom/easypaisaTweak/newpackage/QO9Az;, Lcom/easypaisaTweak/newpackage/uJgCpY;)V
    0014: iput-object v0, v3, Lcom/easypaisaTweak/newpackage/NYjz3;->yWkiZmD:Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0016: return-void
.end method
