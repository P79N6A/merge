.class public final Lc8/Ztq;
.super Ljava/lang/Object;
.source "OperatorSkip.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final toSkip:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 34
    .local p0, "this":Lc8/Ztq;, "Lrx/internal/operators/OperatorSkip<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-gez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput p1, p0, Lc8/Ztq;->toSkip:I

    .line 39
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lc8/Ztq;, "Lrx/internal/operators/OperatorSkip<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Ytq;

    invoke-direct {v0, p0, p1, p1}, Lc8/Ytq;-><init>(Lc8/Ztq;Lc8/Omq;Lc8/Omq;)V

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lc8/Ztq;, "Lrx/internal/operators/OperatorSkip<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Ztq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
