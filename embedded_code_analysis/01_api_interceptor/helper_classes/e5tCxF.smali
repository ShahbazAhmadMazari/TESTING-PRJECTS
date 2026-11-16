# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/e5tCxF;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;

.field public Lcom/easypaisaTweak/newpackage/e5tCxF;->eRtvpvxbz:Landroid/view/ViewTreeObserver;
.field public final Lcom/easypaisaTweak/newpackage/e5tCxF;->hO03fCMH:Ljava/lang/Runnable;
.field public final Lcom/easypaisaTweak/newpackage/e5tCxF;->yWkiZmD:Landroid/view/View;

.method public constructor Lcom/easypaisaTweak/newpackage/e5tCxF;-><init>(Landroid/view/ViewGroup;, Ljava/lang/Runnable;)V
    .registers 3
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/e5tCxF;->yWkiZmD:Landroid/view/View;
    0005: invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    0008: move-result-object v1
    0009: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/e5tCxF;->eRtvpvxbz:Landroid/view/ViewTreeObserver;
    000b: iput-object v2, v0, Lcom/easypaisaTweak/newpackage/e5tCxF;->hO03fCMH:Ljava/lang/Runnable;
    000d: return-void
.end method

.method public static Lcom/easypaisaTweak/newpackage/e5tCxF;->yWkiZmD(Landroid/view/ViewGroup;, Ljava/lang/Runnable;)V
    .registers 3
    0000: if-eqz v1, 001c
    0002: if-eqz v2, 0014
    0004: new-instance v0, Lcom/easypaisaTweak/newpackage/e5tCxF;
    0006: invoke-direct {v0, v1, v2}, Lcom/easypaisaTweak/newpackage/e5tCxF;-><init>(Landroid/view/ViewGroup;, Ljava/lang/Runnable;)V
    0009: invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    000c: move-result-object v2
    000d: invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    0010: invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    0013: return-void
    0014: new-instance v1, Ljava/lang/NullPointerException;
    0016: const-string v2, 'runnable == null'
    0018: invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    001b: throw v1
    001c: new-instance v1, Ljava/lang/NullPointerException;
    001e: const-string v2, 'view == null'
    0020: invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    0023: throw v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/e5tCxF;->onPreDraw()Z
    .registers 3
    0000: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/e5tCxF;->eRtvpvxbz:Landroid/view/ViewTreeObserver;
    0002: invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z
    0005: move-result v0
    0006: iget-object v1, v2, Lcom/easypaisaTweak/newpackage/e5tCxF;->yWkiZmD:Landroid/view/View;
    0008: if-eqz v0, 0010
    000a: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/e5tCxF;->eRtvpvxbz:Landroid/view/ViewTreeObserver;
    000c: invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    000f: goto 0017
    0010: invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    0013: move-result-object v0
    0014: invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    0017: invoke-virtual {v1, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    001a: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/e5tCxF;->hO03fCMH:Ljava/lang/Runnable;
    001c: invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    001f: const/4 v2, #1
    0020: return v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/e5tCxF;->onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    0000: invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    0003: move-result-object v1
    0004: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/e5tCxF;->eRtvpvxbz:Landroid/view/ViewTreeObserver;
    0006: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/e5tCxF;->onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3
    0000: iget-object v2, v1, Lcom/easypaisaTweak/newpackage/e5tCxF;->eRtvpvxbz:Landroid/view/ViewTreeObserver;
    0002: invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z
    0005: move-result v2
    0006: iget-object v0, v1, Lcom/easypaisaTweak/newpackage/e5tCxF;->yWkiZmD:Landroid/view/View;
    0008: if-eqz v2, 0010
    000a: iget-object v2, v1, Lcom/easypaisaTweak/newpackage/e5tCxF;->eRtvpvxbz:Landroid/view/ViewTreeObserver;
    000c: invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    000f: goto 0017
    0010: invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
    0013: move-result-object v2
    0014: invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    0017: invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    001a: return-void
.end method
