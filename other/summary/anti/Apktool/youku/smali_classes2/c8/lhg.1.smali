.class public Lc8/lhg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lc8/Dmg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/shg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lc8/Dmg;

.field final synthetic b:Lc8/shg;


# direct methods
.method public constructor <init>(Lc8/shg;Lc8/Dmg;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lc8/lhg;->b:Lc8/shg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p2, p0, Lc8/lhg;->a:Lc8/Dmg;

    .line 413
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lc8/lhg;->a:Lc8/Dmg;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lc8/lhg;->a:Lc8/Dmg;

    invoke-interface {v0}, Lc8/Dmg;->onCancel()V

    .line 451
    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 417
    if-nez p1, :cond_1

    .line 418
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "CheckLoginListener response data is null"

    invoke-static {v0, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    check-cast p1, Lorg/json/JSONObject;

    .line 427
    :try_start_0
    const-string/jumbo v0, "ret"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 428
    if-nez v1, :cond_2

    const-string/jumbo v0, "success"

    .line 430
    :goto_1
    iget-object v2, p0, Lc8/lhg;->a:Lc8/Dmg;

    if-eqz v2, :cond_0

    .line 431
    iget-object v2, p0, Lc8/lhg;->a:Lc8/Dmg;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "ret"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v3, "msg"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v2, v0}, Lc8/Dmg;->onComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 435
    const-string/jumbo v0, "openSDK_LOG.AuthAgent"

    const-string/jumbo v1, "CheckLoginListener response data format error"

    invoke-static {v0, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_2
    :try_start_1
    const-string/jumbo v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public onError(Lc8/Fmg;)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lc8/lhg;->a:Lc8/Dmg;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lc8/lhg;->a:Lc8/Dmg;

    invoke-interface {v0, p1}, Lc8/Dmg;->onError(Lc8/Fmg;)V

    .line 444
    :cond_0
    return-void
.end method
