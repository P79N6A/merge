.class public final Lc8/Jpo;
.super Ljava/lang/Object;
.source "PassportConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/usercenter/passport/remote/PassportConfig;
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
        "Lcom/youku/usercenter/passport/remote/PassportConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/usercenter/passport/remote/PassportConfig;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 107
    new-instance v0, Lcom/youku/usercenter/passport/remote/PassportConfig;

    invoke-direct {v0, p1}, Lcom/youku/usercenter/passport/remote/PassportConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lc8/Jpo;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/usercenter/passport/remote/PassportConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/usercenter/passport/remote/PassportConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 112
    new-array v0, p1, [Lcom/youku/usercenter/passport/remote/PassportConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lc8/Jpo;->newArray(I)[Lcom/youku/usercenter/passport/remote/PassportConfig;

    move-result-object v0

    return-object v0
.end method
