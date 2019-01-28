.class public Lc8/oe;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ne;,
        Lc8/me;
    }
.end annotation


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static sSnackbarManager:Lc8/oe;


# instance fields
.field private mCurrentSnackbar:Lc8/ne;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextSnackbar:Lc8/ne;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/oe;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lc8/le;

    invoke-direct {v2, p0}, Lc8/le;-><init>(Lc8/oe;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/oe;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private cancelSnackbarLocked(Lc8/ne;I)Z
    .locals 2
    .param p1, "record"    # Lc8/ne;
    .param p2, "event"    # I

    .prologue
    .line 201
    iget-object v1, p1, Lc8/ne;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/me;

    .line 202
    .local v0, "callback":Lc8/me;
    if-eqz v0, :cond_0

    .line 204
    iget-object v1, p0, Lc8/oe;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 205
    invoke-interface {v0, p2}, Lc8/me;->dismiss(I)V

    .line 206
    const/4 v1, 0x1

    .line 208
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getInstance()Lc8/oe;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lc8/oe;->sSnackbarManager:Lc8/oe;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lc8/oe;

    invoke-direct {v0}, Lc8/oe;-><init>()V

    sput-object v0, Lc8/oe;->sSnackbarManager:Lc8/oe;

    .line 41
    :cond_0
    sget-object v0, Lc8/oe;->sSnackbarManager:Lc8/oe;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Lc8/me;)Z
    .locals 1
    .param p1, "callback"    # Lc8/me;

    .prologue
    .line 212
    iget-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    invoke-virtual {v0, p1}, Lc8/ne;->isSnackbar(Lc8/me;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNextSnackbarLocked(Lc8/me;)Z
    .locals 1
    .param p1, "callback"    # Lc8/me;

    .prologue
    .line 216
    iget-object v0, p0, Lc8/oe;->mNextSnackbar:Lc8/ne;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/oe;->mNextSnackbar:Lc8/ne;

    invoke-virtual {v0, p1}, Lc8/ne;->isSnackbar(Lc8/me;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleTimeoutLocked(Lc8/ne;)V
    .locals 6
    .param p1, "r"    # Lc8/ne;

    .prologue
    .line 220
    iget v1, p1, Lc8/ne;->duration:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    .line 233
    :goto_0
    return-void

    .line 225
    :cond_0
    const/16 v0, 0xabe

    .line 226
    .local v0, "durationMs":I
    iget v1, p1, Lc8/ne;->duration:I

    if-lez v1, :cond_2

    .line 227
    iget v0, p1, Lc8/ne;->duration:I

    .line 231
    :cond_1
    :goto_1
    iget-object v1, p0, Lc8/oe;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lc8/oe;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lc8/oe;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 228
    :cond_2
    iget v1, p1, Lc8/ne;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 229
    const/16 v0, 0x5dc

    goto :goto_1
.end method

.method private showNextSnackbarLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v1, p0, Lc8/oe;->mNextSnackbar:Lc8/ne;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lc8/oe;->mNextSnackbar:Lc8/ne;

    iput-object v1, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    .line 188
    iput-object v2, p0, Lc8/oe;->mNextSnackbar:Lc8/ne;

    .line 190
    iget-object v1, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    iget-object v1, v1, Lc8/ne;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/me;

    .line 191
    .local v0, "callback":Lc8/me;
    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v0}, Lc8/me;->show()V

    .line 198
    .end local v0    # "callback":Lc8/me;
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local v0    # "callback":Lc8/me;
    :cond_1
    iput-object v2, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    goto :goto_0
.end method


# virtual methods
.method public dismiss(Lc8/me;I)V
    .locals 2
    .param p1, "callback"    # Lc8/me;
    .param p2, "event"    # I

    .prologue
    .line 103
    iget-object v1, p0, Lc8/oe;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-direct {p0, p1}, Lc8/oe;->isCurrentSnackbarLocked(Lc8/me;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    invoke-direct {p0, v0, p2}, Lc8/oe;->cancelSnackbarLocked(Lc8/ne;I)Z

    .line 109
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 106
    :cond_1
    invoke-direct {p0, p1}, Lc8/oe;->isNextSnackbarLocked(Lc8/me;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lc8/oe;->mNextSnackbar:Lc8/ne;

    invoke-direct {p0, v0, p2}, Lc8/oe;->cancelSnackbarLocked(Lc8/ne;I)Z

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleTimeout(Lc8/ne;)V
    .locals 2
    .param p1, "record"    # Lc8/ne;

    .prologue
    .line 236
    iget-object v1, p0, Lc8/oe;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lc8/oe;->mNextSnackbar:Lc8/ne;

    if-ne v0, p1, :cond_1

    .line 238
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lc8/oe;->cancelSnackbarLocked(Lc8/ne;I)Z

    .line 240
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCurrent(Lc8/me;)Z
    .locals 2
    .param p1, "callback"    # Lc8/me;

    .prologue
    .line 159
    iget-object v1, p0, Lc8/oe;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    invoke-direct {p0, p1}, Lc8/oe;->isCurrentSnackbarLocked(Lc8/me;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCurrentOrNext(Lc8/me;)Z
    .locals 2
    .param p1, "callback"    # Lc8/me;

    .prologue
    .line 165
    iget-object v1, p0, Lc8/oe;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_0
    invoke-direct {p0, p1}, Lc8/oe;->isCurrentSnackbarLocked(Lc8/me;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lc8/oe;->isNextSnackbarLocked(Lc8/me;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDismissed(Lc8/me;)V
    .locals 2
    .param p1, "callback"    # Lc8/me;

    .prologue
    .line 117
    iget-object v1, p0, Lc8/oe;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    invoke-direct {p0, p1}, Lc8/oe;->isCurrentSnackbarLocked(Lc8/me;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    .line 121
    iget-object v0, p0, Lc8/oe;->mNextSnackbar:Lc8/ne;

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lc8/oe;->showNextSnackbarLocked()V

    .line 125
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onShown(Lc8/me;)V
    .locals 2
    .param p1, "callback"    # Lc8/me;

    .prologue
    .line 133
    iget-object v1, p0, Lc8/oe;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    invoke-direct {p0, p1}, Lc8/oe;->isCurrentSnackbarLocked(Lc8/me;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    invoke-direct {p0, v0}, Lc8/oe;->scheduleTimeoutLocked(Lc8/ne;)V

    .line 137
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pauseTimeout(Lc8/me;)V
    .locals 3
    .param p1, "callback"    # Lc8/me;

    .prologue
    .line 141
    iget-object v1, p0, Lc8/oe;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    invoke-direct {p0, p1}, Lc8/oe;->isCurrentSnackbarLocked(Lc8/me;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    iget-boolean v0, v0, Lc8/ne;->paused:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lc8/ne;->paused:Z

    .line 144
    iget-object v0, p0, Lc8/oe;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 146
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public restoreTimeoutIfPaused(Lc8/me;)V
    .locals 3
    .param p1, "callback"    # Lc8/me;

    .prologue
    .line 150
    iget-object v1, p0, Lc8/oe;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    invoke-direct {p0, p1}, Lc8/oe;->isCurrentSnackbarLocked(Lc8/me;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    iget-boolean v0, v0, Lc8/ne;->paused:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lc8/ne;->paused:Z

    .line 153
    iget-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    invoke-direct {p0, v0}, Lc8/oe;->scheduleTimeoutLocked(Lc8/ne;)V

    .line 155
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public show(ILc8/me;)V
    .locals 3
    .param p1, "duration"    # I
    .param p2, "callback"    # Lc8/me;

    .prologue
    .line 71
    iget-object v1, p0, Lc8/oe;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    invoke-direct {p0, p2}, Lc8/oe;->isCurrentSnackbarLocked(Lc8/me;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    iput p1, v0, Lc8/ne;->duration:I

    .line 78
    iget-object v0, p0, Lc8/oe;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    invoke-direct {p0, v0}, Lc8/oe;->scheduleTimeoutLocked(Lc8/ne;)V

    .line 80
    monitor-exit v1

    .line 99
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0, p2}, Lc8/oe;->isNextSnackbarLocked(Lc8/me;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lc8/oe;->mNextSnackbar:Lc8/ne;

    iput p1, v0, Lc8/ne;->duration:I

    .line 89
    :goto_1
    iget-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lc8/oe;->cancelSnackbarLocked(Lc8/ne;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    monitor-exit v1

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 86
    :cond_1
    :try_start_1
    new-instance v0, Lc8/ne;

    invoke-direct {v0, p1, p2}, Lc8/ne;-><init>(ILc8/me;)V

    iput-object v0, p0, Lc8/oe;->mNextSnackbar:Lc8/ne;

    goto :goto_1

    .line 95
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/oe;->mCurrentSnackbar:Lc8/ne;

    .line 97
    invoke-direct {p0}, Lc8/oe;->showNextSnackbarLocked()V

    .line 99
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
