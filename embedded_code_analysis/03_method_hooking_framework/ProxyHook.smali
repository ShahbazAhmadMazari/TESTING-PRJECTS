# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract Lcom/myairtelapp/hook/ProxyHook;
.super Lcom/myairtelapp/hook/ProxyInvocationHandler;
.source "SourceFile"
.implements Lcom/myairtelapp/hook/Hook;

.field private Lcom/myairtelapp/hook/ProxyHook;->mEnable:Z

.method public constructor Lcom/myairtelapp/hook/ProxyHook;-><init>()V
    .registers 2
    0000: invoke-direct {v1}, Lcom/myairtelapp/hook/ProxyInvocationHandler;-><init>()V
    0003: const/4 v0, #0
    0004: iput-boolean v0, v1, Lcom/myairtelapp/hook/ProxyHook;->mEnable:Z
    0006: return-void
.end method

.method public Lcom/myairtelapp/hook/ProxyHook;->fix(Landroid/content/Context;)V
    .registers 2
    0000: return-void
.end method

.method public Lcom/myairtelapp/hook/ProxyHook;->install()V
    .registers 1
    0000: invoke-virtual {v0}, Lcom/myairtelapp/hook/ProxyInvocationHandler;->bindMethodProxies()V
    0003: return-void
.end method

.method public Lcom/myairtelapp/hook/ProxyHook;->isEnable()Z
    .registers 1
    0000: iget-boolean v0, v0, Lcom/myairtelapp/hook/ProxyHook;->mEnable:Z
    0002: return v0
.end method

.method public Lcom/myairtelapp/hook/ProxyHook;->setEnable(Z)V
    .registers 2
    0000: iput-boolean v1, v0, Lcom/myairtelapp/hook/ProxyHook;->mEnable:Z
    0002: return-void
.end method

.method public Lcom/myairtelapp/hook/ProxyHook;->uninstall()V
    .registers 1
    0000: return-void
.end method
