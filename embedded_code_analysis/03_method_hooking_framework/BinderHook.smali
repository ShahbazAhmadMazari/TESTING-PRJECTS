# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract Lcom/myairtelapp/hook/BinderHook;
.super Lcom/myairtelapp/hook/ProxyHook;
.source "SourceFile"


.method public constructor Lcom/myairtelapp/hook/BinderHook;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Lcom/myairtelapp/hook/ProxyHook;-><init>()V
    0003: return-void
.end method

.method public Lcom/myairtelapp/hook/BinderHook;->bindMethodProxies()V
    .registers 4
    0000: new-instance v0, Lcom/myairtelapp/hook/FixedResultMethodProxy;
    0002: invoke-virtual {v3}, Lcom/myairtelapp/hook/BinderHook;->getServiceName()Ljava/lang/String;
    0005: move-result-object v1
    0006: invoke-static {v1}, Lcom/myairtelapp/hook/ServiceCache;->getProxyBinder(Ljava/lang/String;)Ljava/lang/Object;
    0009: move-result-object v1
    000a: const-string v2, 'asBinder'
    000c: invoke-direct {v0, v2, v1}, Lcom/myairtelapp/hook/FixedResultMethodProxy;-><init>(Ljava/lang/String;, Ljava/lang/Object;)V
    000f: invoke-virtual {v3, v0}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->addMethodProxy(Lcom/myairtelapp/hook/MethodProxy;)V
    0012: return-void
.end method

.method public abstract Lcom/myairtelapp/hook/BinderHook;->getAsInterfaceMethod()Lcom/myairtelapp/hook/ReflectMethod;
    # abstract or native method

.end method

.method public Lcom/myairtelapp/hook/BinderHook;->getOldObject()Landroid/os/IInterface;
    .registers 4
    0000: invoke-virtual {v3}, Lcom/myairtelapp/hook/BinderHook;->getServiceName()Ljava/lang/String;
    0003: move-result-object v0
    0004: invoke-super {v3}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->getOldObject()Ljava/lang/Object;
    0007: move-result-object v1
    0008: check-cast v1, Landroid/os/IInterface;
    000a: if-nez v1, 0053
    000c: sget-object v1, Lcom/myairtelapp/hook/ServiceManagerDelegate;->getServiceOrThrow:Lcom/myairtelapp/hook/ReflectMethod;
    000e: filled-new-array {v0}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    0011: move-result-object v2
    0012: invoke-virtual {v1, v2}, Lcom/myairtelapp/hook/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    0015: move-result-object v1
    0016: check-cast v1, Landroid/os/IBinder;
    0018: const/4 v2, #0
    0019: if-nez v1, 0032
    001b: new-instance v3, Ljava/lang/StringBuilder;
    001d: const-string v1, 'Oops!!! Not found service('
    001f: invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0022: invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0025: const-string v0, ')'
    0027: invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    002a: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    002d: move-result-object v3
    002e: invoke-static {v3}, Lcom/myairtelapp/plugin/L;->w(Ljava/lang/String;)V
    0031: return-object v2
    0032: invoke-static {v0, v1}, Lcom/myairtelapp/hook/ServiceCache;->addOriginBinder(Ljava/lang/String;, Landroid/os/IBinder;)V
    0035: invoke-virtual {v3}, Lcom/myairtelapp/hook/BinderHook;->getAsInterfaceMethod()Lcom/myairtelapp/hook/ReflectMethod;
    0038: move-result-object v0
    0039: if-nez v0, 0041
    003b: const-string v3, 'Oops!!! getAsInterfaceMethod() return null'
    003d: invoke-static {v3}, Lcom/myairtelapp/plugin/L;->e(Ljava/lang/String;)V
    0040: return-object v2
    0041: invoke-virtual {v3}, Lcom/myairtelapp/hook/BinderHook;->getAsInterfaceMethod()Lcom/myairtelapp/hook/ReflectMethod;
    0044: move-result-object v0
    0045: filled-new-array {v1}, Lcom/google/android/gms/base/R$styleable;-><clinit>()V
    0048: move-result-object v1
    0049: invoke-virtual {v0, v1}, Lcom/myairtelapp/hook/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;
    004c: move-result-object v0
    004d: move-object v1, v0
    004e: check-cast v1, Landroid/os/IInterface;
    0050: invoke-virtual {v3, v1}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->setOldObject(Ljava/lang/Object;)V
    0053: return-object v1
.end method

.method public bridge synthetic Lcom/myairtelapp/hook/BinderHook;->getOldObject()Ljava/lang/Object;
    .registers 1
    0000: invoke-virtual {v0}, Lcom/myairtelapp/hook/BinderHook;->getOldObject()Landroid/os/IInterface;
    0003: move-result-object v0
    0004: return-object v0
.end method

.method public abstract Lcom/myairtelapp/hook/BinderHook;->getServiceName()Ljava/lang/String;
    # abstract or native method

.end method

.method public Lcom/myairtelapp/hook/BinderHook;->install()V
    .registers 4
    0000: invoke-virtual {v3}, Lcom/myairtelapp/hook/BinderHook;->getServiceName()Ljava/lang/String;
    0003: move-result-object v0
    0004: new-instance v1, Ljava/lang/StringBuilder;
    0006: const-string v2, '[-] Service: ['
    0008: invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    000b: invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000e: const-string v2, '] start to install...'
    0010: invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0013: invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0016: move-result-object v1
    0017: invoke-static {v1}, Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    001a: invoke-virtual {v3}, Lcom/myairtelapp/hook/BinderHook;->getOldObject()Landroid/os/IInterface;
    001d: move-result-object v1
    001e: if-nez v1, 0037
    0020: new-instance v3, Ljava/lang/StringBuilder;
    0022: const-string v1, '[!] Service: ['
    0024: invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0027: invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    002a: const-string v0, '] install failed!'
    002c: invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    002f: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    0032: move-result-object v3
    0033: invoke-static {v3}, Lcom/myairtelapp/plugin/L;->w(Ljava/lang/String;)V
    0036: return-void
    0037: invoke-virtual {v3, v1}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->newProxyInstance(Ljava/lang/Object;)Ljava/lang/Object;
    003a: move-result-object v1
    003b: check-cast v1, Landroid/os/IInterface;
    003d: invoke-static {v0, v1}, Lcom/myairtelapp/hook/ServiceCache;->addProxyInterface(Ljava/lang/String;, Landroid/os/IInterface;)V
    0040: new-instance v1, Lcom/myairtelapp/hook/ServiceManagerCacheHook;
    0042: invoke-direct {v1, v0}, Lcom/myairtelapp/hook/ServiceManagerCacheHook;-><init>(Ljava/lang/String;)V
    0045: invoke-virtual {v1}, Lcom/myairtelapp/hook/ServiceManagerCacheHook;->install()V
    0048: invoke-super {v3}, Lcom/myairtelapp/hook/ProxyHook;->install()V
    004b: new-instance v3, Ljava/lang/StringBuilder;
    004d: const-string v1, '[+] Service: ['
    004f: invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0052: invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0055: const-string v0, '] install finished.'
    0057: invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    005a: invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    005d: move-result-object v3
    005e: invoke-static {v3}, Lcom/myairtelapp/plugin/L;->d(Ljava/lang/String;)V
    0061: return-void
.end method
