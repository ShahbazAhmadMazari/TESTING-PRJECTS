# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/Mgn8NnHh;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/easypaisaTweak/newpackage/QO9Az;

.field public Lcom/easypaisaTweak/newpackage/Mgn8NnHh;->yWkiZmD:Lcom/easypaisaTweak/newpackage/E4lo6Jd;

.method public constructor Lcom/easypaisaTweak/newpackage/Mgn8NnHh;-><init>()V
    .registers 2
    0000: invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    0003: const/4 v0, #0
    0004: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/Mgn8NnHh;->yWkiZmD:Lcom/easypaisaTweak/newpackage/E4lo6Jd;
    0006: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/Mgn8NnHh;->getLifecycle()Lcom/easypaisaTweak/newpackage/CG3FvEQ;
    .registers 2
    0000: iget-object v0, v1, Lcom/easypaisaTweak/newpackage/Mgn8NnHh;->yWkiZmD:Lcom/easypaisaTweak/newpackage/E4lo6Jd;
    0002: if-nez v0, 000b
    0004: new-instance v0, Lcom/easypaisaTweak/newpackage/E4lo6Jd;
    0006: invoke-direct {v0, v1}, Lcom/easypaisaTweak/newpackage/E4lo6Jd;-><init>(Lcom/easypaisaTweak/newpackage/QO9Az;)V
    0009: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/Mgn8NnHh;->yWkiZmD:Lcom/easypaisaTweak/newpackage/E4lo6Jd;
    000b: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/Mgn8NnHh;->yWkiZmD:Lcom/easypaisaTweak/newpackage/E4lo6Jd;
    000d: return-object v1
.end method
