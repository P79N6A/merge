.class public Lc8/rk;
.super Lc8/yk;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sk;->onLoadItem(Ljava/lang/String;Lc8/Ok;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/yk",
        "<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/sk;

.field final synthetic val$resultWrapper:Lc8/Ok;


# direct methods
.method constructor <init>(Lc8/sk;Ljava/lang/Object;Lc8/Ok;)V
    .locals 0
    .param p1, "this$1"    # Lc8/sk;
    .param p2, "debug"    # Ljava/lang/Object;

    .prologue
    .line 352
    iput-object p1, p0, Lc8/rk;->this$1:Lc8/sk;

    iput-object p3, p0, Lc8/rk;->val$resultWrapper:Lc8/Ok;

    invoke-direct {p0, p2}, Lc8/yk;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lc8/rk;->val$resultWrapper:Lc8/Ok;

    invoke-virtual {v0}, Lc8/Ok;->detach()V

    .line 367
    return-void
.end method

.method onResultSent(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;I)V
    .locals 3
    .param p1, "item"    # Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .param p2, "flags"    # I

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    iget-object v1, p0, Lc8/rk;->val$resultWrapper:Lc8/Ok;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/Ok;->sendResult(Ljava/lang/Object;)V

    .line 362
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 359
    .local v0, "parcelItem":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 360
    iget-object v1, p0, Lc8/rk;->val$resultWrapper:Lc8/Ok;

    invoke-virtual {v1, v0}, Lc8/Ok;->sendResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 352
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0, p1, p2}, Lc8/rk;->onResultSent(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;I)V

    return-void
.end method
