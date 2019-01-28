.class public Lc8/hx;
.super Lc8/gn;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 2222
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lc8/hx;-><init>(III)V

    .line 2223
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2212
    invoke-direct {p0, p1, p2}, Lc8/gn;-><init>(II)V

    .line 2205
    const/4 v0, 0x0

    iput v0, p0, Lc8/hx;->mViewType:I

    .line 2213
    const v0, 0x800013

    iput v0, p0, Lc8/hx;->gravity:I

    .line 2214
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 2217
    invoke-direct {p0, p1, p2}, Lc8/gn;-><init>(II)V

    .line 2205
    const/4 v0, 0x0

    iput v0, p0, Lc8/hx;->mViewType:I

    .line 2218
    iput p3, p0, Lc8/hx;->gravity:I

    .line 2219
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2208
    invoke-direct {p0, p1, p2}, Lc8/gn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2205
    const/4 v0, 0x0

    iput v0, p0, Lc8/hx;->mViewType:I

    .line 2209
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2243
    invoke-direct {p0, p1}, Lc8/gn;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2205
    const/4 v0, 0x0

    iput v0, p0, Lc8/hx;->mViewType:I

    .line 2244
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 2236
    invoke-direct {p0, p1}, Lc8/gn;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2205
    const/4 v0, 0x0

    iput v0, p0, Lc8/hx;->mViewType:I

    .line 2239
    invoke-virtual {p0, p1}, Lc8/hx;->copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2240
    return-void
.end method

.method public constructor <init>(Lc8/gn;)V
    .locals 1
    .param p1, "source"    # Lc8/gn;

    .prologue
    .line 2232
    invoke-direct {p0, p1}, Lc8/gn;-><init>(Lc8/gn;)V

    .line 2205
    const/4 v0, 0x0

    iput v0, p0, Lc8/hx;->mViewType:I

    .line 2233
    return-void
.end method

.method public constructor <init>(Lc8/hx;)V
    .locals 1
    .param p1, "source"    # Lc8/hx;

    .prologue
    .line 2226
    invoke-direct {p0, p1}, Lc8/gn;-><init>(Lc8/gn;)V

    .line 2205
    const/4 v0, 0x0

    iput v0, p0, Lc8/hx;->mViewType:I

    .line 2228
    iget v0, p1, Lc8/hx;->mViewType:I

    iput v0, p0, Lc8/hx;->mViewType:I

    .line 2229
    return-void
.end method


# virtual methods
.method copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 2247
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Lc8/hx;->leftMargin:I

    .line 2248
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lc8/hx;->topMargin:I

    .line 2249
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lc8/hx;->rightMargin:I

    .line 2250
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lc8/hx;->bottomMargin:I

    .line 2251
    return-void
.end method
