.class public Lc8/pk;
.super Lc8/yk;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qk;->onLoadChildren(Ljava/lang/String;Lc8/Ok;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/yk",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/qk;

.field final synthetic val$resultWrapper:Lc8/Ok;


# direct methods
.method constructor <init>(Lc8/qk;Ljava/lang/Object;Lc8/Ok;)V
    .locals 0
    .param p1, "this$1"    # Lc8/qk;
    .param p2, "debug"    # Ljava/lang/Object;

    .prologue
    .line 315
    iput-object p1, p0, Lc8/pk;->this$1:Lc8/qk;

    iput-object p3, p0, Lc8/pk;->val$resultWrapper:Lc8/Ok;

    invoke-direct {p0, p2}, Lc8/yk;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lc8/pk;->val$resultWrapper:Lc8/Ok;

    invoke-virtual {v0}, Lc8/Ok;->detach()V

    .line 333
    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 315
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lc8/pk;->onResultSent(Ljava/util/List;I)V

    return-void
.end method

.method onResultSent(Ljava/util/List;I)V
    .locals 5
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    const/4 v2, 0x0

    .line 319
    .local v2, "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    if-eqz p1, :cond_0

    .line 320
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .restart local v2    # "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 322
    .local v0, "item":Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 323
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 324
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    .end local v0    # "item":Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .end local v1    # "parcel":Landroid/os/Parcel;
    :cond_0
    iget-object v3, p0, Lc8/pk;->val$resultWrapper:Lc8/Ok;

    invoke-virtual {v3, v2}, Lc8/Ok;->sendResult(Ljava/lang/Object;)V

    .line 328
    return-void
.end method