.class public abstract Lc8/bzq;
.super Lc8/Nyq;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Nyq",
        "<TE;>;"
    }
.end annotation


# instance fields
.field p10:J

.field p11:J

.field p12:J

.field p13:J

.field p14:J

.field p15:J

.field p16:J

.field p30:J

.field p31:J

.field p32:J

.field p33:J

.field p34:J

.field p35:J

.field p36:J

.field p37:J


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 28
    .local p0, "this":Lc8/bzq;, "Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad<TE;>;"
    invoke-direct {p0, p1}, Lc8/Nyq;-><init>(I)V

    .line 29
    return-void
.end method
