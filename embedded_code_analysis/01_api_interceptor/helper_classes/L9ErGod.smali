# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract Lcom/easypaisaTweak/newpackage/L9ErGod;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static final static Lcom/easypaisaTweak/newpackage/L9ErGod;->UjNghiE:Ljava/lang/Object;
.field public Lcom/easypaisaTweak/newpackage/L9ErGod;->Gi9lbFSu:Z
.field public bridge Lcom/easypaisaTweak/newpackage/L9ErGod;->SfW5jTpdE:Ljava/lang/Object;
.field public final Lcom/easypaisaTweak/newpackage/L9ErGod;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/I9yof;
.field public bridge Lcom/easypaisaTweak/newpackage/L9ErGod;->hO03fCMH:Ljava/lang/Object;
.field public final Lcom/easypaisaTweak/newpackage/L9ErGod;->yWkiZmD:Ljava/lang/Object;
.field public Lcom/easypaisaTweak/newpackage/L9ErGod;->zkF6VM:Z

.method public static constructor Lcom/easypaisaTweak/newpackage/L9ErGod;-><clinit>()V
    .registers 1
    0000: new-instance v0, Ljava/lang/Object;
    0002: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0005: sput-object v0, Lcom/easypaisaTweak/newpackage/L9ErGod;->UjNghiE:Ljava/lang/Object;
    0007: return-void
.end method

.method public constructor Lcom/easypaisaTweak/newpackage/L9ErGod;-><init>()V
    .registers 2
    0000: invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    0003: new-instance v0, Ljava/lang/Object;
    0005: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0008: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/L9ErGod;->yWkiZmD:Ljava/lang/Object;
    000a: new-instance v0, Lcom/easypaisaTweak/newpackage/I9yof;
    000c: invoke-direct {v0}, Lcom/easypaisaTweak/newpackage/I9yof;-><init>()V
    000f: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/L9ErGod;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/I9yof;
    0011: sget-object v0, Lcom/easypaisaTweak/newpackage/L9ErGod;->UjNghiE:Ljava/lang/Object;
    0013: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/L9ErGod;->hO03fCMH:Ljava/lang/Object;
    0015: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/L9ErGod;->SfW5jTpdE:Ljava/lang/Object;
    0017: return-void
.end method

.method public static Lcom/easypaisaTweak/newpackage/L9ErGod;->yWkiZmD(Ljava/lang/String;)V
    .registers 4
    0000: sget-object v0, Lcom/easypaisaTweak/newpackage/yWkiZmD;->Gi9lbFSu:Lcom/easypaisaTweak/newpackage/yWkiZmD;
    0002: if-eqz v0, 0007
    0004: sget-object v0, Lcom/easypaisaTweak/newpackage/yWkiZmD;->Gi9lbFSu:Lcom/easypaisaTweak/newpackage/yWkiZmD;
    0006: goto 0018
    0007: const-class v0, Lcom/easypaisaTweak/newpackage/yWkiZmD;
    0009: monitor-enter v0
    000a: sget-object v1, Lcom/easypaisaTweak/newpackage/yWkiZmD;->Gi9lbFSu:Lcom/easypaisaTweak/newpackage/yWkiZmD;
    000c: if-nez v1, 0015
    000e: new-instance v1, Lcom/easypaisaTweak/newpackage/yWkiZmD;
    0010: invoke-direct {v1}, Lcom/easypaisaTweak/newpackage/yWkiZmD;-><init>()V
    0013: sput-object v1, Lcom/easypaisaTweak/newpackage/yWkiZmD;->Gi9lbFSu:Lcom/easypaisaTweak/newpackage/yWkiZmD;
    0015: monitor-exit v0
    0016: sget-object v0, Lcom/easypaisaTweak/newpackage/yWkiZmD;->Gi9lbFSu:Lcom/easypaisaTweak/newpackage/yWkiZmD;
    0018: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/yWkiZmD;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/nWvTLA;
    001a: invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    001d: invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    0020: move-result-object v0
    0021: invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;
    0024: move-result-object v0
    0025: invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    0028: move-result-object v1
    0029: if-ne v0, v1, 002d
    002b: const/4 v0, #1
    002c: goto 002e
    002d: const/4 v0, #0
    002e: if-eqz v0, 0031
    0030: return-void
    0031: new-instance v0, Ljava/lang/IllegalStateException;
    0033: const-string v1, 'Cannot invoke '
    0035: const-string v2, ' on a background thread'
    0037: invoke-static {v1, v3, v2}, Lcom/easypaisaTweak/newpackage/ZjVQ1KP;->eRtvpvxbz(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    003a: move-result-object v3
    003b: invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    003e: throw v0
    003f: move-exception v3
    0040: monitor-exit v0
    0041: throw v3
.end method
