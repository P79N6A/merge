.class public Lc8/qw;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zw;


# direct methods
.method constructor <init>(Lc8/zw;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zw;

    .prologue
    .line 1049
    iput-object p1, p0, Lc8/qw;->this$0:Lc8/zw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1053
    iget-object v2, p0, Lc8/qw;->this$0:Lc8/zw;

    iget-object v2, v2, Lc8/zw;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v2, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return v0

    .line 1064
    :cond_1
    iget-object v2, p0, Lc8/qw;->this$0:Lc8/zw;

    iget-object v2, v2, Lc8/zw;->mSearchSrcTextView:Lc8/xw;

    invoke-virtual {v2}, Lc8/xw;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc8/qw;->this$0:Lc8/zw;

    iget-object v2, v2, Lc8/zw;->mSearchSrcTextView:Lc8/xw;

    .line 1065
    invoke-virtual {v2}, Lc8/xw;->getListSelection()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1066
    iget-object v0, p0, Lc8/qw;->this$0:Lc8/zw;

    invoke-virtual {v0, p1, p2, p3}, Lc8/zw;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1071
    :cond_2
    iget-object v2, p0, Lc8/qw;->this$0:Lc8/zw;

    iget-object v2, v2, Lc8/zw;->mSearchSrcTextView:Lc8/xw;

    invoke-static {v2}, Lc8/xw;->access$000(Lc8/xw;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1072
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1073
    const/16 v2, 0x42

    if-ne p2, v2, :cond_0

    .line 1074
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 1077
    iget-object v2, p0, Lc8/qw;->this$0:Lc8/zw;

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/qw;->this$0:Lc8/zw;

    iget-object v4, v4, Lc8/zw;->mSearchSrcTextView:Lc8/xw;

    invoke-virtual {v4}, Lc8/xw;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1078
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1077
    invoke-virtual {v2, v0, v3, v4}, Lc8/zw;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1079
    goto :goto_0
.end method
