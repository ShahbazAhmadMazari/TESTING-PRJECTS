# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/QdGehb8O;
.super Landroid/view/animation/AnimationSet;
.source "SourceFile"
.implements Ljava/lang/Runnable;

.field public Lcom/easypaisaTweak/newpackage/QdGehb8O;->Gi9lbFSu:Z
.field public Lcom/easypaisaTweak/newpackage/QdGehb8O;->SfW5jTpdE:Z
.field public final Lcom/easypaisaTweak/newpackage/QdGehb8O;->eRtvpvxbz:Landroid/view/View;
.field public Lcom/easypaisaTweak/newpackage/QdGehb8O;->hO03fCMH:Z
.field public final Lcom/easypaisaTweak/newpackage/QdGehb8O;->yWkiZmD:Landroid/view/ViewGroup;

.method public constructor Lcom/easypaisaTweak/newpackage/QdGehb8O;-><init>(Landroid/view/animation/Animation;, Landroid/view/ViewGroup;, Landroid/view/View;)V
    .registers 5
    0000: const/4 v0, #0
    0001: invoke-direct {v1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V
    0004: const/4 v0, #1
    0005: iput-boolean v0, v1, Lcom/easypaisaTweak/newpackage/QdGehb8O;->Gi9lbFSu:Z
    0007: iput-object v3, v1, Lcom/easypaisaTweak/newpackage/QdGehb8O;->yWkiZmD:Landroid/view/ViewGroup;
    0009: iput-object v4, v1, Lcom/easypaisaTweak/newpackage/QdGehb8O;->eRtvpvxbz:Landroid/view/View;
    000b: invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
    000e: invoke-virtual {v3, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    0011: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/QdGehb8O;->getTransformation(J, Landroid/view/animation/Transformation;)Z
    .registers 6
    0000: const/4 v0, #1
    0001: iput-boolean v0, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->Gi9lbFSu:Z
    0003: iget-boolean v1, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->hO03fCMH:Z
    0005: if-eqz v1, 000b
    0007: iget-boolean v2, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->SfW5jTpdE:Z
    0009: xor-int/2addr v2, v0
    000a: return v2
    000b: invoke-super {v2, v3, v4, v5}, Landroid/view/animation/AnimationSet;->getTransformation(J, Landroid/view/animation/Transformation;)Z
    000e: move-result v3
    000f: if-nez v3, 0018
    0011: iput-boolean v0, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->hO03fCMH:Z
    0013: iget-object v3, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->yWkiZmD:Landroid/view/ViewGroup;
    0015: invoke-static {v3, v2}, Lcom/easypaisaTweak/newpackage/e5tCxF;->yWkiZmD(Landroid/view/ViewGroup;, Ljava/lang/Runnable;)V
    0018: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/QdGehb8O;->getTransformation(J, Landroid/view/animation/Transformation;, F)Z
    .registers 7
    0000: const/4 v0, #1
    0001: iput-boolean v0, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->Gi9lbFSu:Z
    0003: iget-boolean v1, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->hO03fCMH:Z
    0005: if-eqz v1, 000b
    0007: iget-boolean v2, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->SfW5jTpdE:Z
    0009: xor-int/2addr v2, v0
    000a: return v2
    000b: invoke-super {v2, v3, v4, v5, v6}, Landroid/view/animation/Animation;->getTransformation(J, Landroid/view/animation/Transformation;, F)Z
    000e: move-result v3
    000f: if-nez v3, 0018
    0011: iput-boolean v0, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->hO03fCMH:Z
    0013: iget-object v3, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->yWkiZmD:Landroid/view/ViewGroup;
    0015: invoke-static {v3, v2}, Lcom/easypaisaTweak/newpackage/e5tCxF;->yWkiZmD(Landroid/view/ViewGroup;, Ljava/lang/Runnable;)V
    0018: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/QdGehb8O;->run()V
    .registers 3
    0000: iget-boolean v0, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->hO03fCMH:Z
    0002: iget-object v1, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->yWkiZmD:Landroid/view/ViewGroup;
    0004: if-nez v0, 0011
    0006: iget-boolean v0, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->Gi9lbFSu:Z
    0008: if-eqz v0, 0011
    000a: const/4 v0, #0
    000b: iput-boolean v0, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->Gi9lbFSu:Z
    000d: invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    0010: goto 0019
    0011: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->eRtvpvxbz:Landroid/view/View;
    0013: invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V
    0016: const/4 v0, #1
    0017: iput-boolean v0, v2, Lcom/easypaisaTweak/newpackage/QdGehb8O;->SfW5jTpdE:Z
    0019: return-void
.end method
