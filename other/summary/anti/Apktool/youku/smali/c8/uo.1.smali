.class public final Lc8/uo;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Lc8/gr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/vo;


# direct methods
.method constructor <init>(Lc8/vo;)V
    .locals 0

    .prologue
    .line 1837
    iput-object p1, p0, Lc8/uo;->this$0:Lc8/vo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1838
    return-void
.end method


# virtual methods
.method public onCloseMenu(Lc8/Rq;Z)V
    .locals 6
    .param p1, "menu"    # Lc8/Rq;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1842
    invoke-virtual {p1}, Lc8/Rq;->getRootMenu()Lc8/Rq;

    move-result-object v2

    .line 1843
    .local v2, "parentMenu":Landroid/view/Menu;
    if-eq v2, p1, :cond_2

    move v0, v3

    .line 1844
    .local v0, "isSubMenu":Z
    :goto_0
    iget-object v4, p0, Lc8/uo;->this$0:Lc8/vo;

    if-eqz v0, :cond_0

    move-object p1, v2

    .end local p1    # "menu":Lc8/Rq;
    :cond_0
    invoke-virtual {v4, p1}, Lc8/vo;->findMenuPanel(Landroid/view/Menu;)Lc8/to;

    move-result-object v1

    .line 1845
    .local v1, "panel":Lc8/to;
    if-eqz v1, :cond_1

    .line 1846
    if-eqz v0, :cond_3

    .line 1847
    iget-object v4, p0, Lc8/uo;->this$0:Lc8/vo;

    iget v5, v1, Lc8/to;->featureId:I

    invoke-virtual {v4, v5, v1, v2}, Lc8/vo;->callOnPanelClosed(ILc8/to;Landroid/view/Menu;)V

    .line 1848
    iget-object v4, p0, Lc8/uo;->this$0:Lc8/vo;

    invoke-virtual {v4, v1, v3}, Lc8/vo;->closePanel(Lc8/to;Z)V

    .line 1855
    :cond_1
    :goto_1
    return-void

    .line 1843
    .end local v0    # "isSubMenu":Z
    .end local v1    # "panel":Lc8/to;
    .restart local p1    # "menu":Lc8/Rq;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1852
    .end local p1    # "menu":Lc8/Rq;
    .restart local v0    # "isSubMenu":Z
    .restart local v1    # "panel":Lc8/to;
    :cond_3
    iget-object v3, p0, Lc8/uo;->this$0:Lc8/vo;

    invoke-virtual {v3, v1, p2}, Lc8/vo;->closePanel(Lc8/to;Z)V

    goto :goto_1
.end method

.method public onOpenSubMenu(Lc8/Rq;)Z
    .locals 2
    .param p1, "subMenu"    # Lc8/Rq;

    .prologue
    .line 1859
    if-nez p1, :cond_0

    iget-object v1, p0, Lc8/uo;->this$0:Lc8/vo;

    iget-boolean v1, v1, Lc8/vo;->mHasActionBar:Z

    if-eqz v1, :cond_0

    .line 1860
    iget-object v1, p0, Lc8/uo;->this$0:Lc8/vo;

    invoke-virtual {v1}, Lc8/vo;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1861
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/uo;->this$0:Lc8/vo;

    invoke-virtual {v1}, Lc8/vo;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1862
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1865
    .end local v0    # "cb":Landroid/view/Window$Callback;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
