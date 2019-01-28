.class public abstract Lc8/Xn;
.super Lc8/Tn;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Lc8/N;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Wn;,
        Lc8/Vn;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final EXCEPTION_HANDLER_MESSAGE_SUFFIX:Ljava/lang/String; = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info."

.field private static final SHOULD_INSTALL_EXCEPTION_HANDLER:Z

.field private static sInstalledExceptionHandler:Z

.field private static final sWindowBackgroundStyleable:[I


# instance fields
.field mActionBar:Lc8/mn;

.field final mAppCompatCallback:Lc8/Rn;

.field final mAppCompatWindowCallback:Landroid/view/Window$Callback;

.field final mContext:Landroid/content/Context;

.field mHasActionBar:Z

.field private mIsDestroyed:Z

.field mIsFloating:Z

.field private mIsStarted:Z

.field mMenuInflater:Landroid/view/MenuInflater;

.field final mOriginalWindowCallback:Landroid/view/Window$Callback;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field private mTitle:Ljava/lang/CharSequence;

.field final mWindow:Landroid/view/Window;

.field mWindowNoTitle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v1, v4, :cond_1

    move v1, v2

    .line 55
    :goto_0
    sput-boolean v1, Lc8/Xn;->SHOULD_INSTALL_EXCEPTION_HANDLER:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lc8/Xn;->sInstalledExceptionHandler:Z

    if-nez v1, :cond_0

    .line 57
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 59
    .local v0, "defHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lc8/Un;

    invoke-direct {v1, v0}, Lc8/Un;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 84
    sput-boolean v2, Lc8/Xn;->sInstalledExceptionHandler:Z

    .line 88
    :cond_0
    new-array v1, v2, [I

    const v2, 0x1010054

    aput v2, v1, v3

    sput-object v1, Lc8/Xn;->sWindowBackgroundStyleable:[I

    return-void

    .end local v0    # "defHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_1
    move v1, v3

    .line 48
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lc8/Rn;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Lc8/Rn;

    .prologue
    .line 115
    invoke-direct {p0}, Lc8/Tn;-><init>()V

    .line 116
    iput-object p1, p0, Lc8/Xn;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lc8/Xn;->mWindow:Landroid/view/Window;

    .line 118
    iput-object p3, p0, Lc8/Xn;->mAppCompatCallback:Lc8/Rn;

    .line 120
    iget-object v2, p0, Lc8/Xn;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v2

    iput-object v2, p0, Lc8/Xn;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    .line 121
    iget-object v2, p0, Lc8/Xn;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v2, v2, Lc8/Wn;

    if-eqz v2, :cond_0

    .line 122
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "AppCompat has already installed itself into the Window"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_0
    iget-object v2, p0, Lc8/Xn;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p0, v2}, Lc8/Xn;->wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v2

    iput-object v2, p0, Lc8/Xn;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    .line 127
    iget-object v2, p0, Lc8/Xn;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lc8/Xn;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 129
    const/4 v2, 0x0

    sget-object v3, Lc8/Xn;->sWindowBackgroundStyleable:[I

    invoke-static {p1, v2, v3}, Lc8/cx;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lc8/cx;

    move-result-object v0

    .line 131
    .local v0, "a":Lc8/cx;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lc8/cx;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 132
    .local v1, "winBg":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 133
    iget-object v2, p0, Lc8/Xn;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_1
    invoke-virtual {v0}, Lc8/cx;->recycle()V

    .line 136
    return-void
.end method


# virtual methods
.method public applyDayNight()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method final getActionBarThemedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 190
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lc8/Xn;->getSupportActionBar()Lc8/mn;

    move-result-object v0

    .line 191
    .local v0, "ab":Lc8/mn;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lc8/mn;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 195
    :cond_0
    if-nez v1, :cond_1

    .line 196
    iget-object v1, p0, Lc8/Xn;->mContext:Landroid/content/Context;

    .line 198
    :cond_1
    return-object v1
.end method

.method public final getDrawerToggleDelegate()Lc8/pn;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lc8/Vn;

    invoke-direct {v0, p0}, Lc8/Vn;-><init>(Lc8/Xn;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lc8/Xn;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lc8/Xn;->initWindowDecorActionBar()V

    .line 161
    new-instance v1, Lc8/tq;

    iget-object v0, p0, Lc8/Xn;->mActionBar:Lc8/mn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Xn;->mActionBar:Lc8/mn;

    .line 162
    invoke-virtual {v0}, Lc8/mn;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lc8/tq;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/Xn;->mMenuInflater:Landroid/view/MenuInflater;

    .line 164
    :cond_0
    iget-object v0, p0, Lc8/Xn;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0

    .line 162
    :cond_1
    iget-object v0, p0, Lc8/Xn;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getSupportActionBar()Lc8/mn;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lc8/Xn;->initWindowDecorActionBar()V

    .line 149
    iget-object v0, p0, Lc8/Xn;->mActionBar:Lc8/mn;

    return-object v0
.end method

.method final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lc8/Xn;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lc8/Xn;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/Xn;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method final getWindowCallback()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lc8/Xn;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method abstract initWindowDecorActionBar()V
.end method

.method final isDestroyed()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lc8/Xn;->mIsDestroyed:Z

    return v0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method final isStarted()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lc8/Xn;->mIsStarted:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Xn;->mIsDestroyed:Z

    .line 258
    return-void
.end method

.method abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method abstract onMenuOpened(ILandroid/view/Menu;)Z
.end method

.method abstract onPanelClosed(ILandroid/view/Menu;)V
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 298
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Xn;->mIsStarted:Z

    .line 248
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Xn;->mIsStarted:Z

    .line 253
    return-void
.end method

.method abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method final peekSupportActionBar()Lc8/mn;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lc8/Xn;->mActionBar:Lc8/mn;

    return-object v0
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 263
    return-void
.end method

.method public setLocalNightMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 179
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 291
    iput-object p1, p0, Lc8/Xn;->mTitle:Ljava/lang/CharSequence;

    .line 292
    invoke-virtual {p0, p1}, Lc8/Xn;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 293
    return-void
.end method

.method abstract startSupportActionModeFromWindow(Lc8/kq;)Lc8/lq;
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 141
    new-instance v0, Lc8/Wn;

    invoke-direct {v0, p0, p1}, Lc8/Wn;-><init>(Lc8/Xn;Landroid/view/Window$Callback;)V

    return-object v0
.end method
