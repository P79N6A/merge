.class public Lc8/Wn;
.super Lc8/wq;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppCompatWindowCallbackBase"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xn;


# direct methods
.method constructor <init>(Lc8/Xn;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Xn;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 312
    iput-object p1, p0, Lc8/Wn;->this$0:Lc8/Xn;

    .line 313
    invoke-direct {p0, p2}, Lc8/wq;-><init>(Landroid/view/Window$Callback;)V

    .line 314
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 318
    iget-object v0, p0, Lc8/Wn;->this$0:Lc8/Xn;

    invoke-virtual {v0, p1}, Lc8/Xn;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-super {p0, p1}, Lc8/wq;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 324
    invoke-super {p0, p1}, Lc8/wq;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/Wn;->this$0:Lc8/Xn;

    .line 325
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lc8/Xn;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 330
    if-nez p1, :cond_0

    instance-of v0, p2, Lc8/Rq;

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x0

    .line 335
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lc8/wq;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 373
    invoke-super {p0, p1, p2}, Lc8/wq;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 374
    iget-object v0, p0, Lc8/Wn;->this$0:Lc8/Xn;

    invoke-virtual {v0, p1, p2}, Lc8/Xn;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 380
    invoke-super {p0, p1, p2}, Lc8/wq;->onPanelClosed(ILandroid/view/Menu;)V

    .line 381
    iget-object v0, p0, Lc8/Wn;->this$0:Lc8/Xn;

    invoke-virtual {v0, p1, p2}, Lc8/Xn;->onPanelClosed(ILandroid/view/Menu;)V

    .line 382
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 4
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 346
    instance-of v2, p3, Lc8/Rq;

    if-eqz v2, :cond_1

    move-object v2, p3

    check-cast v2, Lc8/Rq;

    move-object v1, v2

    .line 348
    .local v1, "mb":Lc8/Rq;
    :goto_0
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    move v0, v3

    .line 368
    :cond_0
    :goto_1
    return v0

    .line 346
    .end local v1    # "mb":Lc8/Rq;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 358
    .restart local v1    # "mb":Lc8/Rq;
    :cond_2
    if-eqz v1, :cond_3

    .line 359
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lc8/Rq;->setOverrideVisibleItems(Z)V

    .line 362
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lc8/wq;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 364
    .local v0, "handled":Z
    if-eqz v1, :cond_0

    .line 365
    invoke-virtual {v1, v3}, Lc8/Rq;->setOverrideVisibleItems(Z)V

    goto :goto_1
.end method
