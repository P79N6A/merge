.class public final Lc8/gUe;
.super Ljava/lang/Object;
.source "Http2.java"

# interfaces
.implements Lc8/ETe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hUe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final hpackBuffer:Lc8/YVp;

.field private final hpackWriter:Lc8/bUe;

.field private maxFrameSize:I

.field private final sink:Lc8/ZVp;


# direct methods
.method constructor <init>(Lc8/ZVp;Z)V
    .locals 2
    .param p1, "sink"    # Lc8/ZVp;
    .param p2, "client"    # Z

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Lc8/gUe;->sink:Lc8/ZVp;

    .line 373
    iput-boolean p2, p0, Lc8/gUe;->client:Z

    .line 374
    new-instance v0, Lc8/YVp;

    invoke-direct {v0}, Lc8/YVp;-><init>()V

    iput-object v0, p0, Lc8/gUe;->hpackBuffer:Lc8/YVp;

    .line 375
    new-instance v0, Lc8/bUe;

    iget-object v1, p0, Lc8/gUe;->hpackBuffer:Lc8/YVp;

    invoke-direct {v0, v1}, Lc8/bUe;-><init>(Lc8/YVp;)V

    iput-object v0, p0, Lc8/gUe;->hpackWriter:Lc8/bUe;

    .line 376
    const/16 v0, 0x4000

    iput v0, p0, Lc8/gUe;->maxFrameSize:I

    .line 377
    return-void
.end method

.method private writeContinuationFrames(IJ)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 457
    :goto_0
    cmp-long v1, p2, v6

    if-lez v1, :cond_1

    .line 458
    iget v1, p0, Lc8/gUe;->maxFrameSize:I

    int-to-long v2, v1

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 459
    .local v0, "length":I
    int-to-long v2, v0

    sub-long/2addr p2, v2

    .line 460
    const/16 v2, 0x9

    cmp-long v1, p2, v6

    if-nez v1, :cond_0

    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p0, p1, v0, v2, v1}, Lc8/gUe;->frameHeader(IIBB)V

    .line 461
    iget-object v1, p0, Lc8/gUe;->sink:Lc8/ZVp;

    iget-object v2, p0, Lc8/gUe;->hpackBuffer:Lc8/YVp;

    int-to-long v4, v0

    invoke-interface {v1, v2, v4, v5}, Lc8/ZVp;->write(Lc8/YVp;J)V

    goto :goto_0

    .line 460
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 463
    .end local v0    # "length":I
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized ackSettings(Lc8/qUe;)V
    .locals 6
    .param p1, "peerSettings"    # Lc8/qUe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lc8/gUe;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 386
    :cond_0
    :try_start_1
    iget v4, p0, Lc8/gUe;->maxFrameSize:I

    invoke-virtual {p1, v4}, Lc8/qUe;->getMaxFrameSize(I)I

    move-result v4

    iput v4, p0, Lc8/gUe;->maxFrameSize:I

    .line 387
    const/4 v1, 0x0

    .line 388
    .local v1, "length":I
    const/4 v3, 0x4

    .line 389
    .local v3, "type":B
    const/4 v0, 0x1

    .line 390
    .local v0, "flags":B
    const/4 v2, 0x0

    .line 391
    .local v2, "streamId":I
    invoke-virtual {p0, v2, v1, v3, v0}, Lc8/gUe;->frameHeader(IIBB)V

    .line 392
    iget-object v4, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-interface {v4}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lc8/gUe;->closed:Z

    .line 563
    iget-object v0, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-interface {v0}, Lc8/ZVp;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    monitor-exit p0

    return-void

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/gUe;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 397
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lc8/gUe;->client:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 403
    :goto_0
    monitor-exit p0

    return-void

    .line 398
    :cond_1
    :try_start_2
    invoke-static {}, Lc8/hUe;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    invoke-static {}, Lc8/hUe;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    const-string/jumbo v1, ">> CONNECTION %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lc8/hUe;->access$000()Lokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 401
    :cond_2
    iget-object v0, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-static {}, Lc8/hUe;->access$000()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/ZVp;->write([B)Lc8/ZVp;

    .line 402
    iget-object v0, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-interface {v0}, Lc8/ZVp;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized data(ZILc8/YVp;I)V
    .locals 3
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lc8/YVp;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/gUe;->closed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 485
    :cond_0
    const/4 v0, 0x0

    .line 486
    .local v0, "flags":B
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    int-to-byte v0, v1

    .line 487
    :cond_1
    :try_start_1
    invoke-virtual {p0, p2, v0, p3, p4}, Lc8/gUe;->dataFrame(IBLc8/YVp;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    monitor-exit p0

    return-void
.end method

.method dataFrame(IBLc8/YVp;I)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "flags"    # B
    .param p3, "buffer"    # Lc8/YVp;
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "type":B
    invoke-virtual {p0, p1, p4, v0, p2}, Lc8/gUe;->frameHeader(IIBB)V

    .line 493
    if-lez p4, :cond_0

    .line 494
    iget-object v1, p0, Lc8/gUe;->sink:Lc8/ZVp;

    int-to-long v2, p4

    invoke-interface {v1, p3, v2, v3}, Lc8/ZVp;->write(Lc8/YVp;J)V

    .line 496
    :cond_0
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/gUe;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 381
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-interface {v0}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    monitor-exit p0

    return-void
.end method

.method frameHeader(IIBB)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 567
    invoke-static {}, Lc8/hUe;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/hUe;->access$100()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v3, p1, p2, p3, p4}, Lc8/eUe;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 568
    :cond_0
    iget v0, p0, Lc8/gUe;->maxFrameSize:I

    if-le p2, v0, :cond_1

    .line 569
    const-string/jumbo v0, "FRAME_SIZE_ERROR length > %d: %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lc8/gUe;->maxFrameSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lc8/hUe;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 571
    :cond_1
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    const-string/jumbo v0, "reserved bit set: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lc8/hUe;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 572
    :cond_2
    iget-object v0, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-static {v0, p2}, Lc8/hUe;->access$600(Lc8/ZVp;I)V

    .line 573
    iget-object v0, p0, Lc8/gUe;->sink:Lc8/ZVp;

    and-int/lit16 v1, p3, 0xff

    invoke-interface {v0, v1}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 574
    iget-object v0, p0, Lc8/gUe;->sink:Lc8/ZVp;

    and-int/lit16 v1, p4, 0xff

    invoke-interface {v0, v1}, Lc8/ZVp;->writeByte(I)Lc8/ZVp;

    .line 575
    iget-object v0, p0, Lc8/gUe;->sink:Lc8/ZVp;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 576
    return-void
.end method

.method public declared-synchronized goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;[B)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .param p3, "debugData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lc8/gUe;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 532
    :cond_0
    :try_start_1
    iget v4, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->httpCode:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const-string/jumbo v4, "errorCode.httpCode == -1"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lc8/hUe;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4

    .line 533
    :cond_1
    array-length v4, p3

    add-int/lit8 v1, v4, 0x8

    .line 534
    .local v1, "length":I
    const/4 v3, 0x7

    .line 535
    .local v3, "type":B
    const/4 v0, 0x0

    .line 536
    .local v0, "flags":B
    const/4 v2, 0x0

    .line 537
    .local v2, "streamId":I
    invoke-virtual {p0, v2, v1, v3, v0}, Lc8/gUe;->frameHeader(IIBB)V

    .line 538
    iget-object v4, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-interface {v4, p1}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 539
    iget-object v4, p0, Lc8/gUe;->sink:Lc8/ZVp;

    iget v5, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v4, v5}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 540
    array-length v4, p3

    if-lez v4, :cond_2

    .line 541
    iget-object v4, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-interface {v4, p3}, Lc8/ZVp;->write([B)Lc8/ZVp;

    .line 543
    :cond_2
    iget-object v4, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-interface {v4}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 2
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/gUe;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 422
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lc8/gUe;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    monitor-exit p0

    return-void
.end method

.method headers(ZILjava/util/List;)V
    .locals 10
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-boolean v5, p0, Lc8/gUe;->closed:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 443
    :cond_0
    iget-object v5, p0, Lc8/gUe;->hpackWriter:Lc8/bUe;

    invoke-virtual {v5, p3}, Lc8/bUe;->writeHeaders(Ljava/util/List;)V

    .line 445
    iget-object v5, p0, Lc8/gUe;->hpackBuffer:Lc8/YVp;

    invoke-virtual {v5}, Lc8/YVp;->size()J

    move-result-wide v0

    .line 446
    .local v0, "byteCount":J
    iget v5, p0, Lc8/gUe;->maxFrameSize:I

    int-to-long v6, v5

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v3, v6

    .line 447
    .local v3, "length":I
    const/4 v4, 0x1

    .line 448
    .local v4, "type":B
    int-to-long v6, v3

    cmp-long v5, v0, v6

    if-nez v5, :cond_3

    const/4 v2, 0x4

    .line 449
    .local v2, "flags":B
    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 v5, v2, 0x1

    int-to-byte v2, v5

    .line 450
    :cond_1
    invoke-virtual {p0, p2, v3, v4, v2}, Lc8/gUe;->frameHeader(IIBB)V

    .line 451
    iget-object v5, p0, Lc8/gUe;->sink:Lc8/ZVp;

    iget-object v6, p0, Lc8/gUe;->hpackBuffer:Lc8/YVp;

    int-to-long v8, v3

    invoke-interface {v5, v6, v8, v9}, Lc8/ZVp;->write(Lc8/YVp;J)V

    .line 453
    int-to-long v6, v3

    cmp-long v5, v0, v6

    if-lez v5, :cond_2

    int-to-long v6, v3

    sub-long v6, v0, v6

    invoke-direct {p0, p2, v6, v7}, Lc8/gUe;->writeContinuationFrames(IJ)V

    .line 454
    :cond_2
    return-void

    .line 448
    .end local v2    # "flags":B
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public maxDataLength()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lc8/gUe;->maxFrameSize:I

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 6
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lc8/gUe;->closed:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 519
    :cond_0
    const/16 v1, 0x8

    .line 520
    .local v1, "length":I
    const/4 v3, 0x6

    .line 521
    .local v3, "type":B
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 522
    .local v0, "flags":B
    :goto_0
    const/4 v2, 0x0

    .line 523
    .local v2, "streamId":I
    :try_start_1
    invoke-virtual {p0, v2, v1, v3, v0}, Lc8/gUe;->frameHeader(IIBB)V

    .line 524
    iget-object v4, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-interface {v4, p2}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 525
    iget-object v4, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-interface {v4, p3}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 526
    iget-object v4, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-interface {v4}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    monitor-exit p0

    return-void

    .line 521
    .end local v0    # "flags":B
    .end local v2    # "streamId":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lc8/gUe;->closed:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 428
    :cond_0
    :try_start_1
    iget-object v5, p0, Lc8/gUe;->hpackWriter:Lc8/bUe;

    invoke-virtual {v5, p3}, Lc8/bUe;->writeHeaders(Ljava/util/List;)V

    .line 430
    iget-object v5, p0, Lc8/gUe;->hpackBuffer:Lc8/YVp;

    invoke-virtual {v5}, Lc8/YVp;->size()J

    move-result-wide v0

    .line 431
    .local v0, "byteCount":J
    iget v5, p0, Lc8/gUe;->maxFrameSize:I

    add-int/lit8 v5, v5, -0x4

    int-to-long v6, v5

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v3, v6

    .line 432
    .local v3, "length":I
    const/4 v4, 0x5

    .line 433
    .local v4, "type":B
    int-to-long v6, v3

    cmp-long v5, v0, v6

    if-nez v5, :cond_2

    const/4 v2, 0x4

    .line 434
    .local v2, "flags":B
    :goto_0
    add-int/lit8 v5, v3, 0x4

    invoke-virtual {p0, p1, v5, v4, v2}, Lc8/gUe;->frameHeader(IIBB)V

    .line 435
    iget-object v5, p0, Lc8/gUe;->sink:Lc8/ZVp;

    const v6, 0x7fffffff

    and-int/2addr v6, p2

    invoke-interface {v5, v6}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 436
    iget-object v5, p0, Lc8/gUe;->sink:Lc8/ZVp;

    iget-object v6, p0, Lc8/gUe;->hpackBuffer:Lc8/YVp;

    int-to-long v8, v3

    invoke-interface {v5, v6, v8, v9}, Lc8/ZVp;->write(Lc8/YVp;J)V

    .line 438
    int-to-long v6, v3

    cmp-long v5, v0, v6

    if-lez v5, :cond_1

    int-to-long v6, v3

    sub-long v6, v0, v6

    invoke-direct {p0, p1, v6, v7}, Lc8/gUe;->writeContinuationFrames(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    :cond_1
    monitor-exit p0

    return-void

    .line 433
    .end local v2    # "flags":B
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 5
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lc8/gUe;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 468
    :cond_0
    :try_start_1
    iget v3, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->httpCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 470
    :cond_1
    const/4 v1, 0x4

    .line 471
    .local v1, "length":I
    const/4 v2, 0x3

    .line 472
    .local v2, "type":B
    const/4 v0, 0x0

    .line 473
    .local v0, "flags":B
    invoke-virtual {p0, p1, v1, v2, v0}, Lc8/gUe;->frameHeader(IIBB)V

    .line 474
    iget-object v3, p0, Lc8/gUe;->sink:Lc8/ZVp;

    iget v4, p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->httpCode:I

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 475
    iget-object v3, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-interface {v3}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized settings(Lc8/qUe;)V
    .locals 8
    .param p1, "settings"    # Lc8/qUe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lc8/gUe;->closed:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/io/IOException;

    const-string/jumbo v7, "closed"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 500
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lc8/qUe;->size()I

    move-result v6

    mul-int/lit8 v3, v6, 0x6

    .line 501
    .local v3, "length":I
    const/4 v5, 0x4

    .line 502
    .local v5, "type":B
    const/4 v0, 0x0

    .line 503
    .local v0, "flags":B
    const/4 v4, 0x0

    .line 504
    .local v4, "streamId":I
    invoke-virtual {p0, v4, v3, v5, v0}, Lc8/gUe;->frameHeader(IIBB)V

    .line 505
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0xa

    if-ge v1, v6, :cond_4

    .line 506
    invoke-virtual {p1, v1}, Lc8/qUe;->isSet(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 508
    move v2, v1

    .local v2, "id":I
    const/4 v6, 0x4

    if-ne v1, v6, :cond_3

    const/4 v2, 0x3

    .line 510
    :cond_1
    :goto_1
    iget-object v6, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-interface {v6, v2}, Lc8/ZVp;->writeShort(I)Lc8/ZVp;

    .line 511
    iget-object v6, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-virtual {p1, v1}, Lc8/qUe;->get(I)I

    move-result v7

    invoke-interface {v6, v7}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 505
    .end local v2    # "id":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 509
    .restart local v2    # "id":I
    :cond_3
    const/4 v6, 0x7

    if-ne v2, v6, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    .line 513
    .end local v2    # "id":I
    :cond_4
    iget-object v6, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-interface {v6}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/gUe;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 416
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lc8/gUe;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 409
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lc8/gUe;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_1
    invoke-virtual {p0, p1, p3, p5}, Lc8/gUe;->headers(ZILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lc8/gUe;->closed:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 549
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-eqz v3, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v3, p2, v4

    if-lez v3, :cond_2

    .line 550
    :cond_1
    :try_start_1
    const-string/jumbo v3, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 551
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 550
    invoke-static {v3, v4}, Lc8/hUe;->access$500(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    .line 553
    :cond_2
    const/4 v1, 0x4

    .line 554
    .local v1, "length":I
    const/16 v2, 0x8

    .line 555
    .local v2, "type":B
    const/4 v0, 0x0

    .line 556
    .local v0, "flags":B
    invoke-virtual {p0, p1, v1, v2, v0}, Lc8/gUe;->frameHeader(IIBB)V

    .line 557
    iget-object v3, p0, Lc8/gUe;->sink:Lc8/ZVp;

    long-to-int v4, p2

    invoke-interface {v3, v4}, Lc8/ZVp;->writeInt(I)Lc8/ZVp;

    .line 558
    iget-object v3, p0, Lc8/gUe;->sink:Lc8/ZVp;

    invoke-interface {v3}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 559
    monitor-exit p0

    return-void
.end method
