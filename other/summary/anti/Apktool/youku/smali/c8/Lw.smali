.class public Lc8/Lw;
.super Lc8/yv;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Qw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mFullSpan:Z

.field mSpan:Lc8/Pw;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 2419
    invoke-direct {p0, p1, p2}, Lc8/yv;-><init>(II)V

    .line 2420
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2415
    invoke-direct {p0, p1, p2}, Lc8/yv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2416
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2427
    invoke-direct {p0, p1}, Lc8/yv;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2428
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 2423
    invoke-direct {p0, p1}, Lc8/yv;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2424
    return-void
.end method

.method public constructor <init>(Lc8/yv;)V
    .locals 0
    .param p1, "source"    # Lc8/yv;

    .prologue
    .line 2431
    invoke-direct {p0, p1}, Lc8/yv;-><init>(Lc8/yv;)V

    .line 2432
    return-void
.end method


# virtual methods
.method public final getSpanIndex()I
    .locals 1

    .prologue
    .line 2463
    iget-object v0, p0, Lc8/Lw;->mSpan:Lc8/Pw;

    if-nez v0, :cond_0

    .line 2464
    const/4 v0, -0x1

    .line 2466
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/Lw;->mSpan:Lc8/Pw;

    iget v0, v0, Lc8/Pw;->mIndex:I

    goto :goto_0
.end method

.method public isFullSpan()Z
    .locals 1

    .prologue
    .line 2453
    iget-boolean v0, p0, Lc8/Lw;->mFullSpan:Z

    return v0
.end method

.method public setFullSpan(Z)V
    .locals 0
    .param p1, "fullSpan"    # Z

    .prologue
    .line 2443
    iput-boolean p1, p0, Lc8/Lw;->mFullSpan:Z

    .line 2444
    return-void
.end method