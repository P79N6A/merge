.class public Lc8/rTh;
.super Ljava/lang/Object;
.source "WVWebViewService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/interaction/utils/WVWebViewService$2;->onTradeSuccess(Lcom/alibaba/baichuan/android/trade/model/TradeResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/interaction/utils/WVWebViewService$2;

.field final synthetic val$loadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/interaction/utils/WVWebViewService$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/interaction/utils/WVWebViewService$2;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 96
    iput-object p1, p0, Lc8/rTh;->this$0:Lcom/youku/interaction/utils/WVWebViewService$2;

    iput-object p2, p0, Lc8/rTh;->val$loadUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lc8/rTh;->this$0:Lcom/youku/interaction/utils/WVWebViewService$2;

    iget-object v1, v1, Lcom/youku/interaction/utils/WVWebViewService$2;->val$weakWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/webview/WVWebView;

    .line 100
    .local v0, "webView":Landroid/taobao/windvane/webview/WVWebView;
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lc8/rTh;->val$loadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/webview/WVWebView;->loadUrl(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method
