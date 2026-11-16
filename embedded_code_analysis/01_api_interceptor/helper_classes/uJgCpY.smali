# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final enum Lcom/easypaisaTweak/newpackage/uJgCpY;
.super Ljava/lang/Enum;
.source "SourceFile"

.field private static final synthetic static Lcom/easypaisaTweak/newpackage/uJgCpY;->$VALUES:[Lcom/easypaisaTweak/newpackage/uJgCpY;
.field public static final enum static Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_ANY:Lcom/easypaisaTweak/newpackage/uJgCpY;
.field public static final enum static Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_CREATE:Lcom/easypaisaTweak/newpackage/uJgCpY;
.field public static final enum static Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_DESTROY:Lcom/easypaisaTweak/newpackage/uJgCpY;
.field public static final enum static Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_PAUSE:Lcom/easypaisaTweak/newpackage/uJgCpY;
.field public static final enum static Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_RESUME:Lcom/easypaisaTweak/newpackage/uJgCpY;
.field public static final enum static Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_START:Lcom/easypaisaTweak/newpackage/uJgCpY;
.field public static final enum static Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_STOP:Lcom/easypaisaTweak/newpackage/uJgCpY;

.method public static constructor Lcom/easypaisaTweak/newpackage/uJgCpY;-><clinit>()V
    .registers 9
    0000: new-instance v0, Lcom/easypaisaTweak/newpackage/uJgCpY;
    0002: const-string v1, 'ON_CREATE'
    0004: const/4 v2, #0
    0005: invoke-direct {v0, v1, v2}, Lcom/easypaisaTweak/newpackage/uJgCpY;-><init>(Ljava/lang/String;, I)V
    0008: sput-object v0, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_CREATE:Lcom/easypaisaTweak/newpackage/uJgCpY;
    000a: new-instance v1, Lcom/easypaisaTweak/newpackage/uJgCpY;
    000c: const-string v2, 'ON_START'
    000e: const/4 v3, #1
    000f: invoke-direct {v1, v2, v3}, Lcom/easypaisaTweak/newpackage/uJgCpY;-><init>(Ljava/lang/String;, I)V
    0012: sput-object v1, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_START:Lcom/easypaisaTweak/newpackage/uJgCpY;
    0014: new-instance v2, Lcom/easypaisaTweak/newpackage/uJgCpY;
    0016: const-string v3, 'ON_RESUME'
    0018: const/4 v4, #2
    0019: invoke-direct {v2, v3, v4}, Lcom/easypaisaTweak/newpackage/uJgCpY;-><init>(Ljava/lang/String;, I)V
    001c: sput-object v2, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_RESUME:Lcom/easypaisaTweak/newpackage/uJgCpY;
    001e: new-instance v3, Lcom/easypaisaTweak/newpackage/uJgCpY;
    0020: const-string v4, 'ON_PAUSE'
    0022: const/4 v5, #3
    0023: invoke-direct {v3, v4, v5}, Lcom/easypaisaTweak/newpackage/uJgCpY;-><init>(Ljava/lang/String;, I)V
    0026: sput-object v3, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_PAUSE:Lcom/easypaisaTweak/newpackage/uJgCpY;
    0028: new-instance v4, Lcom/easypaisaTweak/newpackage/uJgCpY;
    002a: const-string v5, 'ON_STOP'
    002c: const/4 v6, #4
    002d: invoke-direct {v4, v5, v6}, Lcom/easypaisaTweak/newpackage/uJgCpY;-><init>(Ljava/lang/String;, I)V
    0030: sput-object v4, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_STOP:Lcom/easypaisaTweak/newpackage/uJgCpY;
    0032: new-instance v5, Lcom/easypaisaTweak/newpackage/uJgCpY;
    0034: const-string v6, 'ON_DESTROY'
    0036: const/4 v7, #5
    0037: invoke-direct {v5, v6, v7}, Lcom/easypaisaTweak/newpackage/uJgCpY;-><init>(Ljava/lang/String;, I)V
    003a: sput-object v5, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_DESTROY:Lcom/easypaisaTweak/newpackage/uJgCpY;
    003c: new-instance v6, Lcom/easypaisaTweak/newpackage/uJgCpY;
    003e: const-string v7, 'ON_ANY'
    0040: const/4 v8, #6
    0041: invoke-direct {v6, v7, v8}, Lcom/easypaisaTweak/newpackage/uJgCpY;-><init>(Ljava/lang/String;, I)V
    0044: sput-object v6, Lcom/easypaisaTweak/newpackage/uJgCpY;->ON_ANY:Lcom/easypaisaTweak/newpackage/uJgCpY;
    0046: filled-new-array/range {v0 .. v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->isForceCodeForRefreshToken()Z
    0049: move-result-object v0
    004a: sput-object v0, Lcom/easypaisaTweak/newpackage/uJgCpY;->$VALUES:[Lcom/easypaisaTweak/newpackage/uJgCpY;
    004c: return-void
.end method

.method public constructor Lcom/easypaisaTweak/newpackage/uJgCpY;-><init>(Ljava/lang/String;, I)V
    .registers 3
    0000: invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;, I)V
    0003: return-void
.end method

.method public static Lcom/easypaisaTweak/newpackage/uJgCpY;->valueOf(Ljava/lang/String;)Lcom/easypaisaTweak/newpackage/uJgCpY;
    .registers 2
    0000: const-class v0, Lcom/easypaisaTweak/newpackage/uJgCpY;
    0002: invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;, Ljava/lang/String;)Ljava/lang/Enum;
    0005: move-result-object v1
    0006: check-cast v1, Lcom/easypaisaTweak/newpackage/uJgCpY;
    0008: return-object v1
.end method

.method public static Lcom/easypaisaTweak/newpackage/uJgCpY;->values()[Lcom/easypaisaTweak/newpackage/uJgCpY;
    .registers 1
    0000: sget-object v0, Lcom/easypaisaTweak/newpackage/uJgCpY;->$VALUES:[Lcom/easypaisaTweak/newpackage/uJgCpY;
    0002: invoke-virtual {v0}, [Lcom/easypaisaTweak/newpackage/uJgCpY;->clone()Ljava/lang/Object;
    0005: move-result-object v0
    0006: check-cast v0, [Lcom/easypaisaTweak/newpackage/uJgCpY;
    0008: return-object v0
.end method
