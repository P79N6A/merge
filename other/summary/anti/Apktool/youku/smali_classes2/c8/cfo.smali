.class public final Lc8/cfo;
.super Ljava/lang/Object;
.source "UnderlinePageIndicator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;
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
        "Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 394
    new-instance v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;-><init>(Landroid/os/Parcel;Lc8/afo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lc8/cfo;->createFromParcel(Landroid/os/Parcel;)Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 399
    new-array v0, p1, [Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 391
    invoke-virtual {p0, p1}, Lc8/cfo;->newArray(I)[Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;

    move-result-object v0

    return-object v0
.end method
