# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract Lcom/myairtelapp/hook/ProxyInvocationHandler;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/reflect/InvocationHandler;

.field private Lcom/myairtelapp/hook/ProxyInvocationHandler;->isBacktraceEnabled:Z
.field private Lcom/myairtelapp/hook/ProxyInvocationHandler;->mMethodProxyMap:Ljava/util/Map;
.field private Lcom/myairtelapp/hook/ProxyInvocationHandler;->mOldObject:Ljava/lang/Object;
.field private Lcom/myairtelapp/hook/ProxyInvocationHandler;->printLevel:I

.method public constructor Lcom/myairtelapp/hook/ProxyInvocationHandler;-><init>()V
    .registers 2
    0000: invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    0003: new-instance v0, Ljava/util/HashMap;
    0005: invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    0008: iput-object v0, v1, Lcom/myairtelapp/hook/ProxyInvocationHandler;->mMethodProxyMap:Ljava/util/Map;
    000a: const/4 v0, #1
    000b: iput v0, v1, Lcom/myairtelapp/hook/ProxyInvocationHandler;->printLevel:I
    000d: const/4 v0, #0
    000e: iput-boolean v0, v1, Lcom/myairtelapp/hook/ProxyInvocationHandler;->isBacktraceEnabled:Z
    0010: return-void
.end method

.method private Lcom/myairtelapp/hook/ProxyInvocationHandler;->getMethodProxy(Ljava/lang/String;)Lcom/myairtelapp/hook/MethodProxy;
    .registers 3
    0000: iget-object v0, v1, Lcom/myairtelapp/hook/ProxyInvocationHandler;->mMethodProxyMap:Ljava/util/Map;
    0002: invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    0005: move-result v0
    0006: if-eqz v0, 0011
    0008: iget-object v1, v1, Lcom/myairtelapp/hook/ProxyInvocationHandler;->mMethodProxyMap:Ljava/util/Map;
    000a: invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    000d: move-result-object v1
    000e: check-cast v1, Lcom/myairtelapp/hook/MethodProxy;
    0010: return-object v1
    0011: const/4 v1, #0
    0012: return-object v1
.end method

.method private varargs Lcom/myairtelapp/hook/ProxyInvocationHandler;->print(I, Ljava/lang/String;, Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)V
    .registers 9
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    0005: new-instance v1, Ljava/lang/StringBuilder;
    0007: const-string v2, '['
    0009: invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    000c: invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    000f: const-string v4, '] '
    0011: invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0014: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0017: move-result-object v4
    0018: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    001b: new-instance v4, Ljava/lang/StringBuilder;
    001d: const-string v1, '('
    001f: invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0022: invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0025: const-string v5, ') :: '
    0027: invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    002a: invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    002d: move-result-object v4
    002e: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0031: invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0034: if-eqz v8, 0064
    0036: array-length v4, v8
    0037: if-lez v4, 0064
    0039: const-string v4, ' : '
    003b: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    003e: invoke-static {v8}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;
    0041: move-result-object v4
    0042: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0045: goto 0064
    0046: move-exception v4
    0047: new-instance v5, Ljava/lang/StringBuilder;
    0049: const-string v8, 'Error to get ['
    004b: invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    004e: invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    0051: move-result-object v7
    0052: invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0055: const-string v7, '] args:\r\n'
    0057: invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    005a: invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    005d: invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0060: move-result-object v4
    0061: invoke-static {v4}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    0064: if-eqz v6, 009f
    0066: iget-boolean v3, v3, Lcom/myairtelapp/hook/ProxyInvocationHandler;->isBacktraceEnabled:Z
    0068: const-string v4, ' -> ['
    006a: if-eqz v3, 0094
    006c: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    006f: invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    0072: const-string v3, ']\r\n----------------------------------------------------------------\r\n'
    0074: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0077: invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    007a: move-result-object v3
    007b: invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;
    007e: move-result-object v3
    007f: invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    0082: move-result-object v3
    0083: const-string v4, ', '
    0085: const-string v5, '\r\n    at '
    0087: invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    008a: move-result-object v3
    008b: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    008e: const-string v3, '\r\n----------------------------------------------------------------\r\n'
    0090: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0093: goto 009f
    0094: invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0097: invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    009a: const-string v3, ']'
    009c: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    009f: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    00a2: move-result-object v3
    00a3: invoke-static {v3}, Lcom/myairtelapp/plugin/L;->v(Ljava/lang/String;)V
    00a6: return-void
.end method

.method public Lcom/myairtelapp/hook/ProxyInvocationHandler;->addMethodProxy(Lcom/myairtelapp/hook/MethodProxy;)V
    .registers 4
    0000: if-eqz v3, 0036
    0002: invoke-virtual {v3}, Lcom/myairtelapp/hook/MethodProxy;->getMethodName()Ljava/lang/String;
    0005: move-result-object v0
    0006: invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    0009: move-result v0
    000a: if-nez v0, 0036
    000c: iget-object v0, v2, Lcom/myairtelapp/hook/ProxyInvocationHandler;->mMethodProxyMap:Ljava/util/Map;
    000e: invoke-virtual {v3}, Lcom/myairtelapp/hook/MethodProxy;->getMethodName()Ljava/lang/String;
    0011: move-result-object v1
    0012: invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    0015: move-result v0
    0016: if-nez v0, 0036
    0018: new-instance v0, Ljava/lang/StringBuilder;
    001a: const-string v1, 'addMethodProxy: '
    001c: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    001f: invoke-virtual {v3}, Lcom/myairtelapp/hook/MethodProxy;->getMethodName()Ljava/lang/String;
    0022: move-result-object v1
    0023: invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0026: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0029: move-result-object v0
    002a: invoke-static {v0}, Lcom/myairtelapp/plugin/L;->v(Ljava/lang/String;)V
    002d: iget-object v2, v2, Lcom/myairtelapp/hook/ProxyInvocationHandler;->mMethodProxyMap:Ljava/util/Map;
    002f: invoke-virtual {v3}, Lcom/myairtelapp/hook/MethodProxy;->getMethodName()Ljava/lang/String;
    0032: move-result-object v0
    0033: invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0036: return-void
.end method

.method public abstract Lcom/myairtelapp/hook/ProxyInvocationHandler;->bindMethodProxies()V
    # abstract or native method

.end method

.method public Lcom/myairtelapp/hook/ProxyInvocationHandler;->getOldObject()Ljava/lang/Object;
    .registers 1
    0000: iget-object v0, v0, Lcom/myairtelapp/hook/ProxyInvocationHandler;->mOldObject:Ljava/lang/Object;
    0002: return-object v0
.end method

.method public varargs Lcom/myairtelapp/hook/ProxyInvocationHandler;->invoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    0000: const-string v10, 'VirtualPhone{method['
    0002: invoke-virtual {v9, v12}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->preProcess([Ljava/lang/Object;)Z
    0005: move-result v0
    0006: if-nez v0, 001e
    0008: iget-object v10, v9, Lcom/myairtelapp/hook/ProxyInvocationHandler;->mOldObject:Ljava/lang/Object;
    000a: invoke-virtual {v11, v10, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;, [Ljava/lang/Object;)Ljava/lang/Object;
    000d: move-result-object v10
    000e: iget v0, v9, Lcom/myairtelapp/hook/ProxyInvocationHandler;->printLevel:I
    0010: const/4 v1, #2
    0011: if-le v0, v1, 001d
    0013: const/4 v1, #3
    0014: const-string v2, 'invoke'
    0016: move-object v0, v9
    0017: move-object v3, v10
    0018: move-object v4, v11
    0019: move-object v5, v12
    001a: invoke-direct/range {v0 .. v5}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->print(I, Ljava/lang/String;, Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)V
    001d: return-object v10
    001e: invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
    0021: move-result-object v0
    0022: invoke-direct {v9, v0}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->getMethodProxy(Ljava/lang/String;)Lcom/myairtelapp/hook/MethodProxy;
    0025: move-result-object v0
    0026: const/4 v1, #1
    0027: if-eqz v0, 0031
    0029: invoke-virtual {v0}, Lcom/myairtelapp/hook/MethodProxy;->isEnable()Z
    002c: move-result v2
    002d: if-eqz v2, 0031
    002f: move v2, v1
    0030: goto 0032
    0031: const/4 v2, #0
    0032: if-nez v2, 0049
    0034: iget-object v0, v9, Lcom/myairtelapp/hook/ProxyInvocationHandler;->mOldObject:Ljava/lang/Object;
    0036: invoke-virtual {v11, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;, [Ljava/lang/Object;)Ljava/lang/Object;
    0039: move-result-object v0
    003a: iget v2, v9, Lcom/myairtelapp/hook/ProxyInvocationHandler;->printLevel:I
    003c: if-le v2, v1, 0048
    003e: const/4 v3, #2
    003f: const-string v4, 'invoke'
    0041: move-object v2, v9
    0042: move-object v5, v0
    0043: move-object v6, v11
    0044: move-object v7, v12
    0045: invoke-direct/range {v2 .. v7}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->print(I, Ljava/lang/String;, Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)V
    0048: return-object v0
    0049: iget-object v1, v9, Lcom/myairtelapp/hook/ProxyInvocationHandler;->mOldObject:Ljava/lang/Object;
    004b: invoke-virtual {v0, v1, v11, v12}, Lcom/myairtelapp/hook/MethodProxy;->beforeInvoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)Z
    004e: move-result v1
    004f: if-eqz v1, 0075
    0051: iget v1, v9, Lcom/myairtelapp/hook/ProxyInvocationHandler;->printLevel:I
    0053: if-lez v1, 0060
    0055: const/4 v3, #1
    0056: const-string v4, 'before'
    0058: const-string v5, ''
    005a: move-object v2, v9
    005b: move-object v6, v11
    005c: move-object v7, v12
    005d: invoke-direct/range {v2 .. v7}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->print(I, Ljava/lang/String;, Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)V
    0060: iget-object v1, v9, Lcom/myairtelapp/hook/ProxyInvocationHandler;->mOldObject:Ljava/lang/Object;
    0062: invoke-virtual {v0, v1, v11, v12}, Lcom/myairtelapp/hook/MethodProxy;->invoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)Ljava/lang/Object;
    0065: move-result-object v1
    0066: iget v2, v9, Lcom/myairtelapp/hook/ProxyInvocationHandler;->printLevel:I
    0068: if-lez v2, 0076
    006a: const/4 v3, #1
    006b: const-string v4, 'invoke'
    006d: move-object v2, v9
    006e: move-object v5, v1
    006f: move-object v6, v11
    0070: move-object v7, v12
    0071: invoke-direct/range {v2 .. v7}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->print(I, Ljava/lang/String;, Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)V
    0074: goto 0076
    0075: const/4 v1, #0
    0076: iget-object v2, v9, Lcom/myairtelapp/hook/ProxyInvocationHandler;->mOldObject:Ljava/lang/Object;
    0078: invoke-virtual {v0, v2, v11, v12, v1}, Lcom/myairtelapp/hook/MethodProxy;->afterInvoke(Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    007b: move-result-object v0
    007c: iget v1, v9, Lcom/myairtelapp/hook/ProxyInvocationHandler;->printLevel:I
    007e: if-lez v1, 008a
    0080: const/4 v4, #1
    0081: const-string v5, 'after'
    0083: move-object v3, v9
    0084: move-object v6, v0
    0085: move-object v7, v11
    0086: move-object v8, v12
    0087: invoke-direct/range {v3 .. v8}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->print(I, Ljava/lang/String;, Ljava/lang/Object;, Ljava/lang/reflect/Method;, [Ljava/lang/Object;)V
    008a: return-object v0
    008b: move-exception v9
    008c: invoke-static {v11, v9}, Lcom/myairtelapp/hook/MethodUtil;->isMethodDeclaredThrowable(Ljava/lang/reflect/Method;, Ljava/lang/Throwable;)Z
    008f: move-result v10
    0090: if-nez v10, 00af
    0092: invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    0095: move-result-object v10
    0096: invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    0099: move-result v10
    009a: if-nez v10, 00a6
    009c: new-instance v10, Ljava/lang/RuntimeException;
    009e: invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    00a1: move-result-object v11
    00a2: invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    00a5: goto 00ab
    00a6: new-instance v10, Ljava/lang/RuntimeException;
    00a8: invoke-direct {v10}, Ljava/lang/RuntimeException;-><init>()V
    00ab: invoke-virtual {v10, v9}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    00ae: throw v10
    00af: throw v9
    00b0: move-exception v9
    00b1: new-instance v0, Ljava/lang/StringBuilder;
    00b3: invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    00b6: invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    00b9: const-string v10, ']'
    00bb: invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00be: if-eqz v12, 00cd
    00c0: const-string v10, ', args'
    00c2: invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00c5: invoke-static {v12}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;
    00c8: move-result-object v10
    00c9: invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00cc: goto 00d2
    00cd: const-string v10, ', args[NULL]'
    00cf: invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00d2: const-string v10, '}'
    00d4: invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00d7: new-instance v10, Ljava/lang/StringBuilder;
    00d9: invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    00dc: invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    00df: move-result-object v11
    00e0: invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    00e3: invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    00e6: invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    00e9: move-result-object v10
    00ea: new-instance v11, Ljava/lang/IllegalArgumentException;
    00ec: invoke-direct {v11, v10, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;, Ljava/lang/Throwable;)V
    00ef: throw v11
    00f0: move-exception v9
    00f1: invoke-virtual {v9}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
    00f4: move-result-object v10
    00f5: invoke-static {v11, v10}, Lcom/myairtelapp/hook/MethodUtil;->isMethodDeclaredThrowable(Ljava/lang/reflect/Method;, Ljava/lang/Throwable;)Z
    00f8: move-result v11
    00f9: if-nez v11, 0137
    00fb: if-eqz v10, 011a
    00fd: invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    0100: move-result-object v9
    0101: invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    0104: move-result v9
    0105: if-nez v9, 0111
    0107: new-instance v9, Ljava/lang/RuntimeException;
    0109: invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    010c: move-result-object v11
    010d: invoke-direct {v9, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    0110: goto 0116
    0111: new-instance v9, Ljava/lang/RuntimeException;
    0113: invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V
    0116: invoke-virtual {v9, v10}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    0119: throw v9
    011a: invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    011d: move-result-object v10
    011e: invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    0121: move-result v10
    0122: if-nez v10, 012e
    0124: new-instance v10, Ljava/lang/RuntimeException;
    0126: invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    0129: move-result-object v11
    012a: invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
    012d: goto 0133
    012e: new-instance v10, Ljava/lang/RuntimeException;
    0130: invoke-direct {v10}, Ljava/lang/RuntimeException;-><init>()V
    0133: invoke-virtual {v10, v9}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    0136: throw v10
    0137: throw v10
.end method

.method public Lcom/myairtelapp/hook/ProxyInvocationHandler;->newProxyInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    0000: iput-object v2, v1, Lcom/myairtelapp/hook/ProxyInvocationHandler;->mOldObject:Ljava/lang/Object;
    0002: invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    0005: move-result-object v2
    0006: invoke-static {v2}, Lcom/myairtelapp/hook/ClassUtil;->getAllInterfaces(Ljava/lang/Class;)[Ljava/lang/Class;
    0009: move-result-object v0
    000a: invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    000d: move-result-object v2
    000e: invoke-static {v2, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;, [Ljava/lang/Class;, Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    0011: move-result-object v1
    0012: return-object v1
.end method

.method public varargs Lcom/myairtelapp/hook/ProxyInvocationHandler;->preProcess([Ljava/lang/Object;)Z
    .registers 2
    0000: const/4 v0, #1
    0001: return v0
.end method

.method public Lcom/myairtelapp/hook/ProxyInvocationHandler;->setOldObject(Ljava/lang/Object;)V
    .registers 2
    0000: iput-object v1, v0, Lcom/myairtelapp/hook/ProxyInvocationHandler;->mOldObject:Ljava/lang/Object;
    0002: return-void
.end method
