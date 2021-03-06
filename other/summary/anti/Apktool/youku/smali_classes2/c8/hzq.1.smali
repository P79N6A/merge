.class public final Lc8/hzq;
.super Lc8/mzq;
.source "SpscArrayQueue.java"


# annotations
.annotation build Lc8/xyq;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/mzq",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 98
    .local p0, "this":Lc8/hzq;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lc8/mzq;-><init>(I)V

    .line 99
    return-void
.end method

.method private lvConsumerIndex()J
    .locals 4

    .prologue
    .line 189
    .local p0, "this":Lc8/hzq;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    sget-object v0, Lc8/vzq;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lc8/hzq;->C_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private lvProducerIndex()J
    .locals 4

    .prologue
    .line 185
    .local p0, "this":Lc8/hzq;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    sget-object v0, Lc8/vzq;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lc8/hzq;->P_INDEX_OFFSET:J

    invoke-virtual {v0, p0, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private soConsumerIndex(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    .line 181
    .local p0, "this":Lc8/hzq;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    sget-object v0, Lc8/vzq;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lc8/hzq;->C_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 182
    return-void
.end method

.method private soProducerIndex(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    .line 177
    .local p0, "this":Lc8/hzq;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    sget-object v0, Lc8/vzq;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lc8/hzq;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 178
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 4

    .prologue
    .line 173
    .local p0, "this":Lc8/hzq;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    invoke-direct {p0}, Lc8/hzq;->lvProducerIndex()J

    move-result-wide v0

    invoke-direct {p0}, Lc8/hzq;->lvConsumerIndex()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lc8/hzq;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 109
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "null elements not allowed"

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_0
    iget-object v2, p0, Lc8/hzq;->buffer:[Ljava/lang/Object;

    .line 113
    .local v2, "lElementBuffer":[Ljava/lang/Object;, "[TE;"
    iget-wide v0, p0, Lc8/hzq;->producerIndex:J

    .line 114
    .local v0, "index":J
    invoke-virtual {p0, v0, v1}, Lc8/hzq;->calcElementOffset(J)J

    move-result-wide v4

    .line 115
    .local v4, "offset":J
    invoke-virtual {p0, v2, v4, v5}, Lc8/hzq;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 116
    const/4 v3, 0x0

    .line 120
    :goto_0
    return v3

    .line 118
    :cond_1
    invoke-virtual {p0, v2, v4, v5, p1}, Lc8/hzq;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 119
    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    invoke-direct {p0, v6, v7}, Lc8/hzq;->soProducerIndex(J)V

    .line 120
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lc8/hzq;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    iget-wide v0, p0, Lc8/hzq;->consumerIndex:J

    invoke-virtual {p0, v0, v1}, Lc8/hzq;->calcElementOffset(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lc8/hzq;->lvElement(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/hzq;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    const/4 v6, 0x0

    .line 130
    iget-wide v2, p0, Lc8/hzq;->consumerIndex:J

    .line 131
    .local v2, "index":J
    invoke-virtual {p0, v2, v3}, Lc8/hzq;->calcElementOffset(J)J

    move-result-wide v4

    .line 133
    .local v4, "offset":J
    iget-object v1, p0, Lc8/hzq;->buffer:[Ljava/lang/Object;

    .line 134
    .local v1, "lElementBuffer":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, v1, v4, v5}, Lc8/hzq;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    move-object v0, v6

    .line 140
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v0

    .line 138
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {p0, v1, v4, v5, v6}, Lc8/hzq;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 139
    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    invoke-direct {p0, v6, v7}, Lc8/hzq;->soConsumerIndex(J)V

    goto :goto_0
.end method

.method public size()I
    .locals 8

    .prologue
    .line 160
    .local p0, "this":Lc8/hzq;, "Lrx/internal/util/unsafe/SpscArrayQueue<TE;>;"
    invoke-direct {p0}, Lc8/hzq;->lvConsumerIndex()J

    move-result-wide v0

    .line 162
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 163
    .local v2, "before":J
    invoke-direct {p0}, Lc8/hzq;->lvProducerIndex()J

    move-result-wide v4

    .line 164
    .local v4, "currentProducerIndex":J
    invoke-direct {p0}, Lc8/hzq;->lvConsumerIndex()J

    move-result-wide v0

    .line 165
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 166
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
