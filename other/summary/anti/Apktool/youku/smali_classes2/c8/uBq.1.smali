.class public final Lc8/uBq;
.super Lc8/GBq;
.source "AsyncSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/GBq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field volatile lastValue:Ljava/lang/Object;

.field private final nl:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final state:Lrx/subjects/SubjectSubscriptionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lc8/Rlq;Lrx/subjects/SubjectSubscriptionManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Rlq",
            "<TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lc8/uBq;, "Lrx/subjects/AsyncSubject<TT;>;"
    .local p1, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-direct {p0, p1}, Lc8/GBq;-><init>(Lc8/Rlq;)V

    .line 63
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lc8/uBq;->nl:Lc8/cpq;

    .line 92
    iput-object p2, p0, Lc8/uBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    .line 93
    return-void
.end method

.method public static create()Lc8/uBq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/uBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 72
    .local v0, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    new-instance v1, Lc8/tBq;

    invoke-direct {v1, v0}, Lc8/tBq;-><init>(Lrx/subjects/SubjectSubscriptionManager;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lc8/inq;

    .line 87
    new-instance v1, Lc8/uBq;

    invoke-direct {v1, v0, v0}, Lc8/uBq;-><init>(Lc8/Rlq;Lrx/subjects/SubjectSubscriptionManager;)V

    return-object v1
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lc8/uBq;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v1, p0, Lc8/uBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 198
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lc8/uBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lc8/uBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 201
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lc8/uBq;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v1, p0, Lc8/uBq;->lastValue:Ljava/lang/Object;

    .line 184
    .local v1, "v":Ljava/lang/Object;
    iget-object v2, p0, Lc8/uBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v2}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 185
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lc8/uBq;->nl:Lc8/cpq;

    invoke-virtual {v2, v0}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/uBq;->nl:Lc8/cpq;

    invoke-virtual {v2, v1}, Lc8/cpq;->isNext(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lc8/uBq;->nl:Lc8/cpq;

    invoke-virtual {v2, v1}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 188
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasCompleted()Z
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Lc8/uBq;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v1, p0, Lc8/uBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 170
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/uBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasObservers()Z
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lc8/uBq;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v0, p0, Lc8/uBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lc8/JBq;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThrowable()Z
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 160
    .local p0, "this":Lc8/uBq;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v1, p0, Lc8/uBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lc8/uBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasValue()Z
    .locals 3
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lc8/uBq;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v1, p0, Lc8/uBq;->lastValue:Ljava/lang/Object;

    .line 151
    .local v1, "v":Ljava/lang/Object;
    iget-object v2, p0, Lc8/uBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v2}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lc8/uBq;->nl:Lc8/cpq;

    invoke-virtual {v2, v0}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/uBq;->nl:Lc8/cpq;

    invoke-virtual {v2, v1}, Lc8/cpq;->isNext(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 9

    .prologue
    .line 97
    .local p0, "this":Lc8/uBq;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v5, p0, Lc8/uBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v5, v5, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v5, :cond_2

    .line 98
    iget-object v3, p0, Lc8/uBq;->lastValue:Ljava/lang/Object;

    .line 99
    .local v3, "last":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 100
    iget-object v5, p0, Lc8/uBq;->nl:Lc8/cpq;

    invoke-virtual {v5}, Lc8/cpq;->completed()Ljava/lang/Object;

    move-result-object v3

    .line 102
    :cond_0
    iget-object v5, p0, Lc8/uBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v5, v3}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lc8/JBq;

    move-result-object v0

    .local v0, "arr$":[Lc8/JBq;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 103
    .local v1, "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v5, p0, Lc8/uBq;->nl:Lc8/cpq;

    invoke-virtual {v5}, Lc8/cpq;->completed()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_1

    .line 104
    invoke-virtual {v1}, Lc8/JBq;->onCompleted()V

    .line 102
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_1
    iget-object v5, v1, Lc8/JBq;->actual:Lc8/Omq;

    new-instance v6, Lrx/internal/producers/SingleProducer;

    iget-object v7, v1, Lc8/JBq;->actual:Lc8/Omq;

    iget-object v8, p0, Lc8/uBq;->nl:Lc8/cpq;

    invoke-virtual {v8, v3}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lrx/internal/producers/SingleProducer;-><init>(Lc8/Omq;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    goto :goto_1

    .line 110
    .end local v0    # "arr$":[Lc8/JBq;
    .end local v1    # "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "i$":I
    .end local v3    # "last":Ljava/lang/Object;
    .end local v4    # "len$":I
    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 114
    .local p0, "this":Lc8/uBq;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v7, p0, Lc8/uBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v7, v7, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v7, :cond_2

    .line 115
    iget-object v7, p0, Lc8/uBq;->nl:Lc8/cpq;

    invoke-virtual {v7, p1}, Lc8/cpq;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    .line 116
    .local v6, "n":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 117
    .local v3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v7, p0, Lc8/uBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v7, v6}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lc8/JBq;

    move-result-object v0

    .local v0, "arr$":[Lc8/JBq;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 119
    .local v1, "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :try_start_0
    invoke-virtual {v1, p1}, Lc8/JBq;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e2":Ljava/lang/Throwable;
    if-nez v3, :cond_0

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .restart local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    .end local v1    # "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "e2":Ljava/lang/Throwable;
    :cond_1
    invoke-static {v3}, Lc8/fnq;->throwIfAny(Ljava/util/List;)V

    .line 130
    .end local v0    # "arr$":[Lc8/JBq;
    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "n":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lc8/uBq;, "Lrx/subjects/AsyncSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/uBq;->nl:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/uBq;->lastValue:Ljava/lang/Object;

    .line 135
    return-void
.end method
