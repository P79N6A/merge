.class public final Lc8/kqq;
.super Lc8/Omq;
.source "OnSubscribePublishMulticast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribePublishMulticast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParentSubscriber"
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


# instance fields
.field final state:Lrx/internal/operators/OnSubscribePublishMulticast;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribePublishMulticast",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribePublishMulticast;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OnSubscribePublishMulticast",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Lc8/kqq;, "Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber<TT;>;"
    .local p1, "state":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 388
    iput-object p1, p0, Lc8/kqq;->state:Lrx/internal/operators/OnSubscribePublishMulticast;

    .line 389
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 403
    .local p0, "this":Lc8/kqq;, "Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lc8/kqq;->state:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast;->onCompleted()V

    .line 404
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 398
    .local p0, "this":Lc8/kqq;, "Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lc8/kqq;->state:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribePublishMulticast;->onError(Ljava/lang/Throwable;)V

    .line 399
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
    .line 393
    .local p0, "this":Lc8/kqq;, "Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/kqq;->state:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribePublishMulticast;->onNext(Ljava/lang/Object;)V

    .line 394
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 408
    .local p0, "this":Lc8/kqq;, "Lrx/internal/operators/OnSubscribePublishMulticast$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lc8/kqq;->state:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribePublishMulticast;->setProducer(Lc8/Xlq;)V

    .line 409
    return-void
.end method
