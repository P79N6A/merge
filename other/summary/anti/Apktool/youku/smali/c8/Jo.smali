.class public Lc8/Jo;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ko;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# instance fields
.field mActionsToShowInCompact:[I

.field mCancelButtonIntent:Landroid/app/PendingIntent;

.field mShowCancelButton:Z

.field mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 572
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Jo;->mActionsToShowInCompact:[I

    .line 573
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Jo;->mActionsToShowInCompact:[I

    .line 576
    invoke-virtual {p0, p1}, Lc8/Jo;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 577
    return-void
.end method


# virtual methods
.method public setCancelButtonIntent(Landroid/app/PendingIntent;)Lc8/Jo;
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 635
    iput-object p1, p0, Lc8/Jo;->mCancelButtonIntent:Landroid/app/PendingIntent;

    .line 636
    return-object p0
.end method

.method public setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Lc8/Jo;
    .locals 0
    .param p1, "token"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .prologue
    .line 595
    iput-object p1, p0, Lc8/Jo;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 596
    return-object p0
.end method

.method public varargs setShowActionsInCompactView([I)Lc8/Jo;
    .locals 0
    .param p1, "actions"    # [I

    .prologue
    .line 586
    iput-object p1, p0, Lc8/Jo;->mActionsToShowInCompact:[I

    .line 587
    return-object p0
.end method

.method public setShowCancelButton(Z)Lc8/Jo;
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 624
    iput-boolean p1, p0, Lc8/Jo;->mShowCancelButton:Z

    .line 625
    return-object p0
.end method
