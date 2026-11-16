# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/Eb2Nbe;
.super Lcom/easypaisaTweak/newpackage/I9yof;
.source "SourceFile"

.field public final Lcom/easypaisaTweak/newpackage/Eb2Nbe;->Gi9lbFSu:Ljava/util/HashMap;

.method public constructor Lcom/easypaisaTweak/newpackage/Eb2Nbe;-><init>()V
    .registers 2
    0000: invoke-direct {v1}, Lcom/easypaisaTweak/newpackage/I9yof;-><init>()V
    0003: new-instance v0, Ljava/util/HashMap;
    0005: invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    0008: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/Eb2Nbe;->Gi9lbFSu:Ljava/util/HashMap;
    000a: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/Eb2Nbe;->eRtvpvxbz(Lcom/easypaisaTweak/newpackage/Z2wWt;)Ljava/lang/Object;
    .registers 3
    0000: invoke-super {v1, v2}, Lcom/easypaisaTweak/newpackage/I9yof;->eRtvpvxbz(Lcom/easypaisaTweak/newpackage/Z2wWt;)Ljava/lang/Object;
    0003: move-result-object v0
    0004: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/Eb2Nbe;->Gi9lbFSu:Ljava/util/HashMap;
    0006: invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    0009: return-object v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/Eb2Nbe;->yWkiZmD(Lcom/easypaisaTweak/newpackage/Z2wWt;)Lcom/easypaisaTweak/newpackage/J4IoO;
    .registers 2
    0000: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/Eb2Nbe;->Gi9lbFSu:Ljava/util/HashMap;
    0002: invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    0005: move-result-object v0
    0006: check-cast v0, Lcom/easypaisaTweak/newpackage/J4IoO;
    0008: return-object v0
.end method
