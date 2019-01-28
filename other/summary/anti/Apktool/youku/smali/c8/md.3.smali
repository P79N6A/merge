.class public Lc8/md;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/od;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final COLLAPSE_MODE_OFF:I = 0x0

.field public static final COLLAPSE_MODE_PARALLAX:I = 0x2

.field public static final COLLAPSE_MODE_PIN:I = 0x1

.field private static final DEFAULT_PARALLAX_MULTIPLIER:F = 0.5f


# instance fields
.field mCollapseMode:I

.field mParallaxMult:F


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1172
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1154
    const/4 v0, 0x0

    iput v0, p0, Lc8/md;->mCollapseMode:I

    .line 1155
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lc8/md;->mParallaxMult:F

    .line 1173
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 1176
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1154
    const/4 v0, 0x0

    iput v0, p0, Lc8/md;->mCollapseMode:I

    .line 1155
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lc8/md;->mParallaxMult:F

    .line 1177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 1158
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1154
    iput v3, p0, Lc8/md;->mCollapseMode:I

    .line 1155
    iput v2, p0, Lc8/md;->mParallaxMult:F

    .line 1160
    sget-object v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1162
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_Layout_layout_collapseMode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lc8/md;->mCollapseMode:I

    .line 1165
    sget v1, Lcom/youku/phone/R$styleable;->CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lc8/md;->setParallaxMultiplier(F)V

    .line 1168
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1169
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1180
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1154
    const/4 v0, 0x0

    iput v0, p0, Lc8/md;->mCollapseMode:I

    .line 1155
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lc8/md;->mParallaxMult:F

    .line 1181
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1184
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1154
    const/4 v0, 0x0

    iput v0, p0, Lc8/md;->mCollapseMode:I

    .line 1155
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lc8/md;->mParallaxMult:F

    .line 1185
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/FrameLayout$LayoutParams;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Lc8/N;
        value = 0x13
    .end annotation

    .prologue
    .line 1191
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 1154
    const/4 v0, 0x0

    iput v0, p0, Lc8/md;->mCollapseMode:I

    .line 1155
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lc8/md;->mParallaxMult:F

    .line 1192
    return-void
.end method


# virtual methods
.method public getCollapseMode()I
    .locals 1

    .prologue
    .line 1212
    iget v0, p0, Lc8/md;->mCollapseMode:I

    return v0
.end method

.method public getParallaxMultiplier()F
    .locals 1

    .prologue
    .line 1235
    iget v0, p0, Lc8/md;->mParallaxMult:F

    return v0
.end method

.method public setCollapseMode(I)V
    .locals 0
    .param p1, "collapseMode"    # I

    .prologue
    .line 1201
    iput p1, p0, Lc8/md;->mCollapseMode:I

    .line 1202
    return-void
.end method

.method public setParallaxMultiplier(F)V
    .locals 0
    .param p1, "multiplier"    # F

    .prologue
    .line 1225
    iput p1, p0, Lc8/md;->mParallaxMult:F

    .line 1226
    return-void
.end method
