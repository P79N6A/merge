.class public Lc8/noq;
.super Ljava/lang/Object;
.source "BlockingOperatorMostRecent.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ooq;->getIterable()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private buf:Ljava/lang/Object;

.field final synthetic this$0:Lc8/ooq;


# direct methods
.method constructor <init>(Lc8/ooq;)V
    .locals 0

    .prologue
    .line 93
    .local p0, "this":Lc8/noq;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver.1;"
    iput-object p1, p0, Lc8/noq;->this$0:Lc8/ooq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 101
    .local p0, "this":Lc8/noq;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver.1;"
    iget-object v0, p0, Lc8/noq;->this$0:Lc8/ooq;

    iget-object v0, v0, Lc8/ooq;->value:Ljava/lang/Object;

    iput-object v0, p0, Lc8/noq;->buf:Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lc8/noq;->this$0:Lc8/ooq;

    iget-object v0, v0, Lc8/ooq;->nl:Lc8/cpq;

    iget-object v1, p0, Lc8/noq;->buf:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/cpq;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/noq;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver.1;"
    const/4 v2, 0x0

    .line 109
    :try_start_0
    iget-object v0, p0, Lc8/noq;->buf:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lc8/noq;->this$0:Lc8/ooq;

    iget-object v0, v0, Lc8/ooq;->value:Ljava/lang/Object;

    iput-object v0, p0, Lc8/noq;->buf:Ljava/lang/Object;

    .line 112
    :cond_0
    iget-object v0, p0, Lc8/noq;->this$0:Lc8/ooq;

    iget-object v0, v0, Lc8/ooq;->nl:Lc8/cpq;

    iget-object v1, p0, Lc8/noq;->buf:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/cpq;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lc8/noq;->buf:Ljava/lang/Object;

    throw v0

    .line 115
    :cond_1
    :try_start_1
    iget-object v0, p0, Lc8/noq;->this$0:Lc8/ooq;

    iget-object v0, v0, Lc8/ooq;->nl:Lc8/cpq;

    iget-object v1, p0, Lc8/noq;->buf:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lc8/noq;->this$0:Lc8/ooq;

    iget-object v0, v0, Lc8/ooq;->nl:Lc8/cpq;

    iget-object v1, p0, Lc8/noq;->buf:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/cpq;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 118
    :cond_2
    iget-object v0, p0, Lc8/noq;->this$0:Lc8/ooq;

    iget-object v0, v0, Lc8/ooq;->nl:Lc8/cpq;

    iget-object v1, p0, Lc8/noq;->buf:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 121
    iput-object v2, p0, Lc8/noq;->buf:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 127
    .local p0, "this":Lc8/noq;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Read only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
