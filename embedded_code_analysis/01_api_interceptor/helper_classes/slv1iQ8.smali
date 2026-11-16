# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/slv1iQ8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/ThreadFactory;

.field public final Lcom/easypaisaTweak/newpackage/slv1iQ8;->yWkiZmD:Ljava/util/concurrent/atomic/AtomicInteger;

.method public constructor Lcom/easypaisaTweak/newpackage/slv1iQ8;-><init>()V
    .registers 3
    0000: invoke-direct {v2}, Ljava/lang/Object;-><init>()V
    0003: new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
    0005: const/4 v1, #0
    0006: invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
    0009: iput-object v0, v2, Lcom/easypaisaTweak/newpackage/slv1iQ8;->yWkiZmD:Ljava/util/concurrent/atomic/AtomicInteger;
    000b: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/slv1iQ8;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3
    0000: new-instance v0, Ljava/lang/Thread;
    0002: invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    0005: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/slv1iQ8;->yWkiZmD:Ljava/util/concurrent/atomic/AtomicInteger;
    0007: invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    000a: move-result v1
    000b: invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    000e: move-result-object v1
    000f: filled-new-array {v1}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    0012: move-result-object v1
    0013: const-string v2, 'arch_disk_io_%d'
    0015: invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0018: move-result-object v1
    0019: invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    001c: return-object v0
.end method
