.class public Lc8/fL;
.super Ljava/lang/Object;
.source "StrategyResultParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/eL;,
        Lc8/dL;,
        Lc8/cL;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lc8/eL;
    .locals 8
    .param p0, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 16
    :try_start_0
    new-instance v1, Lc8/eL;

    invoke-direct {v1, p0}, Lc8/eL;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .local v1, "httpDnsResponse":Lc8/eL;
    :goto_0
    return-object v1

    .line 17
    .end local v1    # "httpDnsResponse":Lc8/eL;
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "StrategyResultParser"

    const-string/jumbo v3, "Parse HttpDns response failed."

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "JSON Content"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v0, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 19
    const/4 v1, 0x0

    .restart local v1    # "httpDnsResponse":Lc8/eL;
    goto :goto_0
.end method
