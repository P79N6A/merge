.class public final enum Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;
.super Ljava/lang/Enum;
.source "MotuMediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

.field public static final enum LIVE:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

.field public static final enum VOD:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    const-string/jumbo v1, "VOD"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->VOD:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    .line 9
    new-instance v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    const-string/jumbo v1, "LIVE"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->LIVE:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    sget-object v1, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->VOD:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->LIVE:Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->$VALUES:[Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->value:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->$VALUES:[Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    invoke-virtual {v0}, [Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/alibaba/motu/videoplayermonitor/model/MotuMediaType;->value:I

    return v0
.end method
