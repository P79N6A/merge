.class public final Lc8/Gpq;
.super Ljava/lang/Object;
.source "OnSubscribeFlattenIterable.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnSubscribeScalarFlattenIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final mapper:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lc8/Inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc8/Inq",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lc8/Gpq;, "Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "mapper":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lc8/Gpq;->value:Ljava/lang/Object;

    .line 332
    iput-object p2, p0, Lc8/Gpq;->mapper:Lc8/Inq;

    .line 333
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lc8/Gpq;, "Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable<TT;TR;>;"
    .local p1, "t":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    iget-object v4, p0, Lc8/Gpq;->mapper:Lc8/Inq;

    iget-object v5, p0, Lc8/Gpq;->value:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 342
    .local v2, "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 344
    .local v3, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 350
    .local v0, "b":Z
    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p1}, Lc8/Omq;->onCompleted()V

    .line 356
    .end local v0    # "b":Z
    .end local v2    # "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .end local v3    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, "ex":Ljava/lang/Throwable;
    iget-object v4, p0, Lc8/Gpq;->value:Ljava/lang/Object;

    invoke-static {v1, p1, v4}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_0

    .line 355
    .end local v1    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "b":Z
    .restart local v2    # "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .restart local v3    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<+TR;>;"
    :cond_0
    new-instance v4, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;

    invoke-direct {v4, p1, v3}, Lrx/internal/operators/OnSubscribeFromIterable$IterableProducer;-><init>(Lc8/Omq;Ljava/util/Iterator;)V

    invoke-virtual {p1, v4}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 325
    .local p0, "this":Lc8/Gpq;, "Lrx/internal/operators/OnSubscribeFlattenIterable$OnSubscribeScalarFlattenIterable<TT;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Gpq;->call(Lc8/Omq;)V

    return-void
.end method
