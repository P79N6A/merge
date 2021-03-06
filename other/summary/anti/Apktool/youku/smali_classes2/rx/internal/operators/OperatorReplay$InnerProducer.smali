.class public final Lrx/internal/operators/OperatorReplay$InnerProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorReplay.java"

# interfaces
.implements Lc8/Pmq;
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Atq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InnerProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lc8/Xlq;",
        "Lc8/Pmq;"
    }
.end annotation


# static fields
.field static final UNSUBSCRIBED:J = -0x8000000000000000L

.field private static final serialVersionUID:J = -0x3dcf6c3b2e70d8baL


# instance fields
.field child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field index:Ljava/lang/Object;

.field missed:Z

.field final parent:Lc8/ztq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/ztq",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final totalRequested:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/ztq;Lc8/Omq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/ztq",
            "<TT;>;",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    .local p1, "parent":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p2, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 671
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lc8/ztq;

    .line 672
    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lc8/Omq;

    .line 673
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 674
    return-void
.end method


# virtual methods
.method addTotalRequested(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 725
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_0
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 726
    .local v0, "r":J
    add-long v2, v0, p1

    .line 727
    .local v2, "u":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 728
    const-wide v2, 0x7fffffffffffffffL

    .line 730
    :cond_1
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 731
    return-void
.end method

.method index()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()TU;"
        }
    .end annotation

    .prologue
    .line 802
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 4

    .prologue
    .line 770
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public produced(J)J
    .locals 11
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    .line 743
    cmp-long v6, p1, v8

    if-gtz v6, :cond_0

    .line 744
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Cant produce zero or less"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 748
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    .line 750
    .local v0, "r":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    move-wide v2, v4

    .line 762
    :goto_0
    return-wide v2

    .line 754
    :cond_1
    sub-long v2, v0, p1

    .line 756
    .local v2, "u":J
    cmp-long v6, v2, v8

    if-gez v6, :cond_2

    .line 757
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "More produced ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") than requested ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 760
    :cond_2
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$InnerProducer;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const-wide/16 v6, 0x0

    .line 679
    cmp-long v4, p1, v6

    if-gez v4, :cond_1

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    .line 689
    .local v0, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 693
    cmp-long v4, v0, v6

    if-ltz v4, :cond_2

    cmp-long v4, p1, v6

    if-eqz v4, :cond_0

    .line 697
    :cond_2
    add-long v2, v0, p1

    .line 699
    .local v2, "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_3

    .line 701
    const-wide v2, 0x7fffffffffffffffL

    .line 704
    :cond_3
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorReplay$InnerProducer;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 706
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorReplay$InnerProducer;->addTotalRequested(J)V

    .line 709
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lc8/ztq;

    invoke-virtual {v4, p0}, Lc8/ztq;->manageRequests(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 711
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lc8/ztq;

    iget-object v4, v4, Lc8/ztq;->buffer:Lc8/xtq;

    invoke-interface {v4, p0}, Lc8/xtq;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 6

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const-wide/high16 v4, -0x8000000000000000L

    .line 774
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v0

    .line 776
    .local v0, "r":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 781
    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorReplay$InnerProducer;->getAndSet(J)J

    move-result-wide v0

    .line 783
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 785
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lc8/ztq;

    invoke-virtual {v2, p0}, Lc8/ztq;->remove(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 790
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->parent:Lc8/ztq;

    invoke-virtual {v2, p0}, Lc8/ztq;->manageRequests(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 792
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lc8/Omq;

    .line 795
    :cond_0
    return-void
.end method
