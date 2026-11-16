# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/uRlLxH;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Cloneable;

.field public static final static Lcom/easypaisaTweak/newpackage/uRlLxH;->SfW5jTpdE:Ljava/lang/Object;
.field public Lcom/easypaisaTweak/newpackage/uRlLxH;->eRtvpvxbz:[Ljava/lang/Object;
.field public Lcom/easypaisaTweak/newpackage/uRlLxH;->hO03fCMH:I
.field public Lcom/easypaisaTweak/newpackage/uRlLxH;->yWkiZmD:[I

.method public static constructor Lcom/easypaisaTweak/newpackage/uRlLxH;-><clinit>()V
    .registers 1
    0000: new-instance v0, Ljava/lang/Object;
    0002: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0005: sput-object v0, Lcom/easypaisaTweak/newpackage/uRlLxH;->SfW5jTpdE:Ljava/lang/Object;
    0007: return-void
.end method

.method public constructor Lcom/easypaisaTweak/newpackage/uRlLxH;-><init>()V
    .registers 5
    0000: invoke-direct {v4}, Ljava/lang/Object;-><init>()V
    0003: const/4 v0, #4
    0004: move v1, v0
    0005: const/16 v2, #32
    0007: const/16 v3, #40
    0009: if-ge v1, v2, 0016
    000b: const/4 v2, #1
    000c: shl-int/2addr v2, v1
    000d: add-int/lit8 v2, v2, #-12
    000f: if-gt v3, v2, 0013
    0011: move v3, v2
    0012: goto 0016
    0013: add-int/lit8 v1, v1, #1
    0015: goto 0005
    0016: div-int/2addr v3, v0
    0017: new-array v0, v3, [I
    0019: iput-object v0, v4, Lcom/easypaisaTweak/newpackage/uRlLxH;->yWkiZmD:[I
    001b: new-array v0, v3, [Ljava/lang/Object;
    001d: iput-object v0, v4, Lcom/easypaisaTweak/newpackage/uRlLxH;->eRtvpvxbz:[Ljava/lang/Object;
    001f: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/uRlLxH;->clone()Ljava/lang/Object;
    .registers 3
    0000: invoke-super {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    0003: move-result-object v0
    0004: check-cast v0, Lcom/easypaisaTweak/newpackage/uRlLxH;
    0006: iget-object v1, v2, Lcom/easypaisaTweak/newpackage/uRlLxH;->yWkiZmD:[I
    0008: invoke-virtual {v1}, [I->clone()Ljava/lang/Object;
    000b: move-result-object v1
    000c: check-cast v1, [I
    000e: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/uRlLxH;->yWkiZmD:[I
    0010: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/uRlLxH;->eRtvpvxbz:[Ljava/lang/Object;
    0012: invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;
    0015: move-result-object v2
    0016: check-cast v2, [Ljava/lang/Object;
    0018: iput-object v2, v0, Lcom/easypaisaTweak/newpackage/uRlLxH;->eRtvpvxbz:[Ljava/lang/Object;
    001a: return-object v0
    001b: move-exception v2
    001c: new-instance v0, Ljava/lang/AssertionError;
    001e: invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
    0021: throw v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/uRlLxH;->toString()Ljava/lang/String;
    .registers 4
    0000: iget v0, v3, Lcom/easypaisaTweak/newpackage/uRlLxH;->hO03fCMH:I
    0002: if-gtz v0, 0007
    0004: const-string v3, '{}'
    0006: return-object v3
    0007: new-instance v1, Ljava/lang/StringBuilder;
    0009: mul-int/lit8 v0, v0, #28
    000b: invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V
    000e: const/16 v0, #123
    0010: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    0013: const/4 v0, #0
    0014: iget v2, v3, Lcom/easypaisaTweak/newpackage/uRlLxH;->hO03fCMH:I
    0016: if-ge v0, v2, 003d
    0018: if-lez v0, 001f
    001a: const-string v2, ', '
    001c: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001f: iget-object v2, v3, Lcom/easypaisaTweak/newpackage/uRlLxH;->yWkiZmD:[I
    0021: aget v2, v2, v0
    0023: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    0026: const/16 v2, #61
    0028: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    002b: iget-object v2, v3, Lcom/easypaisaTweak/newpackage/uRlLxH;->eRtvpvxbz:[Ljava/lang/Object;
    002d: aget-object v2, v2, v0
    002f: if-eq v2, v3, 0035
    0031: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0034: goto 003a
    0035: const-string v2, '(this Map)'
    0037: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    003a: add-int/lit8 v0, v0, #1
    003c: goto 0014
    003d: const/16 v3, #125
    003f: invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    0042: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0045: move-result-object v3
    0046: return-object v3
.end method
