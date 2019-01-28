.class public Lc8/nAq;
.super Lc8/Omq;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field done:Z


# direct methods
.method public constructor <init>(Lc8/Omq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lc8/nAq;, "Lrx/observers/SafeSubscriber<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lc8/Omq;-><init>(Lc8/Omq;)V

    .line 66
    iput-object p1, p0, Lc8/nAq;->actual:Lc8/Omq;

    .line 67
    return-void
.end method


# virtual methods
.method protected _onError(Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lc8/nAq;, "Lrx/observers/SafeSubscriber<TT;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 150
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 152
    :try_start_0
    iget-object v2, p0, Lc8/nAq;->actual:Lc8/Omq;

    invoke-virtual {v2, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 190
    :try_start_1
    invoke-virtual {p0}, Lc8/nAq;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 194
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e2":Lrx/exceptions/OnErrorNotImplementedException;
    :try_start_2
    invoke-virtual {p0}, Lc8/nAq;->unsubscribe()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 171
    throw v0

    .line 167
    :catch_1
    move-exception v1

    .line 168
    .local v1, "unsubscribeException":Ljava/lang/Throwable;
    invoke-static {v1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 169
    new-instance v2, Lrx/exceptions/OnErrorNotImplementedException;

    const-string/jumbo v3, "Observer.onError not implemented and error while unsubscribing."

    new-instance v4, Lrx/exceptions/CompositeException;

    new-array v5, v8, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v1, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4}, Lrx/exceptions/OnErrorNotImplementedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 172
    .end local v0    # "e2":Lrx/exceptions/OnErrorNotImplementedException;
    .end local v1    # "unsubscribeException":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 178
    .local v0, "e2":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 180
    :try_start_3
    invoke-virtual {p0}, Lc8/nAq;->unsubscribe()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 186
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    const-string/jumbo v3, "Error occurred when trying to propagate error to Observer.onError"

    new-instance v4, Lrx/exceptions/CompositeException;

    new-array v5, v8, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v0, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 181
    :catch_3
    move-exception v1

    .line 182
    .restart local v1    # "unsubscribeException":Ljava/lang/Throwable;
    invoke-static {v1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 183
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    const-string/jumbo v3, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    new-instance v4, Lrx/exceptions/CompositeException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object p1, v5, v6

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 191
    .end local v0    # "e2":Ljava/lang/Throwable;
    .end local v1    # "unsubscribeException":Ljava/lang/Throwable;
    :catch_4
    move-exception v1

    .line 192
    .restart local v1    # "unsubscribeException":Ljava/lang/Throwable;
    invoke-static {v1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 193
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    invoke-direct {v2, v1}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getActual()Lc8/Omq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lc8/nAq;, "Lrx/observers/SafeSubscriber<TT;>;"
    iget-object v0, p0, Lc8/nAq;->actual:Lc8/Omq;

    return-object v0
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 76
    .local p0, "this":Lc8/nAq;, "Lrx/observers/SafeSubscriber<TT;>;"
    iget-boolean v1, p0, Lc8/nAq;->done:Z

    if-nez v1, :cond_0

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/nAq;->done:Z

    .line 79
    :try_start_0
    iget-object v1, p0, Lc8/nAq;->actual:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    invoke-virtual {p0}, Lc8/nAq;->unsubscribe()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    :cond_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 80
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 84
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 85
    new-instance v1, Lrx/exceptions/OnCompletedFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/OnCompletedFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 90
    :try_start_3
    invoke-virtual {p0}, Lc8/nAq;->unsubscribe()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 93
    throw v1

    .line 91
    :catch_2
    move-exception v0

    .line 92
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, Lrx/exceptions/UnsubscribeFailedException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lrx/exceptions/UnsubscribeFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    .local p0, "this":Lc8/nAq;, "Lrx/observers/SafeSubscriber<TT;>;"
    invoke-static {p1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 113
    iget-boolean v0, p0, Lc8/nAq;->done:Z

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/nAq;->done:Z

    .line 115
    invoke-virtual {p0, p1}, Lc8/nAq;->_onError(Ljava/lang/Throwable;)V

    .line 117
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lc8/nAq;, "Lrx/observers/SafeSubscriber<TT;>;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-boolean v1, p0, Lc8/nAq;->done:Z

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lc8/nAq;->actual:Lc8/Omq;

    invoke-virtual {v1, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method
