.class public Lc8/ru;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/pu;,
        Lc8/ou;,
        Lc8/qu;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/ru;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/ru;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    iput-boolean v4, p0, Lc8/ru;->mBaselineAligned:Z

    .line 109
    iput v6, p0, Lc8/ru;->mBaselineAlignedChildIndex:I

    .line 116
    iput v5, p0, Lc8/ru;->mBaselineChildTop:I

    .line 120
    const v3, 0x800033

    iput v3, p0, Lc8/ru;->mGravity:I

    .line 155
    sget-object v3, Lcom/youku/phone/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v5}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lc8/cx;

    move-result-object v0

    .line 158
    .local v0, "a":Lc8/cx;
    sget v3, Lcom/youku/phone/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v0, v3, v6}, Lc8/cx;->getInt(II)I

    move-result v2

    .line 159
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 160
    invoke-virtual {p0, v2}, Lc8/ru;->setOrientation(I)V

    .line 163
    :cond_0
    sget v3, Lcom/youku/phone/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v0, v3, v6}, Lc8/cx;->getInt(II)I

    move-result v2

    .line 164
    if-ltz v2, :cond_1

    .line 165
    invoke-virtual {p0, v2}, Lc8/ru;->setGravity(I)V

    .line 168
    :cond_1
    sget v3, Lcom/youku/phone/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v0, v3, v4}, Lc8/cx;->getBoolean(IZ)Z

    move-result v1

    .line 169
    .local v1, "baselineAligned":Z
    if-nez v1, :cond_2

    .line 170
    invoke-virtual {p0, v1}, Lc8/ru;->setBaselineAligned(Z)V

    .line 173
    :cond_2
    sget v3, Lcom/youku/phone/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v4}, Lc8/cx;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lc8/ru;->mWeightSum:F

    .line 175
    sget v3, Lcom/youku/phone/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 176
    invoke-virtual {v0, v3, v6}, Lc8/cx;->getInt(II)I

    move-result v3

    iput v3, p0, Lc8/ru;->mBaselineAlignedChildIndex:I

    .line 178
    sget v3, Lcom/youku/phone/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v0, v3, v5}, Lc8/cx;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lc8/ru;->mUseLargestChild:Z

    .line 180
    sget v3, Lcom/youku/phone/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v0, v3}, Lc8/cx;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc8/ru;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    sget v3, Lcom/youku/phone/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v0, v3, v5}, Lc8/cx;->getInt(II)I

    move-result v3

    iput v3, p0, Lc8/ru;->mShowDividers:I

    .line 182
    sget v3, Lcom/youku/phone/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v0, v3, v5}, Lc8/cx;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lc8/ru;->mDividerPadding:I

    .line 184
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 185
    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 1317
    invoke-virtual {p0}, Lc8/ru;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1319
    .local v4, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 1320
    invoke-virtual {p0, v6}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1321
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 1322
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lc8/pu;

    .line 1324
    .local v7, "lp":Lc8/pu;
    iget v0, v7, Lc8/pu;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1327
    iget v8, v7, Lc8/pu;->width:I

    .line 1328
    .local v8, "oldWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Lc8/pu;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 1331
    invoke-virtual/range {v0 .. v5}, Lc8/ru;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1332
    iput v8, v7, Lc8/pu;->width:I

    .line 1319
    .end local v7    # "lp":Lc8/pu;
    .end local v8    # "oldWidth":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1336
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 894
    invoke-virtual {p0}, Lc8/ru;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 896
    .local v2, "uniformMeasureSpec":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 897
    invoke-virtual {p0, v6}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 898
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 899
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lc8/pu;

    .line 901
    .local v7, "lp":Lc8/pu;
    iget v0, v7, Lc8/pu;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 904
    iget v8, v7, Lc8/pu;->height:I

    .line 905
    .local v8, "oldHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Lc8/pu;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 908
    invoke-virtual/range {v0 .. v5}, Lc8/ru;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 909
    iput v8, v7, Lc8/pu;->height:I

    .line 896
    .end local v7    # "lp":Lc8/pu;
    .end local v8    # "oldHeight":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 913
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1645
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1646
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1751
    instance-of v0, p1, Lc8/pu;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 322
    invoke-virtual {p0}, Lc8/ru;->getVirtualChildCount()I

    move-result v1

    .line 323
    .local v1, "count":I
    invoke-static {p0}, Lc8/yx;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 324
    .local v3, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 325
    invoke-virtual {p0, v2}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 327
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 328
    invoke-virtual {p0, v2}, Lc8/ru;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lc8/pu;

    .line 331
    .local v4, "lp":Lc8/pu;
    if-eqz v3, :cond_1

    .line 332
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Lc8/pu;->rightMargin:I

    add-int v5, v6, v7

    .line 336
    .local v5, "position":I
    :goto_1
    invoke-virtual {p0, p1, v5}, Lc8/ru;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 324
    .end local v4    # "lp":Lc8/pu;
    .end local v5    # "position":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .restart local v4    # "lp":Lc8/pu;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Lc8/pu;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lc8/ru;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_1

    .line 341
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Lc8/pu;
    .end local v5    # "position":I
    :cond_2
    invoke-virtual {p0, v1}, Lc8/ru;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 342
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 344
    .restart local v0    # "child":Landroid/view/View;
    if-nez v0, :cond_5

    .line 345
    if-eqz v3, :cond_4

    .line 346
    invoke-virtual {p0}, Lc8/ru;->getPaddingLeft()I

    move-result v5

    .line 358
    .restart local v5    # "position":I
    :goto_2
    invoke-virtual {p0, p1, v5}, Lc8/ru;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 360
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "position":I
    :cond_3
    return-void

    .line 348
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {p0}, Lc8/ru;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lc8/ru;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lc8/ru;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2

    .line 351
    .end local v5    # "position":I
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lc8/pu;

    .line 352
    .restart local v4    # "lp":Lc8/pu;
    if-eqz v3, :cond_6

    .line 353
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Lc8/pu;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lc8/ru;->mDividerWidth:I

    sub-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2

    .line 355
    .end local v5    # "position":I
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Lc8/pu;->rightMargin:I

    add-int v5, v6, v7

    .restart local v5    # "position":I
    goto :goto_2
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 295
    invoke-virtual {p0}, Lc8/ru;->getVirtualChildCount()I

    move-result v2

    .line 296
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 297
    invoke-virtual {p0, v3}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 299
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 300
    invoke-virtual {p0, v3}, Lc8/ru;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 301
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lc8/pu;

    .line 302
    .local v4, "lp":Lc8/pu;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Lc8/pu;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Lc8/ru;->mDividerHeight:I

    sub-int v5, v6, v7

    .line 303
    .local v5, "top":I
    invoke-virtual {p0, p1, v5}, Lc8/ru;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 296
    .end local v4    # "lp":Lc8/pu;
    .end local v5    # "top":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2}, Lc8/ru;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 309
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 311
    .restart local v1    # "child":Landroid/view/View;
    if-nez v1, :cond_3

    .line 312
    invoke-virtual {p0}, Lc8/ru;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lc8/ru;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lc8/ru;->mDividerHeight:I

    sub-int v0, v6, v7

    .line 317
    .local v0, "bottom":I
    :goto_1
    invoke-virtual {p0, p1, v0}, Lc8/ru;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 319
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void

    .line 314
    .restart local v1    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lc8/pu;

    .line 315
    .restart local v4    # "lp":Lc8/pu;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v4, Lc8/pu;->bottomMargin:I

    add-int v0, v6, v7

    .restart local v0    # "bottom":I
    goto :goto_1
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .prologue
    .line 363
    iget-object v0, p0, Lc8/ru;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lc8/ru;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lc8/ru;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 364
    invoke-virtual {p0}, Lc8/ru;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lc8/ru;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lc8/ru;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lc8/ru;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 363
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    iget-object v0, p0, Lc8/ru;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lc8/ru;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lc8/ru;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lc8/ru;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lc8/ru;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 370
    invoke-virtual {p0}, Lc8/ru;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lc8/ru;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lc8/ru;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 369
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    iget-object v0, p0, Lc8/ru;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 372
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lc8/ru;->generateDefaultLayoutParams()Lc8/pu;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lc8/pu;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1734
    iget v0, p0, Lc8/ru;->mOrientation:I

    if-nez v0, :cond_0

    .line 1735
    new-instance v0, Lc8/pu;

    invoke-direct {v0, v2, v2}, Lc8/pu;-><init>(II)V

    .line 1739
    :goto_0
    return-object v0

    .line 1736
    :cond_0
    iget v0, p0, Lc8/ru;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1737
    new-instance v0, Lc8/pu;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Lc8/pu;-><init>(II)V

    goto :goto_0

    .line 1739
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lc8/ru;->generateLayoutParams(Landroid/util/AttributeSet;)Lc8/pu;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lc8/ru;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lc8/pu;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lc8/pu;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1721
    new-instance v0, Lc8/pu;

    invoke-virtual {p0}, Lc8/ru;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lc8/pu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lc8/pu;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1744
    new-instance v0, Lc8/pu;

    invoke-direct {v0, p1}, Lc8/pu;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 8

    .prologue
    const/4 v5, -0x1

    .line 423
    iget v6, p0, Lc8/ru;->mBaselineAlignedChildIndex:I

    if-gez v6, :cond_1

    .line 424
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    .line 471
    :cond_0
    :goto_0
    return v5

    .line 427
    :cond_1
    invoke-virtual {p0}, Lc8/ru;->getChildCount()I

    move-result v6

    iget v7, p0, Lc8/ru;->mBaselineAlignedChildIndex:I

    if-gt v6, v7, :cond_2

    .line 428
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 432
    :cond_2
    iget v6, p0, Lc8/ru;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v6}, Lc8/ru;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 433
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 435
    .local v1, "childBaseline":I
    if-ne v1, v5, :cond_3

    .line 436
    iget v6, p0, Lc8/ru;->mBaselineAlignedChildIndex:I

    if-eqz v6, :cond_0

    .line 442
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 452
    :cond_3
    iget v2, p0, Lc8/ru;->mBaselineChildTop:I

    .line 454
    .local v2, "childTop":I
    iget v5, p0, Lc8/ru;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 455
    iget v5, p0, Lc8/ru;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 456
    .local v4, "majorGravity":I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_4

    .line 457
    sparse-switch v4, :sswitch_data_0

    .line 470
    .end local v4    # "majorGravity":I
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lc8/pu;

    .line 471
    .local v3, "lp":Lc8/pu;
    iget v5, v3, Lc8/pu;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    goto :goto_0

    .line 459
    .end local v3    # "lp":Lc8/pu;
    .restart local v4    # "majorGravity":I
    :sswitch_0
    invoke-virtual {p0}, Lc8/ru;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lc8/ru;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lc8/ru;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lc8/ru;->mTotalLength:I

    sub-int v2, v5, v6

    .line 460
    goto :goto_1

    .line 463
    :sswitch_1
    invoke-virtual {p0}, Lc8/ru;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lc8/ru;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lc8/ru;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lc8/ru;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lc8/ru;->mTotalLength:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_1

    .line 457
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lc8/ru;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 1347
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lc8/ru;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lc8/ru;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 278
    iget v0, p0, Lc8/ru;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 1700
    iget v0, p0, Lc8/ru;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1389
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1401
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1667
    iget v0, p0, Lc8/ru;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lc8/ru;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lc8/ru;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lc8/ru;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lc8/ru;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 565
    if-nez p1, :cond_2

    .line 566
    iget v3, p0, Lc8/ru;->mShowDividers:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 566
    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {p0}, Lc8/ru;->getChildCount()I

    move-result v3

    if-ne p1, v3, :cond_3

    .line 568
    iget v3, p0, Lc8/ru;->mShowDividers:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 569
    :cond_3
    iget v3, p0, Lc8/ru;->mShowDividers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_5

    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 572
    invoke-virtual {p0, v1}, Lc8/ru;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    .line 573
    const/4 v0, 0x1

    .line 574
    goto :goto_0

    .line 571
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "hasVisibleViewBefore":Z
    .end local v1    # "i":I
    :cond_5
    move v0, v2

    .line 579
    goto :goto_0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lc8/ru;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lc8/ru;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .locals 30
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1521
    invoke-static/range {p0 .. p0}, Lc8/yx;->isLayoutRtl(Landroid/view/View;)Z

    move-result v20

    .line 1522
    .local v20, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingTop()I

    move-result v27

    .line 1528
    .local v27, "paddingTop":I
    sub-int v18, p4, p2

    .line 1529
    .local v18, "height":I
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingBottom()I

    move-result v2

    sub-int v10, v18, v2

    .line 1532
    .local v10, "childBottom":I
    sub-int v2, v18, v27

    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingBottom()I

    move-result v4

    sub-int v13, v2, v4

    .line 1534
    .local v13, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getVirtualChildCount()I

    move-result v14

    .line 1536
    .local v14, "count":I
    move-object/from16 v0, p0

    iget v2, v0, Lc8/ru;->mGravity:I

    const v4, 0x800007

    and-int v23, v2, v4

    .line 1537
    .local v23, "majorGravity":I
    move-object/from16 v0, p0

    iget v2, v0, Lc8/ru;->mGravity:I

    and-int/lit8 v26, v2, 0x70

    .line 1539
    .local v26, "minorGravity":I
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lc8/ru;->mBaselineAligned:Z

    .line 1541
    .local v8, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/ru;->mMaxAscent:[I

    move-object/from16 v24, v0

    .line 1542
    .local v24, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/ru;->mMaxDescent:[I

    move-object/from16 v25, v0

    .line 1544
    .local v25, "maxDescent":[I
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v21

    .line 1545
    .local v21, "layoutDirection":I
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1558
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingLeft()I

    move-result v12

    .line 1562
    .local v12, "childLeft":I
    :goto_0
    const/16 v28, 0x0

    .line 1563
    .local v28, "start":I
    const/16 v16, 0x1

    .line 1565
    .local v16, "dir":I
    if-eqz v20, :cond_0

    .line 1566
    add-int/lit8 v28, v14, -0x1

    .line 1567
    const/16 v16, -0x1

    .line 1570
    :cond_0
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_7

    .line 1571
    mul-int v2, v16, v19

    add-int v11, v28, v2

    .line 1572
    .local v11, "childIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1574
    .local v3, "child":Landroid/view/View;
    if-nez v3, :cond_2

    .line 1575
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lc8/ru;->measureNullChild(I)I

    move-result v2

    add-int/2addr v12, v2

    .line 1570
    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1548
    .end local v3    # "child":Landroid/view/View;
    .end local v11    # "childIndex":I
    .end local v12    # "childLeft":I
    .end local v16    # "dir":I
    .end local v19    # "i":I
    .end local v28    # "start":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingLeft()I

    move-result v2

    add-int v2, v2, p3

    sub-int v2, v2, p1

    move-object/from16 v0, p0

    iget v4, v0, Lc8/ru;->mTotalLength:I

    sub-int v12, v2, v4

    .line 1549
    .restart local v12    # "childLeft":I
    goto :goto_0

    .line 1553
    .end local v12    # "childLeft":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingLeft()I

    move-result v2

    sub-int v4, p3, p1

    move-object/from16 v0, p0

    iget v0, v0, Lc8/ru;->mTotalLength:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    div-int/lit8 v4, v4, 0x2

    add-int v12, v2, v4

    .line 1554
    .restart local v12    # "childLeft":I
    goto :goto_0

    .line 1576
    .restart local v3    # "child":Landroid/view/View;
    .restart local v11    # "childIndex":I
    .restart local v16    # "dir":I
    .restart local v19    # "i":I
    .restart local v28    # "start":I
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 1577
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1578
    .local v6, "childWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1579
    .local v7, "childHeight":I
    const/4 v9, -0x1

    .line 1582
    .local v9, "childBaseline":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lc8/pu;

    .line 1584
    .local v22, "lp":Lc8/pu;
    if-eqz v8, :cond_3

    move-object/from16 v0, v22

    iget v2, v0, Lc8/pu;->height:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 1585
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 1588
    :cond_3
    move-object/from16 v0, v22

    iget v0, v0, Lc8/pu;->gravity:I

    move/from16 v17, v0

    .line 1589
    .local v17, "gravity":I
    if-gez v17, :cond_4

    .line 1590
    move/from16 v17, v26

    .line 1593
    :cond_4
    and-int/lit8 v2, v17, 0x70

    sparse-switch v2, :sswitch_data_1

    .line 1625
    move/from16 v5, v27

    .line 1629
    .local v5, "childTop":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lc8/ru;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1630
    move-object/from16 v0, p0

    iget v2, v0, Lc8/ru;->mDividerWidth:I

    add-int/2addr v12, v2

    .line 1633
    :cond_6
    move-object/from16 v0, v22

    iget v2, v0, Lc8/pu;->leftMargin:I

    add-int/2addr v12, v2

    .line 1634
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lc8/ru;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lc8/ru;->setChildFrame(Landroid/view/View;IIII)V

    .line 1636
    move-object/from16 v0, v22

    iget v2, v0, Lc8/pu;->rightMargin:I

    add-int/2addr v2, v6

    .line 1637
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lc8/ru;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v12, v2

    .line 1639
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lc8/ru;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int v19, v19, v2

    goto/16 :goto_2

    .line 1595
    .end local v5    # "childTop":I
    :sswitch_2
    move-object/from16 v0, v22

    iget v2, v0, Lc8/pu;->topMargin:I

    add-int v5, v27, v2

    .line 1596
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_5

    .line 1597
    const/4 v2, 0x1

    aget v2, v24, v2

    sub-int/2addr v2, v9

    add-int/2addr v5, v2

    goto :goto_3

    .line 1613
    .end local v5    # "childTop":I
    :sswitch_3
    sub-int v2, v13, v7

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v27

    move-object/from16 v0, v22

    iget v4, v0, Lc8/pu;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v22

    iget v4, v0, Lc8/pu;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1615
    .restart local v5    # "childTop":I
    goto :goto_3

    .line 1618
    .end local v5    # "childTop":I
    :sswitch_4
    sub-int v2, v10, v7

    move-object/from16 v0, v22

    iget v4, v0, Lc8/pu;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1619
    .restart local v5    # "childTop":I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_5

    .line 1620
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v15, v2, v9

    .line 1621
    .local v15, "descent":I
    const/4 v2, 0x2

    aget v2, v25, v2

    sub-int/2addr v2, v15

    sub-int/2addr v5, v2

    .line 1622
    goto :goto_3

    .line 1642
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "childTop":I
    .end local v6    # "childWidth":I
    .end local v7    # "childHeight":I
    .end local v9    # "childBaseline":I
    .end local v11    # "childIndex":I
    .end local v15    # "descent":I
    .end local v17    # "gravity":I
    .end local v22    # "lp":Lc8/pu;
    :cond_7
    return-void

    .line 1545
    .line 1593
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .locals 21
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1426
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingLeft()I

    move-result v18

    .line 1432
    .local v18, "paddingLeft":I
    sub-int v19, p3, p1

    .line 1433
    .local v19, "width":I
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingRight()I

    move-result v1

    sub-int v8, v19, v1

    .line 1436
    .local v8, "childRight":I
    sub-int v1, v19, v18

    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingRight()I

    move-result v4

    sub-int v9, v1, v4

    .line 1438
    .local v9, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getVirtualChildCount()I

    move-result v11

    .line 1440
    .local v11, "count":I
    move-object/from16 v0, p0

    iget v1, v0, Lc8/ru;->mGravity:I

    and-int/lit8 v16, v1, 0x70

    .line 1441
    .local v16, "majorGravity":I
    move-object/from16 v0, p0

    iget v1, v0, Lc8/ru;->mGravity:I

    const v4, 0x800007

    and-int v17, v1, v4

    .line 1443
    .local v17, "minorGravity":I
    sparse-switch v16, :sswitch_data_0

    .line 1456
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingTop()I

    move-result v10

    .line 1460
    .local v10, "childTop":I
    :goto_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_4

    .line 1461
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1462
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_1

    .line 1463
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/ru;->measureNullChild(I)I

    move-result v1

    add-int/2addr v10, v1

    .line 1460
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1446
    .end local v2    # "child":Landroid/view/View;
    .end local v10    # "childTop":I
    .end local v13    # "i":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingTop()I

    move-result v1

    add-int v1, v1, p4

    sub-int v1, v1, p2

    move-object/from16 v0, p0

    iget v4, v0, Lc8/ru;->mTotalLength:I

    sub-int v10, v1, v4

    .line 1447
    .restart local v10    # "childTop":I
    goto :goto_0

    .line 1451
    .end local v10    # "childTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingTop()I

    move-result v1

    sub-int v4, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Lc8/ru;->mTotalLength:I

    move/from16 v20, v0

    sub-int v4, v4, v20

    div-int/lit8 v4, v4, 0x2

    add-int v10, v1, v4

    .line 1452
    .restart local v10    # "childTop":I
    goto :goto_0

    .line 1464
    .restart local v2    # "child":Landroid/view/View;
    .restart local v13    # "i":I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    .line 1465
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1466
    .local v5, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1469
    .local v6, "childHeight":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lc8/pu;

    .line 1471
    .local v15, "lp":Lc8/pu;
    iget v12, v15, Lc8/pu;->gravity:I

    .line 1472
    .local v12, "gravity":I
    if-gez v12, :cond_2

    .line 1473
    move/from16 v12, v17

    .line 1475
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v14

    .line 1476
    .local v14, "layoutDirection":I
    invoke-static {v12, v14}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    .line 1478
    .local v7, "absoluteGravity":I
    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_1

    .line 1490
    iget v1, v15, Lc8/pu;->leftMargin:I

    add-int v3, v18, v1

    .line 1494
    .local v3, "childLeft":I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/ru;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1495
    move-object/from16 v0, p0

    iget v1, v0, Lc8/ru;->mDividerHeight:I

    add-int/2addr v10, v1

    .line 1498
    :cond_3
    iget v1, v15, Lc8/pu;->topMargin:I

    add-int/2addr v10, v1

    .line 1499
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lc8/ru;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v4, v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lc8/ru;->setChildFrame(Landroid/view/View;IIII)V

    .line 1501
    iget v1, v15, Lc8/pu;->bottomMargin:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lc8/ru;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v10, v1

    .line 1503
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lc8/ru;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v13, v1

    goto/16 :goto_2

    .line 1480
    .end local v3    # "childLeft":I
    :sswitch_2
    sub-int v1, v9, v5

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v18

    iget v4, v15, Lc8/pu;->leftMargin:I

    add-int/2addr v1, v4

    iget v4, v15, Lc8/pu;->rightMargin:I

    sub-int v3, v1, v4

    .line 1482
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 1485
    .end local v3    # "childLeft":I
    :sswitch_3
    sub-int v1, v8, v5

    iget v4, v15, Lc8/pu;->rightMargin:I

    sub-int v3, v1, v4

    .line 1486
    .restart local v3    # "childLeft":I
    goto :goto_3

    .line 1506
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v6    # "childHeight":I
    .end local v7    # "absoluteGravity":I
    .end local v12    # "gravity":I
    .end local v14    # "layoutDirection":I
    .end local v15    # "lp":Lc8/pu;
    :cond_4
    return-void

    .line 1443
    .line 1478
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .prologue
    .line 1377
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lc8/ru;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1379
    return-void
.end method

.method measureHorizontal(II)V
    .locals 47
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 927
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 928
    const/16 v35, 0x0

    .line 929
    .local v35, "maxHeight":I
    const/16 v18, 0x0

    .line 930
    .local v18, "childState":I
    const/4 v11, 0x0

    .line 931
    .local v11, "alternativeMaxHeight":I
    const/16 v43, 0x0

    .line 932
    .local v43, "weightedMaxHeight":I
    const/4 v10, 0x1

    .line 933
    .local v10, "allFillParent":Z
    const/16 v40, 0x0

    .line 935
    .local v40, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getVirtualChildCount()I

    move-result v20

    .line 937
    .local v20, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v44

    .line 938
    .local v44, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 940
    .local v25, "heightMode":I
    const/16 v31, 0x0

    .line 941
    .local v31, "matchHeight":Z
    const/16 v38, 0x0

    .line 943
    .local v38, "skippedMeasure":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/ru;->mMaxAscent:[I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/ru;->mMaxDescent:[I

    if-nez v3, :cond_1

    .line 944
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/ru;->mMaxAscent:[I

    .line 945
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/ru;->mMaxDescent:[I

    .line 948
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/ru;->mMaxAscent:[I

    move-object/from16 v33, v0

    .line 949
    .local v33, "maxAscent":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/ru;->mMaxDescent:[I

    move-object/from16 v34, v0

    .line 951
    .local v34, "maxDescent":[I
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v33, v8

    aput v9, v33, v7

    aput v9, v33, v6

    aput v9, v33, v3

    .line 952
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v34, v8

    aput v9, v34, v7

    aput v9, v34, v6

    aput v9, v34, v3

    .line 954
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lc8/ru;->mBaselineAligned:Z

    .line 955
    .local v13, "baselineAligned":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/ru;->mUseLargestChild:Z

    move/from16 v41, v0

    .line 957
    .local v41, "useLargestChild":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v44

    if-ne v0, v3, :cond_2

    const/16 v27, 0x1

    .line 959
    .local v27, "isExactly":Z
    :goto_0
    const/high16 v28, -0x80000000

    .line 962
    .local v28, "largestChildWidth":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v5, v0, :cond_15

    .line 963
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 965
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_3

    .line 966
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lc8/ru;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 962
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 957
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "i":I
    .end local v27    # "isExactly":Z
    .end local v28    # "largestChildWidth":I
    :cond_2
    const/16 v27, 0x0

    goto :goto_0

    .line 970
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "i":I
    .restart local v27    # "isExactly":Z
    .restart local v28    # "largestChildWidth":I
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_4

    .line 971
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lc8/ru;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 972
    goto :goto_2

    .line 975
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lc8/ru;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 976
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Lc8/ru;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 980
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lc8/pu;

    .line 982
    .local v29, "lp":Lc8/pu;
    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->weight:F

    add-float v40, v40, v3

    .line 984
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v44

    if-ne v0, v3, :cond_b

    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->width:I

    if-nez v3, :cond_b

    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_b

    .line 988
    if-eqz v27, :cond_9

    .line 989
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->leftMargin:I

    move-object/from16 v0, v29

    iget v7, v0, Lc8/pu;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 1001
    :goto_3
    if-eqz v13, :cond_a

    .line 1002
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 1003
    .local v23, "freeSpec":I
    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1046
    .end local v23    # "freeSpec":I
    :cond_6
    :goto_4
    const/16 v32, 0x0

    .line 1047
    .local v32, "matchHeightLocally":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v25

    if-eq v0, v3, :cond_7

    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_7

    .line 1051
    const/16 v31, 0x1

    .line 1052
    const/16 v32, 0x1

    .line 1055
    :cond_7
    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->topMargin:I

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->bottomMargin:I

    add-int v30, v3, v6

    .line 1056
    .local v30, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v30

    .line 1058
    .local v16, "childHeight":I
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    .line 1057
    move/from16 v0, v18

    invoke-static {v0, v3}, Lc8/yx;->combineMeasuredStates(II)I

    move-result v18

    .line 1060
    if-eqz v13, :cond_8

    .line 1061
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1062
    .local v14, "childBaseline":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_8

    .line 1065
    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->gravity:I

    if-gez v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mGravity:I

    :goto_5
    and-int/lit8 v24, v3, 0x70

    .line 1067
    .local v24, "gravity":I
    shr-int/lit8 v3, v24, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v26, v3, 0x1

    .line 1070
    .local v26, "index":I
    aget v3, v33, v26

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v33, v26

    .line 1071
    aget v3, v34, v26

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v26

    .line 1075
    .end local v14    # "childBaseline":I
    .end local v24    # "gravity":I
    .end local v26    # "index":I
    :cond_8
    move/from16 v0, v35

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1077
    if-eqz v10, :cond_11

    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_11

    const/4 v10, 0x1

    .line 1078
    :goto_6
    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_13

    .line 1083
    if-eqz v32, :cond_12

    .end local v30    # "margin":I
    :goto_7
    move/from16 v0, v43

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 1090
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lc8/ru;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_2

    .line 991
    .end local v16    # "childHeight":I
    .end local v32    # "matchHeightLocally":Z
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lc8/ru;->mTotalLength:I

    move/from16 v39, v0

    .line 992
    .local v39, "totalLength":I
    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->leftMargin:I

    add-int v3, v3, v39

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->rightMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v39

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    goto/16 :goto_3

    .line 1005
    .end local v39    # "totalLength":I
    :cond_a
    const/16 v38, 0x1

    goto/16 :goto_4

    .line 1008
    :cond_b
    const/high16 v36, -0x80000000

    .line 1010
    .local v36, "oldWidth":I
    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->width:I

    if-nez v3, :cond_c

    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c

    .line 1015
    const/16 v36, 0x0

    .line 1016
    const/4 v3, -0x2

    move-object/from16 v0, v29

    iput v3, v0, Lc8/pu;->width:I

    .line 1023
    :cond_c
    const/4 v3, 0x0

    cmpl-float v3, v40, v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget v7, v0, Lc8/ru;->mTotalLength:I

    :goto_9
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Lc8/ru;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1027
    const/high16 v3, -0x80000000

    move/from16 v0, v36

    if-eq v0, v3, :cond_d

    .line 1028
    move/from16 v0, v36

    move-object/from16 v1, v29

    iput v0, v1, Lc8/pu;->width:I

    .line 1031
    :cond_d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1032
    .local v19, "childWidth":I
    if-eqz v27, :cond_f

    .line 1033
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->leftMargin:I

    add-int v6, v6, v19

    move-object/from16 v0, v29

    iget v7, v0, Lc8/pu;->rightMargin:I

    add-int/2addr v6, v7

    .line 1034
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lc8/ru;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 1041
    :goto_a
    if-eqz v41, :cond_6

    .line 1042
    move/from16 v0, v19

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_4

    .line 1023
    .end local v19    # "childWidth":I
    :cond_e
    const/4 v7, 0x0

    goto :goto_9

    .line 1036
    .restart local v19    # "childWidth":I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lc8/ru;->mTotalLength:I

    move/from16 v39, v0

    .line 1037
    .restart local v39    # "totalLength":I
    add-int v3, v39, v19

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->rightMargin:I

    add-int/2addr v3, v6

    .line 1038
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lc8/ru;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    .line 1037
    move/from16 v0, v39

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    goto :goto_a

    .line 1065
    .end local v19    # "childWidth":I
    .end local v36    # "oldWidth":I
    .end local v39    # "totalLength":I
    .restart local v14    # "childBaseline":I
    .restart local v16    # "childHeight":I
    .restart local v30    # "margin":I
    .restart local v32    # "matchHeightLocally":Z
    :cond_10
    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->gravity:I

    goto/16 :goto_5

    .line 1077
    .end local v14    # "childBaseline":I
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_12
    move/from16 v30, v16

    .line 1083
    goto/16 :goto_7

    .line 1086
    :cond_13
    if-eqz v32, :cond_14

    .end local v30    # "margin":I
    :goto_b
    move/from16 v0, v30

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_8

    .restart local v30    # "margin":I
    :cond_14
    move/from16 v30, v16

    goto :goto_b

    .line 1093
    .end local v4    # "child":Landroid/view/View;
    .end local v16    # "childHeight":I
    .end local v29    # "lp":Lc8/pu;
    .end local v30    # "margin":I
    .end local v32    # "matchHeightLocally":Z
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    if-lez v3, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lc8/ru;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1094
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Lc8/ru;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 1099
    :cond_16
    const/4 v3, 0x1

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_17

    const/4 v3, 0x0

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_17

    const/4 v3, 0x2

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_17

    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_18

    .line 1103
    :cond_17
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, 0x0

    aget v6, v33, v6

    const/4 v7, 0x1

    aget v7, v33, v7

    const/4 v8, 0x2

    aget v8, v33, v8

    .line 1105
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1104
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1103
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1106
    .local v12, "ascent":I
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, 0x0

    aget v6, v34, v6

    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    .line 1108
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1107
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1106
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1109
    .local v22, "descent":I
    add-int v3, v12, v22

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1112
    .end local v12    # "ascent":I
    .end local v22    # "descent":I
    :cond_18
    if-eqz v41, :cond_1d

    const/high16 v3, -0x80000000

    move/from16 v0, v44

    if-eq v0, v3, :cond_19

    if-nez v44, :cond_1d

    .line 1114
    :cond_19
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 1116
    const/4 v5, 0x0

    :goto_c
    move/from16 v0, v20

    if-ge v5, v0, :cond_1d

    .line 1117
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1119
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_1a

    .line 1120
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lc8/ru;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 1116
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1124
    :cond_1a
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1b

    .line 1125
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lc8/ru;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 1126
    goto :goto_d

    .line 1130
    :cond_1b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lc8/pu;

    .line 1131
    .restart local v29    # "lp":Lc8/pu;
    if-eqz v27, :cond_1c

    .line 1132
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->leftMargin:I

    add-int v6, v6, v28

    move-object/from16 v0, v29

    iget v7, v0, Lc8/pu;->rightMargin:I

    add-int/2addr v6, v7

    .line 1133
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lc8/ru;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    goto :goto_d

    .line 1135
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lc8/ru;->mTotalLength:I

    move/from16 v39, v0

    .line 1136
    .restart local v39    # "totalLength":I
    add-int v3, v39, v28

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->rightMargin:I

    add-int/2addr v3, v6

    .line 1137
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lc8/ru;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    .line 1136
    move/from16 v0, v39

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    goto :goto_d

    .line 1143
    .end local v4    # "child":Landroid/view/View;
    .end local v29    # "lp":Lc8/pu;
    .end local v39    # "totalLength":I
    :cond_1d
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 1145
    move-object/from16 v0, p0

    iget v0, v0, Lc8/ru;->mTotalLength:I

    move/from16 v45, v0

    .line 1148
    .local v45, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v45

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v45

    .line 1151
    const/4 v3, 0x0

    move/from16 v0, v45

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v46

    .line 1152
    .local v46, "widthSizeAndState":I
    const v3, 0xffffff

    and-int v45, v46, v3

    .line 1157
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    sub-int v21, v45, v3

    .line 1158
    .local v21, "delta":I
    if-nez v38, :cond_1e

    if-eqz v21, :cond_30

    const/4 v3, 0x0

    cmpl-float v3, v40, v3

    if-lez v3, :cond_30

    .line 1159
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lc8/ru;->mWeightSum:F

    move/from16 v42, v0

    .line 1161
    .local v42, "weightSum":F
    :goto_e
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v33, v8

    aput v9, v33, v7

    aput v9, v33, v6

    aput v9, v33, v3

    .line 1162
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v34, v8

    aput v9, v34, v7

    aput v9, v34, v6

    aput v9, v34, v3

    .line 1163
    const/16 v35, -0x1

    .line 1165
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 1167
    const/4 v5, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v5, v0, :cond_2b

    .line 1168
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1170
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_22

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_22

    .line 1175
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lc8/pu;

    .line 1177
    .restart local v29    # "lp":Lc8/pu;
    move-object/from16 v0, v29

    iget v15, v0, Lc8/pu;->weight:F

    .line 1178
    .local v15, "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_21

    .line 1180
    move/from16 v0, v21

    int-to-float v3, v0

    mul-float/2addr v3, v15

    div-float v3, v3, v42

    float-to-int v0, v3

    move/from16 v37, v0

    .line 1181
    .local v37, "share":I
    sub-float v42, v42, v15

    .line 1182
    sub-int v21, v21, v37

    .line 1186
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingBottom()I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->height:I

    .line 1184
    move/from16 v0, p2

    invoke-static {v0, v3, v6}, Lc8/ru;->getChildMeasureSpec(III)I

    move-result v17

    .line 1191
    .local v17, "childHeightMeasureSpec":I
    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->width:I

    if-nez v3, :cond_1f

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v44

    if-eq v0, v3, :cond_24

    .line 1194
    :cond_1f
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v19, v3, v37

    .line 1195
    .restart local v19    # "childWidth":I
    if-gez v19, :cond_20

    .line 1196
    const/16 v19, 0x0

    .line 1199
    :cond_20
    const/high16 v3, 0x40000000    # 2.0f

    .line 1200
    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1199
    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    .line 1211
    .end local v19    # "childWidth":I
    .end local v37    # "share":I
    :goto_10
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    const/high16 v6, -0x1000000

    and-int/2addr v3, v6

    .line 1210
    move/from16 v0, v18

    invoke-static {v0, v3}, Lc8/yx;->combineMeasuredStates(II)I

    move-result v18

    .line 1214
    .end local v17    # "childHeightMeasureSpec":I
    :cond_21
    if-eqz v27, :cond_26

    .line 1215
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v29

    iget v7, v0, Lc8/pu;->leftMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, v29

    iget v7, v0, Lc8/pu;->rightMargin:I

    add-int/2addr v6, v7

    .line 1216
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lc8/ru;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 1223
    :goto_11
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v25

    if-eq v0, v3, :cond_27

    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_27

    const/16 v32, 0x1

    .line 1226
    .restart local v32    # "matchHeightLocally":Z
    :goto_12
    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->topMargin:I

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->bottomMargin:I

    add-int v30, v3, v6

    .line 1227
    .restart local v30    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v30

    .line 1228
    .restart local v16    # "childHeight":I
    move/from16 v0, v35

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1229
    if-eqz v32, :cond_28

    .end local v30    # "margin":I
    :goto_13
    move/from16 v0, v30

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1232
    if-eqz v10, :cond_29

    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_29

    const/4 v10, 0x1

    .line 1234
    :goto_14
    if-eqz v13, :cond_22

    .line 1235
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1236
    .restart local v14    # "childBaseline":I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_22

    .line 1238
    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->gravity:I

    if-gez v3, :cond_2a

    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mGravity:I

    :goto_15
    and-int/lit8 v24, v3, 0x70

    .line 1240
    .restart local v24    # "gravity":I
    shr-int/lit8 v3, v24, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v26, v3, 0x1

    .line 1243
    .restart local v26    # "index":I
    aget v3, v33, v26

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v33, v26

    .line 1244
    aget v3, v34, v26

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v26

    .line 1167
    .end local v14    # "childBaseline":I
    .end local v15    # "childExtra":F
    .end local v16    # "childHeight":I
    .end local v24    # "gravity":I
    .end local v26    # "index":I
    .end local v29    # "lp":Lc8/pu;
    .end local v32    # "matchHeightLocally":Z
    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_f

    .end local v4    # "child":Landroid/view/View;
    .end local v42    # "weightSum":F
    :cond_23
    move/from16 v42, v40

    .line 1159
    goto/16 :goto_e

    .line 1204
    .restart local v4    # "child":Landroid/view/View;
    .restart local v15    # "childExtra":F
    .restart local v17    # "childHeightMeasureSpec":I
    .restart local v29    # "lp":Lc8/pu;
    .restart local v37    # "share":I
    .restart local v42    # "weightSum":F
    :cond_24
    if-lez v37, :cond_25

    .end local v37    # "share":I
    :goto_16
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v37

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_10

    .restart local v37    # "share":I
    :cond_25
    const/16 v37, 0x0

    goto :goto_16

    .line 1218
    .end local v17    # "childHeightMeasureSpec":I
    .end local v37    # "share":I
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lc8/ru;->mTotalLength:I

    move/from16 v39, v0

    .line 1219
    .restart local v39    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v39

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Lc8/pu;->rightMargin:I

    add-int/2addr v3, v6

    .line 1220
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lc8/ru;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    .line 1219
    move/from16 v0, v39

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    goto/16 :goto_11

    .line 1223
    .end local v39    # "totalLength":I
    :cond_27
    const/16 v32, 0x0

    goto/16 :goto_12

    .restart local v16    # "childHeight":I
    .restart local v30    # "margin":I
    .restart local v32    # "matchHeightLocally":Z
    :cond_28
    move/from16 v30, v16

    .line 1229
    goto/16 :goto_13

    .line 1232
    .end local v30    # "margin":I
    :cond_29
    const/4 v10, 0x0

    goto/16 :goto_14

    .line 1238
    .restart local v14    # "childBaseline":I
    :cond_2a
    move-object/from16 v0, v29

    iget v3, v0, Lc8/pu;->gravity:I

    goto :goto_15

    .line 1251
    .end local v4    # "child":Landroid/view/View;
    .end local v14    # "childBaseline":I
    .end local v15    # "childExtra":F
    .end local v16    # "childHeight":I
    .end local v29    # "lp":Lc8/pu;
    .end local v32    # "matchHeightLocally":Z
    :cond_2b
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 1256
    const/4 v3, 0x1

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2c

    const/4 v3, 0x0

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2c

    const/4 v3, 0x2

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2c

    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2d

    .line 1260
    :cond_2c
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, 0x0

    aget v6, v33, v6

    const/4 v7, 0x1

    aget v7, v33, v7

    const/4 v8, 0x2

    aget v8, v33, v8

    .line 1262
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1261
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1260
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1263
    .restart local v12    # "ascent":I
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, 0x0

    aget v6, v34, v6

    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    .line 1265
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1264
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1263
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1266
    .restart local v22    # "descent":I
    add-int v3, v12, v22

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1295
    .end local v12    # "ascent":I
    .end local v22    # "descent":I
    .end local v42    # "weightSum":F
    :cond_2d
    if-nez v10, :cond_2e

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v25

    if-eq v0, v3, :cond_2e

    .line 1296
    move/from16 v35, v11

    .line 1299
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingBottom()I

    move-result v6

    add-int/2addr v3, v6

    add-int v35, v35, v3

    .line 1302
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1304
    const/high16 v3, -0x1000000

    and-int v3, v3, v18

    or-int v3, v3, v46

    shl-int/lit8 v6, v18, 0x10

    .line 1305
    move/from16 v0, v35

    move/from16 v1, p2

    invoke-static {v0, v1, v6}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v6

    .line 1304
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lc8/ru;->setMeasuredDimension(II)V

    .line 1308
    if-eqz v31, :cond_2f

    .line 1309
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lc8/ru;->forceUniformHeight(II)V

    .line 1311
    :cond_2f
    return-void

    .line 1269
    :cond_30
    move/from16 v0, v43

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1273
    if-eqz v41, :cond_2d

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v44

    if-eq v0, v3, :cond_2d

    .line 1274
    const/4 v5, 0x0

    :goto_17
    move/from16 v0, v20

    if-ge v5, v0, :cond_2d

    .line 1275
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1277
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_31

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_31

    .line 1282
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lc8/pu;

    .line 1284
    .restart local v29    # "lp":Lc8/pu;
    move-object/from16 v0, v29

    iget v15, v0, Lc8/pu;->weight:F

    .line 1285
    .restart local v15    # "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_31

    .line 1286
    const/high16 v3, 0x40000000    # 2.0f

    .line 1287
    move/from16 v0, v28

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1288
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1286
    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 1274
    .end local v15    # "childExtra":F
    .end local v29    # "lp":Lc8/pu;
    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_17
.end method

.method measureNullChild(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .prologue
    .line 1358
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 38
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 594
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 595
    const/16 v27, 0x0

    .line 596
    .local v27, "maxWidth":I
    const/4 v15, 0x0

    .line 597
    .local v15, "childState":I
    const/4 v11, 0x0

    .line 598
    .local v11, "alternativeMaxWidth":I
    const/16 v36, 0x0

    .line 599
    .local v36, "weightedMaxWidth":I
    const/4 v10, 0x1

    .line 600
    .local v10, "allFillParent":Z
    const/16 v33, 0x0

    .line 602
    .local v33, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getVirtualChildCount()I

    move-result v17

    .line 604
    .local v17, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v37

    .line 605
    .local v37, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 607
    .local v19, "heightMode":I
    const/16 v25, 0x0

    .line 608
    .local v25, "matchWidth":Z
    const/16 v31, 0x0

    .line 610
    .local v31, "skippedMeasure":Z
    move-object/from16 v0, p0

    iget v12, v0, Lc8/ru;->mBaselineAlignedChildIndex:I

    .line 611
    .local v12, "baselineChildIndex":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/ru;->mUseLargestChild:Z

    move/from16 v34, v0

    .line 613
    .local v34, "useLargestChild":Z
    const/high16 v22, -0x80000000

    .line 616
    .local v22, "largestChildHeight":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v5, v0, :cond_f

    .line 617
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 619
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_0

    .line 620
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lc8/ru;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 616
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1

    .line 625
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lc8/ru;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 626
    goto :goto_1

    .line 629
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lc8/ru;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 630
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Lc8/ru;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 633
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lc8/pu;

    .line 635
    .local v23, "lp":Lc8/pu;
    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->weight:F

    add-float v33, v33, v3

    .line 637
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-ne v0, v3, :cond_5

    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->height:I

    if-nez v3, :cond_5

    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 641
    move-object/from16 v0, p0

    iget v0, v0, Lc8/ru;->mTotalLength:I

    move/from16 v32, v0

    .line 642
    .local v32, "totalLength":I
    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->topMargin:I

    add-int v3, v3, v32

    move-object/from16 v0, v23

    iget v6, v0, Lc8/pu;->bottomMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 643
    const/16 v31, 0x1

    .line 682
    :cond_3
    :goto_2
    if-ltz v12, :cond_4

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_4

    .line 683
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mBaselineChildTop:I

    .line 689
    :cond_4
    if-ge v5, v12, :cond_9

    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_9

    .line 690
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 645
    .end local v32    # "totalLength":I
    :cond_5
    const/high16 v29, -0x80000000

    .line 647
    .local v29, "oldHeight":I
    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->height:I

    if-nez v3, :cond_6

    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    .line 652
    const/16 v29, 0x0

    .line 653
    const/4 v3, -0x2

    move-object/from16 v0, v23

    iput v3, v0, Lc8/pu;->height:I

    .line 660
    :cond_6
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v33, v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v9, v0, Lc8/ru;->mTotalLength:I

    :goto_3
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Lc8/ru;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 664
    const/high16 v3, -0x80000000

    move/from16 v0, v29

    if-eq v0, v3, :cond_7

    .line 665
    move/from16 v0, v29

    move-object/from16 v1, v23

    iput v0, v1, Lc8/pu;->height:I

    .line 668
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 669
    .local v14, "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/ru;->mTotalLength:I

    move/from16 v32, v0

    .line 670
    .restart local v32    # "totalLength":I
    add-int v3, v32, v14

    move-object/from16 v0, v23

    iget v6, v0, Lc8/pu;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Lc8/pu;->bottomMargin:I

    add-int/2addr v3, v6

    .line 671
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lc8/ru;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    .line 670
    move/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 673
    if-eqz v34, :cond_3

    .line 674
    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto/16 :goto_2

    .line 660
    .end local v14    # "childHeight":I
    .end local v32    # "totalLength":I
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 696
    .end local v29    # "oldHeight":I
    .restart local v32    # "totalLength":I
    :cond_9
    const/16 v26, 0x0

    .line 697
    .local v26, "matchWidthLocally":Z
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v37

    if-eq v0, v3, :cond_a

    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_a

    .line 702
    const/16 v25, 0x1

    .line 703
    const/16 v26, 0x1

    .line 706
    :cond_a
    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->leftMargin:I

    move-object/from16 v0, v23

    iget v6, v0, Lc8/pu;->rightMargin:I

    add-int v24, v3, v6

    .line 707
    .local v24, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v28, v3, v24

    .line 708
    .local v28, "measuredWidth":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 710
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    .line 709
    invoke-static {v15, v3}, Lc8/yx;->combineMeasuredStates(II)I

    move-result v15

    .line 712
    if-eqz v10, :cond_b

    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_b

    const/4 v10, 0x1

    .line 713
    :goto_4
    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_d

    .line 718
    if-eqz v26, :cond_c

    .end local v24    # "margin":I
    :goto_5
    move/from16 v0, v36

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 725
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lc8/ru;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_1

    .line 712
    .restart local v24    # "margin":I
    :cond_b
    const/4 v10, 0x0

    goto :goto_4

    :cond_c
    move/from16 v24, v28

    .line 718
    goto :goto_5

    .line 721
    :cond_d
    if-eqz v26, :cond_e

    .end local v24    # "margin":I
    :goto_7
    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_6

    .restart local v24    # "margin":I
    :cond_e
    move/from16 v24, v28

    goto :goto_7

    .line 728
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "lp":Lc8/pu;
    .end local v24    # "margin":I
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    .end local v32    # "totalLength":I
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    if-lez v3, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/ru;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 729
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Lc8/ru;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 732
    :cond_10
    if-eqz v34, :cond_14

    const/high16 v3, -0x80000000

    move/from16 v0, v19

    if-eq v0, v3, :cond_11

    if-nez v19, :cond_14

    .line 734
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 736
    const/4 v5, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v5, v0, :cond_14

    .line 737
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 739
    .restart local v4    # "child":Landroid/view/View;
    if-nez v4, :cond_12

    .line 740
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lc8/ru;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 736
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 744
    :cond_12
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_13

    .line 745
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lc8/ru;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 746
    goto :goto_9

    .line 750
    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lc8/pu;

    .line 752
    .restart local v23    # "lp":Lc8/pu;
    move-object/from16 v0, p0

    iget v0, v0, Lc8/ru;->mTotalLength:I

    move/from16 v32, v0

    .line 753
    .restart local v32    # "totalLength":I
    add-int v3, v32, v22

    move-object/from16 v0, v23

    iget v6, v0, Lc8/pu;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Lc8/pu;->bottomMargin:I

    add-int/2addr v3, v6

    .line 754
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lc8/ru;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    .line 753
    move/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    goto :goto_9

    .line 759
    .end local v4    # "child":Landroid/view/View;
    .end local v23    # "lp":Lc8/pu;
    .end local v32    # "totalLength":I
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 761
    move-object/from16 v0, p0

    iget v0, v0, Lc8/ru;->mTotalLength:I

    move/from16 v20, v0

    .line 764
    .local v20, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 767
    const/4 v3, 0x0

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v21

    .line 768
    .local v21, "heightSizeAndState":I
    const v3, 0xffffff

    and-int v20, v21, v3

    .line 773
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    sub-int v18, v20, v3

    .line 774
    .local v18, "delta":I
    if-nez v31, :cond_15

    if-eqz v18, :cond_24

    const/4 v3, 0x0

    cmpl-float v3, v33, v3

    if-lez v3, :cond_24

    .line 775
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lc8/ru;->mWeightSum:F

    move/from16 v35, v0

    .line 777
    .local v35, "weightSum":F
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 779
    const/4 v5, 0x0

    :goto_b
    move/from16 v0, v17

    if-ge v5, v0, :cond_20

    .line 780
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 782
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_19

    .line 786
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lc8/pu;

    .line 788
    .restart local v23    # "lp":Lc8/pu;
    move-object/from16 v0, v23

    iget v13, v0, Lc8/pu;->weight:F

    .line 789
    .local v13, "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_18

    .line 791
    move/from16 v0, v18

    int-to-float v3, v0

    mul-float/2addr v3, v13

    div-float v3, v3, v35

    float-to-int v0, v3

    move/from16 v30, v0

    .line 792
    .local v30, "share":I
    sub-float v35, v35, v13

    .line 793
    sub-int v18, v18, v30

    .line 796
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingRight()I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Lc8/pu;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Lc8/pu;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Lc8/pu;->width:I

    .line 795
    move/from16 v0, p1

    invoke-static {v0, v3, v6}, Lc8/ru;->getChildMeasureSpec(III)I

    move-result v16

    .line 801
    .local v16, "childWidthMeasureSpec":I
    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->height:I

    if-nez v3, :cond_16

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-eq v0, v3, :cond_1b

    .line 804
    :cond_16
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v30

    .line 805
    .restart local v14    # "childHeight":I
    if-gez v14, :cond_17

    .line 806
    const/4 v14, 0x0

    .line 809
    :cond_17
    const/high16 v3, 0x40000000    # 2.0f

    .line 810
    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 809
    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    .line 821
    .end local v14    # "childHeight":I
    .end local v30    # "share":I
    :goto_c
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    .line 820
    invoke-static {v15, v3}, Lc8/yx;->combineMeasuredStates(II)I

    move-result v15

    .line 825
    .end local v16    # "childWidthMeasureSpec":I
    :cond_18
    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->leftMargin:I

    move-object/from16 v0, v23

    iget v6, v0, Lc8/pu;->rightMargin:I

    add-int v24, v3, v6

    .line 826
    .restart local v24    # "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v28, v3, v24

    .line 827
    .restart local v28    # "measuredWidth":I
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 829
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v37

    if-eq v0, v3, :cond_1d

    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1d

    const/16 v26, 0x1

    .line 832
    .restart local v26    # "matchWidthLocally":Z
    :goto_d
    if-eqz v26, :cond_1e

    .end local v24    # "margin":I
    :goto_e
    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 835
    if-eqz v10, :cond_1f

    move-object/from16 v0, v23

    iget v3, v0, Lc8/pu;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1f

    const/4 v10, 0x1

    .line 837
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lc8/ru;->mTotalLength:I

    move/from16 v32, v0

    .line 838
    .restart local v32    # "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v32

    move-object/from16 v0, v23

    iget v6, v0, Lc8/pu;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Lc8/pu;->bottomMargin:I

    add-int/2addr v3, v6

    .line 839
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lc8/ru;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    .line 838
    move/from16 v0, v32

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 779
    .end local v13    # "childExtra":F
    .end local v23    # "lp":Lc8/pu;
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    .end local v32    # "totalLength":I
    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b

    .end local v4    # "child":Landroid/view/View;
    .end local v35    # "weightSum":F
    :cond_1a
    move/from16 v35, v33

    .line 775
    goto/16 :goto_a

    .line 814
    .restart local v4    # "child":Landroid/view/View;
    .restart local v13    # "childExtra":F
    .restart local v16    # "childWidthMeasureSpec":I
    .restart local v23    # "lp":Lc8/pu;
    .restart local v30    # "share":I
    .restart local v35    # "weightSum":F
    :cond_1b
    if-lez v30, :cond_1c

    .end local v30    # "share":I
    :goto_10
    const/high16 v3, 0x40000000    # 2.0f

    .line 815
    move/from16 v0, v30

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 814
    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    goto :goto_c

    .restart local v30    # "share":I
    :cond_1c
    const/16 v30, 0x0

    goto :goto_10

    .line 829
    .end local v16    # "childWidthMeasureSpec":I
    .end local v30    # "share":I
    .restart local v24    # "margin":I
    .restart local v28    # "measuredWidth":I
    :cond_1d
    const/16 v26, 0x0

    goto :goto_d

    .restart local v26    # "matchWidthLocally":Z
    :cond_1e
    move/from16 v24, v28

    .line 832
    goto :goto_e

    .line 835
    .end local v24    # "margin":I
    :cond_1f
    const/4 v10, 0x0

    goto :goto_f

    .line 843
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "childExtra":F
    .end local v23    # "lp":Lc8/pu;
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Lc8/ru;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lc8/ru;->mTotalLength:I

    .line 875
    .end local v35    # "weightSum":F
    :cond_21
    if-nez v10, :cond_22

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v37

    if-eq v0, v3, :cond_22

    .line 876
    move/from16 v27, v11

    .line 879
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getPaddingRight()I

    move-result v6

    add-int/2addr v3, v6

    add-int v27, v27, v3

    .line 882
    invoke-virtual/range {p0 .. p0}, Lc8/ru;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 884
    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1, v15}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lc8/ru;->setMeasuredDimension(II)V

    .line 887
    if-eqz v25, :cond_23

    .line 888
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lc8/ru;->forceUniformWidth(II)V

    .line 890
    :cond_23
    return-void

    .line 846
    :cond_24
    move/from16 v0, v36

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 852
    if-eqz v34, :cond_21

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-eq v0, v3, :cond_21

    .line 853
    const/4 v5, 0x0

    :goto_11
    move/from16 v0, v17

    if-ge v5, v0, :cond_21

    .line 854
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lc8/ru;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 856
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_25

    .line 861
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lc8/pu;

    .line 863
    .restart local v23    # "lp":Lc8/pu;
    move-object/from16 v0, v23

    iget v13, v0, Lc8/pu;->weight:F

    .line 864
    .restart local v13    # "childExtra":F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_25

    .line 866
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    .line 868
    move/from16 v0, v22

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 865
    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 853
    .end local v13    # "childExtra":F
    .end local v23    # "lp":Lc8/pu;
    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_11
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 283
    iget-object v0, p0, Lc8/ru;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 287
    :cond_0
    iget v0, p0, Lc8/ru;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 288
    invoke-virtual {p0, p1}, Lc8/ru;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0, p1}, Lc8/ru;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1755
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1756
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1757
    const-class v0, Lc8/ru;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1759
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1762
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1763
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1764
    const-class v0, Lc8/ru;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1766
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1406
    iget v0, p0, Lc8/ru;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1407
    invoke-virtual {p0, p2, p3, p4, p5}, Lc8/ru;->layoutVertical(IIII)V

    .line 1411
    :goto_0
    return-void

    .line 1409
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lc8/ru;->layoutHorizontal(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 550
    iget v0, p0, Lc8/ru;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 551
    invoke-virtual {p0, p1, p2}, Lc8/ru;->measureVertical(II)V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc8/ru;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .param p1, "baselineAligned"    # Z

    .prologue
    .line 392
    iput-boolean p1, p0, Lc8/ru;->mBaselineAligned:Z

    .line 393
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 488
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lc8/ru;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 489
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 490
    invoke-virtual {p0}, Lc8/ru;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_1
    iput p1, p0, Lc8/ru;->mBaselineAlignedChildIndex:I

    .line 493
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 232
    iget-object v1, p0, Lc8/ru;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 235
    :cond_0
    iput-object p1, p0, Lc8/ru;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 236
    if-eqz p1, :cond_2

    .line 237
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lc8/ru;->mDividerWidth:I

    .line 238
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lc8/ru;->mDividerHeight:I

    .line 243
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lc8/ru;->setWillNotDraw(Z)V

    .line 244
    invoke-virtual {p0}, Lc8/ru;->requestLayout()V

    goto :goto_0

    .line 240
    :cond_2
    iput v0, p0, Lc8/ru;->mDividerWidth:I

    .line 241
    iput v0, p0, Lc8/ru;->mDividerHeight:I

    goto :goto_1
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 257
    iput p1, p0, Lc8/ru;->mDividerPadding:I

    .line 258
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1679
    iget v0, p0, Lc8/ru;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1680
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1681
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1684
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1685
    or-int/lit8 p1, p1, 0x30

    .line 1688
    :cond_1
    iput p1, p0, Lc8/ru;->mGravity:I

    .line 1689
    invoke-virtual {p0}, Lc8/ru;->requestLayout()V

    .line 1691
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I

    .prologue
    const v2, 0x800007

    .line 1704
    and-int v0, p1, v2

    .line 1705
    .local v0, "gravity":I
    iget v1, p0, Lc8/ru;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 1706
    iget v1, p0, Lc8/ru;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lc8/ru;->mGravity:I

    .line 1707
    invoke-virtual {p0}, Lc8/ru;->requestLayout()V

    .line 1709
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 418
    iput-boolean p1, p0, Lc8/ru;->mUseLargestChild:Z

    .line 419
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1654
    iget v0, p0, Lc8/ru;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1655
    iput p1, p0, Lc8/ru;->mOrientation:I

    .line 1656
    invoke-virtual {p0}, Lc8/ru;->requestLayout()V

    .line 1658
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    .prologue
    .line 195
    iget v0, p0, Lc8/ru;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lc8/ru;->requestLayout()V

    .line 198
    :cond_0
    iput p1, p0, Lc8/ru;->mShowDividers:I

    .line 199
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I

    .prologue
    .line 1712
    and-int/lit8 v0, p1, 0x70

    .line 1713
    .local v0, "gravity":I
    iget v1, p0, Lc8/ru;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1714
    iget v1, p0, Lc8/ru;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Lc8/ru;->mGravity:I

    .line 1715
    invoke-virtual {p0}, Lc8/ru;->requestLayout()V

    .line 1717
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .param p1, "weightSum"    # F

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lc8/ru;->mWeightSum:F

    .line 546
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method
