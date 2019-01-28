.class public final Lc8/Zyq;
.super Lc8/dzq;
.source "SpmcArrayQueue.java"


# annotations
.annotation build Lc8/xyq;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/dzq",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 118
    .local p0, "this":Lc8/Zyq;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-direct {p0, p1}, Lc8/dzq;-><init>(I)V

    .line 119
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 4

    .prologue
    .line 217
    .local p0, "this":Lc8/Zyq;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lc8/Zyq;->lvConsumerIndex()J

    move-result-wide v0

    invoke-virtual {p0}, Lc8/Zyq;->lvProducerIndex()J

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
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lc8/Zyq;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    .line 124
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "Null is not a valid element"

    invoke-direct {v5, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :cond_0
    iget-object v4, p0, Lc8/Zyq;->buffer:[Ljava/lang/Object;

    .line 127
    .local v4, "lb":[Ljava/lang/Object;, "[TE;"
    iget-wide v2, p0, Lc8/Zyq;->mask:J

    .line 128
    .local v2, "lMask":J
    invoke-virtual {p0}, Lc8/Zyq;->lvProducerIndex()J

    move-result-wide v0

    .line 129
    .local v0, "currProducerIndex":J
    invoke-virtual {p0, v0, v1}, Lc8/Zyq;->calcElementOffset(J)J

    move-result-wide v6

    .line 130
    .local v6, "offset":J
    invoke-virtual {p0, v4, v6, v7}, Lc8/Zyq;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 131
    invoke-virtual {p0}, Lc8/Zyq;->lvConsumerIndex()J

    move-result-wide v10

    sub-long v8, v0, v10

    .line 133
    .local v8, "size":J
    cmp-long v5, v8, v2

    if-lez v5, :cond_1

    .line 134
    const/4 v5, 0x0

    .line 145
    .end local v8    # "size":J
    :goto_0
    return v5

    .line 138
    .restart local v8    # "size":J
    :cond_1
    invoke-virtual {p0, v4, v6, v7}, Lc8/Zyq;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 141
    .end local v8    # "size":J
    :cond_2
    invoke-virtual {p0, v4, v6, v7, p1}, Lc8/Zyq;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 144
    const-wide/16 v10, 0x1

    add-long/2addr v10, v0

    invoke-virtual {p0, v10, v11}, Lc8/Zyq;->soTail(J)V

    .line 145
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lc8/Zyq;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lc8/Zyq;->lvProducerIndexCache()J

    move-result-wide v2

    .line 180
    .local v2, "currProducerIndexCache":J
    :cond_0
    invoke-virtual {p0}, Lc8/Zyq;->lvConsumerIndex()J

    move-result-wide v4

    .line 181
    .local v4, "currentConsumerIndex":J
    cmp-long v7, v4, v2

    if-ltz v7, :cond_2

    .line 182
    invoke-virtual {p0}, Lc8/Zyq;->lvProducerIndex()J

    move-result-wide v0

    .line 183
    .local v0, "currProducerIndex":J
    cmp-long v7, v4, v0

    if-ltz v7, :cond_1

    .line 184
    const/4 v6, 0x0

    .line 190
    .end local v0    # "currProducerIndex":J
    :goto_0
    return-object v6

    .line 186
    .restart local v0    # "currProducerIndex":J
    :cond_1
    invoke-virtual {p0, v0, v1}, Lc8/Zyq;->svProducerIndexCache(J)V

    .line 189
    .end local v0    # "currProducerIndex":J
    :cond_2
    invoke-virtual {p0, v4, v5}, Lc8/Zyq;->calcElementOffset(J)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lc8/Zyq;->lvElement(J)Ljava/lang/Object;

    move-result-object v6

    .local v6, "e":Ljava/lang/Object;, "TE;"
    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Zyq;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    const/4 v10, 0x0

    .line 151
    invoke-virtual {p0}, Lc8/Zyq;->lvProducerIndexCache()J

    move-result-wide v2

    .line 153
    .local v2, "currProducerIndexCache":J
    :cond_0
    invoke-virtual {p0}, Lc8/Zyq;->lvConsumerIndex()J

    move-result-wide v4

    .line 154
    .local v4, "currentConsumerIndex":J
    cmp-long v11, v4, v2

    if-ltz v11, :cond_2

    .line 155
    invoke-virtual {p0}, Lc8/Zyq;->lvProducerIndex()J

    move-result-wide v0

    .line 156
    .local v0, "currProducerIndex":J
    cmp-long v11, v4, v0

    if-ltz v11, :cond_1

    move-object v6, v10

    .line 171
    .end local v0    # "currProducerIndex":J
    :goto_0
    return-object v6

    .line 159
    .restart local v0    # "currProducerIndex":J
    :cond_1
    invoke-virtual {p0, v0, v1}, Lc8/Zyq;->svProducerIndexCache(J)V

    .line 162
    .end local v0    # "currProducerIndex":J
    :cond_2
    const-wide/16 v12, 0x1

    add-long/2addr v12, v4

    invoke-virtual {p0, v4, v5, v12, v13}, Lc8/Zyq;->casHead(JJ)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 165
    invoke-virtual {p0, v4, v5}, Lc8/Zyq;->calcElementOffset(J)J

    move-result-wide v8

    .line 166
    .local v8, "offset":J
    iget-object v7, p0, Lc8/Zyq;->buffer:[Ljava/lang/Object;

    .line 168
    .local v7, "lb":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, v7, v8, v9}, Lc8/Zyq;->lpElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 170
    .local v6, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v7, v8, v9, v10}, Lc8/Zyq;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0
.end method

.method public size()I
    .locals 8

    .prologue
    .line 200
    .local p0, "this":Lc8/Zyq;, "Lrx/internal/util/unsafe/SpmcArrayQueue<TE;>;"
    invoke-virtual {p0}, Lc8/Zyq;->lvConsumerIndex()J

    move-result-wide v0

    .line 202
    .local v0, "after":J
    :cond_0
    move-wide v2, v0

    .line 203
    .local v2, "before":J
    invoke-virtual {p0}, Lc8/Zyq;->lvProducerIndex()J

    move-result-wide v4

    .line 204
    .local v4, "currentProducerIndex":J
    invoke-virtual {p0}, Lc8/Zyq;->lvConsumerIndex()J

    move-result-wide v0

    .line 205
    cmp-long v6, v2, v0

    if-nez v6, :cond_0

    .line 206
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method
