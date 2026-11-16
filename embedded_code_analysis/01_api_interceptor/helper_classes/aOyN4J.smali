# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public final Lcom/easypaisaTweak/newpackage/aOyN4J;
.super Ljava/lang/Object;
.source "SourceFile"


.method public static constructor Lcom/easypaisaTweak/newpackage/aOyN4J;-><clinit>()V
    .registers 2
    0000: const/4 v0, #0
    0001: new-array v0, v0, [Ljava/util/Locale;
    0003: new-instance v1, Landroid/os/LocaleList;
    0005: invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V
    0008: return-void
.end method

.method public final Lcom/easypaisaTweak/newpackage/aOyN4J;->equals(Ljava/lang/Object;)Z
    .registers 2
    0000: instance-of v0, v1, Lcom/easypaisaTweak/newpackage/aOyN4J;
    0002: if-nez v0, 0006
    0004: const/4 v0, #0
    0005: return v0
    0006: check-cast v1, Lcom/easypaisaTweak/newpackage/aOyN4J;
    0008: invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    000b: const/4 v0, #0
    000c: throw v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/aOyN4J;->hashCode()I
    .registers 1
    0000: const/4 v0, #0
    0001: throw v0
.end method

.method public final Lcom/easypaisaTweak/newpackage/aOyN4J;->toString()Ljava/lang/String;
    .registers 1
    0000: const/4 v0, #0
    0001: throw v0
.end method
