.class public final Lc8/hKd;
.super Ljava/lang/Object;
.source "ActVideoSetting.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;
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
        "Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    invoke-direct {v0, p1}, Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lc8/hKd;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 47
    new-array v0, p1, [Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lc8/hKd;->newArray(I)[Lcom/meizu/cloud/pushsdk/notification/model/ActVideoSetting;

    move-result-object v0

    return-object v0
.end method
