# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Collection;
.implements Ljava/util/Set;

.field public static final static Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->Gi9lbFSu:[I
.field public static static Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->UjNghiE:[Ljava/lang/Object;
.field public static static Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->XywNW:I
.field public static static Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->ZDfAQYocn5:I
.field public static static Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hXElriBC2:[Ljava/lang/Object;
.field public static final static Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->zkF6VM:[Ljava/lang/Object;
.field public Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
.field public Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
.field public Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
.field public Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I

.method public static constructor Lcom/easypaisaTweak/newpackage/SfW5jTpdE;-><clinit>()V
    .registers 2
    0000: const/4 v0, #0
    0001: new-array v1, v0, [I
    0003: sput-object v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->Gi9lbFSu:[I
    0005: new-array v0, v0, [Ljava/lang/Object;
    0007: sput-object v0, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->zkF6VM:[Ljava/lang/Object;
    0009: return-void
.end method

.method public constructor Lcom/easypaisaTweak/newpackage/SfW5jTpdE;-><init>(I)V
    .registers 2
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: if-nez v1, 000e
    0005: sget-object v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->Gi9lbFSu:[I
    0007: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0009: sget-object v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->zkF6VM:[Ljava/lang/Object;
    000b: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    000d: goto 0011
    000e: invoke-virtual {v0, v1}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD(I)V
    0011: const/4 v1, #0
    0012: iput v1, v0, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0014: return-void
.end method

.method public static Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz([I, [Ljava/lang/Object;, I)V
    .registers 10
    0000: array-length v0, v7
    0001: const/16 v1, #8
    0003: const/4 v2, #0
    0004: const/4 v3, #2
    0005: const/4 v4, #0
    0006: const/16 v5, #10
    0008: const/4 v6, #1
    0009: if-ne v0, v1, 002c
    000b: const-class v0, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;
    000d: monitor-enter v0
    000e: sget v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->XywNW:I
    0010: if-ge v1, v5, 0027
    0012: sget-object v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hXElriBC2:[Ljava/lang/Object;
    0014: aput-object v1, v8, v4
    0016: aput-object v7, v8, v6
    0018: sub-int/2addr v9, v6
    0019: if-lt v9, v3, 0020
    001b: aput-object v2, v8, v9
    001d: add-int/lit8 v9, v9, #-1
    001f: goto 0019
    0020: sput-object v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hXElriBC2:[Ljava/lang/Object;
    0022: sget v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->XywNW:I
    0024: add-int/2addr v7, v6
    0025: sput v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->XywNW:I
    0027: monitor-exit v0
    0028: goto 0051
    0029: move-exception v7
    002a: monitor-exit v0
    002b: throw v7
    002c: array-length v0, v7
    002d: const/4 v1, #4
    002e: if-ne v0, v1, 0051
    0030: const-class v0, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;
    0032: monitor-enter v0
    0033: sget v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->ZDfAQYocn5:I
    0035: if-ge v1, v5, 004c
    0037: sget-object v1, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->UjNghiE:[Ljava/lang/Object;
    0039: aput-object v1, v8, v4
    003b: aput-object v7, v8, v6
    003d: sub-int/2addr v9, v6
    003e: if-lt v9, v3, 0045
    0040: aput-object v2, v8, v9
    0042: add-int/lit8 v9, v9, #-1
    0044: goto 003e
    0045: sput-object v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->UjNghiE:[Ljava/lang/Object;
    0047: sget v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->ZDfAQYocn5:I
    0049: add-int/2addr v7, v6
    004a: sput v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->ZDfAQYocn5:I
    004c: monitor-exit v0
    004d: goto 0051
    004e: move-exception v7
    004f: monitor-exit v0
    0050: throw v7
    0051: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->Gi9lbFSu(I)V
    .registers 9
    0000: iget-object v0, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0002: aget-object v1, v0, v8
    0004: iget v1, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0006: const/4 v2, #0
    0007: const/4 v3, #1
    0008: if-gt v1, v3, 001a
    000a: iget-object v8, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    000c: invoke-static {v8, v0, v1}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz([I, [Ljava/lang/Object;, I)V
    000f: sget-object v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->Gi9lbFSu:[I
    0011: iput-object v8, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0013: sget-object v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->zkF6VM:[Ljava/lang/Object;
    0015: iput-object v8, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0017: iput v2, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0019: goto 006f
    001a: iget-object v4, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    001c: array-length v5, v4
    001d: const/16 v6, #8
    001f: if-le v5, v6, 0055
    0021: array-length v5, v4
    0022: div-int/lit8 v5, v5, #3
    0024: if-ge v1, v5, 0055
    0026: if-le v1, v6, 002c
    0028: shr-int/lit8 v5, v1, #1
    002a: add-int v6, v1, v5
    002c: invoke-virtual {v7, v6}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD(I)V
    002f: iget v1, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0031: sub-int/2addr v1, v3
    0032: iput v1, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0034: if-lez v8, 0040
    0036: iget-object v1, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0038: invoke-static {v4, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    003b: iget-object v1, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    003d: invoke-static {v0, v2, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0040: iget v1, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0042: if-ge v8, v1, 006f
    0044: add-int/lit8 v2, v8, #1
    0046: iget-object v3, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0048: sub-int/2addr v1, v8
    0049: invoke-static {v4, v2, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    004c: iget-object v1, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    004e: iget v7, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0050: sub-int/2addr v7, v8
    0051: invoke-static {v0, v2, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0054: goto 006f
    0055: sub-int/2addr v1, v3
    0056: iput v1, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0058: if-ge v8, v1, 0068
    005a: add-int/lit8 v0, v8, #1
    005c: sub-int/2addr v1, v8
    005d: invoke-static {v4, v0, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0060: iget-object v1, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0062: iget v2, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0064: sub-int/2addr v2, v8
    0065: invoke-static {v1, v0, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0068: iget-object v8, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    006a: iget v7, v7, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    006c: const/4 v0, #0
    006d: aput-object v0, v8, v7
    006f: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->SfW5jTpdE()I
    .registers 5
    0000: iget v0, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0002: if-nez v0, 0006
    0004: const/4 v4, #-1
    0005: return v4
    0006: iget-object v1, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0008: const/4 v2, #0
    0009: invoke-static {v1, v0, v2}, Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;->yWkiZmD([I, I, I)I
    000c: move-result v1
    000d: if-gez v1, 0010
    000f: return v1
    0010: iget-object v2, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0012: aget-object v2, v2, v1
    0014: if-nez v2, 0017
    0016: return v1
    0017: add-int/lit8 v2, v1, #1
    0019: if-ge v2, v0, 002b
    001b: iget-object v3, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    001d: aget v3, v3, v2
    001f: if-nez v3, 002b
    0021: iget-object v3, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0023: aget-object v3, v3, v2
    0025: if-nez v3, 0028
    0027: return v2
    0028: add-int/lit8 v2, v2, #1
    002a: goto 0019
    002b: add-int/lit8 v1, v1, #-1
    002d: if-ltz v1, 003f
    002f: iget-object v0, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0031: aget v0, v0, v1
    0033: if-nez v0, 003f
    0035: iget-object v0, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0037: aget-object v0, v0, v1
    0039: if-nez v0, 003c
    003b: return v1
    003c: add-int/lit8 v1, v1, #-1
    003e: goto 002d
    003f: not-int v4, v2
    0040: return v4
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->add(Ljava/lang/Object;)Z
    .registers 10
    0000: const/4 v0, #0
    0001: if-nez v9, 0009
    0003: invoke-virtual {v8}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->SfW5jTpdE()I
    0006: move-result v1
    0007: move v2, v0
    0008: goto 0014
    0009: invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I
    000c: move-result v1
    000d: invoke-virtual {v8, v1, v9}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH(I, Ljava/lang/Object;)I
    0010: move-result v2
    0011: move v7, v2
    0012: move v2, v1
    0013: move v1, v7
    0014: if-ltz v1, 0017
    0016: return v0
    0017: not-int v1, v1
    0018: iget v3, v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    001a: iget-object v4, v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    001c: array-length v5, v4
    001d: if-lt v3, v5, 0045
    001f: const/16 v5, #8
    0021: if-lt v3, v5, 0027
    0023: shr-int/lit8 v5, v3, #1
    0025: add-int/2addr v5, v3
    0026: goto 002c
    0027: const/4 v6, #4
    0028: if-lt v3, v6, 002b
    002a: goto 002c
    002b: move v5, v6
    002c: iget-object v3, v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    002e: invoke-virtual {v8, v5}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD(I)V
    0031: iget-object v5, v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0033: array-length v6, v5
    0034: if-lez v6, 0040
    0036: array-length v6, v4
    0037: invoke-static {v4, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    003a: iget-object v5, v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    003c: array-length v6, v3
    003d: invoke-static {v3, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0040: iget v0, v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0042: invoke-static {v4, v3, v0}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz([I, [Ljava/lang/Object;, I)V
    0045: iget v0, v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0047: if-ge v1, v0, 0059
    0049: iget-object v3, v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    004b: add-int/lit8 v4, v1, #1
    004d: sub-int/2addr v0, v1
    004e: invoke-static {v3, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0051: iget-object v0, v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0053: iget v3, v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0055: sub-int/2addr v3, v1
    0056: invoke-static {v0, v1, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0059: iget-object v0, v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    005b: aput v2, v0, v1
    005d: iget-object v0, v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    005f: aput-object v9, v0, v1
    0061: iget v9, v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0063: const/4 v0, #1
    0064: add-int/2addr v9, v0
    0065: iput v9, v8, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0067: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->addAll(Ljava/util/Collection;)Z
    .registers 7
    0000: iget v0, v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0002: invoke-interface {v6}, Ljava/util/Collection;->size()I
    0005: move-result v1
    0006: add-int/2addr v1, v0
    0007: iget-object v0, v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0009: array-length v2, v0
    000a: const/4 v3, #0
    000b: if-ge v2, v1, 0027
    000d: iget-object v2, v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    000f: invoke-virtual {v5, v1}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD(I)V
    0012: iget v1, v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0014: if-lez v1, 0022
    0016: iget-object v4, v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0018: invoke-static {v0, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    001b: iget-object v1, v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    001d: iget v4, v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    001f: invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0022: iget v1, v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0024: invoke-static {v0, v2, v1}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz([I, [Ljava/lang/Object;, I)V
    0027: invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    002a: move-result-object v6
    002b: invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    002e: move-result v0
    002f: if-eqz v0, 003b
    0031: invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    0034: move-result-object v0
    0035: invoke-virtual {v5, v0}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->add(Ljava/lang/Object;)Z
    0038: move-result v0
    0039: or-int/2addr v3, v0
    003a: goto 002b
    003b: return v3
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->clear()V
    .registers 4
    0000: iget v0, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0002: if-eqz v0, 0016
    0004: iget-object v1, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0006: iget-object v2, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0008: invoke-static {v1, v2, v0}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz([I, [Ljava/lang/Object;, I)V
    000b: sget-object v0, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->Gi9lbFSu:[I
    000d: iput-object v0, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    000f: sget-object v0, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->zkF6VM:[Ljava/lang/Object;
    0011: iput-object v0, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0013: const/4 v0, #0
    0014: iput v0, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0016: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->contains(Ljava/lang/Object;)Z
    .registers 2
    0000: invoke-virtual {v0, v1}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->indexOf(Ljava/lang/Object;)I
    0003: move-result v0
    0004: if-ltz v0, 0008
    0006: const/4 v0, #1
    0007: goto 0009
    0008: const/4 v0, #0
    0009: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->containsAll(Ljava/util/Collection;)Z
    .registers 3
    0000: invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    0003: move-result-object v2
    0004: invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    0007: move-result v0
    0008: if-eqz v0, 0016
    000a: invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    000d: move-result-object v0
    000e: invoke-virtual {v1, v0}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->contains(Ljava/lang/Object;)Z
    0011: move-result v0
    0012: if-nez v0, 0004
    0014: const/4 v1, #0
    0015: return v1
    0016: const/4 v1, #1
    0017: return v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->equals(Ljava/lang/Object;)Z
    .registers 6
    0000: const/4 v0, #1
    0001: if-ne v4, v5, 0004
    0003: return v0
    0004: instance-of v1, v5, Ljava/util/Set;
    0006: const/4 v2, #0
    0007: if-eqz v1, 0028
    0009: check-cast v5, Ljava/util/Set;
    000b: iget v1, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    000d: invoke-interface {v5}, Ljava/util/Set;->size()I
    0010: move-result v3
    0011: if-eq v1, v3, 0014
    0013: return v2
    0014: move v1, v2
    0015: iget v3, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0017: if-ge v1, v3, 0027
    0019: iget-object v3, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    001b: aget-object v3, v3, v1
    001d: invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    0020: move-result v3
    0021: if-nez v3, 0024
    0023: return v2
    0024: add-int/lit8 v1, v1, #1
    0026: goto 0015
    0027: return v0
    0028: return v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH(I, Ljava/lang/Object;)I
    .registers 7
    0000: iget v0, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0002: if-nez v0, 0006
    0004: const/4 v4, #-1
    0005: return v4
    0006: iget-object v1, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0008: invoke-static {v1, v0, v5}, Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;->yWkiZmD([I, I, I)I
    000b: move-result v1
    000c: if-gez v1, 000f
    000e: return v1
    000f: iget-object v2, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0011: aget-object v2, v2, v1
    0013: invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    0016: move-result v2
    0017: if-eqz v2, 001a
    0019: return v1
    001a: add-int/lit8 v2, v1, #1
    001c: if-ge v2, v0, 0032
    001e: iget-object v3, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0020: aget v3, v3, v2
    0022: if-ne v3, v5, 0032
    0024: iget-object v3, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0026: aget-object v3, v3, v2
    0028: invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    002b: move-result v3
    002c: if-eqz v3, 002f
    002e: return v2
    002f: add-int/lit8 v2, v2, #1
    0031: goto 001c
    0032: add-int/lit8 v1, v1, #-1
    0034: if-ltz v1, 004a
    0036: iget-object v0, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0038: aget v0, v0, v1
    003a: if-ne v0, v5, 004a
    003c: iget-object v0, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    003e: aget-object v0, v0, v1
    0040: invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    0043: move-result v0
    0044: if-eqz v0, 0047
    0046: return v1
    0047: add-int/lit8 v1, v1, #-1
    0049: goto 0034
    004a: not-int v4, v2
    004b: return v4
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hashCode()I
    .registers 5
    0000: iget-object v0, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0002: iget v4, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0004: const/4 v1, #0
    0005: move v2, v1
    0006: if-ge v1, v4, 000e
    0008: aget v3, v0, v1
    000a: add-int/2addr v2, v3
    000b: add-int/lit8 v1, v1, #1
    000d: goto 0006
    000e: return v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->indexOf(Ljava/lang/Object;)I
    .registers 3
    0000: if-nez v2, 0007
    0002: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->SfW5jTpdE()I
    0005: move-result v1
    0006: goto 000f
    0007: invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    000a: move-result v0
    000b: invoke-virtual {v1, v0, v2}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH(I, Ljava/lang/Object;)I
    000e: move-result v1
    000f: return v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->isEmpty()Z
    .registers 1
    0000: iget v0, v0, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0002: if-gtz v0, 0006
    0004: const/4 v0, #1
    0005: goto 0007
    0006: const/4 v0, #0
    0007: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->iterator()Ljava/util/Iterator;
    .registers 3
    0000: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    0002: const/4 v1, #1
    0003: if-nez v0, 000c
    0005: new-instance v0, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    0007: invoke-direct {v0, v1, v2}, Lcom/easypaisaTweak/newpackage/eRtvpvxbz;-><init>(I, Ljava/lang/Object;)V
    000a: iput-object v0, v2, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    000c: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/eRtvpvxbz;
    000e: iget-object v0, v2, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/PGM5W1;
    0010: if-nez v0, 0019
    0012: new-instance v0, Lcom/easypaisaTweak/newpackage/PGM5W1;
    0014: invoke-direct {v0, v2, v1}, Lcom/easypaisaTweak/newpackage/PGM5W1;-><init>(Lcom/easypaisaTweak/newpackage/JujT5;, I)V
    0017: iput-object v0, v2, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/PGM5W1;
    0019: iget-object v2, v2, Lcom/easypaisaTweak/newpackage/JujT5;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/PGM5W1;
    001b: invoke-virtual {v2}, Lcom/easypaisaTweak/newpackage/PGM5W1;->iterator()Ljava/util/Iterator;
    001e: move-result-object v2
    001f: return-object v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->remove(Ljava/lang/Object;)Z
    .registers 2
    0000: invoke-virtual {v0, v1}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->indexOf(Ljava/lang/Object;)I
    0003: move-result v1
    0004: if-ltz v1, 000b
    0006: invoke-virtual {v0, v1}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->Gi9lbFSu(I)V
    0009: const/4 v0, #1
    000a: return v0
    000b: const/4 v0, #0
    000c: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->removeAll(Ljava/util/Collection;)Z
    .registers 4
    0000: invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    0003: move-result-object v3
    0004: const/4 v0, #0
    0005: invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    0008: move-result v1
    0009: if-eqz v1, 0015
    000b: invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    000e: move-result-object v1
    000f: invoke-virtual {v2, v1}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->remove(Ljava/lang/Object;)Z
    0012: move-result v1
    0013: or-int/2addr v0, v1
    0014: goto 0005
    0015: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->retainAll(Ljava/util/Collection;)Z
    .registers 6
    0000: iget v0, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0002: const/4 v1, #1
    0003: sub-int/2addr v0, v1
    0004: const/4 v2, #0
    0005: if-ltz v0, 0018
    0007: iget-object v3, v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0009: aget-object v3, v3, v0
    000b: invoke-interface {v5, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    000e: move-result v3
    000f: if-nez v3, 0015
    0011: invoke-virtual {v4, v0}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->Gi9lbFSu(I)V
    0014: move v2, v1
    0015: add-int/lit8 v0, v0, #-1
    0017: goto 0005
    0018: return v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->size()I
    .registers 1
    0000: iget v0, v0, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0002: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->toArray()[Ljava/lang/Object;
    .registers 4
    0000: iget v0, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0002: new-array v1, v0, [Ljava/lang/Object;
    0004: iget-object v3, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0006: const/4 v2, #0
    0007: invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    000a: return-object v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    0000: array-length v0, v4
    0001: iget v1, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0003: if-ge v0, v1, 0015
    0005: invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    0008: move-result-object v4
    0009: invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
    000c: move-result-object v4
    000d: iget v0, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    000f: invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;, I)Ljava/lang/Object;
    0012: move-result-object v4
    0013: check-cast v4, [Ljava/lang/Object;
    0015: iget-object v0, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0017: iget v1, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0019: const/4 v2, #0
    001a: invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    001d: array-length v0, v4
    001e: iget v3, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    0020: if-le v0, v3, 0025
    0022: const/4 v0, #0
    0023: aput-object v0, v4, v3
    0025: return-object v4
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->toString()Ljava/lang/String;
    .registers 4
    0000: invoke-virtual {v3}, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->isEmpty()Z
    0003: move-result v0
    0004: if-eqz v0, 0009
    0006: const-string v3, '{}'
    0008: return-object v3
    0009: new-instance v0, Ljava/lang/StringBuilder;
    000b: iget v1, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    000d: mul-int/lit8 v1, v1, #14
    000f: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
    0012: const/16 v1, #123
    0014: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    0017: const/4 v1, #0
    0018: iget v2, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hO03fCMH:I
    001a: if-ge v1, v2, 0035
    001c: if-lez v1, 0023
    001e: const-string v2, ', '
    0020: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0023: iget-object v2, v3, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0025: aget-object v2, v2, v1
    0027: if-eq v2, v3, 002d
    0029: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    002c: goto 0032
    002d: const-string v2, '(this Set)'
    002f: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0032: add-int/lit8 v1, v1, #1
    0034: goto 0018
    0035: const/16 v3, #125
    0037: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    003a: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    003d: move-result-object v3
    003e: return-object v3
.end method

.method public final Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD(I)V
    .registers 7
    0000: const/16 v0, #8
    0002: const/4 v1, #0
    0003: const/4 v2, #0
    0004: const/4 v3, #1
    0005: if-ne v6, v0, 002c
    0007: const-class v0, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;
    0009: monitor-enter v0
    000a: sget-object v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hXElriBC2:[Ljava/lang/Object;
    000c: if-eqz v4, 0027
    000e: iput-object v4, v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0010: aget-object v6, v4, v2
    0012: check-cast v6, [Ljava/lang/Object;
    0014: sput-object v6, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->hXElriBC2:[Ljava/lang/Object;
    0016: aget-object v6, v4, v3
    0018: check-cast v6, [I
    001a: iput-object v6, v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    001c: aput-object v1, v4, v3
    001e: aput-object v1, v4, v2
    0020: sget v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->XywNW:I
    0022: sub-int/2addr v5, v3
    0023: sput v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->XywNW:I
    0025: monitor-exit v0
    0026: return-void
    0027: monitor-exit v0
    0028: goto 0054
    0029: move-exception v5
    002a: monitor-exit v0
    002b: throw v5
    002c: const/4 v0, #4
    002d: if-ne v6, v0, 0054
    002f: const-class v0, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;
    0031: monitor-enter v0
    0032: sget-object v4, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->UjNghiE:[Ljava/lang/Object;
    0034: if-eqz v4, 004f
    0036: iput-object v4, v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    0038: aget-object v6, v4, v2
    003a: check-cast v6, [Ljava/lang/Object;
    003c: sput-object v6, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->UjNghiE:[Ljava/lang/Object;
    003e: aget-object v6, v4, v3
    0040: check-cast v6, [I
    0042: iput-object v6, v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0044: aput-object v1, v4, v3
    0046: aput-object v1, v4, v2
    0048: sget v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->ZDfAQYocn5:I
    004a: sub-int/2addr v5, v3
    004b: sput v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->ZDfAQYocn5:I
    004d: monitor-exit v0
    004e: return-void
    004f: monitor-exit v0
    0050: goto 0054
    0051: move-exception v5
    0052: monitor-exit v0
    0053: throw v5
    0054: new-array v0, v6, [I
    0056: iput-object v0, v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->yWkiZmD:[I
    0058: new-array v6, v6, [Ljava/lang/Object;
    005a: iput-object v6, v5, Lcom/easypaisaTweak/newpackage/SfW5jTpdE;->eRtvpvxbz:[Ljava/lang/Object;
    005c: return-void
.end method
