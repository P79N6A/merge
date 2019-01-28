.class public Lc8/GUe;
.super Lc8/CUe;
.source "Http1xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/IUe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lc8/IUe;


# direct methods
.method public constructor <init>(Lc8/IUe;J)V
    .locals 4
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iput-object p1, p0, Lc8/GUe;->this$0:Lc8/IUe;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/CUe;-><init>(Lc8/IUe;Lc8/BUe;)V

    .line 382
    iput-wide p2, p0, Lc8/GUe;->bytesRemaining:J

    .line 383
    iget-wide v0, p0, Lc8/GUe;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lc8/GUe;->endOfInput()V

    .line 386
    :cond_0
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
    .line 407
    iget-boolean v0, p0, Lc8/GUe;->closed:Z

    if-eqz v0, :cond_0

    .line 415
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-wide v0, p0, Lc8/GUe;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 410
    invoke-static {p0, v0, v1}, Lc8/ATe;->discard(Lc8/uWp;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    invoke-virtual {p0}, Lc8/GUe;->unexpectedEndOfInput()V

    .line 414
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/GUe;->closed:Z

    goto :goto_0
.end method

.method public read(Lc8/YVp;J)J
    .locals 10
    .param p1, "sink"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v8, 0x0

    .line 389
    cmp-long v4, p2, v8

    if-gez v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    :cond_0
    iget-boolean v4, p0, Lc8/GUe;->closed:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    :cond_1
    iget-wide v4, p0, Lc8/GUe;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    move-wide v0, v2

    .line 403
    :cond_2
    :goto_0
    return-wide v0

    .line 393
    :cond_3
    iget-object v4, p0, Lc8/GUe;->this$0:Lc8/IUe;

    invoke-static {v4}, Lc8/IUe;->access$600(Lc8/IUe;)Lc8/aWp;

    move-result-object v4

    iget-wide v6, p0, Lc8/GUe;->bytesRemaining:J

    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lc8/aWp;->read(Lc8/YVp;J)J

    move-result-wide v0

    .line 394
    .local v0, "read":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 395
    invoke-virtual {p0}, Lc8/GUe;->unexpectedEndOfInput()V

    .line 396
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :cond_4
    iget-wide v2, p0, Lc8/GUe;->bytesRemaining:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lc8/GUe;->bytesRemaining:J

    .line 400
    iget-wide v2, p0, Lc8/GUe;->bytesRemaining:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 401
    invoke-virtual {p0}, Lc8/GUe;->endOfInput()V

    goto :goto_0
.end method
