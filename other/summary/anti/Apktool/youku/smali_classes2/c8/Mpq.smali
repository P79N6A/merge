.class public final Lc8/Mpq;
.super Ljava/lang/Object;
.source "OnSubscribeFromIterable.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final is:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lc8/Mpq;, "Lrx/internal/operators/OnSubscribeFromIterable<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "iterable must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lc8/Mpq;->is:Ljava/lang/Iterable;

    .line 43
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lc8/Mpq;, "Lrx/internal/operators/OnSubscribeFromIterable<TT;>;"
    .local p1, "o":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    iget-object v3, p0, Lc8/Mpq;->is:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 53
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 59
    .local v0, "b":Z
    invoke-virtual {p1}, Lc8/Omq;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p1}, Lc8/Omq;->onCompleted()V

    .line 66
    .end local v0    # "b":Z
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0

    .line 63
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "b":Z
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    :cond_1
    new-instance v3, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;

    invoke-direct {v3, p1, v2}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;-><init>(Lc8/Omq;Ljava/util/Iterator;)V

    invoke-virtual {p1, v3}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lc8/Mpq;, "Lrx/internal/operators/OnSubscribeFromIterable<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Mpq;->call(Lc8/Omq;)V

    return-void
.end method
