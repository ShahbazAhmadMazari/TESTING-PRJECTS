# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/nWvTLA;
.super Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;
.source "SourceFile"

.field public final Lcom/easypaisaTweak/newpackage/nWvTLA;->SfW5jTpdE:Ljava/lang/Object;

.method public constructor Lcom/easypaisaTweak/newpackage/nWvTLA;-><init>()V
    .registers 2
    0000: invoke-direct {v1}, Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;-><init>()V
    0003: new-instance v0, Ljava/lang/Object;
    0005: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0008: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/nWvTLA;->SfW5jTpdE:Ljava/lang/Object;
    000a: new-instance v1, Lcom/easypaisaTweak/newpackage/slv1iQ8;
    000c: invoke-direct {v1}, Lcom/easypaisaTweak/newpackage/slv1iQ8;-><init>()V
    000f: const/4 v0, #2
    0010: invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I, Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    0013: return-void
.end method
