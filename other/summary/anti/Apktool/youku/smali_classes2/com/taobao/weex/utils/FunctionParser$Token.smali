.class public final enum Lcom/taobao/weex/utils/FunctionParser$Token;
.super Ljava/lang/Enum;
.source "FunctionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/utils/FunctionParser$Token;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

.field public static final enum RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string/jumbo v1, "FUNC_NAME"

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    new-instance v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string/jumbo v1, "PARAM_VALUE"

    invoke-direct {v0, v1, v3}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    new-instance v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string/jumbo v1, "LEFT_PARENT"

    invoke-direct {v0, v1, v4}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    new-instance v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string/jumbo v1, "RIGHT_PARENT"

    invoke-direct {v0, v1, v5}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    new-instance v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    const-string/jumbo v1, "COMMA"

    invoke-direct {v0, v1, v6}, Lcom/taobao/weex/utils/FunctionParser$Token;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    .line 90
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/taobao/weex/utils/FunctionParser$Token;

    sget-object v1, Lcom/taobao/weex/utils/FunctionParser$Token;->FUNC_NAME:Lcom/taobao/weex/utils/FunctionParser$Token;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/utils/FunctionParser$Token;->PARAM_VALUE:Lcom/taobao/weex/utils/FunctionParser$Token;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weex/utils/FunctionParser$Token;->LEFT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/weex/utils/FunctionParser$Token;->RIGHT_PARENT:Lcom/taobao/weex/utils/FunctionParser$Token;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/weex/utils/FunctionParser$Token;->COMMA:Lcom/taobao/weex/utils/FunctionParser$Token;

    aput-object v1, v0, v6

    sput-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->$VALUES:[Lcom/taobao/weex/utils/FunctionParser$Token;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/utils/FunctionParser$Token;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    const-class v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/utils/FunctionParser$Token;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/utils/FunctionParser$Token;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/taobao/weex/utils/FunctionParser$Token;->$VALUES:[Lcom/taobao/weex/utils/FunctionParser$Token;

    invoke-virtual {v0}, [Lcom/taobao/weex/utils/FunctionParser$Token;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/utils/FunctionParser$Token;

    return-object v0
.end method
