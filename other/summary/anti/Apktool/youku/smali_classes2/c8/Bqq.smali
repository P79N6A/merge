.class public final Lc8/Bqq;
.super Lc8/Omq;
.source "OnSubscribeReduce.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Cqq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReduceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/Object;


# instance fields
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final reducer:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<TT;TT;TT;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/Bqq;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc8/Omq;Lc8/Jnq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;",
            "Lc8/Jnq",
            "<TT;TT;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lc8/Bqq;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .local p2, "reducer":Lc8/Jnq;, "Lrx/functions/Func2<TT;TT;TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 62
    iput-object p1, p0, Lc8/Bqq;->actual:Lc8/Omq;

    .line 63
    iput-object p2, p0, Lc8/Bqq;->reducer:Lc8/Jnq;

    .line 64
    sget-object v0, Lc8/Bqq;->EMPTY:Ljava/lang/Object;

    iput-object v0, p0, Lc8/Bqq;->value:Ljava/lang/Object;

    .line 65
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/Bqq;->request(J)V

    .line 66
    return-void
.end method


# virtual methods
.method downstreamRequest(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lc8/Bqq;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    const-wide/16 v2, 0x0

    .line 103
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 107
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/Bqq;->request(J)V

    .line 109
    :cond_1
    return-void
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 93
    .local p0, "this":Lc8/Bqq;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Bqq;->value:Ljava/lang/Object;

    .line 94
    .local v0, "o":Ljava/lang/Object;
    sget-object v1, Lc8/Bqq;->EMPTY:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lc8/Bqq;->actual:Lc8/Omq;

    invoke-virtual {v1, v0}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lc8/Bqq;->actual:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lc8/Bqq;->actual:Lc8/Omq;

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {v1, v2}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    .local p0, "this":Lc8/Bqq;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Bqq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lc8/Bqq;, "Lrx/internal/operators/OnSubscribeReduce$ReduceSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lc8/Bqq;->value:Ljava/lang/Object;

    .line 72
    .local v1, "o":Ljava/lang/Object;
    sget-object v2, Lc8/Bqq;->EMPTY:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 73
    iput-object p1, p0, Lc8/Bqq;->value:Ljava/lang/Object;

    .line 83
    :goto_0
    return-void

    .line 76
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/Bqq;->reducer:Lc8/Jnq;

    invoke-interface {v2, v1, p1}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lc8/Bqq;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 79
    invoke-virtual {p0}, Lc8/Bqq;->unsubscribe()V

    .line 80
    iget-object v2, p0, Lc8/Bqq;->actual:Lc8/Omq;

    invoke-virtual {v2, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
