.class public abstract Lc8/Pyq;
.super Lc8/Nyq;
.source "ConcurrentSequencedCircularArrayQueue.java"


# annotations
.annotation build Lc8/xyq;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Nyq",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final ARRAY_BASE:J

.field private static final ELEMENT_SHIFT:I


# instance fields
.field protected final sequenceBuffer:[J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 28
    sget-object v1, Lc8/vzq;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, [J

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 29
    .local v0, "scale":I
    const/16 v1, 0x8

    if-ne v1, v0, :cond_0

    .line 30
    sget v1, Lc8/Pyq;->SPARSE_SHIFT:I

    add-int/lit8 v1, v1, 0x3

    sput v1, Lc8/Pyq;->ELEMENT_SHIFT:I

    .line 35
    sget-object v1, Lc8/vzq;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, [J

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v1

    const/16 v2, 0x20

    sget v3, Lc8/Pyq;->ELEMENT_SHIFT:I

    sget v4, Lc8/Pyq;->SPARSE_SHIFT:I

    sub-int/2addr v3, v4

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-long v2, v1

    sput-wide v2, Lc8/Pyq;->ARRAY_BASE:J

    .line 36
    return-void

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unexpected long[] element size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(I)V
    .locals 10
    .param p1, "capacity"    # I

    .prologue
    .local p0, "this":Lc8/Pyq;, "Lrx/internal/util/unsafe/ConcurrentSequencedCircularArrayQueue<TE;>;"
    const-wide/16 v8, 0x1

    .line 40
    invoke-direct {p0, p1}, Lc8/Nyq;-><init>(I)V

    .line 41
    iget-wide v0, p0, Lc8/Pyq;->mask:J

    add-long/2addr v0, v8

    long-to-int v6, v0

    .line 43
    .local v6, "actualCapacity":I
    sget v0, Lc8/Pyq;->SPARSE_SHIFT:I

    shl-int v0, v6, v0

    add-int/lit8 v0, v0, 0x40

    new-array v0, v0, [J

    iput-object v0, p0, Lc8/Pyq;->sequenceBuffer:[J

    .line 44
    const-wide/16 v4, 0x0

    .local v4, "i":J
    :goto_0
    int-to-long v0, v6

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 45
    iget-object v1, p0, Lc8/Pyq;->sequenceBuffer:[J

    invoke-virtual {p0, v4, v5}, Lc8/Pyq;->calcSequenceOffset(J)J

    move-result-wide v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Pyq;->soSequence([JJJ)V

    .line 44
    add-long/2addr v4, v8

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method protected final calcSequenceOffset(J)J
    .locals 5
    .param p1, "index"    # J

    .prologue
    .line 50
    .local p0, "this":Lc8/Pyq;, "Lrx/internal/util/unsafe/ConcurrentSequencedCircularArrayQueue<TE;>;"
    sget-wide v0, Lc8/Pyq;->ARRAY_BASE:J

    iget-wide v2, p0, Lc8/Pyq;->mask:J

    and-long/2addr v2, p1

    sget v4, Lc8/Pyq;->ELEMENT_SHIFT:I

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected final lvSequence([JJ)J
    .locals 2
    .param p1, "buffer"    # [J
    .param p2, "offset"    # J

    .prologue
    .line 58
    .local p0, "this":Lc8/Pyq;, "Lrx/internal/util/unsafe/ConcurrentSequencedCircularArrayQueue<TE;>;"
    sget-object v0, Lc8/vzq;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final soSequence([JJJ)V
    .locals 6
    .param p1, "buffer"    # [J
    .param p2, "offset"    # J
    .param p4, "e"    # J

    .prologue
    .line 54
    .local p0, "this":Lc8/Pyq;, "Lrx/internal/util/unsafe/ConcurrentSequencedCircularArrayQueue<TE;>;"
    sget-object v0, Lc8/vzq;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 55
    return-void
.end method
