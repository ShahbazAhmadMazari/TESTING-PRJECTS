# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/vHTF76IHjG;
.super Lcom/easypaisaTweak/newpackage/J1APl;
.source "SourceFile"

.field public Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->Gi9lbFSu:Z
.field public final Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->SfW5jTpdE:Z
.field public final Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->eRtvpvxbz:Ljava/util/HashMap;
.field public final Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->hO03fCMH:Ljava/util/HashMap;
.field public final Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->yWkiZmD:Ljava/util/HashSet;

.method public static constructor Lcom/easypaisaTweak/newpackage/vHTF76IHjG;-><clinit>()V
    .registers 2
    0000: new-instance v0, Lcom/easypaisaTweak/newpackage/lXPLz;
    0002: const/4 v1, #0
    0003: invoke-direct {v0, v1}, Lcom/easypaisaTweak/newpackage/lXPLz;-><init>(I)V
    0006: return-void
.end method

.method public constructor Lcom/easypaisaTweak/newpackage/vHTF76IHjG;-><init>(Z)V
    .registers 3
    0000: invoke-direct {v1}, Lcom/easypaisaTweak/newpackage/J1APl;-><init>()V
    0003: new-instance v0, Ljava/util/HashSet;
    0005: invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    0008: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->yWkiZmD:Ljava/util/HashSet;
    000a: new-instance v0, Ljava/util/HashMap;
    000c: invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    000f: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->eRtvpvxbz:Ljava/util/HashMap;
    0011: new-instance v0, Ljava/util/HashMap;
    0013: invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    0016: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->hO03fCMH:Ljava/util/HashMap;
    0018: const/4 v0, #0
    0019: iput-boolean v0, v1, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->Gi9lbFSu:Z
    001b: iput-boolean v2, v1, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->SfW5jTpdE:Z
    001d: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->equals(Ljava/lang/Object;)Z
    .registers 6
    0000: const/4 v0, #1
    0001: if-ne v4, v5, 0004
    0003: return v0
    0004: const/4 v1, #0
    0005: if-eqz v5, 0033
    0007: const-class v2, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;
    0009: invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    000c: move-result-object v3
    000d: if-eq v2, v3, 0010
    000f: goto 0033
    0010: check-cast v5, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;
    0012: iget-object v2, v4, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->yWkiZmD:Ljava/util/HashSet;
    0014: iget-object v3, v5, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->yWkiZmD:Ljava/util/HashSet;
    0016: invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    0019: move-result v2
    001a: if-eqz v2, 0031
    001c: iget-object v2, v4, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->eRtvpvxbz:Ljava/util/HashMap;
    001e: iget-object v3, v5, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->eRtvpvxbz:Ljava/util/HashMap;
    0020: invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    0023: move-result v2
    0024: if-eqz v2, 0031
    0026: iget-object v4, v4, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->hO03fCMH:Ljava/util/HashMap;
    0028: iget-object v5, v5, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->hO03fCMH:Ljava/util/HashMap;
    002a: invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    002d: move-result v4
    002e: if-eqz v4, 0031
    0030: goto 0032
    0031: move v0, v1
    0032: return v0
    0033: return v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->hashCode()I
    .registers 3
    0000: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->yWkiZmD:Ljava/util/HashSet;
    0002: invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    0005: move-result v0
    0006: mul-int/lit8 v0, v0, #31
    0008: iget-object v1, v2, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->eRtvpvxbz:Ljava/util/HashMap;
    000a: invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
    000d: move-result v1
    000e: add-int/2addr v1, v0
    000f: mul-int/lit8 v1, v1, #31
    0011: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->hO03fCMH:Ljava/util/HashMap;
    0013: invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    0016: move-result v2
    0017: add-int/2addr v2, v1
    0018: return v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->toString()Ljava/lang/String;
    .registers 5
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: const-string v1, 'FragmentManagerViewModel{'
    0004: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0007: invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
    000a: move-result v1
    000b: invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    000e: move-result-object v1
    000f: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0012: const-string v1, '} Fragments ('
    0014: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0017: iget-object v1, v4, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->yWkiZmD:Ljava/util/HashSet;
    0019: invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    001c: move-result-object v1
    001d: invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    0020: move-result v2
    0021: const-string v3, ', '
    0023: if-eqz v2, 0036
    0025: invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0028: move-result-object v2
    0029: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    002c: invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    002f: move-result v2
    0030: if-eqz v2, 001d
    0032: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0035: goto 001d
    0036: const-string v1, ') Child Non Config ('
    0038: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    003b: iget-object v1, v4, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->eRtvpvxbz:Ljava/util/HashMap;
    003d: invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    0040: move-result-object v1
    0041: invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    0044: move-result-object v1
    0045: invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    0048: move-result v2
    0049: if-eqz v2, 005e
    004b: invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    004e: move-result-object v2
    004f: check-cast v2, Ljava/lang/String;
    0051: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0054: invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    0057: move-result v2
    0058: if-eqz v2, 0045
    005a: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    005d: goto 0045
    005e: const-string v1, ') ViewModelStores ('
    0060: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0063: iget-object v4, v4, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->hO03fCMH:Ljava/util/HashMap;
    0065: invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    0068: move-result-object v4
    0069: invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    006c: move-result-object v4
    006d: invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    0070: move-result v1
    0071: if-eqz v1, 0086
    0073: invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0076: move-result-object v1
    0077: check-cast v1, Ljava/lang/String;
    0079: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    007c: invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    007f: move-result v1
    0080: if-eqz v1, 006d
    0082: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0085: goto 006d
    0086: const/16 v4, #41
    0088: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    008b: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    008e: move-result-object v4
    008f: return-object v4
.end method

.method public final Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->yWkiZmD()V
    .registers 2
    0000: sget-object v0, Landroidx/fragment/app/hXElriBC2;->uJhRv:Landroid/view/animation/DecelerateInterpolator;
    0002: const/4 v0, #1
    0003: iput-boolean v0, v1, Lcom/easypaisaTweak/newpackage/vHTF76IHjG;->Gi9lbFSu:Z
    0005: return-void
.end method
