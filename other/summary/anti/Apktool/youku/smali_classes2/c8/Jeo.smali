.class public Lc8/Jeo;
.super Landroid/widget/HorizontalScrollView;
.source "IconPageIndicator.java"

# interfaces
.implements Lc8/Peo;


# instance fields
.field private mIconSelector:Ljava/lang/Runnable;

.field private final mIconsLayout:Lc8/Leo;

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mSelectedIndex:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Jeo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Jeo;->setHorizontalScrollBarEnabled(Z)V

    .line 53
    new-instance v0, Lc8/Leo;

    sget v1, Lcom/youku/phone/R$attr;->vpiIconPageIndicatorStyle:I

    invoke-direct {v0, p1, v1}, Lc8/Leo;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lc8/Jeo;->mIconsLayout:Lc8/Leo;

    .line 54
    iget-object v0, p0, Lc8/Jeo;->mIconsLayout:Lc8/Leo;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lc8/Jeo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    return-void
.end method

.method static synthetic access$002(Lc8/Jeo;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lc8/Jeo;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    iput-object p1, p0, Lc8/Jeo;->mIconSelector:Ljava/lang/Runnable;

    return-object p1
.end method

.method private animateToIcon(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lc8/Jeo;->mIconsLayout:Lc8/Leo;

    invoke-virtual {v1, p1}, Lc8/Leo;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "iconView":Landroid/view/View;
    iget-object v1, p0, Lc8/Jeo;->mIconSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lc8/Jeo;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lc8/Jeo;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 62
    :cond_0
    new-instance v1, Lc8/Ieo;

    invoke-direct {v1, p0, v0}, Lc8/Ieo;-><init>(Lc8/Jeo;Landroid/view/View;)V

    iput-object v1, p0, Lc8/Jeo;->mIconSelector:Ljava/lang/Runnable;

    .line 69
    iget-object v1, p0, Lc8/Jeo;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lc8/Jeo;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 7

    .prologue
    .line 129
    iget-object v4, p0, Lc8/Jeo;->mIconsLayout:Lc8/Leo;

    invoke-virtual {v4}, Lc8/Leo;->removeAllViews()V

    .line 130
    iget-object v4, p0, Lc8/Jeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    check-cast v2, Lc8/Keo;

    .line 131
    .local v2, "iconAdapter":Lc8/Keo;
    invoke-interface {v2}, Lc8/Keo;->getCount()I

    move-result v0

    .line 132
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 133
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/Jeo;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Lcom/youku/phone/R$attr;->vpiIconPageIndicatorStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    .local v3, "view":Landroid/widget/ImageView;
    invoke-interface {v2, v1}, Lc8/Keo;->getIconResId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v4, p0, Lc8/Jeo;->mIconsLayout:Lc8/Leo;

    invoke-virtual {v4, v3}, Lc8/Leo;->addView(Landroid/view/View;)V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v3    # "view":Landroid/widget/ImageView;
    :cond_0
    iget v4, p0, Lc8/Jeo;->mSelectedIndex:I

    if-le v4, v0, :cond_1

    .line 138
    add-int/lit8 v4, v0, -0x1

    iput v4, p0, Lc8/Jeo;->mSelectedIndex:I

    .line 140
    :cond_1
    iget v4, p0, Lc8/Jeo;->mSelectedIndex:I

    invoke-virtual {p0, v4}, Lc8/Jeo;->setCurrentItem(I)V

    .line 141
    invoke-virtual {p0}, Lc8/Jeo;->requestLayout()V

    .line 142
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 75
    iget-object v0, p0, Lc8/Jeo;->mIconSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lc8/Jeo;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lc8/Jeo;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 84
    iget-object v0, p0, Lc8/Jeo;->mIconSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lc8/Jeo;->mIconSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lc8/Jeo;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 87
    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lc8/Jeo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lc8/Jeo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 94
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lc8/Jeo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lc8/Jeo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 101
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lc8/Jeo;->setCurrentItem(I)V

    .line 106
    iget-object v0, p0, Lc8/Jeo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lc8/Jeo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 6
    .param p1, "item"    # I

    .prologue
    .line 152
    iget-object v4, p0, Lc8/Jeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_0

    .line 153
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "ViewPager has not been bound."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 155
    :cond_0
    iput p1, p0, Lc8/Jeo;->mSelectedIndex:I

    .line 156
    iget-object v4, p0, Lc8/Jeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 158
    iget-object v4, p0, Lc8/Jeo;->mIconsLayout:Lc8/Leo;

    invoke-virtual {v4}, Lc8/Leo;->getChildCount()I

    move-result v3

    .line 159
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 160
    iget-object v4, p0, Lc8/Jeo;->mIconsLayout:Lc8/Leo;

    invoke-virtual {v4, v1}, Lc8/Leo;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    .line 162
    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 163
    if-eqz v2, :cond_1

    .line 164
    invoke-direct {p0, p1}, Lc8/Jeo;->animateToIcon(I)V

    .line 159
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "isSelected":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 167
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 171
    iput-object p1, p0, Lc8/Jeo;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 172
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 113
    iget-object v1, p0, Lc8/Jeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v1, p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lc8/Jeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lc8/Jeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 119
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 120
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-nez v0, :cond_2

    .line 121
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ViewPager does not have adapter instance."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_2
    iput-object p1, p0, Lc8/Jeo;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 124
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 125
    invoke-virtual {p0}, Lc8/Jeo;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lc8/Jeo;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 147
    invoke-virtual {p0, p2}, Lc8/Jeo;->setCurrentItem(I)V

    .line 148
    return-void
.end method
