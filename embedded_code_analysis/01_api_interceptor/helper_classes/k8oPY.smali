# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract Lcom/easypaisaTweak/newpackage/k8oPY;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static final static Lcom/easypaisaTweak/newpackage/k8oPY;->TAG:Ljava/lang/String;
.field private static final static Lcom/easypaisaTweak/newpackage/k8oPY;->sLock:Ljava/lang/Object;
.field private static static Lcom/easypaisaTweak/newpackage/k8oPY;->sTempValue:Landroid/util/TypedValue;

.method public static constructor Lcom/easypaisaTweak/newpackage/k8oPY;-><clinit>()V
    .registers 1
    0000: new-instance v0, Ljava/lang/Object;
    0002: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0005: sput-object v0, Lcom/easypaisaTweak/newpackage/k8oPY;->sLock:Ljava/lang/Object;
    0007: return-void
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->checkSelfPermission(Landroid/content/Context;, Ljava/lang/String;)I
    .registers 4
    0000: if-eqz v3, 000f
    0002: invoke-static {}, Landroid/os/Process;->myPid()I
    0005: move-result v0
    0006: invoke-static {}, Landroid/os/Process;->myUid()I
    0009: move-result v1
    000a: invoke-virtual {v2, v3, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;, I, I)I
    000d: move-result v2
    000e: return v2
    000f: new-instance v2, Ljava/lang/IllegalArgumentException;
    0011: const-string v3, 'permission is null'
    0013: invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
    0016: throw v2
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 1
    0000: invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 1
    0000: invoke-virtual {v0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->getColor(Landroid/content/Context;, I)I
    .registers 2
    0000: invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I
    0003: move-result v0
    0004: return v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->getColorStateList(Landroid/content/Context;, I)Landroid/content/res/ColorStateList;
    .registers 2
    0000: invoke-virtual {v0, v1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->getDataDir(Landroid/content/Context;)Ljava/io/File;
    .registers 1
    0000: invoke-virtual {v0}, Landroid/content/Context;->getDataDir()Ljava/io/File;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->getDrawable(Landroid/content/Context;, I)Landroid/graphics/drawable/Drawable;
    .registers 2
    0000: invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 1
    0000: invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->getExternalFilesDirs(Landroid/content/Context;, Ljava/lang/String;)[Ljava/io/File;
    .registers 2
    0000: invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;
    .registers 1
    0000: invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;
    .registers 1
    0000: invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->getObbDirs(Landroid/content/Context;)[Ljava/io/File;
    .registers 1
    0000: invoke-virtual {v0}, Landroid/content/Context;->getObbDirs()[Ljava/io/File;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->getSystemService(Landroid/content/Context;, Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    0000: invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->getSystemServiceName(Landroid/content/Context;, Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    0000: invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->isDeviceProtectedStorage(Landroid/content/Context;)Z
    .registers 1
    0000: invoke-virtual {v0}, Landroid/content/Context;->isDeviceProtectedStorage()Z
    0003: move-result v0
    0004: return v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->startActivities(Landroid/content/Context;, [Landroid/content/Intent;)Z
    .registers 3
    0000: const/4 v0, #0
    0001: invoke-static {v1, v2, v0}, Lcom/easypaisaTweak/newpackage/k8oPY;->startActivities(Landroid/content/Context;, [Landroid/content/Intent;, Landroid/os/Bundle;)Z
    0004: move-result v1
    0005: return v1
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->startActivities(Landroid/content/Context;, [Landroid/content/Intent;, Landroid/os/Bundle;)Z
    .registers 3
    0000: invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivities([Landroid/content/Intent;, Landroid/os/Bundle;)V
    0003: const/4 v0, #1
    0004: return v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->startActivity(Landroid/content/Context;, Landroid/content/Intent;, Landroid/os/Bundle;)V
    .registers 3
    0000: invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;, Landroid/os/Bundle;)V
    0003: return-void
.end method

.method public static Lcom/easypaisaTweak/newpackage/k8oPY;->startForegroundService(Landroid/content/Context;, Landroid/content/Intent;)V
    .registers 2
    0000: invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    0003: return-void
.end method
