.class public Lc8/Jn;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/In;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lc8/In;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    iput v0, p0, Lc8/Jn;->mIconId:I

    .line 851
    iput v0, p0, Lc8/Jn;->mIconAttrId:I

    .line 874
    iput-boolean v0, p0, Lc8/Jn;->mViewSpacingSpecified:Z

    .line 878
    const/4 v0, -0x1

    iput v0, p0, Lc8/Jn;->mCheckedItem:I

    .line 886
    iput-boolean v1, p0, Lc8/Jn;->mRecycleOnMeasure:Z

    .line 902
    iput-object p1, p0, Lc8/Jn;->mContext:Landroid/content/Context;

    .line 903
    iput-boolean v1, p0, Lc8/Jn;->mCancelable:Z

    .line 904
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lc8/Jn;->mInflater:Landroid/view/LayoutInflater;

    .line 905
    return-void
.end method

.method private createListView(Lc8/Nn;)V
    .locals 10
    .param p1, "dialog"    # Lc8/Nn;

    .prologue
    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 965
    iget-object v1, p0, Lc8/Jn;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p1, Lc8/Nn;->mListLayout:I

    const/4 v7, 0x0

    .line 966
    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lc8/Mn;

    .line 969
    .local v6, "listView":Lc8/Mn;
    iget-boolean v1, p0, Lc8/Jn;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    .line 970
    iget-object v1, p0, Lc8/Jn;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 971
    new-instance v0, Lc8/En;

    iget-object v2, p0, Lc8/Jn;->mContext:Landroid/content/Context;

    iget v3, p1, Lc8/Nn;->mMultiChoiceItemLayout:I

    iget-object v5, p0, Lc8/Jn;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lc8/En;-><init>(Lc8/Jn;Landroid/content/Context;II[Ljava/lang/CharSequence;Lc8/Mn;)V

    .line 1031
    .local v0, "adapter":Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lc8/Jn;->mOnPrepareListViewListener:Lc8/In;

    if-eqz v1, :cond_0

    .line 1032
    iget-object v1, p0, Lc8/Jn;->mOnPrepareListViewListener:Lc8/In;

    invoke-interface {v1, v6}, Lc8/In;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1038
    :cond_0
    iput-object v0, p1, Lc8/Nn;->mAdapter:Landroid/widget/ListAdapter;

    .line 1039
    iget v1, p0, Lc8/Jn;->mCheckedItem:I

    iput v1, p1, Lc8/Nn;->mCheckedItem:I

    .line 1041
    iget-object v1, p0, Lc8/Jn;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    .line 1042
    new-instance v1, Lc8/Gn;

    invoke-direct {v1, p0, p1}, Lc8/Gn;-><init>(Lc8/Jn;Lc8/Nn;)V

    invoke-virtual {v6, v1}, Lc8/Mn;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1065
    :cond_1
    :goto_1
    iget-object v1, p0, Lc8/Jn;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 1066
    iget-object v1, p0, Lc8/Jn;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Lc8/Mn;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1069
    :cond_2
    iget-boolean v1, p0, Lc8/Jn;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    .line 1070
    invoke-virtual {v6, v9}, Lc8/Mn;->setChoiceMode(I)V

    .line 1074
    :cond_3
    :goto_2
    iput-object v6, p1, Lc8/Nn;->mListView:Landroid/widget/ListView;

    .line 1075
    return-void

    .line 986
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lc8/Fn;

    iget-object v3, p0, Lc8/Jn;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lc8/Jn;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lc8/Fn;-><init>(Lc8/Jn;Landroid/content/Context;Landroid/database/Cursor;ZLc8/Mn;Lc8/Nn;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1015
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    iget-boolean v1, p0, Lc8/Jn;->mIsSingleChoice:Z

    if-eqz v1, :cond_6

    .line 1016
    iget v2, p1, Lc8/Nn;->mSingleChoiceItemLayout:I

    .line 1021
    .local v2, "layout":I
    :goto_3
    iget-object v1, p0, Lc8/Jn;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_7

    .line 1022
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lc8/Jn;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lc8/Jn;->mCursor:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Lc8/Jn;->mLabelColumn:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1018
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "layout":I
    :cond_6
    iget v2, p1, Lc8/Nn;->mListItemLayout:I

    .restart local v2    # "layout":I
    goto :goto_3

    .line 1024
    :cond_7
    iget-object v1, p0, Lc8/Jn;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    .line 1025
    iget-object v0, p0, Lc8/Jn;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1027
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_8
    new-instance v0, Lc8/Ln;

    iget-object v1, p0, Lc8/Jn;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lc8/Jn;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Lc8/Ln;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1051
    .end local v2    # "layout":I
    :cond_9
    iget-object v1, p0, Lc8/Jn;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 1052
    new-instance v1, Lc8/Hn;

    invoke-direct {v1, p0, v6, p1}, Lc8/Hn;-><init>(Lc8/Jn;Lc8/Mn;Lc8/Nn;)V

    invoke-virtual {v6, v1}, Lc8/Mn;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1071
    :cond_a
    iget-boolean v1, p0, Lc8/Jn;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 1072
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lc8/Mn;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lc8/Nn;)V
    .locals 6
    .param p1, "dialog"    # Lc8/Nn;

    .prologue
    const/4 v3, 0x0

    .line 908
    iget-object v0, p0, Lc8/Jn;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 909
    iget-object v0, p0, Lc8/Jn;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lc8/Nn;->setCustomTitle(Landroid/view/View;)V

    .line 924
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/Jn;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lc8/Jn;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lc8/Nn;->setMessage(Ljava/lang/CharSequence;)V

    .line 927
    :cond_1
    iget-object v0, p0, Lc8/Jn;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 928
    const/4 v0, -0x1

    iget-object v1, p0, Lc8/Jn;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lc8/Jn;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lc8/Nn;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 931
    :cond_2
    iget-object v0, p0, Lc8/Jn;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 932
    const/4 v0, -0x2

    iget-object v1, p0, Lc8/Jn;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lc8/Jn;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lc8/Nn;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 935
    :cond_3
    iget-object v0, p0, Lc8/Jn;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 936
    const/4 v0, -0x3

    iget-object v1, p0, Lc8/Jn;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lc8/Jn;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lc8/Nn;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 941
    :cond_4
    iget-object v0, p0, Lc8/Jn;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    iget-object v0, p0, Lc8/Jn;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_5

    iget-object v0, p0, Lc8/Jn;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6

    .line 942
    :cond_5
    invoke-direct {p0, p1}, Lc8/Jn;->createListView(Lc8/Nn;)V

    .line 944
    :cond_6
    iget-object v0, p0, Lc8/Jn;->mView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 945
    iget-boolean v0, p0, Lc8/Jn;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_c

    .line 946
    iget-object v1, p0, Lc8/Jn;->mView:Landroid/view/View;

    iget v2, p0, Lc8/Jn;->mViewSpacingLeft:I

    iget v3, p0, Lc8/Jn;->mViewSpacingTop:I

    iget v4, p0, Lc8/Jn;->mViewSpacingRight:I

    iget v5, p0, Lc8/Jn;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lc8/Nn;->setView(Landroid/view/View;IIII)V

    .line 962
    :cond_7
    :goto_1
    return-void

    .line 911
    :cond_8
    iget-object v0, p0, Lc8/Jn;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 912
    iget-object v0, p0, Lc8/Jn;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lc8/Nn;->setTitle(Ljava/lang/CharSequence;)V

    .line 914
    :cond_9
    iget-object v0, p0, Lc8/Jn;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 915
    iget-object v0, p0, Lc8/Jn;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lc8/Nn;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 917
    :cond_a
    iget v0, p0, Lc8/Jn;->mIconId:I

    if-eqz v0, :cond_b

    .line 918
    iget v0, p0, Lc8/Jn;->mIconId:I

    invoke-virtual {p1, v0}, Lc8/Nn;->setIcon(I)V

    .line 920
    :cond_b
    iget v0, p0, Lc8/Jn;->mIconAttrId:I

    if-eqz v0, :cond_0

    .line 921
    iget v0, p0, Lc8/Jn;->mIconAttrId:I

    invoke-virtual {p1, v0}, Lc8/Nn;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lc8/Nn;->setIcon(I)V

    goto :goto_0

    .line 949
    :cond_c
    iget-object v0, p0, Lc8/Jn;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lc8/Nn;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 951
    :cond_d
    iget v0, p0, Lc8/Jn;->mViewLayoutResId:I

    if-eqz v0, :cond_7

    .line 952
    iget v0, p0, Lc8/Jn;->mViewLayoutResId:I

    invoke-virtual {p1, v0}, Lc8/Nn;->setView(I)V

    goto :goto_1
.end method