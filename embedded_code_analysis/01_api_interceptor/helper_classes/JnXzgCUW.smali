# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/easypaisaTweak/newpackage/JnXzgCUW;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static static Lcom/easypaisaTweak/newpackage/JnXzgCUW;->Gi9lbFSu:I
.field public static static Lcom/easypaisaTweak/newpackage/JnXzgCUW;->SfW5jTpdE:[Ljava/lang/Object;
.field public static static Lcom/easypaisaTweak/newpackage/JnXzgCUW;->UjNghiE:I
.field public static static Lcom/easypaisaTweak/newpackage/JnXzgCUW;->zkF6VM:[Ljava/lang/Object;
.field public Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
.field public Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
.field public Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I

.method public constructor Lcom/easypaisaTweak/newpackage/JnXzgCUW;-><init>()V
    .registers 2
    0000: invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    0003: sget-object v0, Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;->yWkiZmD:[I
    0005: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0007: sget-object v0, Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;->eRtvpvxbz:[Ljava/lang/Object;
    0009: iput-object v0, v1, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    000b: const/4 v0, #0
    000c: iput v0, v1, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    000e: return-void
.end method

.method public constructor Lcom/easypaisaTweak/newpackage/JnXzgCUW;-><init>(I)V
    .registers 2
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: if-nez v1, 000e
    0005: sget-object v1, Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;->yWkiZmD:[I
    0007: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0009: sget-object v1, Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;->eRtvpvxbz:[Ljava/lang/Object;
    000b: iput-object v1, v0, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    000d: goto 0011
    000e: invoke-direct {v0, v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD(I)V
    0011: const/4 v1, #0
    0012: iput v1, v0, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0014: return-void
.end method

.method public static Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH([I, [Ljava/lang/Object;, I)V
    .registers 10
    0000: array-length v0, v7
    0001: const/16 v1, #8
    0003: const/4 v2, #0
    0004: const/4 v3, #2
    0005: const/4 v4, #0
    0006: const/16 v5, #10
    0008: const/4 v6, #1
    0009: if-ne v0, v1, 002e
    000b: const-class v0, Lcom/easypaisaTweak/newpackage/JnXzgCUW;
    000d: monitor-enter v0
    000e: sget v1, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->UjNghiE:I
    0010: if-ge v1, v5, 0029
    0012: sget-object v1, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->zkF6VM:[Ljava/lang/Object;
    0014: aput-object v1, v8, v4
    0016: aput-object v7, v8, v6
    0018: shl-int/lit8 v7, v9, #1
    001a: sub-int/2addr v7, v6
    001b: if-lt v7, v3, 0022
    001d: aput-object v2, v8, v7
    001f: add-int/lit8 v7, v7, #-1
    0021: goto 001b
    0022: sput-object v8, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->zkF6VM:[Ljava/lang/Object;
    0024: sget v7, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->UjNghiE:I
    0026: add-int/2addr v7, v6
    0027: sput v7, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->UjNghiE:I
    0029: monitor-exit v0
    002a: goto 0055
    002b: move-exception v7
    002c: monitor-exit v0
    002d: throw v7
    002e: array-length v0, v7
    002f: const/4 v1, #4
    0030: if-ne v0, v1, 0055
    0032: const-class v0, Lcom/easypaisaTweak/newpackage/JnXzgCUW;
    0034: monitor-enter v0
    0035: sget v1, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->Gi9lbFSu:I
    0037: if-ge v1, v5, 0050
    0039: sget-object v1, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->SfW5jTpdE:[Ljava/lang/Object;
    003b: aput-object v1, v8, v4
    003d: aput-object v7, v8, v6
    003f: shl-int/lit8 v7, v9, #1
    0041: sub-int/2addr v7, v6
    0042: if-lt v7, v3, 0049
    0044: aput-object v2, v8, v7
    0046: add-int/lit8 v7, v7, #-1
    0048: goto 0042
    0049: sput-object v8, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->SfW5jTpdE:[Ljava/lang/Object;
    004b: sget v7, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->Gi9lbFSu:I
    004d: add-int/2addr v7, v6
    004e: sput v7, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->Gi9lbFSu:I
    0050: monitor-exit v0
    0051: goto 0055
    0052: move-exception v7
    0053: monitor-exit v0
    0054: throw v7
    0055: return-void
.end method

.method private Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD(I)V
    .registers 7
    0000: const/16 v0, #8
    0002: const/4 v1, #0
    0003: const/4 v2, #0
    0004: const/4 v3, #1
    0005: if-ne v6, v0, 002c
    0007: const-class v0, Lcom/easypaisaTweak/newpackage/JnXzgCUW;
    0009: monitor-enter v0
    000a: sget-object v4, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->zkF6VM:[Ljava/lang/Object;
    000c: if-eqz v4, 0027
    000e: iput-object v4, v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0010: aget-object v6, v4, v2
    0012: check-cast v6, [Ljava/lang/Object;
    0014: sput-object v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->zkF6VM:[Ljava/lang/Object;
    0016: aget-object v6, v4, v3
    0018: check-cast v6, [I
    001a: iput-object v6, v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    001c: aput-object v1, v4, v3
    001e: aput-object v1, v4, v2
    0020: sget v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->UjNghiE:I
    0022: sub-int/2addr v5, v3
    0023: sput v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->UjNghiE:I
    0025: monitor-exit v0
    0026: return-void
    0027: monitor-exit v0
    0028: goto 0054
    0029: move-exception v5
    002a: monitor-exit v0
    002b: throw v5
    002c: const/4 v0, #4
    002d: if-ne v6, v0, 0054
    002f: const-class v0, Lcom/easypaisaTweak/newpackage/JnXzgCUW;
    0031: monitor-enter v0
    0032: sget-object v4, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->SfW5jTpdE:[Ljava/lang/Object;
    0034: if-eqz v4, 004f
    0036: iput-object v4, v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0038: aget-object v6, v4, v2
    003a: check-cast v6, [Ljava/lang/Object;
    003c: sput-object v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->SfW5jTpdE:[Ljava/lang/Object;
    003e: aget-object v6, v4, v3
    0040: check-cast v6, [I
    0042: iput-object v6, v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0044: aput-object v1, v4, v3
    0046: aput-object v1, v4, v2
    0048: sget v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->Gi9lbFSu:I
    004a: sub-int/2addr v5, v3
    004b: sput v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->Gi9lbFSu:I
    004d: monitor-exit v0
    004e: return-void
    004f: monitor-exit v0
    0050: goto 0054
    0051: move-exception v5
    0052: monitor-exit v0
    0053: throw v5
    0054: new-array v0, v6, [I
    0056: iput-object v0, v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0058: shl-int/2addr v6, v3
    0059: new-array v6, v6, [Ljava/lang/Object;
    005b: iput-object v6, v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    005d: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->Gi9lbFSu(Ljava/lang/Object;)I
    .registers 3
    0000: if-nez v2, 0007
    0002: invoke-virtual {v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->zkF6VM()I
    0005: move-result v1
    0006: goto 000f
    0007: invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    000a: move-result v0
    000b: invoke-virtual {v1, v0, v2}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->SfW5jTpdE(I, Ljava/lang/Object;)I
    000e: move-result v1
    000f: return v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->SfW5jTpdE(I, Ljava/lang/Object;)I
    .registers 9
    0000: iget v0, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0002: const/4 v1, #-1
    0003: if-nez v0, 0006
    0005: return v1
    0006: iget-object v2, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0008: invoke-static {v2, v0, v7}, Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;->yWkiZmD([I, I, I)I
    000b: move-result v2
    000c: if-gez v2, 000f
    000e: return v2
    000f: iget-object v3, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0011: shl-int/lit8 v4, v2, #1
    0013: aget-object v3, v3, v4
    0015: invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    0018: move-result v3
    0019: if-eqz v3, 001c
    001b: return v2
    001c: add-int/lit8 v3, v2, #1
    001e: if-ge v3, v0, 0036
    0020: iget-object v4, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0022: aget v4, v4, v3
    0024: if-ne v4, v7, 0036
    0026: iget-object v4, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0028: shl-int/lit8 v5, v3, #1
    002a: aget-object v4, v4, v5
    002c: invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    002f: move-result v4
    0030: if-eqz v4, 0033
    0032: return v3
    0033: add-int/lit8 v3, v3, #1
    0035: goto 001e
    0036: add-int/2addr v2, v1
    0037: if-ltz v2, 004f
    0039: iget-object v0, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    003b: aget v0, v0, v2
    003d: if-ne v0, v7, 004f
    003f: iget-object v0, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0041: shl-int/lit8 v1, v2, #1
    0043: aget-object v0, v0, v1
    0045: invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    0048: move-result v0
    0049: if-eqz v0, 004c
    004b: return v2
    004c: add-int/lit8 v2, v2, #-1
    004e: goto 0037
    004f: not-int v6, v3
    0050: return v6
    0051: new-instance v6, Ljava/util/ConcurrentModificationException;
    0053: invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V
    0056: throw v6
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->UjNghiE(Ljava/lang/Object;)I
    .registers 6
    0000: iget v0, v4, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0002: mul-int/lit8 v0, v0, #2
    0004: iget-object v4, v4, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0006: const/4 v1, #1
    0007: if-nez v5, 0016
    0009: move v5, v1
    000a: if-ge v5, v0, 0027
    000c: aget-object v2, v4, v5
    000e: if-nez v2, 0013
    0010: shr-int/lit8 v4, v5, #1
    0012: return v4
    0013: add-int/lit8 v5, v5, #2
    0015: goto 000a
    0016: move v2, v1
    0017: if-ge v2, v0, 0027
    0019: aget-object v3, v4, v2
    001b: invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    001e: move-result v3
    001f: if-eqz v3, 0024
    0021: shr-int/lit8 v4, v2, #1
    0023: return v4
    0024: add-int/lit8 v2, v2, #2
    0026: goto 0017
    0027: const/4 v4, #-1
    0028: return v4
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->ZDfAQYocn5(I)Ljava/lang/Object;
    .registers 12
    0000: iget-object v0, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0002: shl-int/lit8 v1, v11, #1
    0004: add-int/lit8 v2, v1, #1
    0006: aget-object v2, v0, v2
    0008: iget v3, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    000a: const/4 v4, #0
    000b: const/4 v5, #1
    000c: if-gt v3, v5, 001c
    000e: iget-object v11, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0010: invoke-static {v11, v0, v3}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH([I, [Ljava/lang/Object;, I)V
    0013: sget-object v11, Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;->yWkiZmD:[I
    0015: iput-object v11, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0017: sget-object v11, Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;->eRtvpvxbz:[Ljava/lang/Object;
    0019: iput-object v11, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    001b: goto 0079
    001c: add-int/lit8 v6, v3, #-1
    001e: iget-object v7, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0020: array-length v8, v7
    0021: const/16 v9, #8
    0023: if-le v8, v9, 005e
    0025: array-length v8, v7
    0026: div-int/lit8 v8, v8, #3
    0028: if-ge v3, v8, 005e
    002a: if-le v3, v9, 0030
    002c: shr-int/lit8 v8, v3, #1
    002e: add-int v9, v3, v8
    0030: invoke-direct {v10, v9}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD(I)V
    0033: iget v8, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0035: if-ne v3, v8, 0058
    0037: if-lez v11, 0043
    0039: iget-object v8, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    003b: invoke-static {v7, v4, v8, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    003e: iget-object v8, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0040: invoke-static {v0, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0043: if-ge v11, v6, 0078
    0045: add-int/lit8 v4, v11, #1
    0047: iget-object v8, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0049: sub-int v9, v6, v11
    004b: invoke-static {v7, v4, v8, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    004e: shl-int/lit8 v11, v4, #1
    0050: iget-object v4, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0052: shl-int/lit8 v5, v9, #1
    0054: invoke-static {v0, v11, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0057: goto 0078
    0058: new-instance v10, Ljava/util/ConcurrentModificationException;
    005a: invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V
    005d: throw v10
    005e: if-ge v11, v6, 006e
    0060: add-int/lit8 v0, v11, #1
    0062: sub-int v4, v6, v11
    0064: invoke-static {v7, v0, v7, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0067: iget-object v11, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0069: shl-int/2addr v0, v5
    006a: shl-int/2addr v4, v5
    006b: invoke-static {v11, v0, v11, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    006e: iget-object v11, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0070: shl-int/lit8 v0, v6, #1
    0072: const/4 v1, #0
    0073: aput-object v1, v11, v0
    0075: add-int/2addr v0, v5
    0076: aput-object v1, v11, v0
    0078: move v4, v6
    0079: iget v11, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    007b: if-ne v3, v11, 0080
    007d: iput v4, v10, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    007f: return-object v2
    0080: new-instance v10, Ljava/util/ConcurrentModificationException;
    0082: invoke-direct {v10}, Ljava/util/ConcurrentModificationException;-><init>()V
    0085: throw v10
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->clear()V
    .registers 5
    0000: iget v0, v4, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0002: if-lez v0, 0016
    0004: iget-object v1, v4, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0006: iget-object v2, v4, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0008: sget-object v3, Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;->yWkiZmD:[I
    000a: iput-object v3, v4, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    000c: sget-object v3, Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;->eRtvpvxbz:[Ljava/lang/Object;
    000e: iput-object v3, v4, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0010: const/4 v3, #0
    0011: iput v3, v4, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0013: invoke-static {v1, v2, v0}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH([I, [Ljava/lang/Object;, I)V
    0016: iget v4, v4, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0018: if-gtz v4, 001b
    001a: return-void
    001b: new-instance v4, Ljava/util/ConcurrentModificationException;
    001d: invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V
    0020: throw v4
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->containsKey(Ljava/lang/Object;)Z
    .registers 2
    0000: invoke-virtual {v0, v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->Gi9lbFSu(Ljava/lang/Object;)I
    0003: move-result v0
    0004: if-ltz v0, 0008
    0006: const/4 v0, #1
    0007: goto 0009
    0008: const/4 v0, #0
    0009: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->containsValue(Ljava/lang/Object;)Z
    .registers 2
    0000: invoke-virtual {v0, v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->UjNghiE(Ljava/lang/Object;)I
    0003: move-result v0
    0004: if-ltz v0, 0008
    0006: const/4 v0, #1
    0007: goto 0009
    0008: const/4 v0, #0
    0009: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz(I)V
    .registers 7
    0000: iget v0, v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0002: iget-object v1, v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0004: array-length v2, v1
    0005: if-ge v2, v6, 0020
    0007: iget-object v2, v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0009: invoke-direct {v5, v6}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD(I)V
    000c: iget v6, v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    000e: if-lez v6, 001d
    0010: iget-object v6, v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0012: const/4 v3, #0
    0013: invoke-static {v1, v3, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0016: iget-object v6, v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0018: shl-int/lit8 v4, v0, #1
    001a: invoke-static {v2, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    001d: invoke-static {v1, v2, v0}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH([I, [Ljava/lang/Object;, I)V
    0020: iget v5, v5, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0022: if-ne v5, v0, 0025
    0024: return-void
    0025: new-instance v5, Ljava/util/ConcurrentModificationException;
    0027: invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V
    002a: throw v5
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->equals(Ljava/lang/Object;)Z
    .registers 8
    0000: const/4 v0, #1
    0001: if-ne v6, v7, 0004
    0003: return v0
    0004: instance-of v1, v7, Lcom/easypaisaTweak/newpackage/JnXzgCUW;
    0006: const/4 v2, #0
    0007: if-eqz v1, 003d
    0009: check-cast v7, Lcom/easypaisaTweak/newpackage/JnXzgCUW;
    000b: iget v1, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    000d: iget v3, v7, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    000f: if-eq v1, v3, 0012
    0011: return v2
    0012: move v1, v2
    0013: iget v3, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0015: if-ge v1, v3, 003b
    0017: iget-object v3, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0019: shl-int/lit8 v4, v1, #1
    001b: aget-object v3, v3, v4
    001d: invoke-virtual {v6, v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hXElriBC2(I)Ljava/lang/Object;
    0020: move-result-object v4
    0021: const/4 v5, #0
    0022: invoke-virtual {v7, v3, v5}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->getOrDefault(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0025: move-result-object v5
    0026: if-nez v4, 0031
    0028: if-nez v5, 0030
    002a: invoke-virtual {v7, v3}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->containsKey(Ljava/lang/Object;)Z
    002d: move-result v3
    002e: if-nez v3, 0038
    0030: return v2
    0031: invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    0034: move-result v3
    0035: if-nez v3, 0038
    0037: return v2
    0038: add-int/lit8 v1, v1, #1
    003a: goto 0013
    003b: return v0
    003c: return v2
    003d: instance-of v1, v7, Ljava/util/Map;
    003f: if-eqz v1, 0075
    0041: check-cast v7, Ljava/util/Map;
    0043: iget v1, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0045: invoke-interface {v7}, Ljava/util/Map;->size()I
    0048: move-result v3
    0049: if-eq v1, v3, 004c
    004b: return v2
    004c: move v1, v2
    004d: iget v3, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    004f: if-ge v1, v3, 0074
    0051: iget-object v3, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0053: shl-int/lit8 v4, v1, #1
    0055: aget-object v3, v3, v4
    0057: invoke-virtual {v6, v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hXElriBC2(I)Ljava/lang/Object;
    005a: move-result-object v4
    005b: invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    005e: move-result-object v5
    005f: if-nez v4, 006a
    0061: if-nez v5, 0069
    0063: invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    0066: move-result v3
    0067: if-nez v3, 0071
    0069: return v2
    006a: invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    006d: move-result v3
    006e: if-nez v3, 0071
    0070: return v2
    0071: add-int/lit8 v1, v1, #1
    0073: goto 004d
    0074: return v0
    0075: return v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    0000: const/4 v0, #0
    0001: invoke-virtual {v1, v2, v0}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->getOrDefault(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0004: move-result-object v1
    0005: return-object v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->getOrDefault(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    0000: invoke-virtual {v0, v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->Gi9lbFSu(Ljava/lang/Object;)I
    0003: move-result v1
    0004: if-ltz v1, 000e
    0006: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0008: shl-int/lit8 v1, v1, #1
    000a: add-int/lit8 v1, v1, #1
    000c: aget-object v2, v0, v1
    000e: return-object v2
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hXElriBC2(I)Ljava/lang/Object;
    .registers 2
    0000: iget-object v0, v0, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0002: shl-int/lit8 v1, v1, #1
    0004: add-int/lit8 v1, v1, #1
    0006: aget-object v0, v0, v1
    0008: return-object v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hashCode()I
    .registers 9
    0000: iget-object v0, v8, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0002: iget-object v1, v8, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0004: iget v8, v8, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0006: const/4 v2, #0
    0007: const/4 v3, #1
    0008: move v4, v2
    0009: move v5, v4
    000a: if-ge v4, v8, 001f
    000c: aget-object v6, v1, v3
    000e: aget v7, v0, v4
    0010: if-nez v6, 0014
    0012: move v6, v2
    0013: goto 0018
    0014: invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I
    0017: move-result v6
    0018: xor-int/2addr v6, v7
    0019: add-int/2addr v5, v6
    001a: add-int/lit8 v4, v4, #1
    001c: add-int/lit8 v3, v3, #2
    001e: goto 000a
    001f: return v5
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->isEmpty()Z
    .registers 1
    0000: iget v0, v0, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0002: if-gtz v0, 0006
    0004: const/4 v0, #1
    0005: goto 0007
    0006: const/4 v0, #0
    0007: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    0000: iget v0, v9, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0002: const/4 v1, #0
    0003: if-nez v10, 000b
    0005: invoke-virtual {v9}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->zkF6VM()I
    0008: move-result v2
    0009: move v3, v1
    000a: goto 0016
    000b: invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I
    000e: move-result v2
    000f: invoke-virtual {v9, v2, v10}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->SfW5jTpdE(I, Ljava/lang/Object;)I
    0012: move-result v3
    0013: move v8, v3
    0014: move v3, v2
    0015: move v2, v8
    0016: if-ltz v2, 0023
    0018: shl-int/lit8 v10, v2, #1
    001a: add-int/lit8 v10, v10, #1
    001c: iget-object v9, v9, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    001e: aget-object v0, v9, v10
    0020: aput-object v11, v9, v10
    0022: return-object v0
    0023: not-int v2, v2
    0024: iget-object v4, v9, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0026: array-length v5, v4
    0027: if-lt v0, v5, 0058
    0029: const/16 v5, #8
    002b: if-lt v0, v5, 0031
    002d: shr-int/lit8 v5, v0, #1
    002f: add-int/2addr v5, v0
    0030: goto 0036
    0031: const/4 v6, #4
    0032: if-lt v0, v6, 0035
    0034: goto 0036
    0035: move v5, v6
    0036: iget-object v6, v9, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0038: invoke-direct {v9, v5}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD(I)V
    003b: iget v5, v9, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    003d: if-ne v0, v5, 0052
    003f: iget-object v5, v9, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0041: array-length v7, v5
    0042: if-lez v7, 004e
    0044: array-length v7, v4
    0045: invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0048: iget-object v5, v9, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    004a: array-length v7, v6
    004b: invoke-static {v6, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    004e: invoke-static {v4, v6, v0}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH([I, [Ljava/lang/Object;, I)V
    0051: goto 0058
    0052: new-instance v9, Ljava/util/ConcurrentModificationException;
    0054: invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V
    0057: throw v9
    0058: if-ge v2, v0, 0071
    005a: iget-object v1, v9, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    005c: add-int/lit8 v4, v2, #1
    005e: sub-int v5, v0, v2
    0060: invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0063: iget-object v1, v9, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0065: shl-int/lit8 v5, v2, #1
    0067: shl-int/lit8 v4, v4, #1
    0069: iget v6, v9, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    006b: sub-int/2addr v6, v2
    006c: shl-int/lit8 v6, v6, #1
    006e: invoke-static {v1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;, I, Ljava/lang/Object;, I, I)V
    0071: iget v1, v9, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0073: if-ne v0, v1, 008c
    0075: iget-object v0, v9, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0077: array-length v4, v0
    0078: if-ge v2, v4, 008c
    007a: aput v3, v0, v2
    007c: iget-object v0, v9, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    007e: shl-int/lit8 v2, v2, #1
    0080: aput-object v10, v0, v2
    0082: add-int/lit8 v2, v2, #1
    0084: aput-object v11, v0, v2
    0086: add-int/lit8 v1, v1, #1
    0088: iput v1, v9, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    008a: const/4 v9, #0
    008b: return-object v9
    008c: new-instance v9, Ljava/util/ConcurrentModificationException;
    008e: invoke-direct {v9}, Ljava/util/ConcurrentModificationException;-><init>()V
    0091: throw v9
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->putIfAbsent(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    0000: const/4 v0, #0
    0001: invoke-virtual {v1, v2, v0}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->getOrDefault(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0004: move-result-object v0
    0005: if-nez v0, 000b
    0007: invoke-virtual {v1, v2, v3}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    000a: move-result-object v0
    000b: return-object v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    0000: invoke-virtual {v0, v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->Gi9lbFSu(Ljava/lang/Object;)I
    0003: move-result v1
    0004: if-ltz v1, 000b
    0006: invoke-virtual {v0, v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->ZDfAQYocn5(I)Ljava/lang/Object;
    0009: move-result-object v0
    000a: return-object v0
    000b: const/4 v0, #0
    000c: return-object v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->remove(Ljava/lang/Object;, Ljava/lang/Object;)Z
    .registers 4
    0000: invoke-virtual {v1, v2}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->Gi9lbFSu(Ljava/lang/Object;)I
    0003: move-result v2
    0004: if-ltz v2, 0019
    0006: invoke-virtual {v1, v2}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hXElriBC2(I)Ljava/lang/Object;
    0009: move-result-object v0
    000a: if-eq v3, v0, 0014
    000c: if-eqz v3, 0019
    000e: invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    0011: move-result v3
    0012: if-eqz v3, 0019
    0014: invoke-virtual {v1, v2}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->ZDfAQYocn5(I)Ljava/lang/Object;
    0017: const/4 v1, #1
    0018: return v1
    0019: const/4 v1, #0
    001a: return v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->replace(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    0000: invoke-virtual {v1, v2}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->Gi9lbFSu(Ljava/lang/Object;)I
    0003: move-result v2
    0004: if-ltz v2, 0011
    0006: shl-int/lit8 v2, v2, #1
    0008: add-int/lit8 v2, v2, #1
    000a: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    000c: aget-object v0, v1, v2
    000e: aput-object v3, v1, v2
    0010: return-object v0
    0011: const/4 v1, #0
    0012: return-object v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->replace(Ljava/lang/Object;, Ljava/lang/Object;, Ljava/lang/Object;)Z
    .registers 5
    0000: invoke-virtual {v1, v2}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->Gi9lbFSu(Ljava/lang/Object;)I
    0003: move-result v2
    0004: if-ltz v2, 001e
    0006: invoke-virtual {v1, v2}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hXElriBC2(I)Ljava/lang/Object;
    0009: move-result-object v0
    000a: if-eq v0, v3, 0014
    000c: if-eqz v3, 001e
    000e: invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    0011: move-result v3
    0012: if-eqz v3, 001e
    0014: const/4 v3, #1
    0015: shl-int/2addr v2, v3
    0016: add-int/2addr v2, v3
    0017: iget-object v1, v1, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0019: aget-object v0, v1, v2
    001b: aput-object v4, v1, v2
    001d: return v3
    001e: const/4 v1, #0
    001f: return v1
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->size()I
    .registers 1
    0000: iget v0, v0, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0002: return v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->toString()Ljava/lang/String;
    .registers 5
    0000: invoke-virtual {v4}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->isEmpty()Z
    0003: move-result v0
    0004: if-eqz v0, 0009
    0006: const-string v4, '{}'
    0008: return-object v4
    0009: new-instance v0, Ljava/lang/StringBuilder;
    000b: iget v1, v4, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    000d: mul-int/lit8 v1, v1, #28
    000f: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
    0012: const/16 v1, #123
    0014: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    0017: const/4 v1, #0
    0018: iget v2, v4, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    001a: if-ge v1, v2, 0049
    001c: if-lez v1, 0023
    001e: const-string v2, ', '
    0020: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0023: iget-object v2, v4, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0025: shl-int/lit8 v3, v1, #1
    0027: aget-object v2, v2, v3
    0029: const-string v3, '(this Map)'
    002b: if-eq v2, v4, 0031
    002d: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0030: goto 0034
    0031: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0034: const/16 v2, #61
    0036: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    0039: invoke-virtual {v4, v1}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hXElriBC2(I)Ljava/lang/Object;
    003c: move-result-object v2
    003d: if-eq v2, v4, 0043
    003f: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0042: goto 0046
    0043: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0046: add-int/lit8 v1, v1, #1
    0048: goto 0018
    0049: const/16 v4, #125
    004b: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    004e: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0051: move-result-object v4
    0052: return-object v4
.end method

.method public final Lcom/easypaisaTweak/newpackage/JnXzgCUW;->zkF6VM()I
    .registers 7
    0000: iget v0, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->hO03fCMH:I
    0002: const/4 v1, #-1
    0003: if-nez v0, 0006
    0005: return v1
    0006: iget-object v2, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0008: const/4 v3, #0
    0009: invoke-static {v2, v0, v3}, Lcom/easypaisaTweak/newpackage/ZDfAQYocn5;->yWkiZmD([I, I, I)I
    000c: move-result v2
    000d: if-gez v2, 0010
    000f: return v2
    0010: iget-object v3, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0012: shl-int/lit8 v4, v2, #1
    0014: aget-object v3, v3, v4
    0016: if-nez v3, 0019
    0018: return v2
    0019: add-int/lit8 v3, v2, #1
    001b: if-ge v3, v0, 002f
    001d: iget-object v4, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    001f: aget v4, v4, v3
    0021: if-nez v4, 002f
    0023: iget-object v4, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    0025: shl-int/lit8 v5, v3, #1
    0027: aget-object v4, v4, v5
    0029: if-nez v4, 002c
    002b: return v3
    002c: add-int/lit8 v3, v3, #1
    002e: goto 001b
    002f: add-int/2addr v2, v1
    0030: if-ltz v2, 0044
    0032: iget-object v0, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->yWkiZmD:[I
    0034: aget v0, v0, v2
    0036: if-nez v0, 0044
    0038: iget-object v0, v6, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->eRtvpvxbz:[Ljava/lang/Object;
    003a: shl-int/lit8 v1, v2, #1
    003c: aget-object v0, v0, v1
    003e: if-nez v0, 0041
    0040: return v2
    0041: add-int/lit8 v2, v2, #-1
    0043: goto 0030
    0044: not-int v6, v3
    0045: return v6
    0046: new-instance v6, Ljava/util/ConcurrentModificationException;
    0048: invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V
    004b: throw v6
.end method
