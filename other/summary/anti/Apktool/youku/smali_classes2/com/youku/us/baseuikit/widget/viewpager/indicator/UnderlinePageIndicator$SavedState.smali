.class public Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "UnderlinePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public currentPage:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 391
    new-instance v0, Lc8/cfo;

    invoke-direct {v0}, Lc8/cfo;-><init>()V

    sput-object v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 380
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;->currentPage:I

    .line 382
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lc8/afo;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lc8/afo;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 376
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 377
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 386
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 387
    iget v0, p0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/UnderlinePageIndicator$SavedState;->currentPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    return-void
.end method
