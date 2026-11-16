# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/Vwy8c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/animation/Animation$AnimationListener;

.field public final synthetic Lcom/easypaisaTweak/newpackage/Vwy8c;->eRtvpvxbz:Landroidx/fragment/app/zkF6VM;
.field public final synthetic Lcom/easypaisaTweak/newpackage/Vwy8c;->hO03fCMH:Landroidx/fragment/app/hXElriBC2;
.field public final synthetic Lcom/easypaisaTweak/newpackage/Vwy8c;->yWkiZmD:Landroid/view/ViewGroup;

.method public constructor Lcom/easypaisaTweak/newpackage/Vwy8c;-><init>(Landroidx/fragment/app/hXElriBC2;, Landroid/view/ViewGroup;, Landroidx/fragment/app/zkF6VM;)V
    .registers 4
    0000: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/Vwy8c;->hO03fCMH:Landroidx/fragment/app/hXElriBC2;
    0002: iput-object v2, v0, Lcom/easypaisaTweak/newpackage/Vwy8c;->yWkiZmD:Landroid/view/ViewGroup;
    0004: iput-object v3, v0, Lcom/easypaisaTweak/newpackage/Vwy8c;->eRtvpvxbz:Landroidx/fragment/app/zkF6VM;
    0006: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0009: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/Vwy8c;->onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    0000: new-instance v2, Landroidx/fragment/app/eRtvpvxbz;
    0002: const/4 v0, #2
    0003: invoke-direct {v2, v0, v1}, Landroidx/fragment/app/eRtvpvxbz;-><init>(I, Ljava/lang/Object;)V
    0006: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/Vwy8c;->yWkiZmD:Landroid/view/ViewGroup;
    0008: invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    000b: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/Vwy8c;->onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    0000: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/Vwy8c;->onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    0000: return-void
.end method
