.class public Lc8/Mhq;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "ApacheClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Nhq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypedOutputEntity"
.end annotation


# instance fields
.field final typedOutput:Lc8/Hiq;


# direct methods
.method constructor <init>(Lc8/Hiq;)V
    .locals 1
    .param p1, "typedOutput"    # Lc8/Hiq;

    .prologue
    .line 151
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 152
    iput-object p1, p0, Lc8/Mhq;->typedOutput:Lc8/Hiq;

    .line 153
    invoke-interface {p1}, Lc8/Hiq;->mimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Mhq;->setContentType(Ljava/lang/String;)V

    .line 154
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lc8/Mhq;->typedOutput:Lc8/Hiq;

    invoke-interface {v1, v0}, Lc8/Hiq;->writeTo(Ljava/io/OutputStream;)V

    .line 167
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lc8/Mhq;->typedOutput:Lc8/Hiq;

    invoke-interface {v0}, Lc8/Hiq;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lc8/Mhq;->typedOutput:Lc8/Hiq;

    invoke-interface {v0, p1}, Lc8/Hiq;->writeTo(Ljava/io/OutputStream;)V

    .line 172
    return-void
.end method