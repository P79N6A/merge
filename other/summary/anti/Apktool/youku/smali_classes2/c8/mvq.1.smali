.class public Lc8/mvq;
.super Lc8/Omq;
.source "OperatorTimeoutWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nvq;->call(Lc8/ivq;Ljava/lang/Long;Ljava/lang/Object;Lc8/Zlq;)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/nvq;

.field final synthetic val$seqId:Ljava/lang/Long;

.field final synthetic val$timeoutSubscriber:Lc8/ivq;


# direct methods
.method constructor <init>(Lc8/nvq;Lc8/ivq;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 89
    .local p0, "this":Lc8/mvq;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    iput-object p1, p0, Lc8/mvq;->this$1:Lc8/nvq;

    iput-object p2, p0, Lc8/mvq;->val$timeoutSubscriber:Lc8/ivq;

    iput-object p3, p0, Lc8/mvq;->val$seqId:Ljava/lang/Long;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 93
    .local p0, "this":Lc8/mvq;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    iget-object v0, p0, Lc8/mvq;->val$timeoutSubscriber:Lc8/ivq;

    iget-object v1, p0, Lc8/mvq;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lc8/ivq;->onTimeout(J)V

    .line 94
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 98
    .local p0, "this":Lc8/mvq;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    iget-object v0, p0, Lc8/mvq;->val$timeoutSubscriber:Lc8/ivq;

    invoke-virtual {v0, p1}, Lc8/ivq;->onError(Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lc8/mvq;, "Lrx/internal/operators/OperatorTimeoutWithSelector$2.1;"
    .local p1, "t":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lc8/mvq;->val$timeoutSubscriber:Lc8/ivq;

    iget-object v1, p0, Lc8/mvq;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lc8/ivq;->onTimeout(J)V

    .line 104
    return-void
.end method
