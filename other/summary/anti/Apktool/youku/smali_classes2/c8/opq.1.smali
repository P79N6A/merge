.class public final Lc8/opq;
.super Ljava/lang/Object;
.source "OnSubscribeConcatMap.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/rpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConcatMapInnerScalarProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Xlq;"
    }
.end annotation


# instance fields
.field once:Z

.field final parent:Lc8/qpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qpq",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lc8/qpq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lc8/qpq",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lc8/opq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TR;"
    .local p2, "parent":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Lc8/opq;->value:Ljava/lang/Object;

    .line 358
    iput-object p2, p0, Lc8/opq;->parent:Lc8/qpq;

    .line 359
    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 363
    .local p0, "this":Lc8/opq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerScalarProducer<TT;TR;>;"
    iget-boolean v1, p0, Lc8/opq;->once:Z

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 364
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/opq;->once:Z

    .line 365
    iget-object v0, p0, Lc8/opq;->parent:Lc8/qpq;

    .line 366
    .local v0, "p":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    iget-object v1, p0, Lc8/opq;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/qpq;->innerNext(Ljava/lang/Object;)V

    .line 367
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lc8/qpq;->innerCompleted(J)V

    .line 369
    .end local v0    # "p":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    :cond_0
    return-void
.end method
