.class public Lretrofit/RetrofitError;
.super Ljava/lang/RuntimeException;
.source "RetrofitError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RetrofitError$Kind;
    }
.end annotation


# instance fields
.field private final converter:Lc8/aiq;

.field private final kind:Lretrofit/RetrofitError$Kind;

.field private final response:Lc8/Whq;

.field private final successType:Ljava/lang/reflect/Type;

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lc8/Whq;Lc8/aiq;Ljava/lang/reflect/Type;Lretrofit/RetrofitError$Kind;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "response"    # Lc8/Whq;
    .param p4, "converter"    # Lc8/aiq;
    .param p5, "successType"    # Ljava/lang/reflect/Type;
    .param p6, "kind"    # Lretrofit/RetrofitError$Kind;
    .param p7, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    invoke-direct {p0, p1, p7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    iput-object p2, p0, Lretrofit/RetrofitError;->url:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lretrofit/RetrofitError;->response:Lc8/Whq;

    .line 74
    iput-object p4, p0, Lretrofit/RetrofitError;->converter:Lc8/aiq;

    .line 75
    iput-object p5, p0, Lretrofit/RetrofitError;->successType:Ljava/lang/reflect/Type;

    .line 76
    iput-object p6, p0, Lretrofit/RetrofitError;->kind:Lretrofit/RetrofitError$Kind;

    .line 77
    return-void
.end method

.method public static conversionError(Ljava/lang/String;Lc8/Whq;Lc8/aiq;Ljava/lang/reflect/Type;Lretrofit/converter/ConversionException;)Lretrofit/RetrofitError;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "response"    # Lc8/Whq;
    .param p2, "converter"    # Lc8/aiq;
    .param p3, "successType"    # Ljava/lang/reflect/Type;
    .param p4, "exception"    # Lretrofit/converter/ConversionException;

    .prologue
    .line 33
    new-instance v0, Lretrofit/RetrofitError;

    invoke-virtual {p4}, Lretrofit/converter/ConversionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lretrofit/RetrofitError$Kind;->CONVERSION:Lretrofit/RetrofitError$Kind;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lretrofit/RetrofitError;-><init>(Ljava/lang/String;Ljava/lang/String;Lc8/Whq;Lc8/aiq;Ljava/lang/reflect/Type;Lretrofit/RetrofitError$Kind;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static httpError(Ljava/lang/String;Lc8/Whq;Lc8/aiq;Ljava/lang/reflect/Type;)Lretrofit/RetrofitError;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "response"    # Lc8/Whq;
    .param p2, "converter"    # Lc8/aiq;
    .param p3, "successType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lc8/Whq;->getStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lc8/Whq;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Lretrofit/RetrofitError;

    sget-object v6, Lretrofit/RetrofitError$Kind;->HTTP:Lretrofit/RetrofitError$Kind;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lretrofit/RetrofitError;-><init>(Ljava/lang/String;Ljava/lang/String;Lc8/Whq;Lc8/aiq;Ljava/lang/reflect/Type;Lretrofit/RetrofitError$Kind;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static networkError(Ljava/lang/String;Ljava/io/IOException;)Lretrofit/RetrofitError;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "exception"    # Ljava/io/IOException;

    .prologue
    const/4 v3, 0x0

    .line 27
    new-instance v0, Lretrofit/RetrofitError;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lretrofit/RetrofitError$Kind;->NETWORK:Lretrofit/RetrofitError$Kind;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lretrofit/RetrofitError;-><init>(Ljava/lang/String;Ljava/lang/String;Lc8/Whq;Lc8/aiq;Ljava/lang/reflect/Type;Lretrofit/RetrofitError$Kind;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static unexpectedError(Ljava/lang/String;Ljava/lang/Throwable;)Lretrofit/RetrofitError;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    .line 44
    new-instance v0, Lretrofit/RetrofitError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lretrofit/RetrofitError$Kind;->UNEXPECTED:Lretrofit/RetrofitError$Kind;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lretrofit/RetrofitError;-><init>(Ljava/lang/String;Ljava/lang/String;Lc8/Whq;Lc8/aiq;Ljava/lang/reflect/Type;Lretrofit/RetrofitError$Kind;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lretrofit/RetrofitError;->successType:Ljava/lang/reflect/Type;

    invoke-virtual {p0, v0}, Lretrofit/RetrofitError;->getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v3, p0, Lretrofit/RetrofitError;->response:Lc8/Whq;

    if-nez v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v2

    .line 132
    :cond_1
    iget-object v3, p0, Lretrofit/RetrofitError;->response:Lc8/Whq;

    invoke-virtual {v3}, Lc8/Whq;->getBody()Lc8/Giq;

    move-result-object v0

    .line 133
    .local v0, "body":Lc8/Giq;
    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    iget-object v2, p0, Lretrofit/RetrofitError;->converter:Lc8/aiq;

    invoke-interface {v2, v0, p1}, Lc8/aiq;->fromBody(Lc8/Giq;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Lretrofit/converter/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Lretrofit/converter/ConversionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getKind()Lretrofit/RetrofitError$Kind;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lretrofit/RetrofitError;->kind:Lretrofit/RetrofitError$Kind;

    return-object v0
.end method

.method public getResponse()Lc8/Whq;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lretrofit/RetrofitError;->response:Lc8/Whq;

    return-object v0
.end method

.method public getSuccessType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lretrofit/RetrofitError;->successType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lretrofit/RetrofitError;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isNetworkError()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lretrofit/RetrofitError;->kind:Lretrofit/RetrofitError$Kind;

    sget-object v1, Lretrofit/RetrofitError$Kind;->NETWORK:Lretrofit/RetrofitError$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
