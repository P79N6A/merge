.class public Lc8/gs;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/js;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityChooserViewAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ACTIVITY:I = 0x0

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3

.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field public static final MAX_ACTIVITY_COUNT_DEFAULT:I = 0x4

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mDataModel:Lc8/bs;

.field private mHighlightDefaultActivity:Z

.field private mMaxActivityCount:I

.field private mShowDefaultActivity:Z

.field private mShowFooterView:Z

.field final synthetic this$0:Lc8/js;


# direct methods
.method constructor <init>(Lc8/js;)V
    .locals 1

    .prologue
    .line 672
    iput-object p1, p0, Lc8/gs;->this$0:Lc8/js;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 664
    const/4 v0, 0x4

    iput v0, p0, Lc8/gs;->mMaxActivityCount:I

    .line 673
    return-void
.end method


# virtual methods
.method public getActivityCount()I
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lc8/gs;->mDataModel:Lc8/bs;

    invoke-virtual {v0}, Lc8/bs;->getActivityCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 704
    iget-object v2, p0, Lc8/gs;->mDataModel:Lc8/bs;

    invoke-virtual {v2}, Lc8/bs;->getActivityCount()I

    move-result v0

    .line 705
    .local v0, "activityCount":I
    iget-boolean v2, p0, Lc8/gs;->mShowDefaultActivity:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/gs;->mDataModel:Lc8/bs;

    invoke-virtual {v2}, Lc8/bs;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 706
    add-int/lit8 v0, v0, -0x1

    .line 708
    :cond_0
    iget v2, p0, Lc8/gs;->mMaxActivityCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 709
    .local v1, "count":I
    iget-boolean v2, p0, Lc8/gs;->mShowFooterView:Z

    if-eqz v2, :cond_1

    .line 710
    add-int/lit8 v1, v1, 0x1

    .line 712
    :cond_1
    return v1
.end method

.method public getDataModel()Lc8/bs;
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lc8/gs;->mDataModel:Lc8/bs;

    return-object v0
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lc8/gs;->mDataModel:Lc8/bs;

    invoke-virtual {v0}, Lc8/bs;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHistorySize()I
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lc8/gs;->mDataModel:Lc8/bs;

    invoke-virtual {v0}, Lc8/bs;->getHistorySize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 717
    invoke-virtual {p0, p1}, Lc8/gs;->getItemViewType(I)I

    move-result v0

    .line 718
    .local v0, "itemViewType":I
    packed-switch v0, :pswitch_data_0

    .line 727
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 720
    :pswitch_0
    const/4 v1, 0x0

    .line 725
    :goto_0
    return-object v1

    .line 722
    :pswitch_1
    iget-boolean v1, p0, Lc8/gs;->mShowDefaultActivity:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/gs;->mDataModel:Lc8/bs;

    invoke-virtual {v1}, Lc8/bs;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 723
    add-int/lit8 p1, p1, 0x1

    .line 725
    :cond_0
    iget-object v1, p0, Lc8/gs;->mDataModel:Lc8/bs;

    invoke-virtual {v1, p1}, Lc8/bs;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    goto :goto_0

    .line 718
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 733
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 689
    iget-boolean v0, p0, Lc8/gs;->mShowFooterView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/gs;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 690
    const/4 v0, 0x1

    .line 692
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowDefaultActivity()Z
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Lc8/gs;->mShowDefaultActivity:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 738
    invoke-virtual {p0, p1}, Lc8/gs;->getItemViewType(I)I

    move-result v3

    .line 739
    .local v3, "itemViewType":I
    packed-switch v3, :pswitch_data_0

    .line 771
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 741
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v9, :cond_1

    .line 742
    :cond_0
    iget-object v6, p0, Lc8/gs;->this$0:Lc8/js;

    invoke-virtual {v6}, Lc8/js;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/youku/phone/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 744
    invoke-virtual {p2, v9}, Landroid/view/View;->setId(I)V

    .line 745
    sget v6, Lcom/youku/phone/R$id;->title:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 746
    .local v5, "titleView":Landroid/widget/TextView;
    iget-object v6, p0, Lc8/gs;->this$0:Lc8/js;

    invoke-virtual {v6}, Lc8/js;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/youku/phone/R$string;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v5    # "titleView":Landroid/widget/TextView;
    :cond_1
    move-object v1, p2

    .line 769
    .end local p2    # "convertView":Landroid/view/View;
    .local v1, "convertView":Landroid/view/View;
    :goto_0
    return-object v1

    .line 751
    .end local v1    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :pswitch_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/youku/phone/R$id;->list_item:I

    if-eq v6, v7, :cond_3

    .line 752
    :cond_2
    iget-object v6, p0, Lc8/gs;->this$0:Lc8/js;

    invoke-virtual {v6}, Lc8/js;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/youku/phone/R$layout;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 755
    :cond_3
    iget-object v6, p0, Lc8/gs;->this$0:Lc8/js;

    invoke-virtual {v6}, Lc8/js;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 757
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    sget v6, Lcom/youku/phone/R$id;->icon:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 758
    .local v2, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lc8/gs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 759
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 761
    sget v6, Lcom/youku/phone/R$id;->title:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 762
    .restart local v5    # "titleView":Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-boolean v6, p0, Lc8/gs;->mShowDefaultActivity:Z

    if-eqz v6, :cond_4

    if-nez p1, :cond_4

    iget-boolean v6, p0, Lc8/gs;->mHighlightDefaultActivity:Z

    if-eqz v6, :cond_4

    .line 765
    invoke-static {p2, v9}, Landroid/support/v4/view/ViewCompat;->setActivated(Landroid/view/View;Z)V

    :goto_1
    move-object v1, p2

    .line 769
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v1    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 767
    .end local v1    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_4
    invoke-static {p2, v8}, Landroid/support/v4/view/ViewCompat;->setActivated(Landroid/view/View;Z)V

    goto :goto_1

    .line 739
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x3

    return v0
.end method

.method public measureContentWidth()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 778
    iget v5, p0, Lc8/gs;->mMaxActivityCount:I

    .line 779
    .local v5, "oldMaxActivityCount":I
    const v7, 0x7fffffff

    iput v7, p0, Lc8/gs;->mMaxActivityCount:I

    .line 781
    const/4 v0, 0x0

    .line 782
    .local v0, "contentWidth":I
    const/4 v4, 0x0

    .line 784
    .local v4, "itemView":Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 785
    .local v6, "widthMeasureSpec":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 786
    .local v2, "heightMeasureSpec":I
    invoke-virtual {p0}, Lc8/gs;->getCount()I

    move-result v1

    .line 788
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 789
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v4, v7}, Lc8/gs;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 790
    invoke-virtual {v4, v6, v2}, Landroid/view/View;->measure(II)V

    .line 791
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 788
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 794
    :cond_0
    iput v5, p0, Lc8/gs;->mMaxActivityCount:I

    .line 796
    return v0
.end method

.method public setDataModel(Lc8/bs;)V
    .locals 2
    .param p1, "dataModel"    # Lc8/bs;

    .prologue
    .line 676
    iget-object v1, p0, Lc8/gs;->this$0:Lc8/js;

    iget-object v1, v1, Lc8/js;->mAdapter:Lc8/gs;

    invoke-virtual {v1}, Lc8/gs;->getDataModel()Lc8/bs;

    move-result-object v0

    .line 677
    .local v0, "oldDataModel":Lc8/bs;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/gs;->this$0:Lc8/js;

    invoke-virtual {v1}, Lc8/js;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lc8/gs;->this$0:Lc8/js;

    iget-object v1, v1, Lc8/js;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lc8/bs;->unregisterObserver(Ljava/lang/Object;)V

    .line 680
    :cond_0
    iput-object p1, p0, Lc8/gs;->mDataModel:Lc8/bs;

    .line 681
    if-eqz p1, :cond_1

    iget-object v1, p0, Lc8/gs;->this$0:Lc8/js;

    invoke-virtual {v1}, Lc8/js;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 682
    iget-object v1, p0, Lc8/gs;->this$0:Lc8/js;

    iget-object v1, v1, Lc8/js;->mModelDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v1}, Lc8/bs;->registerObserver(Ljava/lang/Object;)V

    .line 684
    :cond_1
    invoke-virtual {p0}, Lc8/gs;->notifyDataSetChanged()V

    .line 685
    return-void
.end method

.method public setMaxActivityCount(I)V
    .locals 1
    .param p1, "maxActivityCount"    # I

    .prologue
    .line 800
    iget v0, p0, Lc8/gs;->mMaxActivityCount:I

    if-eq v0, p1, :cond_0

    .line 801
    iput p1, p0, Lc8/gs;->mMaxActivityCount:I

    .line 802
    invoke-virtual {p0}, Lc8/gs;->notifyDataSetChanged()V

    .line 804
    :cond_0
    return-void
.end method

.method public setShowDefaultActivity(ZZ)V
    .locals 1
    .param p1, "showDefaultActivity"    # Z
    .param p2, "highlightDefaultActivity"    # Z

    .prologue
    .line 831
    iget-boolean v0, p0, Lc8/gs;->mShowDefaultActivity:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lc8/gs;->mHighlightDefaultActivity:Z

    if-eq v0, p2, :cond_1

    .line 833
    :cond_0
    iput-boolean p1, p0, Lc8/gs;->mShowDefaultActivity:Z

    .line 834
    iput-boolean p2, p0, Lc8/gs;->mHighlightDefaultActivity:Z

    .line 835
    invoke-virtual {p0}, Lc8/gs;->notifyDataSetChanged()V

    .line 837
    :cond_1
    return-void
.end method

.method public setShowFooterView(Z)V
    .locals 1
    .param p1, "showFooterView"    # Z

    .prologue
    .line 811
    iget-boolean v0, p0, Lc8/gs;->mShowFooterView:Z

    if-eq v0, p1, :cond_0

    .line 812
    iput-boolean p1, p0, Lc8/gs;->mShowFooterView:Z

    .line 813
    invoke-virtual {p0}, Lc8/gs;->notifyDataSetChanged()V

    .line 815
    :cond_0
    return-void
.end method
