.class public Lc8/Ju;
.super Landroid/widget/ListView;
.source "ListViewCompat.java"


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Iu;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1

.field private static final STATE_SET_NOTHING:[I


# instance fields
.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field protected mMotionPosition:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field private mSelector:Lc8/Iu;

.field final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lc8/Ju;->STATE_SET_NOTHING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Ju;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/Ju;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lc8/Ju;->mSelectorRect:Landroid/graphics/Rect;

    .line 53
    iput v2, p0, Lc8/Ju;->mSelectionLeftPadding:I

    .line 54
    iput v2, p0, Lc8/Ju;->mSelectionTopPadding:I

    .line 55
    iput v2, p0, Lc8/Ju;->mSelectionRightPadding:I

    .line 56
    iput v2, p0, Lc8/Ju;->mSelectionBottomPadding:I

    .line 76
    :try_start_0
    const-class v1, Landroid/widget/AbsListView;

    const-string/jumbo v2, "mIsChildViewEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lc8/Ju;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    .line 77
    iget-object v1, p0, Lc8/Ju;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lc8/Ju;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    .line 114
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 115
    return-void
.end method

.method protected drawSelectorCompat(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 143
    iget-object v1, p0, Lc8/Ju;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lc8/Ju;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lc8/Ju;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 147
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 150
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/Ju;->setSelectorEnabled(Z)V

    .line 104
    invoke-virtual {p0}, Lc8/Ju;->updateSelectorStateCompat()V

    .line 105
    return-void
.end method

.method public lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v2, -0x1

    .line 161
    invoke-virtual {p0}, Lc8/Ju;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 162
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/Ju;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v2

    .line 166
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 167
    .local v1, "count":I
    invoke-virtual {p0}, Lc8/Ju;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 168
    if-eqz p2, :cond_2

    .line 169
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 170
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 171
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 174
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 175
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 176
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 180
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 183
    goto :goto_0

    .line 185
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 188
    goto :goto_0
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 276
    invoke-virtual/range {p0 .. p0}, Lc8/Ju;->getListPaddingTop()I

    move-result v11

    .line 277
    .local v11, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lc8/Ju;->getListPaddingBottom()I

    move-result v10

    .line 278
    .local v10, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lc8/Ju;->getListPaddingLeft()I

    .line 279
    invoke-virtual/range {p0 .. p0}, Lc8/Ju;->getListPaddingRight()I

    .line 280
    invoke-virtual/range {p0 .. p0}, Lc8/Ju;->getDividerHeight()I

    move-result v13

    .line 281
    .local v13, "reportedDividerHeight":I
    invoke-virtual/range {p0 .. p0}, Lc8/Ju;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 283
    .local v5, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lc8/Ju;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 285
    .local v1, "adapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 286
    add-int v12, v11, v10

    .line 355
    :cond_0
    :goto_0
    return v12

    .line 290
    :cond_1
    add-int v14, v11, v10

    .line 291
    .local v14, "returnedHeight":I
    if-lez v13, :cond_6

    if-eqz v5, :cond_6

    move v6, v13

    .line 296
    .local v6, "dividerHeight":I
    :goto_1
    const/4 v12, 0x0

    .line 298
    .local v12, "prevHeightWithoutPartialChild":I
    const/4 v2, 0x0

    .line 299
    .local v2, "child":Landroid/view/View;
    const/4 v15, 0x0

    .line 300
    .local v15, "viewType":I
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 301
    .local v4, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v4, :cond_a

    .line 302
    invoke-interface {v1, v8}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    .line 303
    .local v9, "newType":I
    if-eq v9, v15, :cond_2

    .line 304
    const/4 v2, 0x0

    .line 305
    move v15, v9

    .line 307
    :cond_2
    move-object/from16 v0, p0

    invoke-interface {v1, v8, v2, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 311
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 313
    .local v3, "childLp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_3

    .line 314
    invoke-virtual/range {p0 .. p0}, Lc8/Ju;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 315
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    :cond_3
    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v16, v0

    if-lez v16, :cond_7

    .line 319
    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 324
    .local v7, "heightMeasureSpec":I
    :goto_3
    move/from16 v0, p1

    invoke-virtual {v2, v0, v7}, Landroid/view/View;->measure(II)V

    .line 328
    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 330
    if-lez v8, :cond_4

    .line 332
    add-int/2addr v14, v6

    .line 335
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v14, v14, v16

    .line 337
    move/from16 v0, p4

    if-lt v14, v0, :cond_8

    .line 340
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v8, v0, :cond_5

    if-lez v12, :cond_5

    move/from16 v0, p4

    if-ne v14, v0, :cond_0

    :cond_5
    move/from16 v12, p4

    goto :goto_0

    .line 291
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "count":I
    .end local v6    # "dividerHeight":I
    .end local v7    # "heightMeasureSpec":I
    .end local v8    # "i":I
    .end local v9    # "newType":I
    .end local v12    # "prevHeightWithoutPartialChild":I
    .end local v15    # "viewType":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 322
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "count":I
    .restart local v6    # "dividerHeight":I
    .restart local v8    # "i":I
    .restart local v9    # "newType":I
    .restart local v12    # "prevHeightWithoutPartialChild":I
    .restart local v15    # "viewType":I
    :cond_7
    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .restart local v7    # "heightMeasureSpec":I
    goto :goto_3

    .line 348
    :cond_8
    if-ltz p5, :cond_9

    move/from16 v0, p5

    if-lt v8, v0, :cond_9

    .line 349
    move v12, v14

    .line 301
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v3    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "heightMeasureSpec":I
    .end local v9    # "newType":I
    :cond_a
    move v12, v14

    .line 355
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 121
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lc8/Ju;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lc8/Ju;->mMotionPosition:I

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected positionSelectorCompat(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 222
    iget-object v2, p0, Lc8/Ju;->mSelectorRect:Landroid/graphics/Rect;

    .line 223
    .local v2, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 226
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lc8/Ju;->mSelectionLeftPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 227
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lc8/Ju;->mSelectionTopPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 228
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lc8/Ju;->mSelectionRightPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 229
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lc8/Ju;->mSelectionBottomPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 234
    :try_start_0
    iget-object v3, p0, Lc8/Ju;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 235
    .local v1, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eq v3, v1, :cond_0

    .line 236
    iget-object v4, p0, Lc8/Ju;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4, p0, v3}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    .line 238
    invoke-virtual {p0}, Lc8/Ju;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1    # "isChildViewEnabled":Z
    :cond_0
    :goto_1
    return-void

    .line 236
    .restart local v1    # "isChildViewEnabled":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 241
    .end local v1    # "isChildViewEnabled":Z
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method protected positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 204
    invoke-virtual {p0}, Lc8/Ju;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 205
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    const/4 v7, -0x1

    if-eq p1, v7, :cond_2

    move v1, v5

    .line 206
    .local v1, "manageState":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v2, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 210
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc8/Ju;->positionSelectorCompat(ILandroid/view/View;)V

    .line 212
    if-eqz v1, :cond_1

    .line 213
    iget-object v0, p0, Lc8/Ju;->mSelectorRect:Landroid/graphics/Rect;

    .line 214
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .line 215
    .local v3, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 216
    .local v4, "y":F
    invoke-virtual {p0}, Lc8/Ju;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 217
    invoke-static {v2, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 219
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_1
    return-void

    .end local v1    # "manageState":Z
    :cond_2
    move v1, v6

    .line 205
    goto :goto_0

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "manageState":Z
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_3
    move v5, v6

    .line 216
    goto :goto_1
.end method

.method protected positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 193
    invoke-virtual {p0, p1, p2}, Lc8/Ju;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    .line 195
    invoke-virtual {p0}, Lc8/Ju;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 196
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 197
    invoke-static {v0, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 199
    :cond_0
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 85
    if-eqz p1, :cond_1

    new-instance v1, Lc8/Iu;

    invoke-direct {v1, p1}, Lc8/Iu;-><init>(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-object v1, p0, Lc8/Ju;->mSelector:Lc8/Iu;

    .line 86
    iget-object v1, p0, Lc8/Ju;->mSelector:Lc8/Iu;

    invoke-super {p0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 89
    .local v0, "padding":Landroid/graphics/Rect;
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 93
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lc8/Ju;->mSelectionLeftPadding:I

    .line 94
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lc8/Ju;->mSelectionTopPadding:I

    .line 95
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lc8/Ju;->mSelectionRightPadding:I

    .line 96
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lc8/Ju;->mSelectionBottomPadding:I

    .line 97
    return-void

    .line 85
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setSelectorEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 359
    iget-object v0, p0, Lc8/Ju;->mSelector:Lc8/Iu;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lc8/Ju;->mSelector:Lc8/Iu;

    invoke-virtual {v0, p1}, Lc8/Iu;->setEnabled(Z)V

    .line 362
    :cond_0
    return-void
.end method

.method protected shouldShowSelectorCompat()Z
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lc8/Ju;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/Ju;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method protected updateSelectorStateCompat()V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lc8/Ju;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/Ju;->shouldShowSelectorCompat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lc8/Ju;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 132
    :cond_0
    return-void
.end method
