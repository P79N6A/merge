.class public Lc8/As;
.super Landroid/widget/EditText;
.source "AppCompatEditText.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# instance fields
.field private mBackgroundTintHelper:Lc8/ps;

.field private mTextHelper:Lc8/Ts;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/As;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    sget v0, Lcom/youku/phone/R$attr;->editTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lc8/As;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 62
    invoke-static {p1}, Lc8/Zw;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Lc8/ps;

    invoke-direct {v0, p0}, Lc8/ps;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    .line 65
    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p2, p3}, Lc8/ps;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 67
    invoke-static {p0}, Lc8/Ts;->create(Landroid/widget/TextView;)Lc8/Ts;

    move-result-object v0

    iput-object v0, p0, Lc8/As;->mTextHelper:Lc8/Ts;

    .line 68
    iget-object v0, p0, Lc8/As;->mTextHelper:Lc8/Ts;

    invoke-virtual {v0, p2, p3}, Lc8/Ts;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 69
    iget-object v0, p0, Lc8/As;->mTextHelper:Lc8/Ts;

    invoke-virtual {v0}, Lc8/Ts;->applyCompoundDrawablesTints()V

    .line 70
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 147
    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0}, Lc8/ps;->applySupportBackgroundTint()V

    .line 150
    :cond_0
    iget-object v0, p0, Lc8/As;->mTextHelper:Lc8/Ts;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lc8/As;->mTextHelper:Lc8/Ts;

    invoke-virtual {v0}, Lc8/Ts;->applyCompoundDrawablesTints()V

    .line 153
    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    .line 113
    invoke-virtual {v0}, Lc8/ps;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    .line 141
    invoke-virtual {v0}, Lc8/ps;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 75
    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->onSetBackgroundResource(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lc8/As;->mBackgroundTintHelper:Lc8/ps;

    invoke-virtual {v0, p1}, Lc8/ps;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 157
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 158
    iget-object v0, p0, Lc8/As;->mTextHelper:Lc8/Ts;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lc8/As;->mTextHelper:Lc8/Ts;

    invoke-virtual {v0, p1, p2}, Lc8/Ts;->onSetTextAppearance(Landroid/content/Context;I)V

    .line 161
    :cond_0
    return-void
.end method