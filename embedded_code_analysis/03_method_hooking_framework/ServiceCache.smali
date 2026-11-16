# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public Lcom/myairtelapp/hook/ServiceCache;
.super Ljava/lang/Object;
.source "SourceFile"

.field private static static Lcom/myairtelapp/hook/ServiceCache;->sOriginBinderCache:Ljava/util/Map;
.field private static static Lcom/myairtelapp/hook/ServiceCache;->sProxyBinderCache:Ljava/util/Map;
.field private static static Lcom/myairtelapp/hook/ServiceCache;->sProxyInterfaceCache:Ljava/util/Map;
.field private static bridge static Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.method public static constructor Lcom/myairtelapp/hook/ServiceCache;-><clinit>()V
    .registers 2
    0000: new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    0002: invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V
    0005: sput-object v0, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    0007: new-instance v0, Ljava/util/HashMap;
    0009: const/16 v1, #10
    000b: invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
    000e: sput-object v0, Lcom/myairtelapp/hook/ServiceCache;->sOriginBinderCache:Ljava/util/Map;
    0010: new-instance v0, Ljava/util/HashMap;
    0012: invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
    0015: sput-object v0, Lcom/myairtelapp/hook/ServiceCache;->sProxyBinderCache:Ljava/util/Map;
    0017: new-instance v0, Ljava/util/HashMap;
    0019: invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
    001c: sput-object v0, Lcom/myairtelapp/hook/ServiceCache;->sProxyInterfaceCache:Ljava/util/Map;
    001e: return-void
.end method

.method public constructor Lcom/myairtelapp/hook/ServiceCache;-><init>()V
    .registers 1
    0000: invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    0003: return-void
.end method

.method public static Lcom/myairtelapp/hook/ServiceCache;->addOriginBinder(Ljava/lang/String;, Landroid/os/IBinder;)V
    .registers 3
    0000: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    0002: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    0005: move-result-object v0
    0006: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    0009: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sOriginBinderCache:Ljava/util/Map;
    000b: invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    000e: sget-object v1, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    0010: invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    0013: move-result-object v1
    0014: invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    0017: return-void
    0018: move-exception v1
    0019: sget-object v2, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    001b: invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    001e: move-result-object v2
    001f: invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    0022: throw v1
.end method

.method public static Lcom/myairtelapp/hook/ServiceCache;->addProxyBinder(Ljava/lang/String;, Landroid/os/IBinder;)V
    .registers 3
    0000: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    0002: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    0005: move-result-object v0
    0006: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    0009: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sProxyBinderCache:Ljava/util/Map;
    000b: invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    000e: sget-object v1, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    0010: invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    0013: move-result-object v1
    0014: invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    0017: return-void
    0018: move-exception v1
    0019: sget-object v2, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    001b: invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    001e: move-result-object v2
    001f: invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    0022: throw v1
.end method

.method public static Lcom/myairtelapp/hook/ServiceCache;->addProxyInterface(Ljava/lang/String;, Landroid/os/IInterface;)V
    .registers 3
    0000: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    0002: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    0005: move-result-object v0
    0006: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    0009: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sProxyInterfaceCache:Ljava/util/Map;
    000b: invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;, Ljava/lang/Object;)Ljava/lang/Object;
    000e: sget-object v1, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    0010: invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    0013: move-result-object v1
    0014: invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    0017: return-void
    0018: move-exception v1
    0019: sget-object v2, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    001b: invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    001e: move-result-object v2
    001f: invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    0022: throw v1
.end method

.method public static Lcom/myairtelapp/hook/ServiceCache;->getOriginBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2
    0000: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    0002: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    0005: move-result-object v0
    0006: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    0009: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sOriginBinderCache:Ljava/util/Map;
    000b: invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    000e: move-result-object v1
    000f: check-cast v1, Landroid/os/IBinder;
    0011: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    0013: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    0016: move-result-object v0
    0017: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    001a: return-object v1
    001b: move-exception v1
    001c: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    001e: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    0021: move-result-object v0
    0022: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    0025: throw v1
.end method

.method public static Lcom/myairtelapp/hook/ServiceCache;->getProxyBinder(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    0000: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    0002: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    0005: move-result-object v0
    0006: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    0009: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sProxyBinderCache:Ljava/util/Map;
    000b: invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    000e: move-result-object v1
    000f: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    0011: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    0014: move-result-object v0
    0015: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    0018: return-object v1
    0019: move-exception v1
    001a: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    001c: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    001f: move-result-object v0
    0020: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    0023: throw v1
.end method

.method public static Lcom/myairtelapp/hook/ServiceCache;->getProxyInterface(Ljava/lang/String;)Landroid/os/IInterface;
    .registers 2
    0000: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    0002: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    0005: move-result-object v0
    0006: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    0009: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sProxyInterfaceCache:Ljava/util/Map;
    000b: invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    000e: move-result-object v1
    000f: check-cast v1, Landroid/os/IInterface;
    0011: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    0013: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    0016: move-result-object v0
    0017: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    001a: return-object v1
    001b: move-exception v1
    001c: sget-object v0, Lcom/myairtelapp/hook/ServiceCache;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    001e: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    0021: move-result-object v0
    0022: invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V
    0025: throw v1
.end method
