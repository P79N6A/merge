.class public Lc8/cu;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bounds"
.end annotation


# instance fields
.field public after:I

.field public before:I

.field public flexibility:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2121
    invoke-virtual {p0}, Lc8/cu;->reset()V

    .line 2122
    return-void
.end method

.method synthetic constructor <init>(Lc8/Pt;)V
    .locals 0
    .param p1, "x0"    # Lc8/Pt;

    .prologue
    .line 2115
    invoke-direct {p0}, Lc8/cu;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOffset(Lc8/iu;Landroid/view/View;Lc8/Yt;IZ)I
    .locals 2
    .param p1, "gl"    # Lc8/iu;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "a"    # Lc8/Yt;
    .param p4, "size"    # I
    .param p5, "horizontal"    # Z

    .prologue
    .line 2145
    iget v0, p0, Lc8/cu;->before:I

    invoke-static {p1}, Landroid/support/v4/view/ViewGroupCompat;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result v1

    invoke-virtual {p3, p2, p4, v1}, Lc8/Yt;->getAlignmentValue(Landroid/view/View;II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected include(II)V
    .locals 1
    .param p1, "before"    # I
    .param p2, "after"    # I

    .prologue
    .line 2131
    iget v0, p0, Lc8/cu;->before:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lc8/cu;->before:I

    .line 2132
    iget v0, p0, Lc8/cu;->after:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lc8/cu;->after:I

    .line 2133
    return-void
.end method

.method protected final include(Lc8/iu;Landroid/view/View;Lc8/hu;Lc8/bu;)V
    .locals 6
    .param p1, "gl"    # Lc8/iu;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "spec"    # Lc8/hu;
    .param p4, "axis"    # Lc8/bu;

    .prologue
    .line 2149
    iget v4, p0, Lc8/cu;->flexibility:I

    invoke-virtual {p3}, Lc8/hu;->getFlexibility()I

    move-result v5

    and-int/2addr v4, v5

    iput v4, p0, Lc8/cu;->flexibility:I

    .line 2150
    iget-boolean v2, p4, Lc8/bu;->horizontal:Z

    .line 2151
    .local v2, "horizontal":Z
    invoke-virtual {p1, p2, v2}, Lc8/iu;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v3

    .line 2152
    .local v3, "size":I
    iget-object v4, p3, Lc8/hu;->alignment:Lc8/Yt;

    invoke-virtual {p1, v4, v2}, Lc8/iu;->getAlignment(Lc8/Yt;Z)Lc8/Yt;

    move-result-object v0

    .line 2154
    .local v0, "alignment":Lc8/Yt;
    invoke-static {p1}, Landroid/support/v4/view/ViewGroupCompat;->getLayoutMode(Landroid/view/ViewGroup;)I

    move-result v4

    invoke-virtual {v0, p2, v3, v4}, Lc8/Yt;->getAlignmentValue(Landroid/view/View;II)I

    move-result v1

    .line 2155
    .local v1, "before":I
    sub-int v4, v3, v1

    invoke-virtual {p0, v1, v4}, Lc8/cu;->include(II)V

    .line 2156
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 2125
    iput v0, p0, Lc8/cu;->before:I

    .line 2126
    iput v0, p0, Lc8/cu;->after:I

    .line 2127
    const/4 v0, 0x2

    iput v0, p0, Lc8/cu;->flexibility:I

    .line 2128
    return-void
.end method

.method protected size(Z)I
    .locals 2
    .param p1, "min"    # Z

    .prologue
    .line 2136
    if-nez p1, :cond_0

    .line 2137
    iget v0, p0, Lc8/cu;->flexibility:I

    invoke-static {v0}, Lc8/iu;->canStretch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
    const v0, 0x186a0

    .line 2141
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lc8/cu;->before:I

    iget v1, p0, Lc8/cu;->after:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/cu;->before:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/cu;->after:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
