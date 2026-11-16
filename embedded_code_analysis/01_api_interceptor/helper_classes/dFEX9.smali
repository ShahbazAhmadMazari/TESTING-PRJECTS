# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract Lcom/easypaisaTweak/newpackage/dFEX9;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static final synthetic static Lcom/easypaisaTweak/newpackage/dFEX9;->yWkiZmD:I

.method public static constructor Lcom/easypaisaTweak/newpackage/dFEX9;-><clinit>()V
    .registers 3
    0000: new-instance v0, Lcom/easypaisaTweak/newpackage/qG68fvX;
    0002: invoke-direct {v0}, Lcom/easypaisaTweak/newpackage/qG68fvX;-><init>()V
    0005: const-string v0, 'androidx.transition.FragmentTransitionSupport'
    0007: invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    000a: move-result-object v0
    000b: const/4 v1, #0
    000c: new-array v2, v1, [Ljava/lang/Class;
    000e: invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    0011: move-result-object v0
    0012: new-array v1, v1, [Ljava/lang/Object;
    0014: invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    0017: move-result-object v0
    0018: check-cast v0, Lcom/easypaisaTweak/newpackage/eRKpchin;
    001a: return-void
.end method
