.class public Lc8/Ycc;
.super Ljava/lang/Object;
.source "VerifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initCallUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 584
    iput-object p1, p0, Lc8/Ycc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 588
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$000()Lc8/Vcc;

    move-result-object v0

    invoke-interface {v0}, Lc8/Vcc;->onNotifyBackPressed()V

    .line 591
    :cond_0
    iget-object v0, p0, Lc8/Ycc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-virtual {v0}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->finish()V

    .line 592
    return-void
.end method
