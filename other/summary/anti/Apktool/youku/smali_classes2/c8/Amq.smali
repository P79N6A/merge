.class public final Lc8/Amq;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mmq;->defer(Ljava/util/concurrent/Callable;)Lc8/Mmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Kmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$singleFactory:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 2526
    iput-object p1, p0, Lc8/Amq;->val$singleFactory:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nmq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2532
    .local p1, "singleSubscriber":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    :try_start_0
    iget-object v2, p0, Lc8/Amq;->val$singleFactory:Ljava/util/concurrent/Callable;

    invoke-interface {v2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Mmq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2539
    .local v0, "single":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-virtual {v0, p1}, Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;

    .line 2540
    .end local v0    # "single":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    :goto_0
    return-void

    .line 2533
    :catch_0
    move-exception v1

    .line 2534
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 2535
    invoke-virtual {p1, v1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2526
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Amq;->call(Lc8/Nmq;)V

    return-void
.end method
