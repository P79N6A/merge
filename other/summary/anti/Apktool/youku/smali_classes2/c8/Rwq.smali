.class public final Lc8/Rwq;
.super Lc8/jxq;
.source "CachedThreadScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Swq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadWorker"
.end annotation


# instance fields
.field private expirationTime:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lc8/jxq;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Rwq;->expirationTime:J

    .line 236
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lc8/Rwq;->expirationTime:J

    return-wide v0
.end method

.method public setExpirationTime(J)V
    .locals 1
    .param p1, "expirationTime"    # J

    .prologue
    .line 243
    iput-wide p1, p0, Lc8/Rwq;->expirationTime:J

    .line 244
    return-void
.end method
