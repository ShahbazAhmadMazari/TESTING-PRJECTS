# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/easypaisaTweak/newpackage/QZdPbhBZhe;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static final static Lcom/easypaisaTweak/newpackage/QZdPbhBZhe;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JnXzgCUW;

.method public static constructor Lcom/easypaisaTweak/newpackage/QZdPbhBZhe;-><clinit>()V
    .registers 1
    0000: new-instance v0, Lcom/easypaisaTweak/newpackage/JnXzgCUW;
    0002: invoke-direct {v0}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;-><init>()V
    0005: sput-object v0, Lcom/easypaisaTweak/newpackage/QZdPbhBZhe;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JnXzgCUW;
    0007: return-void
.end method

.method public static Lcom/easypaisaTweak/newpackage/QZdPbhBZhe;->eRtvpvxbz(Ljava/lang/ClassLoader;, Ljava/lang/String;)Ljava/lang/Class;
    .registers 5
    0000: const-string v0, 'Unable to instantiate fragment '
    0002: sget-object v1, Lcom/easypaisaTweak/newpackage/QZdPbhBZhe;->yWkiZmD:Lcom/easypaisaTweak/newpackage/JnXzgCUW;
    0004: const/4 v2, #0
    0005: invoke-virtual {v1, v4, v2}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->getOrDefault(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0008: move-result-object v2
    0009: check-cast v2, Ljava/lang/Class;
    000b: if-nez v2, 0015
    000d: const/4 v2, #0
    000e: invoke-static {v4, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;, Z, Ljava/lang/ClassLoader;)Ljava/lang/Class;
    0011: move-result-object v2
    0012: invoke-virtual {v1, v4, v2}, Lcom/easypaisaTweak/newpackage/JnXzgCUW;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0015: return-object v2
    0016: move-exception v3
    0017: new-instance v1, Lcom/easypaisaTweak/newpackage/eFDuVGU2;
    0019: const-string v2, ': make sure class is a valid subclass of Fragment'
    001b: invoke-static {v0, v4, v2}, Lcom/easypaisaTweak/newpackage/ZjVQ1KP;->eRtvpvxbz(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    001e: move-result-object v4
    001f: invoke-direct {v1, v4, v3}, Lcom/easypaisaTweak/newpackage/eFDuVGU2;-><init>(Ljava/lang/String;, Ljava/lang/Exception;)V
    0022: throw v1
    0023: move-exception v3
    0024: new-instance v1, Lcom/easypaisaTweak/newpackage/eFDuVGU2;
    0026: const-string v2, ': make sure class name exists'
    0028: invoke-static {v0, v4, v2}, Lcom/easypaisaTweak/newpackage/ZjVQ1KP;->eRtvpvxbz(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    002b: move-result-object v4
    002c: invoke-direct {v1, v4, v3}, Lcom/easypaisaTweak/newpackage/eFDuVGU2;-><init>(Ljava/lang/String;, Ljava/lang/Exception;)V
    002f: throw v1
.end method

.method public Lcom/easypaisaTweak/newpackage/QZdPbhBZhe;->yWkiZmD(Ljava/lang/ClassLoader;, Ljava/lang/String;)Landroidx/fragment/app/zkF6VM;
    .registers 6
    0000: const-string v3, ': make sure class name exists, is public, and has an empty constructor that is public'
    0002: const-string v0, 'Unable to instantiate fragment '
    0004: invoke-static {v4, v5}, Lcom/easypaisaTweak/newpackage/QZdPbhBZhe;->eRtvpvxbz(Ljava/lang/ClassLoader;, Ljava/lang/String;)Ljava/lang/Class;
    0007: move-result-object v4
    0008: const/4 v1, #0
    0009: new-array v2, v1, [Ljava/lang/Class;
    000b: invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    000e: move-result-object v4
    000f: new-array v1, v1, [Ljava/lang/Object;
    0011: invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    0014: move-result-object v4
    0015: check-cast v4, Landroidx/fragment/app/zkF6VM;
    0017: return-object v4
    0018: move-exception v3
    0019: new-instance v4, Lcom/easypaisaTweak/newpackage/eFDuVGU2;
    001b: const-string v1, ': calling Fragment constructor caused an exception'
    001d: invoke-static {v0, v5, v1}, Lcom/easypaisaTweak/newpackage/ZjVQ1KP;->eRtvpvxbz(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    0020: move-result-object v5
    0021: invoke-direct {v4, v5, v3}, Lcom/easypaisaTweak/newpackage/eFDuVGU2;-><init>(Ljava/lang/String;, Ljava/lang/Exception;)V
    0024: throw v4
    0025: move-exception v3
    0026: new-instance v4, Lcom/easypaisaTweak/newpackage/eFDuVGU2;
    0028: const-string v1, ': could not find Fragment constructor'
    002a: invoke-static {v0, v5, v1}, Lcom/easypaisaTweak/newpackage/ZjVQ1KP;->eRtvpvxbz(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    002d: move-result-object v5
    002e: invoke-direct {v4, v5, v3}, Lcom/easypaisaTweak/newpackage/eFDuVGU2;-><init>(Ljava/lang/String;, Ljava/lang/Exception;)V
    0031: throw v4
    0032: move-exception v4
    0033: new-instance v1, Lcom/easypaisaTweak/newpackage/eFDuVGU2;
    0035: invoke-static {v0, v5, v3}, Lcom/easypaisaTweak/newpackage/ZjVQ1KP;->eRtvpvxbz(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    0038: move-result-object v3
    0039: invoke-direct {v1, v3, v4}, Lcom/easypaisaTweak/newpackage/eFDuVGU2;-><init>(Ljava/lang/String;, Ljava/lang/Exception;)V
    003c: throw v1
    003d: move-exception v4
    003e: new-instance v1, Lcom/easypaisaTweak/newpackage/eFDuVGU2;
    0040: invoke-static {v0, v5, v3}, Lcom/easypaisaTweak/newpackage/ZjVQ1KP;->eRtvpvxbz(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    0043: move-result-object v3
    0044: invoke-direct {v1, v3, v4}, Lcom/easypaisaTweak/newpackage/eFDuVGU2;-><init>(Ljava/lang/String;, Ljava/lang/Exception;)V
    0047: throw v1
.end method
