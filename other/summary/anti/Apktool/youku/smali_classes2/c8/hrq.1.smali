.class public final Lc8/hrq;
.super Lc8/Omq;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/krq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferExact"
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
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final count:I


# direct methods
.method public constructor <init>(Lc8/Omq;I)V
    .locals 2
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lc8/hrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 97
    iput-object p1, p0, Lc8/hrq;->actual:Lc8/Omq;

    .line 98
    iput p2, p0, Lc8/hrq;->count:I

    .line 99
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/hrq;->request(J)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lc8/hrq;J)V
    .locals 1
    .param p0, "x0"    # Lc8/hrq;
    .param p1, "x1"    # J

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2}, Lc8/hrq;->request(J)V

    return-void
.end method


# virtual methods
.method createProducer()Lc8/Xlq;
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lc8/hrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    new-instance v0, Lc8/grq;

    invoke-direct {v0, p0}, Lc8/grq;-><init>(Lc8/hrq;)V

    return-object v0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 126
    .local p0, "this":Lc8/hrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    iget-object v0, p0, Lc8/hrq;->buffer:Ljava/util/List;

    .line 127
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lc8/hrq;->actual:Lc8/Omq;

    invoke-virtual {v1, v0}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 130
    :cond_0
    iget-object v1, p0, Lc8/hrq;->actual:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    .line 131
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    .local p0, "this":Lc8/hrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/hrq;->buffer:Ljava/util/List;

    .line 121
    iget-object v0, p0, Lc8/hrq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 122
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
    .line 104
    .local p0, "this":Lc8/hrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/hrq;->buffer:Ljava/util/List;

    .line 105
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v1, p0, Lc8/hrq;->count:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .restart local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object v0, p0, Lc8/hrq;->buffer:Ljava/util/List;

    .line 110
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lc8/hrq;->count:I

    if-ne v1, v2, :cond_1

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/hrq;->buffer:Ljava/util/List;

    .line 114
    iget-object v1, p0, Lc8/hrq;->actual:Lc8/Omq;

    invoke-virtual {v1, v0}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 116
    :cond_1
    return-void
.end method
