# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/JOVhPGk;
.super Lcom/easypaisaTweak/newpackage/J1APl;
.source "SourceFile"

.field public final Lcom/easypaisaTweak/newpackage/JOVhPGk;->yWkiZmD:Lcom/easypaisaTweak/newpackage/uRlLxH;

.method public static constructor Lcom/easypaisaTweak/newpackage/JOVhPGk;-><clinit>()V
    .registers 2
    0000: new-instance v0, Lcom/easypaisaTweak/newpackage/lXPLz;
    0002: const/4 v1, #1
    0003: invoke-direct {v0, v1}, Lcom/easypaisaTweak/newpackage/lXPLz;-><init>(I)V
    0006: return-void
.end method

.method public constructor Lcom/easypaisaTweak/newpackage/JOVhPGk;-><init>()V
    .registers 2
    0000: invoke-direct {v1}, Lcom/easypaisaTweak/newpackage/J1APl;-><init>()V
    0003: new-instance v0, Lcom/easypaisaTweak/newpackage/uRlLxH;
    0005: invoke-direct {v0}, Lcom/easypaisaTweak/newpackage/uRlLxH;-><init>()V
    0008: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/JOVhPGk;->yWkiZmD:Lcom/easypaisaTweak/newpackage/uRlLxH;
    000a: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/JOVhPGk;->yWkiZmD()V
    .registers 6
    0000: iget-object v5, v5, Lcom/easypaisaTweak/newpackage/JOVhPGk;->yWkiZmD:Lcom/easypaisaTweak/newpackage/uRlLxH;
    0002: iget v0, v5, Lcom/easypaisaTweak/newpackage/uRlLxH;->hO03fCMH:I
    0004: const/4 v1, #0
    0005: const/4 v2, #0
    0006: if-gtz v0, 0015
    0008: iget-object v3, v5, Lcom/easypaisaTweak/newpackage/uRlLxH;->eRtvpvxbz:[Ljava/lang/Object;
    000a: move v4, v2
    000b: if-ge v4, v0, 0012
    000d: aput-object v1, v3, v4
    000f: add-int/lit8 v4, v4, #1
    0011: goto 000b
    0012: iput v2, v5, Lcom/easypaisaTweak/newpackage/uRlLxH;->hO03fCMH:I
    0014: return-void
    0015: iget-object v5, v5, Lcom/easypaisaTweak/newpackage/uRlLxH;->eRtvpvxbz:[Ljava/lang/Object;
    0017: aget-object v5, v5, v2
    0019: invoke-static {v5}, Lcom/easypaisaTweak/newpackage/ZjVQ1KP;->hO03fCMH(Ljava/lang/Object;)V
    001c: throw v1
.end method
