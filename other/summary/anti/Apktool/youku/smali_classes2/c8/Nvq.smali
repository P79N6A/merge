.class public final Lc8/Nvq;
.super Lc8/Omq;
.source "OperatorWindowWithObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ovq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field consumer:Lc8/Wlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Wlq",
            "<TT;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field final guard:Ljava/lang/Object;

.field final otherFactory:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<+TU;>;>;"
        }
    .end annotation
.end field

.field producer:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final ssub:Lc8/YBq;


# direct methods
.method public constructor <init>(Lc8/Omq;Lc8/Hnq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;>;",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<+TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lc8/Nvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    .local p2, "otherFactory":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Observable<+TU;>;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 78
    new-instance v0, Lc8/qAq;

    invoke-direct {v0, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    iput-object v0, p0, Lc8/Nvq;->child:Lc8/Omq;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/Nvq;->guard:Ljava/lang/Object;

    .line 80
    new-instance v0, Lc8/YBq;

    invoke-direct {v0}, Lc8/YBq;-><init>()V

    iput-object v0, p0, Lc8/Nvq;->ssub:Lc8/YBq;

    .line 81
    iput-object p2, p0, Lc8/Nvq;->otherFactory:Lc8/Hnq;

    .line 82
    iget-object v0, p0, Lc8/Nvq;->ssub:Lc8/YBq;

    invoke-virtual {p0, v0}, Lc8/Nvq;->add(Lc8/Pmq;)V

    .line 83
    return-void
.end method


# virtual methods
.method complete()V
    .locals 2

    .prologue
    .local p0, "this":Lc8/Nvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lc8/Nvq;->consumer:Lc8/Wlq;

    .line 267
    .local v0, "s":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    iput-object v1, p0, Lc8/Nvq;->consumer:Lc8/Wlq;

    .line 268
    iput-object v1, p0, Lc8/Nvq;->producer:Lc8/Vlq;

    .line 270
    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Lc8/Wlq;->onCompleted()V

    .line 273
    :cond_0
    iget-object v1, p0, Lc8/Nvq;->child:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    .line 274
    invoke-virtual {p0}, Lc8/Nvq;->unsubscribe()V

    .line 275
    return-void
.end method

.method createNewWindow()V
    .locals 5

    .prologue
    .line 165
    .local p0, "this":Lc8/Nvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    invoke-static {}, Lc8/PBq;->create()Lc8/PBq;

    move-result-object v1

    .line 166
    .local v1, "bus":Lc8/PBq;, "Lrx/subjects/UnicastSubject<TT;>;"
    iput-object v1, p0, Lc8/Nvq;->consumer:Lc8/Wlq;

    .line 167
    iput-object v1, p0, Lc8/Nvq;->producer:Lc8/Vlq;

    .line 170
    :try_start_0
    iget-object v4, p0, Lc8/Nvq;->otherFactory:Lc8/Hnq;

    invoke-interface {v4}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Vlq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .local v3, "other":Lc8/Vlq;, "Lrx/Observable<+TU;>;"
    new-instance v0, Lc8/Mvq;

    invoke-direct {v0, p0}, Lc8/Mvq;-><init>(Lc8/Nvq;)V

    .line 178
    .local v0, "bs":Lc8/Mvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    iget-object v4, p0, Lc8/Nvq;->ssub:Lc8/YBq;

    invoke-virtual {v4, v0}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 179
    invoke-virtual {v3, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 180
    .end local v0    # "bs":Lc8/Mvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber<TT;TU;>;"
    .end local v3    # "other":Lc8/Vlq;, "Lrx/Observable<+TU;>;"
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lc8/Nvq;->child:Lc8/Omq;

    invoke-virtual {v4, v2}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 173
    invoke-virtual {p0}, Lc8/Nvq;->unsubscribe()V

    goto :goto_0
.end method

.method drain(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lc8/Nvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, "o":Ljava/lang/Object;
    sget-object v3, Lc8/Ovq;->NEXT_SUBJECT:Ljava/lang/Object;

    if-ne v1, v3, :cond_2

    .line 140
    invoke-virtual {p0}, Lc8/Nvq;->replaceSubject()V

    goto :goto_1

    .line 142
    :cond_2
    sget-object v3, Lc8/Ovq;->NL:Lc8/cpq;

    invoke-virtual {v3, v1}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    sget-object v3, Lc8/Ovq;->NL:Lc8/cpq;

    invoke-virtual {v3, v1}, Lc8/cpq;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc8/Nvq;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 146
    :cond_3
    sget-object v3, Lc8/Ovq;->NL:Lc8/cpq;

    invoke-virtual {v3, v1}, Lc8/cpq;->isCompleted(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    invoke-virtual {p0}, Lc8/Nvq;->complete()V

    goto :goto_0

    .line 151
    :cond_4
    move-object v2, v1

    .line 152
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lc8/Nvq;->emitValue(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method emitValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lc8/Nvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Nvq;->consumer:Lc8/Wlq;

    .line 183
    .local v0, "s":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0, p1}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 186
    :cond_0
    return-void
.end method

.method error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lc8/Nvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lc8/Nvq;->consumer:Lc8/Wlq;

    .line 278
    .local v0, "s":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    iput-object v1, p0, Lc8/Nvq;->consumer:Lc8/Wlq;

    .line 279
    iput-object v1, p0, Lc8/Nvq;->producer:Lc8/Vlq;

    .line 281
    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0, p1}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V

    .line 284
    :cond_0
    iget-object v1, p0, Lc8/Nvq;->child:Lc8/Omq;

    invoke-virtual {v1, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 285
    invoke-virtual {p0}, Lc8/Nvq;->unsubscribe()V

    .line 286
    return-void
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 204
    .local p0, "this":Lc8/Nvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    iget-object v3, p0, Lc8/Nvq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 205
    :try_start_0
    iget-boolean v2, p0, Lc8/Nvq;->emitting:Z

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lc8/Nvq;->queue:Ljava/util/List;

    if-nez v2, :cond_0

    .line 207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 209
    :cond_0
    iget-object v2, p0, Lc8/Nvq;->queue:Ljava/util/List;

    sget-object v4, Lc8/Ovq;->NL:Lc8/cpq;

    invoke-virtual {v4}, Lc8/cpq;->completed()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    monitor-exit v3

    .line 223
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v1, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 213
    .local v1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 214
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/Nvq;->emitting:Z

    .line 215
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :try_start_1
    invoke-virtual {p0, v1}, Lc8/Nvq;->drain(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 222
    invoke-virtual {p0}, Lc8/Nvq;->complete()V

    goto :goto_0

    .line 215
    .end local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 218
    .restart local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lc8/Nvq;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 190
    .local p0, "this":Lc8/Nvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    iget-object v1, p0, Lc8/Nvq;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-boolean v0, p0, Lc8/Nvq;->emitting:Z

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lc8/Ovq;->NL:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 193
    monitor-exit v1

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Nvq;->emitting:Z

    .line 197
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-virtual {p0, p1}, Lc8/Nvq;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lc8/Nvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lc8/Nvq;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 94
    :try_start_0
    iget-boolean v3, p0, Lc8/Nvq;->emitting:Z

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, p0, Lc8/Nvq;->queue:Ljava/util/List;

    if-nez v3, :cond_0

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 98
    :cond_0
    iget-object v3, p0, Lc8/Nvq;->queue:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    monitor-exit v4

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 101
    :cond_2
    iget-object v0, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 102
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 103
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/Nvq;->emitting:Z

    .line 104
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    const/4 v1, 0x1

    .line 106
    .local v1, "once":Z
    const/4 v2, 0x0

    .line 109
    .local v2, "skipFinal":Z
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lc8/Nvq;->drain(Ljava/util/List;)V

    .line 110
    if-eqz v1, :cond_4

    .line 111
    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, p1}, Lc8/Nvq;->emitValue(Ljava/lang/Object;)V

    .line 115
    :cond_4
    iget-object v4, p0, Lc8/Nvq;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 116
    :try_start_2
    iget-object v0, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 117
    const/4 v3, 0x0

    iput-object v3, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 118
    if-nez v0, :cond_5

    .line 119
    const/4 v3, 0x0

    iput-boolean v3, p0, Lc8/Nvq;->emitting:Z

    .line 120
    const/4 v2, 0x1

    .line 121
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 126
    if-nez v2, :cond_1

    .line 127
    iget-object v4, p0, Lc8/Nvq;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 128
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lc8/Nvq;->emitting:Z

    .line 129
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 104
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "once":Z
    .end local v2    # "skipFinal":Z
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 123
    .restart local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v1    # "once":Z
    .restart local v2    # "skipFinal":Z
    :cond_5
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 124
    :try_start_6
    iget-object v3, p0, Lc8/Nvq;->child:Lc8/Omq;

    invoke-virtual {v3}, Lc8/Omq;->isUnsubscribed()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    if-nez v2, :cond_1

    .line 127
    iget-object v4, p0, Lc8/Nvq;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 128
    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lc8/Nvq;->emitting:Z

    .line 129
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 123
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 126
    :catchall_4
    move-exception v3

    if-nez v2, :cond_6

    .line 127
    iget-object v4, p0, Lc8/Nvq;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 128
    const/4 v5, 0x0

    :try_start_a
    iput-boolean v5, p0, Lc8/Nvq;->emitting:Z

    .line 129
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_6
    throw v3

    :catchall_5
    move-exception v3

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v3
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 87
    .local p0, "this":Lc8/Nvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/Nvq;->request(J)V

    .line 88
    return-void
.end method

.method replaceSubject()V
    .locals 3

    .prologue
    .line 157
    .local p0, "this":Lc8/Nvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    iget-object v0, p0, Lc8/Nvq;->consumer:Lc8/Wlq;

    .line 158
    .local v0, "s":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0}, Lc8/Wlq;->onCompleted()V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lc8/Nvq;->createNewWindow()V

    .line 162
    iget-object v1, p0, Lc8/Nvq;->child:Lc8/Omq;

    iget-object v2, p0, Lc8/Nvq;->producer:Lc8/Vlq;

    invoke-virtual {v1, v2}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method replaceWindow()V
    .locals 6

    .prologue
    .line 226
    .local p0, "this":Lc8/Nvq;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    iget-object v4, p0, Lc8/Nvq;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 227
    :try_start_0
    iget-boolean v3, p0, Lc8/Nvq;->emitting:Z

    if-eqz v3, :cond_2

    .line 228
    iget-object v3, p0, Lc8/Nvq;->queue:Ljava/util/List;

    if-nez v3, :cond_0

    .line 229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 231
    :cond_0
    iget-object v3, p0, Lc8/Nvq;->queue:Ljava/util/List;

    sget-object v5, Lc8/Ovq;->NEXT_SUBJECT:Ljava/lang/Object;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    monitor-exit v4

    .line 264
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    iget-object v0, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 235
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 236
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/Nvq;->emitting:Z

    .line 237
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 238
    const/4 v1, 0x1

    .line 239
    .local v1, "once":Z
    const/4 v2, 0x0

    .line 242
    .local v2, "skipFinal":Z
    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lc8/Nvq;->drain(Ljava/util/List;)V

    .line 243
    if-eqz v1, :cond_4

    .line 244
    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0}, Lc8/Nvq;->replaceSubject()V

    .line 247
    :cond_4
    iget-object v4, p0, Lc8/Nvq;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 248
    :try_start_2
    iget-object v0, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 249
    const/4 v3, 0x0

    iput-object v3, p0, Lc8/Nvq;->queue:Ljava/util/List;

    .line 250
    if-nez v0, :cond_5

    .line 251
    const/4 v3, 0x0

    iput-boolean v3, p0, Lc8/Nvq;->emitting:Z

    .line 252
    const/4 v2, 0x1

    .line 253
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 258
    if-nez v2, :cond_1

    .line 259
    iget-object v4, p0, Lc8/Nvq;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 260
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lc8/Nvq;->emitting:Z

    .line 261
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 237
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "once":Z
    .end local v2    # "skipFinal":Z
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 255
    .restart local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v1    # "once":Z
    .restart local v2    # "skipFinal":Z
    :cond_5
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 256
    :try_start_6
    iget-object v3, p0, Lc8/Nvq;->child:Lc8/Omq;

    invoke-virtual {v3}, Lc8/Omq;->isUnsubscribed()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    if-nez v2, :cond_1

    .line 259
    iget-object v4, p0, Lc8/Nvq;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 260
    const/4 v3, 0x0

    :try_start_7
    iput-boolean v3, p0, Lc8/Nvq;->emitting:Z

    .line 261
    monitor-exit v4

    goto :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v3

    .line 255
    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 258
    :catchall_4
    move-exception v3

    if-nez v2, :cond_6

    .line 259
    iget-object v4, p0, Lc8/Nvq;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 260
    const/4 v5, 0x0

    :try_start_a
    iput-boolean v5, p0, Lc8/Nvq;->emitting:Z

    .line 261
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_6
    throw v3

    :catchall_5
    move-exception v3

    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v3
.end method
