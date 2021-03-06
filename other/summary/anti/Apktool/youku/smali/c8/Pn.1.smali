.class public Lc8/Pn;
.super Lc8/wo;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/On;
    }
.end annotation


# static fields
.field static final LAYOUT_HINT_NONE:I = 0x0

.field static final LAYOUT_HINT_SIDE:I = 0x1


# instance fields
.field final mAlert:Lc8/Nn;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Pn;-><init>(Landroid/content/Context;I)V

    .line 88
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 97
    invoke-static {p1, p2}, Lc8/Pn;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lc8/wo;-><init>(Landroid/content/Context;I)V

    .line 98
    new-instance v0, Lc8/Nn;

    invoke-virtual {p0}, Lc8/Pn;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lc8/Pn;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lc8/Nn;-><init>(Landroid/content/Context;Lc8/wo;Landroid/view/Window;)V

    iput-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    .line 99
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Pn;-><init>(Landroid/content/Context;I)V

    .line 104
    invoke-virtual {p0, p2}, Lc8/Pn;->setCancelable(Z)V

    .line 105
    invoke-virtual {p0, p3}, Lc8/Pn;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 106
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resid"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 109
    const/high16 v1, 0x1000000

    if-lt p1, v1, :cond_0

    .line 114
    .end local p1    # "resid":I
    :goto_0
    return p1

    .line 112
    .restart local p1    # "resid":I
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 113
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$attr;->alertDialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 114
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    invoke-virtual {v0, p1}, Lc8/Nn;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    invoke-virtual {v0}, Lc8/Nn;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 256
    invoke-super {p0, p1}, Lc8/wo;->onCreate(Landroid/os/Bundle;)V

    .line 257
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    invoke-virtual {v0}, Lc8/Nn;->installContent()V

    .line 258
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 262
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    invoke-virtual {v0, p1, p2}, Lc8/Nn;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lc8/wo;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 270
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    invoke-virtual {v0, p1, p2}, Lc8/Nn;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 273
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lc8/wo;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 222
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lc8/Nn;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 223
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 207
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lc8/Nn;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 208
    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 1
    .param p1, "layoutHint"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    invoke-virtual {v0, p1}, Lc8/Nn;->setButtonPanelLayoutHint(I)V

    .line 193
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    invoke-virtual {v0, p1}, Lc8/Nn;->setCustomTitle(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    invoke-virtual {v0, p1}, Lc8/Nn;->setIcon(I)V

    .line 232
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 240
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    invoke-virtual {v0, p1}, Lc8/Nn;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 241
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 249
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 250
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lc8/Pn;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 251
    iget-object v1, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lc8/Nn;->setIcon(I)V

    .line 252
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 162
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    invoke-virtual {v0, p1}, Lc8/Nn;->setMessage(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lc8/wo;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    invoke-virtual {v0, p1}, Lc8/Nn;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 170
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    invoke-virtual {v0, p1}, Lc8/Nn;->setView(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lc8/Pn;->mAlert:Lc8/Nn;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/Nn;->setView(Landroid/view/View;IIII)V

    .line 186
    return-void
.end method
