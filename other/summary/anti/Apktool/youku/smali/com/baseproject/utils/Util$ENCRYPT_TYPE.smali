.class public final enum Lcom/baseproject/utils/Util$ENCRYPT_TYPE;
.super Ljava/lang/Enum;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/OWc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENCRYPT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baseproject/utils/Util$ENCRYPT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

.field public static final enum TUDOU:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

.field public static final enum TUDOU_LIVE:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

.field public static final enum YOUKU:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

.field public static final enum YOUKU_LIVE:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1082
    new-instance v0, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    const-string/jumbo v1, "YOUKU"

    invoke-direct {v0, v1, v2}, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;->YOUKU:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    new-instance v0, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    const-string/jumbo v1, "TUDOU"

    invoke-direct {v0, v1, v3}, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;->TUDOU:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    new-instance v0, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    const-string/jumbo v1, "YOUKU_LIVE"

    invoke-direct {v0, v1, v4}, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;->YOUKU_LIVE:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    new-instance v0, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    const-string/jumbo v1, "TUDOU_LIVE"

    invoke-direct {v0, v1, v5}, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;->TUDOU_LIVE:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    .line 1081
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    sget-object v1, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;->YOUKU:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;->TUDOU:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;->YOUKU_LIVE:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;->TUDOU_LIVE:Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;->$VALUES:[Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

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
    .line 1081
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baseproject/utils/Util$ENCRYPT_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1081
    const-class v0, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/baseproject/utils/Util$ENCRYPT_TYPE;
    .locals 1

    .prologue
    .line 1081
    sget-object v0, Lcom/baseproject/utils/Util$ENCRYPT_TYPE;->$VALUES:[Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    invoke-virtual {v0}, [Lcom/baseproject/utils/Util$ENCRYPT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baseproject/utils/Util$ENCRYPT_TYPE;

    return-object v0
.end method
