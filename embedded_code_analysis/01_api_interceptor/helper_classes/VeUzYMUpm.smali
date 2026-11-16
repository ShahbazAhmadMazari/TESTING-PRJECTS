# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/VeUzYMUpm;
.super Ljava/io/Writer;
.source "SourceFile"

.field public final Lcom/easypaisaTweak/newpackage/VeUzYMUpm;->eRtvpvxbz:Ljava/lang/StringBuilder;
.field public final Lcom/easypaisaTweak/newpackage/VeUzYMUpm;->yWkiZmD:Ljava/lang/String;

.method public constructor Lcom/easypaisaTweak/newpackage/VeUzYMUpm;-><init>()V
    .registers 3
    0000: invoke-direct {v2}, Ljava/io/Writer;-><init>()V
    0003: new-instance v0, Ljava/lang/StringBuilder;
    0005: const/16 v1, #128
    0007: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
    000a: iput-object v0, v2, Lcom/easypaisaTweak/newpackage/VeUzYMUpm;->eRtvpvxbz:Ljava/lang/StringBuilder;
    000c: const-string v0, 'FragmentManager'
    000e: iput-object v0, v2, Lcom/easypaisaTweak/newpackage/VeUzYMUpm;->yWkiZmD:Ljava/lang/String;
    0010: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/VeUzYMUpm;->close()V
    .registers 1
    0000: invoke-virtual {v0}, Lcom/easypaisaTweak/newpackage/VeUzYMUpm;->yWkiZmD()V
    0003: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/VeUzYMUpm;->flush()V
    .registers 1
    0000: invoke-virtual {v0}, Lcom/easypaisaTweak/newpackage/VeUzYMUpm;->yWkiZmD()V
    0003: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/VeUzYMUpm;->write([C, I, I)V
    .registers 7
    0000: const/4 v0, #0
    0001: if-ge v0, v6, 0017
    0003: add-int v1, v5, v0
    0005: aget-char v1, v4, v1
    0007: const/16 v2, #10
    0009: if-ne v1, v2, 000f
    000b: invoke-virtual {v3}, Lcom/easypaisaTweak/newpackage/VeUzYMUpm;->yWkiZmD()V
    000e: goto 0014
    000f: iget-object v2, v3, Lcom/easypaisaTweak/newpackage/VeUzYMUpm;->eRtvpvxbz:Ljava/lang/StringBuilder;
    0011: invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    0014: add-int/lit8 v0, v0, #1
    0016: goto 0001
    0017: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/VeUzYMUpm;->yWkiZmD()V
    .registers 3
    0000: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/VeUzYMUpm;->eRtvpvxbz:Ljava/lang/StringBuilder;
    0002: invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    0005: move-result v1
    0006: if-lez v1, 0019
    0008: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/VeUzYMUpm;->yWkiZmD:Ljava/lang/String;
    000a: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    000d: move-result-object v1
    000e: invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;, Ljava/lang/String;)I
    0011: const/4 v2, #0
    0012: invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
    0015: move-result v1
    0016: invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(I, I)Ljava/lang/StringBuilder;
    0019: return-void
.end method
