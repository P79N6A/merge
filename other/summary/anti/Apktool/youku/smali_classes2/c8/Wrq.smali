.class public Lc8/Wrq;
.super Lc8/Omq;
.source "OperatorDoAfterTerminate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xrq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xrq;

.field final synthetic val$child:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Xrq;Lc8/Omq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 46
    .local p0, "this":Lc8/Wrq;, "Lrx/internal/operators/OperatorDoAfterTerminate.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Wrq;->this$0:Lc8/Xrq;

    iput-object p3, p0, Lc8/Wrq;->val$child:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method callAction()V
    .locals 2

    .prologue
    .line 73
    .local p0, "this":Lc8/Wrq;, "Lrx/internal/operators/OperatorDoAfterTerminate.1;"
    :try_start_0
    iget-object v1, p0, Lc8/Wrq;->this$0:Lc8/Xrq;

    iget-object v1, v1, Lc8/Xrq;->action:Lc8/hnq;

    invoke-interface {v1}, Lc8/hnq;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 76
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lc8/Wrq;, "Lrx/internal/operators/OperatorDoAfterTerminate.1;"
    :try_start_0
    iget-object v0, p0, Lc8/Wrq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, Lc8/Wrq;->callAction()V

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lc8/Wrq;->callAction()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    .local p0, "this":Lc8/Wrq;, "Lrx/internal/operators/OperatorDoAfterTerminate.1;"
    :try_start_0
    iget-object v0, p0, Lc8/Wrq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p0}, Lc8/Wrq;->callAction()V

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lc8/Wrq;->callAction()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lc8/Wrq;, "Lrx/internal/operators/OperatorDoAfterTerminate.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Wrq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
