.class public final Lc8/Coq;
.super Lc8/GBq;
.source "BufferUntilSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Boq;,
        Lrx/internal/operators/BufferUntilSubscriber$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/GBq",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY_OBSERVER:Lc8/Wlq;


# instance fields
.field private forward:Z

.field final state:Lrx/internal/operators/BufferUntilSubscriber$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/BufferUntilSubscriber$State",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lc8/zoq;

    invoke-direct {v0}, Lc8/zoq;-><init>()V

    sput-object v0, Lc8/Coq;->EMPTY_OBSERVER:Lc8/Wlq;

    return-void
.end method

.method private constructor <init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/BufferUntilSubscriber$State",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lc8/Coq;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    .local p1, "state":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    new-instance v0, Lc8/Boq;

    invoke-direct {v0, p1}, Lc8/Boq;-><init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V

    invoke-direct {p0, v0}, Lc8/GBq;-><init>(Lc8/Rlq;)V

    .line 132
    iput-object p1, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    .line 133
    return-void
.end method

.method public static create()Lc8/Coq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Coq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-direct {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;-><init>()V

    .line 61
    .local v0, "state":Lrx/internal/operators/BufferUntilSubscriber$State;, "Lrx/internal/operators/BufferUntilSubscriber$State<TT;>;"
    new-instance v1, Lc8/Coq;

    invoke-direct {v1, v0}, Lc8/Coq;-><init>(Lrx/internal/operators/BufferUntilSubscriber$State;)V

    return-object v1
.end method

.method private emit(Ljava/lang/Object;)V
    .locals 4
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 136
    .local p0, "this":Lc8/Coq;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-object v1, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v2, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 137
    :try_start_0
    iget-object v1, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v1, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v1, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v1}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-boolean v1, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    if-nez v1, :cond_0

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/Coq;->forward:Z

    .line 142
    iget-object v1, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->emitting:Z

    .line 144
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-boolean v1, p0, Lc8/Coq;->forward:Z

    if-eqz v1, :cond_1

    .line 147
    :goto_0
    iget-object v1, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v1, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 148
    iget-object v1, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v2, v1, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lc8/cpq;

    iget-object v1, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v1}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Wlq;

    invoke-virtual {v2, v1, v0}, Lc8/cpq;->accept(Lc8/Wlq;Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    .end local v0    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 153
    :cond_1
    return-void
.end method


# virtual methods
.method public hasObservers()Z
    .locals 2

    .prologue
    .line 187
    .local p0, "this":Lc8/Coq;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v1, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    iget-object v0, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 157
    .local p0, "this":Lc8/Coq;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-boolean v0, p0, Lc8/Coq;->forward:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Wlq;

    invoke-interface {v0}, Lc8/Wlq;->onCompleted()V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lc8/cpq;

    invoke-virtual {v0}, Lc8/cpq;->completed()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Coq;->emit(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 167
    .local p0, "this":Lc8/Coq;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    iget-boolean v0, p0, Lc8/Coq;->forward:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Wlq;

    invoke-interface {v0, p1}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Coq;->emit(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lc8/Coq;, "Lrx/internal/operators/BufferUntilSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lc8/Coq;->forward:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    invoke-virtual {v0}, Lrx/internal/operators/BufferUntilSubscriber$State;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Wlq;

    invoke-interface {v0, p1}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lc8/Coq;->state:Lrx/internal/operators/BufferUntilSubscriber$State;

    iget-object v0, v0, Lrx/internal/operators/BufferUntilSubscriber$State;->nl:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/Coq;->emit(Ljava/lang/Object;)V

    goto :goto_0
.end method
