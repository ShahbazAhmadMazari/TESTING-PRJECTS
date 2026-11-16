# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract synthetic Lcom/easypaisaTweak/newpackage/XYdjBGRA;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static final synthetic static Lcom/easypaisaTweak/newpackage/XYdjBGRA;->yWkiZmD:[I

.method public static constructor Lcom/easypaisaTweak/newpackage/XYdjBGRA;-><clinit>()V
    .registers 3
    0000: invoke-static {}, Lcom/easypaisaTweak/newpackage/uJgCpY;->values()[Lcom/easypaisaTweak/newpackage/uJgCpY;
    0003: move-result-object v0
    0004: array-length v0, v0
    0005: new-array v0, v0, [I
    0007: sput-object v0, Lcom/easypaisaTweak/newpackage/XYdjBGRA;->yWkiZmD:[I
    0009: sget-object v1, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_CREATE:Lcom/easypaisaTweak/newpackage/uJgCpY;
    000b: invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I
    000e: move-result v1
    000f: const/4 v2, #1
    0010: aput v2, v0, v1
    0012: sget-object v0, Lcom/easypaisaTweak/newpackage/XYdjBGRA;->yWkiZmD:[I
    0014: sget-object v1, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_START:Lcom/easypaisaTweak/newpackage/uJgCpY;
    0016: invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I
    0019: move-result v1
    001a: const/4 v2, #2
    001b: aput v2, v0, v1
    001d: sget-object v0, Lcom/easypaisaTweak/newpackage/XYdjBGRA;->yWkiZmD:[I
    001f: sget-object v1, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_RESUME:Lcom/easypaisaTweak/newpackage/uJgCpY;
    0021: invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I
    0024: move-result v1
    0025: const/4 v2, #3
    0026: aput v2, v0, v1
    0028: sget-object v0, Lcom/easypaisaTweak/newpackage/XYdjBGRA;->yWkiZmD:[I
    002a: sget-object v1, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_PAUSE:Lcom/easypaisaTweak/newpackage/uJgCpY;
    002c: invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I
    002f: move-result v1
    0030: const/4 v2, #4
    0031: aput v2, v0, v1
    0033: sget-object v0, Lcom/easypaisaTweak/newpackage/XYdjBGRA;->yWkiZmD:[I
    0035: sget-object v1, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_STOP:Lcom/easypaisaTweak/newpackage/uJgCpY;
    0037: invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I
    003a: move-result v1
    003b: const/4 v2, #5
    003c: aput v2, v0, v1
    003e: sget-object v0, Lcom/easypaisaTweak/newpackage/XYdjBGRA;->yWkiZmD:[I
    0040: sget-object v1, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_DESTROY:Lcom/easypaisaTweak/newpackage/uJgCpY;
    0042: invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I
    0045: move-result v1
    0046: const/4 v2, #6
    0047: aput v2, v0, v1
    0049: sget-object v0, Lcom/easypaisaTweak/newpackage/XYdjBGRA;->yWkiZmD:[I
    004b: sget-object v1, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_ANY:Lcom/easypaisaTweak/newpackage/uJgCpY;
    004d: invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I
    0050: move-result v1
    0051: const/4 v2, #7
    0052: aput v2, v0, v1
    0054: return-void
.end method
