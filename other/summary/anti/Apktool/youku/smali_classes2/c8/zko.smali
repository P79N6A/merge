.class public final Lc8/zko;
.super Lc8/Fko;
.source "Passport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gko;->SNSDeleteBind(Lc8/kko;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallBack:Lc8/kko;


# direct methods
.method constructor <init>(Lc8/kko;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lc8/zko;->val$aCallBack:Lc8/kko;

    invoke-direct {p0}, Lc8/Fko;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 2
    .param p1, "aCode"    # I
    .param p2, "aMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 531
    :try_start_0
    iget-object v1, p0, Lc8/zko;->val$aCallBack:Lc8/kko;

    if-eqz v1, :cond_0

    .line 532
    if-nez p1, :cond_1

    .line 533
    iget-object v1, p0, Lc8/zko;->val$aCallBack:Lc8/kko;

    invoke-interface {v1, p1, p2}, Lc8/kko;->onSuccess(ILjava/lang/String;)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iget-object v1, p0, Lc8/zko;->val$aCallBack:Lc8/kko;

    invoke-interface {v1, p1, p2}, Lc8/kko;->onFailure(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SNSDeleteBind onResult"

    invoke-static {v0, v1}, Lc8/Gko;->access$400(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
