.class public final Lc8/uMc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc8/tMc;


# direct methods
.method constructor <init>(Lc8/tMc;)V
    .locals 0

    iput-object p1, p0, Lc8/uMc;->a:Lc8/tMc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/uMc;->a:Lc8/tMc;

    invoke-static {v0}, Lc8/tMc;->a(Lc8/tMc;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc8/uMc;->a:Lc8/tMc;

    invoke-static {v0}, Lc8/tMc;->a(Lc8/tMc;)Ljava/util/LinkedList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lc8/uMc;->a:Lc8/tMc;

    invoke-static {v1}, Lc8/tMc;->a(Lc8/tMc;)Ljava/util/LinkedList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/uMc;->a:Lc8/tMc;

    invoke-static {v0}, Lc8/tMc;->b(Lc8/tMc;)Ljava/lang/Thread;

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lc8/uMc;->a:Lc8/tMc;

    invoke-static {v0}, Lc8/tMc;->b(Lc8/tMc;)Ljava/lang/Thread;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/uMc;->a:Lc8/tMc;

    invoke-static {v1}, Lc8/tMc;->b(Lc8/tMc;)Ljava/lang/Thread;

    throw v0
.end method
