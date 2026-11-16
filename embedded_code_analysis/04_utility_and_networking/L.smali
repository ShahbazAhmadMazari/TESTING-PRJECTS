# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/plugin/L;
.super Ljava/lang/Object;
.source "SourceFile"

.field public static final static Lcom/myairtelapp/plugin/L;->TAG:Ljava/lang/String;

.method public constructor Lcom/myairtelapp/plugin/L;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: return-void
.end method

.method public static Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    .registers 3
    0000: const/4 v0, #3
    0001: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->isLoggable(I)Z
    0004: move-result v0
    0005: if-eqz v0, 0020
    0007: invoke-static {}, Lcom/myairtelapp/plugin/L;->getMethodNameAndLineNumber()Ljava/lang/String;
    000a: move-result-object v0
    000b: new-instance v1, Ljava/lang/StringBuilder;
    000d: invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    0010: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0013: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0016: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0019: move-result-object v2
    001a: const/4 v0, #0
    001b: const-string v1, 'myairtel-plugin'
    001d: invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/Throwable;)I
    0020: return-void
.end method

.method public static Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    .registers 3
    0000: const/4 v0, #6
    0001: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->isLoggable(I)Z
    0004: move-result v0
    0005: if-eqz v0, 001f
    0007: invoke-static {}, Lcom/myairtelapp/plugin/L;->getMethodNameAndLineNumber()Ljava/lang/String;
    000a: move-result-object v0
    000b: new-instance v1, Ljava/lang/StringBuilder;
    000d: invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    0010: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0013: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0016: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0019: move-result-object v2
    001a: const-string v0, 'myairtel-plugin'
    001c: invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;, Ljava/lang/String;)I
    001f: return-void
.end method

.method public static Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;, Ljava/lang/Throwable;)V
    .registers 4
    0000: const/4 v0, #6
    0001: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->isLoggable(I)Z
    0004: move-result v0
    0005: if-eqz v0, 0027
    0007: invoke-static {}, Lcom/myairtelapp/plugin/L;->getMethodNameAndLineNumber()Ljava/lang/String;
    000a: move-result-object v0
    000b: new-instance v1, Ljava/lang/StringBuilder;
    000d: invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    0010: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0013: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0016: const-string v2, ' -> '
    0018: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001b: invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    001e: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0021: move-result-object v2
    0022: const-string v3, 'myairtel-plugin'
    0024: invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;, Ljava/lang/String;)I
    0027: return-void
.end method

.method private static Lcom/myairtelapp/plugin/L;->getMethodNameAndLineNumber()Ljava/lang/String;
    .registers 4
    0000: invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    0003: move-result-object v0
    0004: invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
    0007: move-result-object v0
    0008: if-nez v0, 0019
    000a: new-instance v0, Ljava/lang/Throwable;
    000c: invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V
    000f: invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;
    0012: move-result-object v0
    0013: invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
    0016: move-result-object v0
    0017: const/4 v1, #2
    0018: goto 001a
    0019: const/4 v1, #4
    001a: aget-object v0, v0, v1
    001c: if-eqz v0, 0045
    001e: invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;
    0021: move-result-object v1
    0022: invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
    0025: move-result-object v2
    0026: invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I
    0029: move-result v0
    002a: const-string v3, '.'
    002c: invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    002f: move-result v3
    0030: add-int/lit8 v3, v3, #1
    0032: invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    0035: move-result-object v1
    0036: invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    0039: move-result-object v0
    003a: filled-new-array {v1, v2, v0}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    003d: move-result-object v0
    003e: const-string v1, '%s.%s : %d ---> '
    0040: invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;, [Ljava/lang/Object;)Ljava/lang/String;
    0043: move-result-object v0
    0044: return-object v0
    0045: const/4 v0, #0
    0046: return-object v0
.end method

.method private static Lcom/myairtelapp/plugin/L;->getSplitter(I)Ljava/lang/String;
    .registers 4
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    0005: const/4 v1, #0
    0006: if-ge v1, v3, 0010
    0008: const-string v2, '-'
    000a: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000d: add-int/lit8 v1, v1, #1
    000f: goto 0006
    0010: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0013: move-result-object v3
    0014: return-object v3
.end method

.method public static Lcom/myairtelapp/plugin/L;->i(Ljava/lang/String;)V
    .registers 3
    0000: const/4 v0, #4
    0001: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->isLoggable(I)Z
    0004: move-result v0
    0005: if-eqz v0, 001f
    0007: invoke-static {}, Lcom/myairtelapp/plugin/L;->getMethodNameAndLineNumber()Ljava/lang/String;
    000a: move-result-object v0
    000b: new-instance v1, Ljava/lang/StringBuilder;
    000d: invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    0010: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0013: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0016: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0019: move-result-object v2
    001a: const-string v0, 'myairtel-plugin'
    001c: invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;, Ljava/lang/String;)I
    001f: return-void
.end method

.method private static Lcom/myairtelapp/plugin/L;->isLoggable(I)Z
    .registers 2
    0000: const-string v0, 'myairtel-plugin'
    0002: invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;, I)Z
    0005: const/4 v1, #1
    0006: return v1
.end method

.method public static varargs Lcom/myairtelapp/plugin/L;->logs([Ljava/lang/Object;)V
    .registers 3
    0000: const/4 v0, #3
    0001: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->isLoggable(I)Z
    0004: move-result v0
    0005: if-eqz v0, 0024
    0007: invoke-static {}, Lcom/myairtelapp/plugin/L;->getMethodNameAndLineNumber()Ljava/lang/String;
    000a: move-result-object v0
    000b: new-instance v1, Ljava/lang/StringBuilder;
    000d: invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    0010: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0013: invoke-static {v2}, Lcom/myairtelapp/plugin/L;->processBody([Ljava/lang/Object;)Ljava/lang/String;
    0016: move-result-object v2
    0017: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001a: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    001d: move-result-object v2
    001e: const/4 v0, #0
    001f: const-string v1, 'myairtel-plugin'
    0021: invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/Throwable;)I
    0024: return-void
.end method

.method private static varargs Lcom/myairtelapp/plugin/L;->processBody([Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    0000: if-eqz v5, 0059
    0002: array-length v0, v5
    0003: const/4 v1, #0
    0004: const/4 v2, #1
    0005: if-ne v0, v2, 0010
    0007: aget-object v0, v5, v1
    0009: if-eqz v0, 0010
    000b: invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    000e: move-result-object v5
    000f: goto 005a
    0010: new-instance v0, Ljava/lang/StringBuilder;
    0012: invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    0015: const-string v2, 'line.separator'
    0017: invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    001a: move-result-object v3
    001b: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001e: const/16 v3, #87
    0020: invoke-static {v3}, Lcom/myairtelapp/plugin/L;->getSplitter(I)Ljava/lang/String;
    0023: move-result-object v4
    0024: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0027: array-length v4, v5
    0028: if-ge v1, v4, 0046
    002a: invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    002d: move-result-object v4
    002e: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0031: const-string v4, 'args['
    0033: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0036: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    0039: const-string v4, ']:= '
    003b: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    003e: aget-object v4, v5, v1
    0040: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0043: add-int/lit8 v1, v1, #1
    0045: goto 0027
    0046: invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    0049: move-result-object v5
    004a: invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    004d: invoke-static {v3}, Lcom/myairtelapp/plugin/L;->getSplitter(I)Ljava/lang/String;
    0050: move-result-object v5
    0051: invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0054: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0057: move-result-object v5
    0058: goto 005a
    0059: const/4 v5, #0
    005a: invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    005d: move-result v0
    005e: if-eqz v0, 0062
    0060: const-string v5, '(no content)'
    0062: return-object v5
.end method

.method public static Lcom/myairtelapp/plugin/L;->recordOperation(Ljava/lang/String;)V
    .registers 6
    0000: new-instance v0, Ljava/text/SimpleDateFormat;
    0002: const-string v1, 'yyyy-MM-dd HH:mm:ss'
    0004: sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;
    0006: invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;, Ljava/util/Locale;)V
    0009: new-instance v1, Ljava/lang/StringBuilder;
    000b: invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    000e: new-instance v2, Ljava/util/Date;
    0010: invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    0013: move-result-wide v3
    0014: invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V
    0017: invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    001a: move-result-object v0
    001b: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001e: const-string v0, ' : '
    0020: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0023: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0026: move-result-object v0
    0027: invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    002a: move-result-object v1
    002b: new-instance v2, Ljava/lang/StringBuilder;
    002d: invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    0030: invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;
    0033: move-result-object v1
    0034: invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0037: sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
    0039: invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    003c: const-string v3, 'phoenix/log'
    003e: invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0041: invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0044: move-result-object v2
    0045: new-instance v3, Ljava/io/File;
    0047: invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    004a: invoke-virtual {v3}, Ljava/io/File;->exists()Z
    004d: move-result v4
    004e: if-nez v4, 0053
    0050: invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    0053: new-instance v3, Ljava/io/FileWriter;
    0055: new-instance v4, Ljava/lang/StringBuilder;
    0057: invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    005a: invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    005d: invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0060: const-string v1, 'log.txt'
    0062: invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0065: invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0068: move-result-object v1
    0069: const/4 v2, #1
    006a: invoke-direct {v3, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;, Z)V
    006d: new-instance v1, Ljava/lang/StringBuilder;
    006f: invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    0072: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0075: invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0078: const-string v5, '\n'
    007a: invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    007d: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0080: move-result-object v5
    0081: invoke-virtual {v3, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    0084: invoke-virtual {v3}, Ljava/io/Writer;->close()V
    0087: goto 009a
    0088: move-exception v5
    0089: new-instance v0, Ljava/lang/StringBuilder;
    008b: const-string v1, 'error : '
    008d: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0090: invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0093: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0096: move-result-object v5
    0097: invoke-static {v5}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    009a: return-void
.end method

.method public static Lcom/myairtelapp/plugin/L;->v(Ljava/lang/String;)V
    .registers 3
    0000: const/4 v0, #2
    0001: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->isLoggable(I)Z
    0004: move-result v0
    0005: if-eqz v0, 0020
    0007: invoke-static {}, Lcom/myairtelapp/plugin/L;->getMethodNameAndLineNumber()Ljava/lang/String;
    000a: move-result-object v0
    000b: new-instance v1, Ljava/lang/StringBuilder;
    000d: invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    0010: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0013: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0016: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0019: move-result-object v2
    001a: const/4 v0, #0
    001b: const-string v1, 'myairtel-plugin'
    001d: invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/Throwable;)I
    0020: return-void
.end method

.method public static Lcom/myairtelapp/plugin/L;->w(Ljava/lang/String;)V
    .registers 3
    0000: const/4 v0, #5
    0001: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->isLoggable(I)Z
    0004: move-result v0
    0005: if-eqz v0, 001f
    0007: invoke-static {}, Lcom/myairtelapp/plugin/L;->getMethodNameAndLineNumber()Ljava/lang/String;
    000a: move-result-object v0
    000b: new-instance v1, Ljava/lang/StringBuilder;
    000d: invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    0010: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0013: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0016: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0019: move-result-object v2
    001a: const-string v0, 'myairtel-plugin'
    001c: invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;, Ljava/lang/String;)I
    001f: return-void
.end method
