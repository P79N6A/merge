.class public final Lc8/zTe;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ATe;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$daemon:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lc8/zTe;->val$name:Ljava/lang/String;

    iput-boolean p2, p0, Lc8/zTe;->val$daemon:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 225
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lc8/zTe;->val$name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 226
    .local v0, "result":Ljava/lang/Thread;
    iget-boolean v1, p0, Lc8/zTe;->val$daemon:Z

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 227
    return-object v0
.end method
