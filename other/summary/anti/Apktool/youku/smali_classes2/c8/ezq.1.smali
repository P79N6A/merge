.class public abstract Lc8/ezq;
.super Lc8/azq;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/azq",
        "<TE;>;"
    }
.end annotation


# instance fields
.field p20:J

.field p21:J

.field p22:J

.field p23:J

.field p24:J

.field p25:J

.field p26:J

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
    .line 82
    .local p0, "this":Lc8/ezq;, "Lrx/internal/util/unsafe/SpmcArrayQueueMidPad<TE;>;"
    invoke-direct {p0, p1}, Lc8/azq;-><init>(I)V

    .line 83
    return-void
.end method
