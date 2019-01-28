.class public Lc8/gd;
.super Lc8/Bs;
.source "CheckableImageButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DRAWABLE_STATE_CHECKED:[I


# instance fields
.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lc8/gd;->DRAWABLE_STATE_CHECKED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/gd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    sget v0, Lcom/youku/phone/R$attr;->imageButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lc8/gd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lc8/Bs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Lc8/fd;

    invoke-direct {v0, p0}, Lc8/fd;-><init>(Lc8/gd;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 69
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lc8/gd;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 93
    iget-boolean v0, p0, Lc8/gd;->mChecked:Z

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lc8/gd;->DRAWABLE_STATE_CHECKED:[I

    array-length v0, v0

    add-int/2addr v0, p1

    .line 95
    invoke-super {p0, v0}, Lc8/Bs;->onCreateDrawableState(I)[I

    move-result-object v0

    sget-object v1, Lc8/gd;->DRAWABLE_STATE_CHECKED:[I

    .line 94
    invoke-static {v0, v1}, Lc8/gd;->mergeDrawableStates([I[I)[I

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lc8/Bs;->onCreateDrawableState(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 73
    iget-boolean v0, p0, Lc8/gd;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 74
    iput-boolean p1, p0, Lc8/gd;->mChecked:Z

    .line 75
    invoke-virtual {p0}, Lc8/gd;->refreshDrawableState()V

    .line 76
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Lc8/gd;->sendAccessibilityEvent(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lc8/gd;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lc8/gd;->setChecked(Z)V

    .line 89
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
