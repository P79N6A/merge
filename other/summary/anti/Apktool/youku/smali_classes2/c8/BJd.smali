.class public abstract Lc8/BJd;
.super Ljava/lang/Object;
.source "ForwardingSink.java"

# interfaces
.implements Lc8/LJd;


# instance fields
.field private final delegate:Lc8/LJd;


# direct methods
.method public constructor <init>(Lc8/LJd;)V
    .locals 2
    .param p1, "delegate"    # Lc8/LJd;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lc8/BJd;->delegate:Lc8/LJd;

    .line 27
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lc8/BJd;->delegate:Lc8/LJd;

    invoke-interface {v0}, Lc8/LJd;->close()V

    .line 48
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lc8/BJd;->delegate:Lc8/LJd;

    invoke-interface {v0}, Lc8/LJd;->flush()V

    .line 40
    return-void
.end method

.method public timeout()Lc8/OJd;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lc8/BJd;->delegate:Lc8/LJd;

    invoke-interface {v0}, Lc8/LJd;->timeout()Lc8/OJd;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/BJd;->delegate:Lc8/LJd;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lc8/yJd;J)V
    .locals 2
    .param p1, "source"    # Lc8/yJd;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lc8/BJd;->delegate:Lc8/LJd;

    invoke-interface {v0, p1, p2, p3}, Lc8/LJd;->write(Lc8/yJd;J)V

    .line 36
    return-void
.end method
