.class public abstract Lc8/qj;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/pj;
    }
.end annotation


# instance fields
.field final mItemCallbackObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 753
    new-instance v0, Lc8/pj;

    invoke-direct {v0, p0}, Lc8/pj;-><init>(Lc8/qj;)V

    invoke-static {v0}, Lc8/ck;->createItemCallback(Lc8/ak;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/qj;->mItemCallbackObj:Ljava/lang/Object;

    .line 757
    :goto_0
    return-void

    .line 755
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/qj;->mItemCallbackObj:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 773
    return-void
.end method

.method public onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 0
    .param p1, "item"    # Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .prologue
    .line 765
    return-void
.end method