.class public Lc8/CTh;
.super Ljava/lang/Object;
.source "WebViewService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/interaction/utils/WebViewService$2;->onFailure(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/interaction/utils/WebViewService$2;

.field final synthetic val$loadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/youku/interaction/utils/WebViewService$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/youku/interaction/utils/WebViewService$2;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 210
    iput-object p1, p0, Lc8/CTh;->this$1:Lcom/youku/interaction/utils/WebViewService$2;

    iput-object p2, p0, Lc8/CTh;->val$loadUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lc8/CTh;->this$1:Lcom/youku/interaction/utils/WebViewService$2;

    iget-object v1, v1, Lcom/youku/interaction/utils/WebViewService$2;->val$weakWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 214
    .local v0, "webView":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lc8/CTh;->val$loadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method
