.class public final Lc8/jAq;
.super Ljava/lang/Object;
.source "Observers.java"

# interfaces
.implements Lc8/Wlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lAq;->create(Lc8/inq;Lc8/inq;)Lc8/Wlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Wlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$onError:Lc8/inq;

.field final synthetic val$onNext:Lc8/inq;


# direct methods
.method constructor <init>(Lc8/inq;Lc8/inq;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lc8/jAq;->val$onError:Lc8/inq;

    iput-object p2, p0, Lc8/jAq;->val$onNext:Lc8/inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 132
    iget-object v0, p0, Lc8/jAq;->val$onError:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/jAq;->val$onNext:Lc8/inq;

    invoke-interface {v0, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 138
    return-void
.end method
