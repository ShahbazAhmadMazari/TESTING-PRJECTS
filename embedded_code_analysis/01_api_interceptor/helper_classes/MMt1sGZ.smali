# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/MMt1sGZ;
.super Lcom/easypaisaTweak/newpackage/w88xxuivt;
.source "SourceFile"

.field public final Lcom/easypaisaTweak/newpackage/MMt1sGZ;->yWkiZmD:Lcom/easypaisaTweak/newpackage/QO9Az;

.method public constructor Lcom/easypaisaTweak/newpackage/MMt1sGZ;-><init>(Lcom/easypaisaTweak/newpackage/QO9Az;, Lcom/easypaisaTweak/newpackage/a1K9IbJGy;)V
    .registers 4
    0000: invoke-direct {v1}, Lcom/easypaisaTweak/newpackage/w88xxuivt;-><init>()V
    0003: iput-object v2, v1, Lcom/easypaisaTweak/newpackage/MMt1sGZ;->yWkiZmD:Lcom/easypaisaTweak/newpackage/QO9Az;
    0005: const-class v1, Lcom/easypaisaTweak/newpackage/JOVhPGk;
    0007: invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
    000a: move-result-object v2
    000b: if-eqz v2, 0043
    000d: const-string v0, 'androidx.lifecycle.ViewModelProvider.DefaultKey:'
    000f: invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    0012: move-result-object v2
    0013: iget-object v0, v3, Lcom/easypaisaTweak/newpackage/a1K9IbJGy;->yWkiZmD:Ljava/util/HashMap;
    0015: invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    0018: move-result-object v0
    0019: check-cast v0, Lcom/easypaisaTweak/newpackage/J1APl;
    001b: invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    001e: move-result v1
    001f: if-eqz v1, 0022
    0021: goto 0040
    0022: const/4 v1, #1
    0023: packed-switch v1, 004c
    0026: goto 002d
    0027: new-instance v0, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;
    0029: invoke-direct {v0, v1}, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;-><init>(Z)V
    002c: goto 0033
    002d: new-instance v1, Lcom/easypaisaTweak/newpackage/JOVhPGk;
    002f: invoke-direct {v1}, Lcom/easypaisaTweak/newpackage/JOVhPGk;-><init>()V
    0032: move-object v0, v1
    0033: iget-object v1, v3, Lcom/easypaisaTweak/newpackage/a1K9IbJGy;->yWkiZmD:Ljava/util/HashMap;
    0035: invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0038: move-result-object v1
    0039: check-cast v1, Lcom/easypaisaTweak/newpackage/J1APl;
    003b: if-eqz v1, 0040
    003d: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/J1APl;->yWkiZmD()V
    0040: check-cast v0, Lcom/easypaisaTweak/newpackage/JOVhPGk;
    0042: return-void
    0043: new-instance v1, Ljava/lang/IllegalArgumentException;
    0045: const-string v2, 'Local and anonymous classes can not be ViewModels'
    0047: invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    004a: throw v1
    004b: nop
    004c: nop
    004d: move v0, v0
    004e: nop
    004f: nop
    0050: move-wide v0, v0
    0051: nop
.end method

.method public final Lcom/easypaisaTweak/newpackage/MMt1sGZ;->toString()Ljava/lang/String;
    .registers 3
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const/16 v1, #128
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
    0007: const-string v1, 'LoaderManager{'
    0009: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000c: invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    000f: move-result v1
    0010: invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    0013: move-result-object v1
    0014: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0017: const-string v1, ' in '
    0019: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001c: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/MMt1sGZ;->yWkiZmD:Lcom/easypaisaTweak/newpackage/QO9Az;
    001e: invoke-static {v2, v0}, Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;->eRtvpvxbz(Ljava/lang/Object;, Ljava/lang/StringBuilder;)V
    0021: const-string v2, '}}'
    0023: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0026: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0029: move-result-object v2
    002a: return-object v2
.end method
