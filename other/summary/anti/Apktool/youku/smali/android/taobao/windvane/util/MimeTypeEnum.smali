.class public final enum Landroid/taobao/windvane/util/MimeTypeEnum;
.super Ljava/lang/Enum;
.source "MimeTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/taobao/windvane/util/MimeTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum CSS:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum GIF:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum HTM:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum HTML:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum JPEG:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum JPG:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum JS:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum PNG:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum SVG:Landroid/taobao/windvane/util/MimeTypeEnum;

.field public static final enum WEBP:Landroid/taobao/windvane/util/MimeTypeEnum;


# instance fields
.field private mimeType:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 17
    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string/jumbo v1, "JS"

    const-string/jumbo v2, "js"

    const-string/jumbo v3, "application/x-javascript"

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->JS:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string/jumbo v1, "CSS"

    const-string/jumbo v2, "css"

    const-string/jumbo v3, "text/css"

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->CSS:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string/jumbo v1, "JPG"

    const-string/jumbo v2, "jpg"

    const-string/jumbo v3, "image/jpeg"

    invoke-direct {v0, v1, v7, v2, v3}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->JPG:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string/jumbo v1, "JPEG"

    const-string/jumbo v2, "jpep"

    const-string/jumbo v3, "image/jpeg"

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->JPEG:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string/jumbo v1, "SVG"

    const-string/jumbo v2, "svg"

    const-string/jumbo v3, "image/svg+xml"

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->SVG:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string/jumbo v1, "PNG"

    const/4 v2, 0x5

    const-string/jumbo v3, "png"

    const-string/jumbo v4, "image/png"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->PNG:Landroid/taobao/windvane/util/MimeTypeEnum;

    .line 18
    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string/jumbo v1, "WEBP"

    const/4 v2, 0x6

    const-string/jumbo v3, "webp"

    const-string/jumbo v4, "image/webp"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->WEBP:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string/jumbo v1, "GIF"

    const/4 v2, 0x7

    const-string/jumbo v3, "gif"

    const-string/jumbo v4, "image/gif"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->GIF:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string/jumbo v1, "HTM"

    const/16 v2, 0x8

    const-string/jumbo v3, "htm"

    const-string/jumbo v4, "text/html"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->HTM:Landroid/taobao/windvane/util/MimeTypeEnum;

    new-instance v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    const-string/jumbo v1, "HTML"

    const/16 v2, 0x9

    const-string/jumbo v3, "html"

    const-string/jumbo v4, "text/html"

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/taobao/windvane/util/MimeTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->HTML:Landroid/taobao/windvane/util/MimeTypeEnum;

    .line 16
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/taobao/windvane/util/MimeTypeEnum;

    sget-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->JS:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->CSS:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v1, v0, v6

    sget-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->JPG:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v1, v0, v7

    sget-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->JPEG:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v1, v0, v8

    sget-object v1, Landroid/taobao/windvane/util/MimeTypeEnum;->SVG:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Landroid/taobao/windvane/util/MimeTypeEnum;->PNG:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/taobao/windvane/util/MimeTypeEnum;->WEBP:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/taobao/windvane/util/MimeTypeEnum;->GIF:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/taobao/windvane/util/MimeTypeEnum;->HTM:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/taobao/windvane/util/MimeTypeEnum;->HTML:Landroid/taobao/windvane/util/MimeTypeEnum;

    aput-object v2, v0, v1

    sput-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->$VALUES:[Landroid/taobao/windvane/util/MimeTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->suffix:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->mimeType:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/util/MimeTypeEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/util/MimeTypeEnum;

    return-object v0
.end method

.method public static values()[Landroid/taobao/windvane/util/MimeTypeEnum;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Landroid/taobao/windvane/util/MimeTypeEnum;->$VALUES:[Landroid/taobao/windvane/util/MimeTypeEnum;

    invoke-virtual {v0}, [Landroid/taobao/windvane/util/MimeTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/util/MimeTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->mimeType:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Landroid/taobao/windvane/util/MimeTypeEnum;->suffix:Ljava/lang/String;

    .line 34
    return-void
.end method
