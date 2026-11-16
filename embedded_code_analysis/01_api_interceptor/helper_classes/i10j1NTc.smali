# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final enum Lcom/easypaisaTweak/newpackage/i10j1NTc;
.super Ljava/lang/Enum;
.source "SourceFile"

.field public static final enum static Lcom/easypaisaTweak/newpackage/i10j1NTc;->Gi9lbFSu:Lcom/easypaisaTweak/newpackage/i10j1NTc;
.field public static final enum static Lcom/easypaisaTweak/newpackage/i10j1NTc;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/i10j1NTc;
.field public static final enum static Lcom/easypaisaTweak/newpackage/i10j1NTc;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/i10j1NTc;
.field public static final enum static Lcom/easypaisaTweak/newpackage/i10j1NTc;->hO03fCMH:Lcom/easypaisaTweak/newpackage/i10j1NTc;
.field public static final enum static Lcom/easypaisaTweak/newpackage/i10j1NTc;->yWkiZmD:Lcom/easypaisaTweak/newpackage/i10j1NTc;
.field public static final synthetic static Lcom/easypaisaTweak/newpackage/i10j1NTc;->zkF6VM:[Lcom/easypaisaTweak/newpackage/i10j1NTc;

.method public static constructor Lcom/easypaisaTweak/newpackage/i10j1NTc;-><clinit>()V
    .registers 7
    0000: new-instance v0, Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0002: const-string v1, 'DESTROYED'
    0004: const/4 v2, #0
    0005: invoke-direct {v0, v1, v2}, Lcom/easypaisaTweak/newpackage/i10j1NTc;-><init>(Ljava/lang/String;, I)V
    0008: sput-object v0, Lcom/easypaisaTweak/newpackage/i10j1NTc;->yWkiZmD:Lcom/easypaisaTweak/newpackage/i10j1NTc;
    000a: new-instance v1, Lcom/easypaisaTweak/newpackage/i10j1NTc;
    000c: const-string v2, 'INITIALIZED'
    000e: const/4 v3, #1
    000f: invoke-direct {v1, v2, v3}, Lcom/easypaisaTweak/newpackage/i10j1NTc;-><init>(Ljava/lang/String;, I)V
    0012: sput-object v1, Lcom/easypaisaTweak/newpackage/i10j1NTc;->eRtvpvxbz:Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0014: new-instance v2, Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0016: const-string v3, 'CREATED'
    0018: const/4 v4, #2
    0019: invoke-direct {v2, v3, v4}, Lcom/easypaisaTweak/newpackage/i10j1NTc;-><init>(Ljava/lang/String;, I)V
    001c: sput-object v2, Lcom/easypaisaTweak/newpackage/i10j1NTc;->hO03fCMH:Lcom/easypaisaTweak/newpackage/i10j1NTc;
    001e: new-instance v3, Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0020: const-string v4, 'STARTED'
    0022: const/4 v5, #3
    0023: invoke-direct {v3, v4, v5}, Lcom/easypaisaTweak/newpackage/i10j1NTc;-><init>(Ljava/lang/String;, I)V
    0026: sput-object v3, Lcom/easypaisaTweak/newpackage/i10j1NTc;->SfW5jTpdE:Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0028: new-instance v4, Lcom/easypaisaTweak/newpackage/i10j1NTc;
    002a: const-string v5, 'RESUMED'
    002c: const/4 v6, #4
    002d: invoke-direct {v4, v5, v6}, Lcom/easypaisaTweak/newpackage/i10j1NTc;-><init>(Ljava/lang/String;, I)V
    0030: sput-object v4, Lcom/easypaisaTweak/newpackage/i10j1NTc;->Gi9lbFSu:Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0032: filled-new-array {v0, v1, v2, v3, v4}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->getServerClientId()Ljava/lang/String;
    0035: move-result-object v0
    0036: sput-object v0, Lcom/easypaisaTweak/newpackage/i10j1NTc;->zkF6VM:[Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0038: return-void
.end method

.method public constructor Lcom/easypaisaTweak/newpackage/i10j1NTc;-><init>(Ljava/lang/String;, I)V
    .registers 3
    0000: invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;, I)V
    0003: return-void
.end method

.method public static Lcom/easypaisaTweak/newpackage/i10j1NTc;->valueOf(Ljava/lang/String;)Lcom/easypaisaTweak/newpackage/i10j1NTc;
    .registers 2
    0000: const-class v0, Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0002: invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;, Ljava/lang/String;)Ljava/lang/Enum;
    0005: move-result-object v1
    0006: check-cast v1, Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0008: return-object v1
.end method

.method public static Lcom/easypaisaTweak/newpackage/i10j1NTc;->values()[Lcom/easypaisaTweak/newpackage/i10j1NTc;
    .registers 1
    0000: sget-object v0, Lcom/easypaisaTweak/newpackage/i10j1NTc;->zkF6VM:[Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0002: invoke-virtual {v0}, [Lcom/easypaisaTweak/newpackage/i10j1NTc;->clone()Ljava/lang/Object;
    0005: move-result-object v0
    0006: check-cast v0, [Lcom/easypaisaTweak/newpackage/i10j1NTc;
    0008: return-object v0
.end method
