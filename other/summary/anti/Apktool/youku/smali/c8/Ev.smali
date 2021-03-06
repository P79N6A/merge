.class public Lc8/Ev;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Dv;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lc8/Dv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5015
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc8/Ev;->mScrap:Landroid/util/SparseArray;

    .line 5017
    const/4 v0, 0x0

    iput v0, p0, Lc8/Ev;->mAttachCount:I

    return-void
.end method

.method private getScrapDataForType(I)Lc8/Dv;
    .locals 2
    .param p1, "viewType"    # I

    .prologue
    .line 5140
    iget-object v1, p0, Lc8/Ev;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Dv;

    .line 5141
    .local v0, "scrapData":Lc8/Dv;
    if-nez v0, :cond_0

    .line 5142
    new-instance v0, Lc8/Dv;

    .end local v0    # "scrapData":Lc8/Dv;
    invoke-direct {v0}, Lc8/Dv;-><init>()V

    .line 5143
    .restart local v0    # "scrapData":Lc8/Dv;
    iget-object v1, p0, Lc8/Ev;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5145
    :cond_0
    return-object v0
.end method


# virtual methods
.method attach(Lc8/iv;)V
    .locals 1
    .param p1, "adapter"    # Lc8/iv;

    .prologue
    .line 5107
    iget v0, p0, Lc8/Ev;->mAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/Ev;->mAttachCount:I

    .line 5108
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 5020
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lc8/Ev;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5021
    iget-object v2, p0, Lc8/Ev;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Dv;

    .line 5022
    .local v0, "data":Lc8/Dv;
    iget-object v2, v0, Lc8/Dv;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5020
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5024
    .end local v0    # "data":Lc8/Dv;
    :cond_0
    return-void
.end method

.method detach()V
    .locals 1

    .prologue
    .line 5111
    iget v0, p0, Lc8/Ev;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/Ev;->mAttachCount:I

    .line 5112
    return-void
.end method

.method factorInBindTime(IJ)V
    .locals 4
    .param p1, "viewType"    # I
    .param p2, "bindTimeNs"    # J

    .prologue
    .line 5091
    invoke-direct {p0, p1}, Lc8/Ev;->getScrapDataForType(I)Lc8/Dv;

    move-result-object v0

    .line 5092
    .local v0, "scrapData":Lc8/Dv;
    iget-wide v2, v0, Lc8/Dv;->mBindRunningAverageNs:J

    invoke-virtual {p0, v2, v3, p2, p3}, Lc8/Ev;->runningAverage(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lc8/Dv;->mBindRunningAverageNs:J

    .line 5094
    return-void
.end method

.method factorInCreateTime(IJ)V
    .locals 4
    .param p1, "viewType"    # I
    .param p2, "createTimeNs"    # J

    .prologue
    .line 5085
    invoke-direct {p0, p1}, Lc8/Ev;->getScrapDataForType(I)Lc8/Dv;

    move-result-object v0

    .line 5086
    .local v0, "scrapData":Lc8/Dv;
    iget-wide v2, v0, Lc8/Dv;->mCreateRunningAverageNs:J

    invoke-virtual {p0, v2, v3, p2, p3}, Lc8/Ev;->runningAverage(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lc8/Dv;->mCreateRunningAverageNs:J

    .line 5088
    return-void
.end method

.method public getRecycledView(I)Lc8/Qv;
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    .line 5045
    iget-object v2, p0, Lc8/Ev;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Dv;

    .line 5046
    .local v0, "scrapData":Lc8/Dv;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lc8/Dv;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5047
    iget-object v1, v0, Lc8/Dv;->mScrapHeap:Ljava/util/ArrayList;

    .line 5048
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Qv;

    .line 5050
    .end local v1    # "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getRecycledViewCount(I)I
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 5041
    invoke-direct {p0, p1}, Lc8/Ev;->getScrapDataForType(I)Lc8/Dv;

    move-result-object v0

    iget-object v0, v0, Lc8/Dv;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method onAdapterChanged(Lc8/iv;Lc8/iv;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lc8/iv;
    .param p2, "newAdapter"    # Lc8/iv;
    .param p3, "compatibleWithPrevious"    # Z

    .prologue
    .line 5128
    if-eqz p1, :cond_0

    .line 5129
    invoke-virtual {p0}, Lc8/Ev;->detach()V

    .line 5131
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Lc8/Ev;->mAttachCount:I

    if-nez v0, :cond_1

    .line 5132
    invoke-virtual {p0}, Lc8/Ev;->clear()V

    .line 5134
    :cond_1
    if-eqz p2, :cond_2

    .line 5135
    invoke-virtual {p0, p2}, Lc8/Ev;->attach(Lc8/iv;)V

    .line 5137
    :cond_2
    return-void
.end method

.method public putRecycledView(Lc8/Qv;)V
    .locals 4
    .param p1, "scrap"    # Lc8/Qv;

    .prologue
    .line 5065
    invoke-virtual {p1}, Lc8/Qv;->getItemViewType()I

    move-result v1

    .line 5066
    .local v1, "viewType":I
    invoke-direct {p0, v1}, Lc8/Ev;->getScrapDataForType(I)Lc8/Dv;

    move-result-object v2

    iget-object v0, v2, Lc8/Dv;->mScrapHeap:Ljava/util/ArrayList;

    .line 5067
    .local v0, "scrapHeap":Ljava/util/ArrayList;
    iget-object v2, p0, Lc8/Ev;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Dv;

    iget v2, v2, Lc8/Dv;->mMaxScrap:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 5075
    :goto_0
    return-void

    .line 5073
    :cond_0
    invoke-virtual {p1}, Lc8/Qv;->resetInternal()V

    .line 5074
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method runningAverage(JJ)J
    .locals 7
    .param p1, "oldAverage"    # J
    .param p3, "newValue"    # J

    .prologue
    const-wide/16 v4, 0x4

    .line 5078
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5081
    .end local p3    # "newValue":J
    :goto_0
    return-wide p3

    .restart local p3    # "newValue":J
    :cond_0
    div-long v0, p1, v4

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    div-long v2, p3, v4

    add-long p3, v0, v2

    goto :goto_0
.end method

.method public setMaxRecycledViews(II)V
    .locals 3
    .param p1, "viewType"    # I
    .param p2, "max"    # I

    .prologue
    .line 5027
    invoke-direct {p0, p1}, Lc8/Ev;->getScrapDataForType(I)Lc8/Dv;

    move-result-object v0

    .line 5028
    .local v0, "scrapData":Lc8/Dv;
    iput p2, v0, Lc8/Dv;->mMaxScrap:I

    .line 5029
    iget-object v1, v0, Lc8/Dv;->mScrapHeap:Ljava/util/ArrayList;

    .line 5030
    .local v1, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    if-eqz v1, :cond_0

    .line 5031
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_0

    .line 5032
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 5035
    :cond_0
    return-void
.end method

.method size()I
    .locals 4

    .prologue
    .line 5054
    const/4 v0, 0x0

    .line 5055
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lc8/Ev;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 5056
    iget-object v3, p0, Lc8/Ev;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Dv;

    iget-object v2, v3, Lc8/Dv;->mScrapHeap:Ljava/util/ArrayList;

    .line 5057
    .local v2, "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_0

    .line 5058
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 5055
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5061
    .end local v2    # "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    :cond_1
    return v0
.end method

.method willBindInTime(IJJ)Z
    .locals 4
    .param p1, "viewType"    # I
    .param p2, "approxCurrentNs"    # J
    .param p4, "deadlineNs"    # J

    .prologue
    .line 5102
    invoke-direct {p0, p1}, Lc8/Ev;->getScrapDataForType(I)Lc8/Dv;

    move-result-object v2

    iget-wide v0, v2, Lc8/Dv;->mBindRunningAverageNs:J

    .line 5103
    .local v0, "expectedDurationNs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method willCreateInTime(IJJ)Z
    .locals 4
    .param p1, "viewType"    # I
    .param p2, "approxCurrentNs"    # J
    .param p4, "deadlineNs"    # J

    .prologue
    .line 5097
    invoke-direct {p0, p1}, Lc8/Ev;->getScrapDataForType(I)Lc8/Dv;

    move-result-object v2

    iget-wide v0, v2, Lc8/Dv;->mCreateRunningAverageNs:J

    .line 5098
    .local v0, "expectedDurationNs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
