.class public final Lc8/dYn;
.super Ljava/lang/Object;
.source "Fee.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/upsplayer/module/Fee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/youku/upsplayer/module/Fee;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/upsplayer/module/Fee;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 38
    new-instance v0, Lcom/youku/upsplayer/module/Fee;

    invoke-direct {v0, p1}, Lcom/youku/upsplayer/module/Fee;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lc8/dYn;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/upsplayer/module/Fee;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/upsplayer/module/Fee;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 43
    new-array v0, p1, [Lcom/youku/upsplayer/module/Fee;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lc8/dYn;->newArray(I)[Lcom/youku/upsplayer/module/Fee;

    move-result-object v0

    return-object v0
.end method
