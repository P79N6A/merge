.class public final enum Lcom/taobao/downloader/api/Request$Priority;
.super Ljava/lang/Enum;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fmf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/downloader/api/Request$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/downloader/api/Request$Priority;

.field public static final enum HIGH:Lcom/taobao/downloader/api/Request$Priority;

.field public static final enum IMMEDIATE:Lcom/taobao/downloader/api/Request$Priority;

.field public static final enum LOW:Lcom/taobao/downloader/api/Request$Priority;

.field public static final enum NORMAL:Lcom/taobao/downloader/api/Request$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/taobao/downloader/api/Request$Priority;

    const-string/jumbo v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/taobao/downloader/api/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/downloader/api/Request$Priority;->LOW:Lcom/taobao/downloader/api/Request$Priority;

    .line 44
    new-instance v0, Lcom/taobao/downloader/api/Request$Priority;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/taobao/downloader/api/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/downloader/api/Request$Priority;->NORMAL:Lcom/taobao/downloader/api/Request$Priority;

    .line 45
    new-instance v0, Lcom/taobao/downloader/api/Request$Priority;

    const-string/jumbo v1, "HIGH"

    invoke-direct {v0, v1, v4}, Lcom/taobao/downloader/api/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/downloader/api/Request$Priority;->HIGH:Lcom/taobao/downloader/api/Request$Priority;

    .line 46
    new-instance v0, Lcom/taobao/downloader/api/Request$Priority;

    const-string/jumbo v1, "IMMEDIATE"

    invoke-direct {v0, v1, v5}, Lcom/taobao/downloader/api/Request$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/downloader/api/Request$Priority;->IMMEDIATE:Lcom/taobao/downloader/api/Request$Priority;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/downloader/api/Request$Priority;

    sget-object v1, Lcom/taobao/downloader/api/Request$Priority;->LOW:Lcom/taobao/downloader/api/Request$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/downloader/api/Request$Priority;->NORMAL:Lcom/taobao/downloader/api/Request$Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/downloader/api/Request$Priority;->HIGH:Lcom/taobao/downloader/api/Request$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/downloader/api/Request$Priority;->IMMEDIATE:Lcom/taobao/downloader/api/Request$Priority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/downloader/api/Request$Priority;->$VALUES:[Lcom/taobao/downloader/api/Request$Priority;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/downloader/api/Request$Priority;
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/taobao/downloader/api/Request$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/downloader/api/Request$Priority;

    return-object v0
.end method

.method public static values()[Lcom/taobao/downloader/api/Request$Priority;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/taobao/downloader/api/Request$Priority;->$VALUES:[Lcom/taobao/downloader/api/Request$Priority;

    invoke-virtual {v0}, [Lcom/taobao/downloader/api/Request$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/downloader/api/Request$Priority;

    return-object v0
.end method
