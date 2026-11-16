# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/dD14jeV;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final Lcom/easypaisaTweak/newpackage/dD14jeV;->Eb2Nbe:Ljava/util/ArrayList;
.field public Lcom/easypaisaTweak/newpackage/dD14jeV;->Gi9lbFSu:Ljava/lang/CharSequence;
.field public Lcom/easypaisaTweak/newpackage/dD14jeV;->SfW5jTpdE:Ljava/lang/CharSequence;
.field public Lcom/easypaisaTweak/newpackage/dD14jeV;->UjNghiE:I
.field public Lcom/easypaisaTweak/newpackage/dD14jeV;->XywNW:Z
.field public final Lcom/easypaisaTweak/newpackage/dD14jeV;->ZDfAQYocn5:Z
.field public final Lcom/easypaisaTweak/newpackage/dD14jeV;->ZjVQ1KP:Landroid/app/Notification;
.field public final Lcom/easypaisaTweak/newpackage/dD14jeV;->eRtvpvxbz:Ljava/util/ArrayList;
.field public final Lcom/easypaisaTweak/newpackage/dD14jeV;->hO03fCMH:Ljava/util/ArrayList;
.field public Lcom/easypaisaTweak/newpackage/dD14jeV;->hXElriBC2:Lcom/easypaisaTweak/newpackage/QCX5gBqyp;
.field public Lcom/easypaisaTweak/newpackage/dD14jeV;->k8oPY:Landroid/os/Bundle;
.field public final Lcom/easypaisaTweak/newpackage/dD14jeV;->nWvTLA:Z
.field public Lcom/easypaisaTweak/newpackage/dD14jeV;->slv1iQ8:Ljava/lang/String;
.field public final Lcom/easypaisaTweak/newpackage/dD14jeV;->yWkiZmD:Landroid/content/Context;
.field public Lcom/easypaisaTweak/newpackage/dD14jeV;->zkF6VM:Landroid/app/PendingIntent;

.method public constructor Lcom/easypaisaTweak/newpackage/dD14jeV;-><init>(Landroid/content/Context;)V
    .registers 7
    0000: invoke-direct {v5}, Ljava/lang/Object;-><init>()V
    0003: new-instance v0, Ljava/util/ArrayList;
    0005: invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    0008: iput-object v0, v5, Lcom/easypaisaTweak/newpackage/dD14jeV;->eRtvpvxbz:Ljava/util/ArrayList;
    000a: new-instance v0, Ljava/util/ArrayList;
    000c: invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    000f: iput-object v0, v5, Lcom/easypaisaTweak/newpackage/dD14jeV;->hO03fCMH:Ljava/util/ArrayList;
    0011: const/4 v0, #1
    0012: iput-boolean v0, v5, Lcom/easypaisaTweak/newpackage/dD14jeV;->ZDfAQYocn5:Z
    0014: const/4 v1, #0
    0015: iput-boolean v1, v5, Lcom/easypaisaTweak/newpackage/dD14jeV;->XywNW:Z
    0017: new-instance v2, Landroid/app/Notification;
    0019: invoke-direct {v2}, Landroid/app/Notification;-><init>()V
    001c: iput-object v2, v5, Lcom/easypaisaTweak/newpackage/dD14jeV;->ZjVQ1KP:Landroid/app/Notification;
    001e: iput-object v6, v5, Lcom/easypaisaTweak/newpackage/dD14jeV;->yWkiZmD:Landroid/content/Context;
    0020: const/4 v6, #0
    0021: iput-object v6, v5, Lcom/easypaisaTweak/newpackage/dD14jeV;->slv1iQ8:Ljava/lang/String;
    0023: invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    0026: move-result-wide v3
    0027: iput-wide v3, v2, Landroid/app/Notification;->when:J
    0029: const/4 v6, #-1
    002a: iput v6, v2, Landroid/app/Notification;->audioStreamType:I
    002c: iput v1, v5, Lcom/easypaisaTweak/newpackage/dD14jeV;->UjNghiE:I
    002e: new-instance v6, Ljava/util/ArrayList;
    0030: invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    0033: iput-object v6, v5, Lcom/easypaisaTweak/newpackage/dD14jeV;->Eb2Nbe:Ljava/util/ArrayList;
    0035: iput-boolean v0, v5, Lcom/easypaisaTweak/newpackage/dD14jeV;->nWvTLA:Z
    0037: return-void
.end method

.method public static Lcom/easypaisaTweak/newpackage/dD14jeV;->eRtvpvxbz(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3
    0000: if-nez v2, 0003
    0002: return-object v2
    0003: invoke-virtual {v2}, Ljava/lang/String;->length()I
    0006: move-result v0
    0007: const/16 v1, #5120
    0009: if-le v0, v1, 0010
    000b: const/4 v0, #0
    000c: invoke-virtual {v2, v0, v1}, Ljava/lang/String;->subSequence(I, I)Ljava/lang/CharSequence;
    000f: move-result-object v2
    0010: return-object v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/dD14jeV;->yWkiZmD()Landroid/os/Bundle;
    .registers 2
    0000: iget-object v0, v1, Lcom/easypaisaTweak/newpackage/dD14jeV;->k8oPY:Landroid/os/Bundle;
    0002: if-nez v0, 000b
    0004: new-instance v0, Landroid/os/Bundle;
    0006: invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    0009: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/dD14jeV;->k8oPY:Landroid/os/Bundle;
    000b: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/dD14jeV;->k8oPY:Landroid/os/Bundle;
    000d: return-object v1
.end method
