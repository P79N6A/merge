.class public final Lc8/XUe;
.super Ljava/lang/Object;
.source "RetryableSink.java"

# interfaces
.implements Lc8/tWp;


# instance fields
.field private closed:Z

.field private final content:Lc8/YVp;

.field private final limit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lc8/XUe;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lc8/YVp;

    invoke-direct {v0}, Lc8/YVp;-><init>()V

    iput-object v0, p0, Lc8/XUe;->content:Lc8/YVp;

    .line 38
    iput p1, p0, Lc8/XUe;->limit:I

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-boolean v0, p0, Lc8/XUe;->closed:Z

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    return-void

    .line 47
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/XUe;->closed:Z

    .line 48
    iget-object v0, p0, Lc8/XUe;->content:Lc8/YVp;

    invoke-virtual {v0}, Lc8/YVp;->size()J

    move-result-wide v0

    iget v2, p0, Lc8/XUe;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 49
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "content-length promised "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/XUe;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes, but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/XUe;->content:Lc8/YVp;

    .line 50
    invoke-virtual {v2}, Lc8/YVp;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lc8/XUe;->content:Lc8/YVp;

    invoke-virtual {v0}, Lc8/YVp;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    return-void
.end method

.method public timeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lc8/wWp;->NONE:Lc8/wWp;

    return-object v0
.end method

.method public write(Lc8/YVp;J)V
    .locals 6
    .param p1, "source"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-boolean v0, p0, Lc8/XUe;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lc8/YVp;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lc8/ATe;->checkOffsetAndCount(JJJ)V

    .line 57
    iget v0, p0, Lc8/XUe;->limit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lc8/XUe;->content:Lc8/YVp;

    invoke-virtual {v0}, Lc8/YVp;->size()J

    move-result-wide v0

    iget v2, p0, Lc8/XUe;->limit:I

    int-to-long v2, v2

    sub-long/2addr v2, p2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 58
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exceeded content-length limit of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/XUe;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iget-object v0, p0, Lc8/XUe;->content:Lc8/YVp;

    invoke-virtual {v0, p1, p2, p3}, Lc8/YVp;->write(Lc8/YVp;J)V

    .line 61
    return-void
.end method

.method public writeToSocket(Lc8/tWp;)V
    .locals 6
    .param p1, "socketOut"    # Lc8/tWp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v1, Lc8/YVp;

    invoke-direct {v1}, Lc8/YVp;-><init>()V

    .line 77
    .local v1, "buffer":Lc8/YVp;
    iget-object v0, p0, Lc8/XUe;->content:Lc8/YVp;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lc8/XUe;->content:Lc8/YVp;

    invoke-virtual {v4}, Lc8/YVp;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lc8/YVp;->copyTo(Lc8/YVp;JJ)Lc8/YVp;

    .line 78
    invoke-virtual {v1}, Lc8/YVp;->size()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lc8/tWp;->write(Lc8/YVp;J)V

    .line 79
    return-void
.end method
