# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/cDWP5;
.super Ljava/lang/Object;
.source "SourceFile"

.field public final Lcom/easypaisaTweak/newpackage/cDWP5;->Gi9lbFSu:I
.field public final Lcom/easypaisaTweak/newpackage/cDWP5;->SfW5jTpdE:Z
.field public final Lcom/easypaisaTweak/newpackage/cDWP5;->UjNghiE:Landroid/app/PendingIntent;
.field public Lcom/easypaisaTweak/newpackage/cDWP5;->eRtvpvxbz:Landroidx/core/graphics/drawable/IconCompat;
.field public final Lcom/easypaisaTweak/newpackage/cDWP5;->hO03fCMH:Z
.field public final Lcom/easypaisaTweak/newpackage/cDWP5;->yWkiZmD:Landroid/os/Bundle;
.field public final Lcom/easypaisaTweak/newpackage/cDWP5;->zkF6VM:Ljava/lang/CharSequence;

.method public constructor Lcom/easypaisaTweak/newpackage/cDWP5;-><init>(I, Ljava/lang/String;, Landroid/app/PendingIntent;)V
    .registers 8
    0000: if-nez v5, 0004
    0002: const/4 v5, #0
    0003: goto 0008
    0004: invoke-static {v5}, Landroidx/core/graphics/drawable/IconCompat;->yWkiZmD(I)Landroidx/core/graphics/drawable/IconCompat;
    0007: move-result-object v5
    0008: new-instance v0, Landroid/os/Bundle;
    000a: invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    000d: invoke-direct {v4}, Ljava/lang/Object;-><init>()V
    0010: const/4 v1, #1
    0011: iput-boolean v1, v4, Lcom/easypaisaTweak/newpackage/cDWP5;->SfW5jTpdE:Z
    0013: iput-object v5, v4, Lcom/easypaisaTweak/newpackage/cDWP5;->eRtvpvxbz:Landroidx/core/graphics/drawable/IconCompat;
    0015: if-eqz v5, 002d
    0017: iget v2, v5, Landroidx/core/graphics/drawable/IconCompat;->yWkiZmD:I
    0019: const/4 v3, #-1
    001a: if-ne v2, v3, 0024
    001c: iget-object v2, v5, Landroidx/core/graphics/drawable/IconCompat;->eRtvpvxbz:Ljava/lang/Object;
    001e: check-cast v2, Landroid/graphics/drawable/Icon;
    0020: invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I
    0023: move-result v2
    0024: const/4 v3, #2
    0025: if-ne v2, v3, 002d
    0027: invoke-virtual {v5}, Landroidx/core/graphics/drawable/IconCompat;->eRtvpvxbz()I
    002a: move-result v5
    002b: iput v5, v4, Lcom/easypaisaTweak/newpackage/cDWP5;->Gi9lbFSu:I
    002d: invoke-static {v6}, Lcom/easypaisaTweak/newpackage/dD14jeV;->eRtvpvxbz(Ljava/lang/String;)Ljava/lang/CharSequence;
    0030: move-result-object v5
    0031: iput-object v5, v4, Lcom/easypaisaTweak/newpackage/cDWP5;->zkF6VM:Ljava/lang/CharSequence;
    0033: iput-object v7, v4, Lcom/easypaisaTweak/newpackage/cDWP5;->UjNghiE:Landroid/app/PendingIntent;
    0035: iput-object v0, v4, Lcom/easypaisaTweak/newpackage/cDWP5;->yWkiZmD:Landroid/os/Bundle;
    0037: iput-boolean v1, v4, Lcom/easypaisaTweak/newpackage/cDWP5;->hO03fCMH:Z
    0039: iput-boolean v1, v4, Lcom/easypaisaTweak/newpackage/cDWP5;->SfW5jTpdE:Z
    003b: return-void
.end method
