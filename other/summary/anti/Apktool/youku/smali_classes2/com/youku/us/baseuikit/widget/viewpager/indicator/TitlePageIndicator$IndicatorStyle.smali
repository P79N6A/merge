.class public final enum Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;
.super Ljava/lang/Enum;
.source "TitlePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zeo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndicatorStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum None:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum Triangle:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum Underline:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v2, v2}, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    new-instance v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    const-string/jumbo v1, "Triangle"

    invoke-direct {v0, v1, v3, v3}, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;->Triangle:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    new-instance v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    const-string/jumbo v1, "Underline"

    invoke-direct {v0, v1, v4, v4}, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;->Underline:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    sget-object v1, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;->Triangle:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;->Underline:Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;->$VALUES:[Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;->value:I

    .line 87
    return-void
.end method

.method public static fromValue(I)Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 90
    invoke-static {}, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;->values()[Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 91
    .local v0, "style":Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;
    iget v4, v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;->value:I

    if-ne v4, p0, :cond_0

    .line 95
    .end local v0    # "style":Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;
    :goto_1
    return-object v0

    .line 90
    .restart local v0    # "style":Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "style":Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method

.method public static values()[Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;->$VALUES:[Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    invoke-virtual {v0}, [Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/us/baseuikit/widget/viewpager/indicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method
