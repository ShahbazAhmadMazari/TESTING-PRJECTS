# Source DEX: classes18.dex
# Disassembled for educational analysis

.class public abstract synthetic Lcom/easypaisaTweak/newpackage/ZjVQ1KP;
.super Ljava/lang/Object;
.source "SourceFile"


.method public static Lcom/easypaisaTweak/newpackage/ZjVQ1KP;->eRtvpvxbz(Ljava/lang/String;, Ljava/lang/String;, Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0005: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    0008: invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    000b: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    000e: move-result-object v1
    000f: return-object v1
.end method

.method public static synthetic Lcom/easypaisaTweak/newpackage/ZjVQ1KP;->hO03fCMH(Ljava/lang/Object;)V
    .registers 1
    0000: if-nez v0, 0003
    0002: return-void
    0003: new-instance v0, Ljava/lang/ClassCastException;
    0005: invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V
    0008: throw v0
.end method

.method public static Lcom/easypaisaTweak/newpackage/ZjVQ1KP;->yWkiZmD(Ljava/lang/String;, I)Ljava/lang/String;
    .registers 3
    0000: new-instance v0, Ljava/lang/StringBuilder;
    0002: invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    0005: invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    0008: invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    000b: move-result-object v1
    000c: return-object v1
.end method
