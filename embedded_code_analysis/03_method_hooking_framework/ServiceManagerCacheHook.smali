# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/ServiceManagerCacheHook;
.super Lcom/myairtelapp/hook/ProxyHook;
.source "SourceFile"

.field private Lcom/myairtelapp/hook/ServiceManagerCacheHook;->mServiceName:Ljava/lang/String;

.method public constructor Lcom/myairtelapp/hook/ServiceManagerCacheHook;-><init>(Ljava/lang/String;)V
    .registers 2
    0000: invoke-direct {v0}, Lcom/myairtelapp/hook/ProxyHook;-><init>()V
    0003: iput-object v1, v0, Lcom/myairtelapp/hook/ServiceManagerCacheHook;->mServiceName:Ljava/lang/String;
    0005: return-void
.end method

.method public Lcom/myairtelapp/hook/ServiceManagerCacheHook;->bindMethodProxies()V
    .registers 4
    0000: new-instance v0, Lcom/myairtelapp/hook/FixedResultMethodProxy;
    0002: iget-object v1, v3, Lcom/myairtelapp/hook/ServiceManagerCacheHook;->mServiceName:Ljava/lang/String;
    0004: invoke-static {v1}, Lcom/myairtelapp/hook/ServiceCache;->getProxyInterface(Ljava/lang/String;)Landroid/os/IInterface;
    0007: move-result-object v1
    0008: const-string v2, 'queryLocalInterface'
    000a: invoke-direct {v0, v2, v1}, Lcom/myairtelapp/hook/FixedResultMethodProxy;-><init>(Ljava/lang/String;, Ljava/lang/Object;)V
    000d: invoke-virtual {v3, v0}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->addMethodProxy(Lcom/myairtelapp/hook/MethodProxy;)V
    0010: return-void
.end method

.method public Lcom/myairtelapp/hook/ServiceManagerCacheHook;->install()V
    .registers 5
    0000: sget-object v0, Lcom/myairtelapp/hook/ServiceManagerDelegate;->sCache:Lcom/myairtelapp/hook/ReflectObjectField;
    0002: invoke-virtual {v0}, Lcom/myairtelapp/hook/ReflectObjectField;->get()Ljava/lang/Object;
    0005: move-result-object v0
    0006: check-cast v0, Ljava/util/Map;
    0008: if-eqz v0, 0046
    000a: iget-object v1, v4, Lcom/myairtelapp/hook/ServiceManagerCacheHook;->mServiceName:Ljava/lang/String;
    000c: invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    000f: move-result-object v1
    0010: check-cast v1, Landroid/os/IBinder;
    0012: iget-object v2, v4, Lcom/myairtelapp/hook/ServiceManagerCacheHook;->mServiceName:Ljava/lang/String;
    0014: invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    0017: iget-object v2, v4, Lcom/myairtelapp/hook/ServiceManagerCacheHook;->mServiceName:Ljava/lang/String;
    0019: invoke-static {v2}, Lcom/myairtelapp/hook/ServiceCache;->getOriginBinder(Ljava/lang/String;)Landroid/os/IBinder;
    001c: move-result-object v2
    001d: if-nez v2, 0032
    001f: if-nez v1, 0022
    0021: return-void
    0022: invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    0025: move-result-object v3
    0026: invoke-static {v3}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z
    0029: move-result v3
    002a: if-nez v3, 0032
    002c: iget-object v2, v4, Lcom/myairtelapp/hook/ServiceManagerCacheHook;->mServiceName:Ljava/lang/String;
    002e: invoke-static {v2, v1}, Lcom/myairtelapp/hook/ServiceCache;->addOriginBinder(Ljava/lang/String;, Landroid/os/IBinder;)V
    0031: goto 0033
    0032: move-object v1, v2
    0033: invoke-virtual {v4, v1}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->setOldObject(Ljava/lang/Object;)V
    0036: invoke-virtual {v4, v1}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->newProxyInstance(Ljava/lang/Object;)Ljava/lang/Object;
    0039: move-result-object v1
    003a: check-cast v1, Landroid/os/IBinder;
    003c: iget-object v2, v4, Lcom/myairtelapp/hook/ServiceManagerCacheHook;->mServiceName:Ljava/lang/String;
    003e: invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    0041: iget-object v0, v4, Lcom/myairtelapp/hook/ServiceManagerCacheHook;->mServiceName:Ljava/lang/String;
    0043: invoke-static {v0, v1}, Lcom/myairtelapp/hook/ServiceCache;->addProxyBinder(Ljava/lang/String;, Landroid/os/IBinder;)V
    0046: invoke-super {v4}, Lcom/myairtelapp/hook/ProxyHook;->install()V
    0049: return-void
.end method
