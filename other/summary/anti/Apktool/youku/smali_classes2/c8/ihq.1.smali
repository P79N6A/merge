.class public final Lc8/ihq;
.super Ljava/lang/Object;
.source "RequestInterceptorTape.java"

# interfaces
.implements Lc8/ehq;
.implements Lc8/fhq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/hhq;,
        Lretrofit/RequestInterceptorTape$Command;
    }
.end annotation


# instance fields
.field private final tape:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/hhq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/ihq;->tape:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public addEncodedPathParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/ihq;->tape:Ljava/util/List;

    new-instance v1, Lc8/hhq;

    sget-object v2, Lretrofit/RequestInterceptorTape$Command;->ADD_ENCODED_PATH_PARAM:Lretrofit/RequestInterceptorTape$Command;

    invoke-direct {v1, v2, p1, p2}, Lc8/hhq;-><init>(Lretrofit/RequestInterceptorTape$Command;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public addEncodedQueryParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/ihq;->tape:Ljava/util/List;

    new-instance v1, Lc8/hhq;

    sget-object v2, Lretrofit/RequestInterceptorTape$Command;->ADD_ENCODED_QUERY_PARAM:Lretrofit/RequestInterceptorTape$Command;

    invoke-direct {v1, v2, p1, p2}, Lc8/hhq;-><init>(Lretrofit/RequestInterceptorTape$Command;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 15
    iget-object v0, p0, Lc8/ihq;->tape:Ljava/util/List;

    new-instance v1, Lc8/hhq;

    sget-object v2, Lretrofit/RequestInterceptorTape$Command;->ADD_HEADER:Lretrofit/RequestInterceptorTape$Command;

    invoke-direct {v1, v2, p1, p2}, Lc8/hhq;-><init>(Lretrofit/RequestInterceptorTape$Command;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public addPathParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/ihq;->tape:Ljava/util/List;

    new-instance v1, Lc8/hhq;

    sget-object v2, Lretrofit/RequestInterceptorTape$Command;->ADD_PATH_PARAM:Lretrofit/RequestInterceptorTape$Command;

    invoke-direct {v1, v2, p1, p2}, Lc8/hhq;-><init>(Lretrofit/RequestInterceptorTape$Command;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method public addQueryParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/ihq;->tape:Ljava/util/List;

    new-instance v1, Lc8/hhq;

    sget-object v2, Lretrofit/RequestInterceptorTape$Command;->ADD_QUERY_PARAM:Lretrofit/RequestInterceptorTape$Command;

    invoke-direct {v1, v2, p1, p2}, Lc8/hhq;-><init>(Lretrofit/RequestInterceptorTape$Command;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public intercept(Lc8/ehq;)V
    .locals 5
    .param p1, "request"    # Lc8/ehq;

    .prologue
    .line 35
    iget-object v1, p0, Lc8/ihq;->tape:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hhq;

    .line 36
    .local v0, "cwp":Lc8/hhq;
    iget-object v2, v0, Lc8/hhq;->command:Lretrofit/RequestInterceptorTape$Command;

    iget-object v3, v0, Lc8/hhq;->name:Ljava/lang/String;

    iget-object v4, v0, Lc8/hhq;->value:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Lretrofit/RequestInterceptorTape$Command;->intercept(Lc8/ehq;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v0    # "cwp":Lc8/hhq;
    :cond_0
    return-void
.end method