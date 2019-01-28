.class public Lc8/ve;
.super Lc8/qd;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ue;,
        Lc8/te;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lc8/qd",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA_END_DISTANCE:F = 0.5f

.field private static final DEFAULT_ALPHA_START_DISTANCE:F = 0.0f

.field private static final DEFAULT_DRAG_DISMISS_THRESHOLD:F = 0.5f

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final SWIPE_DIRECTION_ANY:I = 0x2

.field public static final SWIPE_DIRECTION_END_TO_START:I = 0x1

.field public static final SWIPE_DIRECTION_START_TO_END:I


# instance fields
.field mAlphaEndSwipeDistance:F

.field mAlphaStartSwipeDistance:F

.field private final mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field mDragDismissThreshold:F

.field private mInterceptingEvents:Z

.field mListener:Lc8/te;

.field private mSensitivity:F

.field private mSensitivitySet:Z

.field mSwipeDirection:I

.field mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lc8/ve;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lc8/qd;-><init>()V

    .line 89
    iput v1, p0, Lc8/ve;->mSensitivity:F

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lc8/ve;->mSwipeDirection:I

    .line 93
    iput v2, p0, Lc8/ve;->mDragDismissThreshold:F

    .line 94
    iput v1, p0, Lc8/ve;->mAlphaStartSwipeDistance:F

    .line 95
    iput v2, p0, Lc8/ve;->mAlphaEndSwipeDistance:F

    .line 216
    new-instance v0, Lc8/se;

    invoke-direct {v0, p0}, Lc8/se;-><init>(Lc8/ve;)V

    iput-object v0, p0, Lc8/ve;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 367
    return-void
.end method

.method static clamp(FFF)F
    .locals 1
    .param p0, "min"    # F
    .param p1, "value"    # F
    .param p2, "max"    # F

    .prologue
    .line 389
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static clamp(III)I
    .locals 1
    .param p0, "min"    # I
    .param p1, "value"    # I
    .param p2, "max"    # I

    .prologue
    .line 393
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private ensureViewDragHelper(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 360
    .local p0, "this":Lc8/ve;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iget-object v0, p0, Lc8/ve;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v0, :cond_0

    .line 361
    iget-boolean v0, p0, Lc8/ve;->mSensitivitySet:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lc8/ve;->mSensitivity:F

    iget-object v1, p0, Lc8/ve;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 362
    invoke-static {p1, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    .line 363
    :goto_0
    iput-object v0, p0, Lc8/ve;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 365
    :cond_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lc8/ve;->mDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 363
    invoke-static {p1, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    goto :goto_0
.end method

.method static fraction(FFF)F
    .locals 2
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "value"    # F

    .prologue
    .line 410
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 213
    .local p0, "this":Lc8/ve;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getDragState()I
    .locals 1

    .prologue
    .line 403
    .local p0, "this":Lc8/ve;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iget-object v0, p0, Lc8/ve;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/ve;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Lc8/yd;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "parent"    # Lc8/yd;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/yd;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/ve;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v1, 0x0

    .line 175
    iget-boolean v0, p0, Lc8/ve;->mInterceptingEvents:Z

    .line 177
    .local v0, "dispatchEventToHelper":Z
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 190
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0, p1}, Lc8/ve;->ensureViewDragHelper(Landroid/view/ViewGroup;)V

    .line 192
    iget-object v1, p0, Lc8/ve;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p3}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 194
    :cond_0
    return v1

    .line 180
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 179
    invoke-virtual {p1, p2, v2, v3}, Lc8/yd;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v2

    iput-boolean v2, p0, Lc8/ve;->mInterceptingEvents:Z

    .line 181
    iget-boolean v0, p0, Lc8/ve;->mInterceptingEvents:Z

    .line 182
    goto :goto_0

    .line 186
    :pswitch_2
    iput-boolean v1, p0, Lc8/ve;->mInterceptingEvents:Z

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Lc8/yd;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Lc8/yd;
    .param p3, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/yd;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lc8/ve;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Lc8/ve;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lc8/ve;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDragDismissDistance(F)V
    .locals 2
    .param p1, "distance"    # F

    .prologue
    .line 140
    .local p0, "this":Lc8/ve;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lc8/ve;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lc8/ve;->mDragDismissThreshold:F

    .line 141
    return-void
.end method

.method public setEndAlphaSwipeDistance(F)V
    .locals 2
    .param p1, "fraction"    # F

    .prologue
    .line 158
    .local p0, "this":Lc8/ve;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lc8/ve;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lc8/ve;->mAlphaEndSwipeDistance:F

    .line 159
    return-void
.end method

.method public setListener(Lc8/te;)V
    .locals 0
    .param p1, "listener"    # Lc8/te;

    .prologue
    .line 121
    .local p0, "this":Lc8/ve;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iput-object p1, p0, Lc8/ve;->mListener:Lc8/te;

    .line 122
    return-void
.end method

.method public setSensitivity(F)V
    .locals 1
    .param p1, "sensitivity"    # F

    .prologue
    .line 169
    .local p0, "this":Lc8/ve;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iput p1, p0, Lc8/ve;->mSensitivity:F

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ve;->mSensitivitySet:Z

    .line 171
    return-void
.end method

.method public setStartAlphaSwipeDistance(F)V
    .locals 2
    .param p1, "fraction"    # F

    .prologue
    .line 149
    .local p0, "this":Lc8/ve;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lc8/ve;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lc8/ve;->mAlphaStartSwipeDistance:F

    .line 150
    return-void
.end method

.method public setSwipeDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 131
    .local p0, "this":Lc8/ve;, "Landroid/support/design/widget/SwipeDismissBehavior<TV;>;"
    iput p1, p0, Lc8/ve;->mSwipeDirection:I

    .line 132
    return-void
.end method
