.class public final Lc8/Ypq;
.super Lc8/Omq;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RightSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Xpq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TTRight;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Zpq;


# direct methods
.method constructor <init>(Lc8/Zpq;)V
    .locals 0

    .prologue
    .line 210
    .local p0, "this":Lc8/Ypq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    iput-object p1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 292
    return-void
.end method


# virtual methods
.method expire(ILc8/Pmq;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "resource"    # Lc8/Pmq;

    .prologue
    .line 213
    .local p0, "this":Lc8/Ypq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    const/4 v0, 0x0

    .line 214
    .local v0, "complete":Z
    iget-object v1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v2, v1, Lc8/Zpq;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 215
    :try_start_0
    iget-object v1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->rightMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->rightMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-boolean v1, v1, Lc8/Zpq;->rightDone:Z

    if-eqz v1, :cond_0

    .line 216
    const/4 v0, 0x1

    .line 218
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    if-eqz v0, :cond_1

    .line 220
    iget-object v1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->subscriber:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    .line 221
    iget-object v1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->subscriber:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->unsubscribe()V

    .line 225
    :goto_0
    return-void

    .line 218
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 223
    :cond_1
    iget-object v1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->group:Lc8/SBq;

    invoke-virtual {v1, p2}, Lc8/SBq;->remove(Lc8/Pmq;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 4

    .prologue
    .line 276
    .local p0, "this":Lc8/Ypq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    const/4 v0, 0x0

    .line 277
    .local v0, "complete":Z
    iget-object v1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v2, v1, Lc8/Zpq;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 278
    :try_start_0
    iget-object v1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lc8/Zpq;->rightDone:Z

    .line 279
    iget-object v1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-boolean v1, v1, Lc8/Zpq;->leftDone:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->rightMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    :cond_0
    const/4 v0, 0x1

    .line 282
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    if-eqz v0, :cond_2

    .line 284
    iget-object v1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->subscriber:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    .line 285
    iget-object v1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->subscriber:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->unsubscribe()V

    .line 289
    :goto_0
    return-void

    .line 282
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 287
    :cond_2
    iget-object v1, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->group:Lc8/SBq;

    invoke-virtual {v1, p0}, Lc8/SBq;->remove(Lc8/Pmq;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 270
    .local p0, "this":Lc8/Ypq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    iget-object v0, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v0, v0, Lc8/Zpq;->subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 271
    iget-object v0, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v0, v0, Lc8/Zpq;->subscriber:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->unsubscribe()V

    .line 272
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRight;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lc8/Ypq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TTRight;"
    iget-object v11, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v12, v11, Lc8/Zpq;->guard:Ljava/lang/Object;

    monitor-enter v12

    .line 232
    :try_start_0
    iget-object v11, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget v5, v11, Lc8/Zpq;->rightId:I

    add-int/lit8 v13, v5, 0x1

    iput v13, v11, Lc8/Zpq;->rightId:I

    .line 233
    .local v5, "id":I
    iget-object v11, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v11, v11, Lc8/Zpq;->rightMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v11, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget v3, v11, Lc8/Zpq;->leftId:I

    .line 235
    .local v3, "highLeftId":I
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 236
    new-instance v8, Lc8/YBq;

    invoke-direct {v8}, Lc8/YBq;-><init>()V

    .line 237
    .local v8, "md":Lc8/YBq;
    iget-object v11, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v11, v11, Lc8/Zpq;->group:Lc8/SBq;

    invoke-virtual {v11, v8}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 241
    :try_start_1
    iget-object v11, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v11, v11, Lc8/Zpq;->this$0:Lc8/aqq;

    iget-object v11, v11, Lc8/aqq;->rightDurationSelector:Lc8/Inq;

    invoke-interface {v11, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Vlq;

    .line 243
    .local v1, "duration":Lc8/Vlq;, "Lrx/Observable<TTRightDuration;>;"
    new-instance v0, Lc8/Xpq;

    invoke-direct {v0, p0, v5}, Lc8/Xpq;-><init>(Lc8/Ypq;I)V

    .line 244
    .local v0, "d2":Lc8/Omq;, "Lrx/Subscriber<TTRightDuration;>;"
    iget-object v11, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v11, v11, Lc8/Zpq;->group:Lc8/SBq;

    invoke-virtual {v11, v0}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 246
    invoke-virtual {v1, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 249
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v6, "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    iget-object v11, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v12, v11, Lc8/Zpq;->guard:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    :try_start_2
    iget-object v11, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v11, v11, Lc8/Zpq;->leftMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 252
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTLeft;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v11, v3, :cond_0

    .line 253
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTLeft;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v11
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 263
    .end local v0    # "d2":Lc8/Omq;, "Lrx/Subscriber<TTRightDuration;>;"
    .end local v1    # "duration":Lc8/Vlq;, "Lrx/Observable<TTRightDuration;>;"
    .end local v6    # "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    :catch_0
    move-exception v10

    .line 264
    .local v10, "t":Ljava/lang/Throwable;
    invoke-static {v10, p0}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    .line 266
    .end local v10    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 235
    .end local v3    # "highLeftId":I
    .end local v5    # "id":I
    .end local v8    # "md":Lc8/YBq;
    :catchall_1
    move-exception v11

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 256
    .restart local v0    # "d2":Lc8/Omq;, "Lrx/Subscriber<TTRightDuration;>;"
    .restart local v1    # "duration":Lc8/Vlq;, "Lrx/Observable<TTRightDuration;>;"
    .restart local v3    # "highLeftId":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "id":I
    .restart local v6    # "leftValues":Ljava/util/List;, "Ljava/util/List<TTLeft;>;"
    .restart local v8    # "md":Lc8/YBq;
    :cond_2
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 258
    :try_start_6
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 259
    .local v7, "lv":Ljava/lang/Object;, "TTLeft;"
    iget-object v11, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v11, v11, Lc8/Zpq;->this$0:Lc8/aqq;

    iget-object v11, v11, Lc8/aqq;->resultSelector:Lc8/Jnq;

    invoke-interface {v11, v7, p1}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 260
    .local v9, "result":Ljava/lang/Object;, "TR;"
    iget-object v11, p0, Lc8/Ypq;->this$1:Lc8/Zpq;

    iget-object v11, v11, Lc8/Zpq;->subscriber:Lc8/Omq;

    invoke-virtual {v11, v9}, Lc8/Omq;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method
