.class public final Lc8/uoq;
.super Lc8/Omq;
.source "BlockingOperatorToFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/woq;->toFuture(Lc8/Vlq;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$error:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$finished:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$value:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lc8/uoq;->val$finished:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lc8/uoq;->val$error:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lc8/uoq;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/uoq;->val$finished:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 56
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    iget-object v0, p0, Lc8/uoq;->val$error:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lc8/uoq;->val$finished:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 62
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
    .line 67
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/uoq;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 68
    return-void
.end method
