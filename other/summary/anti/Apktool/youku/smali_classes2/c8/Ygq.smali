.class public final Lc8/Ygq;
.super Ljava/lang/Object;
.source "Profiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestInformation"
.end annotation


# instance fields
.field private final baseUrl:Ljava/lang/String;

.field private final contentLength:J

.field private final contentType:Ljava/lang/String;

.field private final method:Ljava/lang/String;

.field private final relativePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "relativePath"    # Ljava/lang/String;
    .param p4, "contentLength"    # J
    .param p6, "contentType"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lc8/Ygq;->method:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lc8/Ygq;->baseUrl:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lc8/Ygq;->relativePath:Ljava/lang/String;

    .line 59
    iput-wide p4, p0, Lc8/Ygq;->contentLength:J

    .line 60
    iput-object p6, p0, Lc8/Ygq;->contentType:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/Ygq;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lc8/Ygq;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lc8/Ygq;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lc8/Ygq;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRelativePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lc8/Ygq;->relativePath:Ljava/lang/String;

    return-object v0
.end method