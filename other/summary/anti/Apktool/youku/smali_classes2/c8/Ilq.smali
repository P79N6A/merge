.class public final Lc8/Ilq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->error(Ljava/lang/Throwable;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$error:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lc8/Ilq;->val$error:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 1
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 468
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v0

    invoke-interface {p1, v0}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 469
    iget-object v0, p0, Lc8/Ilq;->val$error:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 470
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 465
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Ilq;->call(Lc8/Nlq;)V

    return-void
.end method
