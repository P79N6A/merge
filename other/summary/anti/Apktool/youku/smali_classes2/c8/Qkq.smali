.class public Lc8/Qkq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->await()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Plq;

.field final synthetic val$cdl:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$err:[Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lc8/Plq;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lc8/Qkq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/Qkq;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lc8/Qkq;->val$err:[Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lc8/Qkq;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1024
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1028
    iget-object v0, p0, Lc8/Qkq;->val$err:[Ljava/lang/Throwable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1029
    iget-object v0, p0, Lc8/Qkq;->val$cdl:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1030
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 0
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 1035
    return-void
.end method
