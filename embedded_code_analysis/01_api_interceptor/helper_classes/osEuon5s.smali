# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract synthetic Lcom/easypaisaTweak/newpackage/osEuon5s;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static final synthetic static Lcom/easypaisaTweak/newpackage/osEuon5s;->eRtvpvxbz:[I
.field public static final synthetic static Lcom/easypaisaTweak/newpackage/osEuon5s;->yWkiZmD:[I

.method public static constructor Lcom/easypaisaTweak/newpackage/osEuon5s;-><clinit>()V
    .registers 7
    0000: invoke-static {}, Lcom/easypaisaTweak/newpackage/i10j1NTc;->values()[Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0003: move-result-object v0
    0004: array-length v0, v0
    0005: new-array v0, v0, [I
    0007: sput-object v0, Lcom/easypaisaTweak/newpackage/osEuon5s;->eRtvpvxbz:[I
    0009: const/4 v1, #1
    000a: aput v1, v0, v1
    000c: const/4 v0, #2
    000d: sget-object v2, Lcom/easypaisaTweak/newpackage/osEuon5s;->eRtvpvxbz:[I
    000f: aput v0, v2, v0
    0011: const/4 v2, #3
    0012: sget-object v3, Lcom/easypaisaTweak/newpackage/osEuon5s;->eRtvpvxbz:[I
    0014: aput v2, v3, v2
    0016: const/4 v3, #4
    0017: sget-object v4, Lcom/easypaisaTweak/newpackage/osEuon5s;->eRtvpvxbz:[I
    0019: aput v3, v4, v3
    001b: const/4 v4, #5
    001c: sget-object v5, Lcom/easypaisaTweak/newpackage/osEuon5s;->eRtvpvxbz:[I
    001e: const/4 v6, #0
    001f: aput v4, v5, v6
    0021: invoke-static {}, Lcom/easypaisaTweak/newpackage/uJgCpY;->values()[Lcom/easypaisaTweak/newpackage/uJgCpY;
    0024: move-result-object v5
    0025: array-length v5, v5
    0026: new-array v5, v5, [I
    0028: sput-object v5, Lcom/easypaisaTweak/newpackage/osEuon5s;->yWkiZmD:[I
    002a: sget-object v6, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_CREATE:Lcom/easypaisaTweak/newpackage/uJgCpY;
    002c: invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I
    002f: move-result v6
    0030: aput v1, v5, v6
    0032: sget-object v1, Lcom/easypaisaTweak/newpackage/osEuon5s;->yWkiZmD:[I
    0034: sget-object v5, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_STOP:Lcom/easypaisaTweak/newpackage/uJgCpY;
    0036: invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I
    0039: move-result v5
    003a: aput v0, v1, v5
    003c: sget-object v0, Lcom/easypaisaTweak/newpackage/osEuon5s;->yWkiZmD:[I
    003e: sget-object v1, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_START:Lcom/easypaisaTweak/newpackage/uJgCpY;
    0040: invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I
    0043: move-result v1
    0044: aput v2, v0, v1
    0046: sget-object v0, Lcom/easypaisaTweak/newpackage/osEuon5s;->yWkiZmD:[I
    0048: sget-object v1, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_PAUSE:Lcom/easypaisaTweak/newpackage/uJgCpY;
    004a: invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I
    004d: move-result v1
    004e: aput v3, v0, v1
    0050: sget-object v0, Lcom/easypaisaTweak/newpackage/osEuon5s;->yWkiZmD:[I
    0052: sget-object v1, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_RESUME:Lcom/easypaisaTweak/newpackage/uJgCpY;
    0054: invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I
    0057: move-result v1
    0058: aput v4, v0, v1
    005a: sget-object v0, Lcom/easypaisaTweak/newpackage/osEuon5s;->yWkiZmD:[I
    005c: sget-object v1, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_DESTROY:Lcom/easypaisaTweak/newpackage/uJgCpY;
    005e: invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I
    0061: move-result v1
    0062: const/4 v2, #6
    0063: aput v2, v0, v1
    0065: sget-object v0, Lcom/easypaisaTweak/newpackage/osEuon5s;->yWkiZmD:[I
    0067: sget-object v1, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_ANY:Lcom/easypaisaTweak/newpackage/uJgCpY;
    0069: invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I
    006c: move-result v1
    006d: const/4 v2, #7
    006e: aput v2, v0, v1
    0070: return-void
.end method
