.class public Lc8/pj;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Lc8/ak;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StubApi23"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qj;


# direct methods
.method constructor <init>(Lc8/qj;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lc8/pj;->this$0:Lc8/qj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 794
    iget-object v0, p0, Lc8/pj;->this$0:Lc8/qj;

    invoke-virtual {v0, p1}, Lc8/qj;->onError(Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method public onItemLoaded(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "itemParcel"    # Landroid/os/Parcel;

    .prologue
    .line 781
    if-nez p1, :cond_0

    .line 782
    iget-object v1, p0, Lc8/pj;->this$0:Lc8/qj;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/qj;->onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    .line 790
    :goto_0
    return-void

    .line 784
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 785
    sget-object v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 786
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 787
    .local v0, "item":Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 788
    iget-object v1, p0, Lc8/pj;->this$0:Lc8/qj;

    invoke-virtual {v1, v0}, Lc8/qj;->onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    goto :goto_0
.end method
