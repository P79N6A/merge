.class public final Lc8/SSe;
.super Ljava/lang/Object;
.source "OkUrlFactory.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/net/URLStreamHandlerFactory;


# instance fields
.field private final client:Lc8/QSe;


# direct methods
.method public constructor <init>(Lc8/QSe;)V
    .locals 0
    .param p1, "client"    # Lc8/QSe;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lc8/SSe;->client:Lc8/QSe;

    .line 33
    return-void
.end method


# virtual methods
.method public client()Lc8/QSe;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lc8/SSe;->client:Lc8/QSe;

    return-object v0
.end method

.method public clone()Lc8/SSe;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lc8/SSe;

    iget-object v1, p0, Lc8/SSe;->client:Lc8/QSe;

    invoke-virtual {v1}, Lc8/QSe;->clone()Lc8/QSe;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/SSe;-><init>(Lc8/QSe;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lc8/SSe;->clone()Lc8/SSe;

    move-result-object v0

    return-object v0
.end method

.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/RSe;

    invoke-direct {v0, p0, p1}, Lc8/RSe;-><init>(Lc8/SSe;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public open(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 48
    iget-object v0, p0, Lc8/SSe;->client:Lc8/QSe;

    invoke-virtual {v0}, Lc8/QSe;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc8/SSe;->open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "protocol":Ljava/lang/String;
    iget-object v2, p0, Lc8/SSe;->client:Lc8/QSe;

    invoke-virtual {v2}, Lc8/QSe;->copyWithDefaults()Lc8/QSe;

    move-result-object v0

    .line 54
    .local v0, "copy":Lc8/QSe;
    invoke-virtual {v0, p2}, Lc8/QSe;->setProxy(Ljava/net/Proxy;)Lc8/QSe;

    .line 56
    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lc8/cVe;

    invoke-direct {v2, p1, v0}, Lc8/cVe;-><init>(Ljava/net/URL;Lc8/QSe;)V

    .line 57
    :goto_0
    return-object v2

    :cond_0
    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lc8/dVe;

    invoke-direct {v2, p1, v0}, Lc8/dVe;-><init>(Ljava/net/URL;Lc8/QSe;)V

    goto :goto_0

    .line 58
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
