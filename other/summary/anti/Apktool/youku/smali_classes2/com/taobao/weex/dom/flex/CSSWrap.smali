.class public final enum Lcom/taobao/weex/dom/flex/CSSWrap;
.super Ljava/lang/Enum;
.source "CSSWrap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/dom/flex/CSSWrap;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/dom/flex/CSSWrap;

.field public static final enum NOWRAP:Lcom/taobao/weex/dom/flex/CSSWrap;

.field public static final enum WRAP:Lcom/taobao/weex/dom/flex/CSSWrap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/taobao/weex/dom/flex/CSSWrap;

    const-string/jumbo v1, "NOWRAP"

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/dom/flex/CSSWrap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/flex/CSSWrap;->NOWRAP:Lcom/taobao/weex/dom/flex/CSSWrap;

    .line 10
    new-instance v0, Lcom/taobao/weex/dom/flex/CSSWrap;

    const-string/jumbo v1, "WRAP"

    invoke-direct {v0, v1, v3}, Lcom/taobao/weex/dom/flex/CSSWrap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/flex/CSSWrap;->WRAP:Lcom/taobao/weex/dom/flex/CSSWrap;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/weex/dom/flex/CSSWrap;

    sget-object v1, Lcom/taobao/weex/dom/flex/CSSWrap;->NOWRAP:Lcom/taobao/weex/dom/flex/CSSWrap;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/dom/flex/CSSWrap;->WRAP:Lcom/taobao/weex/dom/flex/CSSWrap;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/weex/dom/flex/CSSWrap;->$VALUES:[Lcom/taobao/weex/dom/flex/CSSWrap;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/dom/flex/CSSWrap;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/taobao/weex/dom/flex/CSSWrap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/flex/CSSWrap;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/dom/flex/CSSWrap;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/taobao/weex/dom/flex/CSSWrap;->$VALUES:[Lcom/taobao/weex/dom/flex/CSSWrap;

    invoke-virtual {v0}, [Lcom/taobao/weex/dom/flex/CSSWrap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/dom/flex/CSSWrap;

    return-object v0
.end method
