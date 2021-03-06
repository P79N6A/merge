.class public Lc8/yu;
.super Lc8/Hw;
.source "LinearSnapHelper.java"


# static fields
.field private static final INVALID_DISTANCE:F = 1.0f


# instance fields
.field private mHorizontalHelper:Lc8/Ru;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalHelper:Lc8/Ru;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/Hw;-><init>()V

    return-void
.end method

.method private computeDistancePerChild(Lc8/xv;Lc8/Ru;)F
    .locals 13
    .param p1, "layoutManager"    # Lc8/xv;
    .param p2, "helper"    # Lc8/Ru;

    .prologue
    .line 236
    const/4 v8, 0x0

    .line 237
    .local v8, "minPosView":Landroid/view/View;
    const/4 v6, 0x0

    .line 238
    .local v6, "maxPosView":Landroid/view/View;
    const v7, 0x7fffffff

    .line 239
    .local v7, "minPos":I
    const/high16 v5, -0x80000000

    .line 240
    .local v5, "maxPos":I
    invoke-virtual {p1}, Lc8/xv;->getChildCount()I

    move-result v1

    .line 241
    .local v1, "childCount":I
    if-nez v1, :cond_0

    .line 242
    const/high16 v11, 0x3f800000    # 1.0f

    .line 271
    :goto_0
    return v11

    .line 245
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 246
    invoke-virtual {p1, v4}, Lc8/xv;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Lc8/xv;->getPosition(Landroid/view/View;)I

    move-result v9

    .line 248
    .local v9, "pos":I
    const/4 v11, -0x1

    if-eq v9, v11, :cond_2

    .line 251
    if-ge v9, v7, :cond_1

    .line 252
    move v7, v9

    .line 253
    move-object v8, v0

    .line 255
    :cond_1
    if-le v9, v5, :cond_2

    .line 256
    move v5, v9

    .line 257
    move-object v6, v0

    .line 245
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 260
    .end local v0    # "child":Landroid/view/View;
    .end local v9    # "pos":I
    :cond_3
    if-eqz v8, :cond_4

    if-nez v6, :cond_5

    .line 261
    :cond_4
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_0

    .line 263
    :cond_5
    invoke-virtual {p2, v8}, Lc8/Ru;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    .line 264
    invoke-virtual {p2, v6}, Lc8/Ru;->getDecoratedStart(Landroid/view/View;)I

    move-result v12

    .line 263
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 265
    .local v10, "start":I
    invoke-virtual {p2, v8}, Lc8/Ru;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    .line 266
    invoke-virtual {p2, v6}, Lc8/Ru;->getDecoratedEnd(Landroid/view/View;)I

    move-result v12

    .line 265
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 267
    .local v3, "end":I
    sub-int v2, v3, v10

    .line 268
    .local v2, "distance":I
    if-nez v2, :cond_6

    .line 269
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_0

    .line 271
    :cond_6
    const/high16 v11, 0x3f800000    # 1.0f

    int-to-float v12, v2

    mul-float/2addr v11, v12

    sub-int v12, v5, v7

    add-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    div-float/2addr v11, v12

    goto :goto_0
.end method

.method private distanceToCenter(Lc8/xv;Landroid/view/View;Lc8/Ru;)I
    .locals 4
    .param p1, "layoutManager"    # Lc8/xv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "helper"    # Lc8/Ru;

    .prologue
    .line 142
    invoke-virtual {p3, p2}, Lc8/Ru;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 143
    invoke-virtual {p3, p2}, Lc8/Ru;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 145
    .local v0, "childCenter":I
    invoke-virtual {p1}, Lc8/xv;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {p3}, Lc8/Ru;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p3}, Lc8/Ru;->getTotalSpace()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 150
    .local v1, "containerCenter":I
    :goto_0
    sub-int v2, v0, v1

    return v2

    .line 148
    .end local v1    # "containerCenter":I
    :cond_0
    invoke-virtual {p3}, Lc8/Ru;->getEnd()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1    # "containerCenter":I
    goto :goto_0
.end method

.method private estimateNextPositionDiffForFling(Lc8/xv;Lc8/Ru;II)I
    .locals 7
    .param p1, "layoutManager"    # Lc8/xv;
    .param p2, "helper"    # Lc8/Ru;
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 166
    invoke-virtual {p0, p3, p4}, Lc8/yu;->calculateScrollDistance(II)[I

    move-result-object v2

    .line 167
    .local v2, "distances":[I
    invoke-direct {p0, p1, p2}, Lc8/yu;->computeDistancePerChild(Lc8/xv;Lc8/Ru;)F

    move-result v1

    .line 168
    .local v1, "distancePerChild":F
    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    .line 176
    :goto_0
    return v3

    .line 171
    :cond_0
    aget v4, v2, v3

    .line 172
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    aget v5, v2, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_1

    aget v0, v2, v3

    .line 173
    .local v0, "distance":I
    :goto_1
    if-lez v0, :cond_2

    .line 174
    int-to-float v3, v0

    div-float/2addr v3, v1

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    goto :goto_0

    .line 172
    .end local v0    # "distance":I
    :cond_1
    aget v0, v2, v6

    goto :goto_1

    .line 176
    .restart local v0    # "distance":I
    :cond_2
    int-to-float v3, v0

    div-float/2addr v3, v1

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    goto :goto_0
.end method

.method private findCenterView(Lc8/xv;Lc8/Ru;)Landroid/view/View;
    .locals 10
    .param p1, "layoutManager"    # Lc8/xv;
    .param p2, "helper"    # Lc8/Ru;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p1}, Lc8/xv;->getChildCount()I

    move-result v5

    .line 193
    .local v5, "childCount":I
    if-nez v5, :cond_1

    .line 194
    const/4 v6, 0x0

    .line 218
    :cond_0
    return-object v6

    .line 197
    :cond_1
    const/4 v6, 0x0

    .line 199
    .local v6, "closestChild":Landroid/view/View;
    invoke-virtual {p1}, Lc8/xv;->getClipToPadding()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 200
    invoke-virtual {p2}, Lc8/Ru;->getStartAfterPadding()I

    move-result v8

    invoke-virtual {p2}, Lc8/Ru;->getTotalSpace()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v2, v8, v9

    .line 204
    .local v2, "center":I
    :goto_0
    const v0, 0x7fffffff

    .line 206
    .local v0, "absClosest":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_0

    .line 207
    invoke-virtual {p1, v7}, Lc8/xv;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 208
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p2, v3}, Lc8/Ru;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    .line 209
    invoke-virtual {p2, v3}, Lc8/Ru;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 210
    .local v4, "childCenter":I
    sub-int v8, v4, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 213
    .local v1, "absDistance":I
    if-ge v1, v0, :cond_2

    .line 214
    move v0, v1

    .line 215
    move-object v6, v3

    .line 206
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 202
    .end local v0    # "absClosest":I
    .end local v1    # "absDistance":I
    .end local v2    # "center":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCenter":I
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {p2}, Lc8/Ru;->getEnd()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .restart local v2    # "center":I
    goto :goto_0
.end method

.method private getHorizontalHelper(Lc8/xv;)Lc8/Ru;
    .locals 1
    .param p1, "layoutManager"    # Lc8/xv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lc8/yu;->mHorizontalHelper:Lc8/Ru;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/yu;->mHorizontalHelper:Lc8/Ru;

    iget-object v0, v0, Lc8/Ru;->mLayoutManager:Lc8/xv;

    if-eq v0, p1, :cond_1

    .line 286
    :cond_0
    invoke-static {p1}, Lc8/Ru;->createHorizontalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v0

    iput-object v0, p0, Lc8/yu;->mHorizontalHelper:Lc8/Ru;

    .line 288
    :cond_1
    iget-object v0, p0, Lc8/yu;->mHorizontalHelper:Lc8/Ru;

    return-object v0
.end method

.method private getVerticalHelper(Lc8/xv;)Lc8/Ru;
    .locals 1
    .param p1, "layoutManager"    # Lc8/xv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lc8/yu;->mVerticalHelper:Lc8/Ru;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/yu;->mVerticalHelper:Lc8/Ru;

    iget-object v0, v0, Lc8/Ru;->mLayoutManager:Lc8/xv;

    if-eq v0, p1, :cond_1

    .line 277
    :cond_0
    invoke-static {p1}, Lc8/Ru;->createVerticalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v0

    iput-object v0, p0, Lc8/yu;->mVerticalHelper:Lc8/Ru;

    .line 279
    :cond_1
    iget-object v0, p0, Lc8/yu;->mVerticalHelper:Lc8/Ru;

    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Lc8/xv;Landroid/view/View;)[I
    .locals 4
    .param p1, "layoutManager"    # Lc8/xv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "targetView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 46
    .local v0, "out":[I
    invoke-virtual {p1}, Lc8/xv;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lc8/yu;->getHorizontalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v1

    .line 47
    invoke-direct {p0, p1, p2, v1}, Lc8/yu;->distanceToCenter(Lc8/xv;Landroid/view/View;Lc8/Ru;)I

    move-result v1

    aput v1, v0, v2

    .line 53
    :goto_0
    invoke-virtual {p1}, Lc8/xv;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-direct {p0, p1}, Lc8/yu;->getVerticalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v1

    .line 54
    invoke-direct {p0, p1, p2, v1}, Lc8/yu;->distanceToCenter(Lc8/xv;Landroid/view/View;Lc8/Ru;)I

    move-result v1

    aput v1, v0, v3

    .line 59
    :goto_1
    return-object v0

    .line 50
    :cond_0
    aput v2, v0, v2

    goto :goto_0

    .line 57
    :cond_1
    aput v2, v0, v3

    goto :goto_1
.end method

.method public findSnapView(Lc8/xv;)Landroid/view/View;
    .locals 1
    .param p1, "layoutManager"    # Lc8/xv;

    .prologue
    .line 132
    invoke-virtual {p1}, Lc8/xv;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lc8/yu;->getVerticalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lc8/yu;->findCenterView(Lc8/xv;Lc8/Ru;)Landroid/view/View;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 134
    :cond_0
    invoke-virtual {p1}, Lc8/xv;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-direct {p0, p1}, Lc8/yu;->getHorizontalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lc8/yu;->findCenterView(Lc8/xv;Lc8/Ru;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findTargetSnapPosition(Lc8/xv;II)I
    .locals 12
    .param p1, "layoutManager"    # Lc8/xv;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v5, -0x1

    .line 65
    instance-of v9, p1, Lc8/Lv;

    if-nez v9, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v5

    .line 69
    :cond_1
    invoke-virtual {p1}, Lc8/xv;->getItemCount()I

    move-result v4

    .line 70
    .local v4, "itemCount":I
    if-eqz v4, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lc8/yu;->findSnapView(Lc8/xv;)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, "currentView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p1, v1}, Lc8/xv;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 80
    .local v0, "currentPosition":I
    if-eq v0, v5, :cond_0

    move-object v8, p1

    .line 84
    check-cast v8, Lc8/Lv;

    .line 89
    .local v8, "vectorProvider":Lc8/Lv;
    add-int/lit8 v9, v4, -0x1

    invoke-interface {v8, v9}, Lc8/Lv;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v7

    .line 90
    .local v7, "vectorForEnd":Landroid/graphics/PointF;
    if-eqz v7, :cond_0

    .line 96
    invoke-virtual {p1}, Lc8/xv;->canScrollHorizontally()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 98
    invoke-direct {p0, p1}, Lc8/yu;->getHorizontalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v9

    .line 97
    invoke-direct {p0, p1, v9, p2, v11}, Lc8/yu;->estimateNextPositionDiffForFling(Lc8/xv;Lc8/Ru;II)I

    move-result v3

    .line 99
    .local v3, "hDeltaJump":I
    iget v9, v7, Landroid/graphics/PointF;->x:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 100
    neg-int v3, v3

    .line 105
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lc8/xv;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 107
    invoke-direct {p0, p1}, Lc8/yu;->getVerticalHelper(Lc8/xv;)Lc8/Ru;

    move-result-object v9

    .line 106
    invoke-direct {p0, p1, v9, v11, p3}, Lc8/yu;->estimateNextPositionDiffForFling(Lc8/xv;Lc8/Ru;II)I

    move-result v6

    .line 108
    .local v6, "vDeltaJump":I
    iget v9, v7, Landroid/graphics/PointF;->y:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    .line 109
    neg-int v6, v6

    .line 115
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lc8/xv;->canScrollVertically()Z

    move-result v9

    if-eqz v9, :cond_7

    move v2, v6

    .line 116
    .local v2, "deltaJump":I
    :goto_3
    if-eqz v2, :cond_0

    .line 120
    add-int v5, v0, v2

    .line 121
    .local v5, "targetPos":I
    if-gez v5, :cond_4

    .line 122
    const/4 v5, 0x0

    .line 124
    :cond_4
    if-lt v5, v4, :cond_0

    .line 125
    add-int/lit8 v5, v4, -0x1

    goto :goto_0

    .line 103
    .end local v2    # "deltaJump":I
    .end local v3    # "hDeltaJump":I
    .end local v5    # "targetPos":I
    .end local v6    # "vDeltaJump":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "hDeltaJump":I
    goto :goto_1

    .line 112
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "vDeltaJump":I
    goto :goto_2

    :cond_7
    move v2, v3

    .line 115
    goto :goto_3
.end method
