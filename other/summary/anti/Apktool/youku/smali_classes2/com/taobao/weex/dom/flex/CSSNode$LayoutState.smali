.class public final enum Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;
.super Ljava/lang/Enum;
.source "CSSNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/CZf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

.field public static final enum DIRTY:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

.field public static final enum HAS_NEW_LAYOUT:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

.field public static final enum UP_TO_DATE:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 585
    new-instance v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    const-string/jumbo v1, "DIRTY"

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->DIRTY:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    .line 591
    new-instance v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    const-string/jumbo v1, "HAS_NEW_LAYOUT"

    invoke-direct {v0, v1, v3}, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->HAS_NEW_LAYOUT:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    .line 597
    new-instance v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    const-string/jumbo v1, "UP_TO_DATE"

    invoke-direct {v0, v1, v4}, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->UP_TO_DATE:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    .line 580
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    sget-object v1, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->DIRTY:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->HAS_NEW_LAYOUT:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->UP_TO_DATE:Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->$VALUES:[Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 580
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 580
    const-class v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;
    .locals 1

    .prologue
    .line 580
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->$VALUES:[Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    invoke-virtual {v0}, [Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/dom/flex/CSSNode$LayoutState;

    return-object v0
.end method
