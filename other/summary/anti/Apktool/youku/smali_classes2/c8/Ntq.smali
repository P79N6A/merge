.class public final Lc8/Ntq;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lc8/Wlq;
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Otq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitialProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Wlq",
        "<TR;>;",
        "Lc8/Xlq;"
    }
.end annotation


# instance fields
.field final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TR;>;"
        }
    .end annotation
.end field

.field volatile done:Z

.field emitting:Z

.field error:Ljava/lang/Throwable;

.field missed:Z

.field missedRequested:J

.field volatile producer:Lc8/Xlq;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lc8/Omq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lc8/Ntq;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "child":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lc8/Ntq;->child:Lc8/Omq;

    .line 189
    invoke-static {}, Lc8/vzq;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    new-instance v0, Lc8/ozq;

    invoke-direct {v0}, Lc8/ozq;-><init>()V

    .line 194
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_0
    iput-object v0, p0, Lc8/Ntq;->queue:Ljava/util/Queue;

    .line 195
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 196
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lc8/Ntq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 197
    return-void

    .line 192
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Lc8/Gyq;

    invoke-direct {v0}, Lc8/Gyq;-><init>()V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0
.end method


# virtual methods
.method checkTerminated(ZZLc8/Omq;)Z
    .locals 3
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lc8/Omq",
            "<-TR;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Ntq;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    .local p3, "child":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    const/4 v1, 0x1

    .line 206
    invoke-virtual {p3}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    :goto_0
    return v1

    .line 209
    :cond_0
    if-eqz p1, :cond_2

    .line 210
    iget-object v0, p0, Lc8/Ntq;->error:Ljava/lang/Throwable;

    .line 211
    .local v0, "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p3, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    :cond_1
    if-eqz p2, :cond_2

    .line 216
    invoke-virtual {p3}, Lc8/Omq;->onCompleted()V

    goto :goto_0

    .line 220
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method emit()V
    .locals 1

    .prologue
    .line 288
    .local p0, "this":Lc8/Ntq;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    monitor-enter p0

    .line 289
    :try_start_0
    iget-boolean v0, p0, Lc8/Ntq;->emitting:Z

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ntq;->missed:Z

    .line 291
    monitor-exit p0

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ntq;->emitting:Z

    .line 294
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {p0}, Lc8/Ntq;->emitLoop()V

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method emitLoop()V
    .locals 18

    .prologue
    .line 299
    .local p0, "this":Lc8/Ntq;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Ntq;->child:Lc8/Omq;

    .line 300
    .local v2, "child":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/Ntq;->queue:Ljava/util/Queue;

    .line 301
    .local v10, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v8

    .line 302
    .local v8, "nl":Lc8/cpq;, "Lrx/internal/operators/NotificationLite<TR;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/Ntq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 304
    .local v11, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 306
    .local v12, "r":J
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc8/Ntq;->done:Z

    .line 307
    .local v3, "d":Z
    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    .line 308
    .local v6, "empty":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Lc8/Ntq;->checkTerminated(ZZLc8/Omq;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 339
    :cond_0
    :goto_1
    return-void

    .line 311
    :cond_1
    const-wide/16 v4, 0x0

    .line 312
    .local v4, "e":J
    :goto_2
    cmp-long v15, v4, v12

    if-eqz v15, :cond_3

    .line 313
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc8/Ntq;->done:Z

    .line 314
    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v9

    .line 315
    .local v9, "o":Ljava/lang/Object;
    if-nez v9, :cond_2

    const/4 v6, 0x1

    .line 316
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v2}, Lc8/Ntq;->checkTerminated(ZZLc8/Omq;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 319
    if-nez v6, :cond_3

    .line 322
    invoke-virtual {v8, v9}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 324
    .local v14, "v":Ljava/lang/Object;, "TR;"
    :try_start_0
    invoke-virtual {v2, v14}, Lc8/Omq;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    const-wide/16 v16, 0x1

    add-long v4, v4, v16

    .line 330
    goto :goto_2

    .line 315
    .end local v14    # "v":Ljava/lang/Object;, "TR;"
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 325
    .restart local v14    # "v":Ljava/lang/Object;, "TR;"
    :catch_0
    move-exception v7

    .line 326
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-static {v7, v2, v14}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_1

    .line 332
    .end local v7    # "ex":Ljava/lang/Throwable;
    .end local v9    # "o":Ljava/lang/Object;
    .end local v14    # "v":Ljava/lang/Object;, "TR;"
    :cond_3
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-eqz v15, :cond_4

    const-wide v16, 0x7fffffffffffffffL

    cmp-long v15, v12, v16

    if-eqz v15, :cond_4

    .line 333
    invoke-static {v11, v4, v5}, Lc8/ioq;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v12

    .line 336
    :cond_4
    monitor-enter p0

    .line 337
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/Ntq;->missed:Z

    if-nez v15, :cond_5

    .line 338
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lc8/Ntq;->emitting:Z

    .line 339
    monitor-exit p0

    goto :goto_1

    .line 342
    :catchall_0
    move-exception v15

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 341
    :cond_5
    const/4 v15, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lc8/Ntq;->missed:Z

    .line 342
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 232
    .local p0, "this":Lc8/Ntq;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ntq;->done:Z

    .line 233
    invoke-virtual {p0}, Lc8/Ntq;->emit()V

    .line 234
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 225
    .local p0, "this":Lc8/Ntq;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    iput-object p1, p0, Lc8/Ntq;->error:Ljava/lang/Throwable;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ntq;->done:Z

    .line 227
    invoke-virtual {p0}, Lc8/Ntq;->emit()V

    .line 228
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lc8/Ntq;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lc8/Ntq;->queue:Ljava/util/Queue;

    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0}, Lc8/Ntq;->emit()V

    .line 203
    return-void
.end method

.method public request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lc8/Ntq;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    const-wide/16 v4, 0x0

    .line 238
    cmp-long v3, p1, v4

    if-gez v3, :cond_0

    .line 239
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "n >= required but it was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_0
    cmp-long v3, p1, v4

    if-eqz v3, :cond_4

    .line 242
    iget-object v3, p0, Lc8/Ntq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3, p1, p2}, Lc8/ioq;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 243
    iget-object v2, p0, Lc8/Ntq;->producer:Lc8/Xlq;

    .line 244
    .local v2, "p":Lc8/Xlq;
    if-nez v2, :cond_2

    .line 246
    iget-object v4, p0, Lc8/Ntq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v4

    .line 247
    :try_start_0
    iget-object v2, p0, Lc8/Ntq;->producer:Lc8/Xlq;

    .line 248
    if-nez v2, :cond_1

    .line 249
    iget-wide v0, p0, Lc8/Ntq;->missedRequested:J

    .line 250
    .local v0, "mr":J
    invoke-static {v0, v1, p1, p2}, Lc8/ioq;->addCap(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lc8/Ntq;->missedRequested:J

    .line 252
    .end local v0    # "mr":J
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_2
    if-eqz v2, :cond_3

    .line 255
    invoke-interface {v2, p1, p2}, Lc8/Xlq;->request(J)V

    .line 257
    :cond_3
    invoke-virtual {p0}, Lc8/Ntq;->emit()V

    .line 259
    .end local v2    # "p":Lc8/Xlq;
    :cond_4
    return-void

    .line 252
    .restart local v2    # "p":Lc8/Xlq;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 8
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .local p0, "this":Lc8/Ntq;, "Lrx/internal/operators/OperatorScan$InitialProducer<TR;>;"
    const-wide/16 v6, 0x0

    .line 262
    if-nez p1, :cond_0

    .line 263
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 267
    :cond_0
    iget-object v3, p0, Lc8/Ntq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v3

    .line 268
    :try_start_0
    iget-object v2, p0, Lc8/Ntq;->producer:Lc8/Xlq;

    if-eqz v2, :cond_1

    .line 269
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Can\'t set more than one Producer!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 271
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lc8/Ntq;->missedRequested:J

    .line 274
    .local v0, "mr":J
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    .line 275
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    .line 277
    :cond_2
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lc8/Ntq;->missedRequested:J

    .line 278
    iput-object p1, p0, Lc8/Ntq;->producer:Lc8/Xlq;

    .line 279
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    cmp-long v2, v0, v6

    if-lez v2, :cond_3

    .line 282
    invoke-interface {p1, v0, v1}, Lc8/Xlq;->request(J)V

    .line 284
    :cond_3
    invoke-virtual {p0}, Lc8/Ntq;->emit()V

    .line 285
    return-void
.end method
