.class public Lc8/Plg;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Xlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc8/Xlg;


# direct methods
.method private constructor <init>(Lc8/Xlg;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lc8/Plg;->a:Lc8/Xlg;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/Xlg;Lc8/Olg;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lc8/Plg;-><init>(Lc8/Xlg;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 278
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lc8/Plg;->a:Lc8/Xlg;

    invoke-static {v0}, Lc8/Xlg;->c(Lc8/Xlg;)Lc8/Vlg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/Vlg;->setVisibility(I)V

    .line 284
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 268
    const-string/jumbo v0, "openSDK_LOG.PKDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 274
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 253
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lc8/Plg;->a:Lc8/Xlg;

    invoke-static {v0}, Lc8/Xlg;->b(Lc8/Xlg;)Lc8/Rlg;

    move-result-object v0

    new-instance v1, Lc8/Fmg;

    invoke-direct {v1, p2, p3, p4}, Lc8/Fmg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/Rlg;->onError(Lc8/Fmg;)V

    .line 259
    iget-object v0, p0, Lc8/Plg;->a:Lc8/Xlg;

    invoke-static {v0}, Lc8/Xlg;->a(Lc8/Xlg;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Plg;->a:Lc8/Xlg;

    invoke-static {v0}, Lc8/Xlg;->a(Lc8/Xlg;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lc8/Plg;->a:Lc8/Xlg;

    invoke-static {v0}, Lc8/Xlg;->a(Lc8/Xlg;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\u6216\u7cfb\u7edf\u9519\u8bef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 263
    :cond_0
    iget-object v0, p0, Lc8/Plg;->a:Lc8/Xlg;

    invoke-virtual {v0}, Lc8/Xlg;->dismiss()V

    .line 264
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 232
    const-string/jumbo v0, "openSDK_LOG.PKDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Redirect URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/vlg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lc8/nmg;->a()Lc8/nmg;

    move-result-object v2

    iget-object v0, p0, Lc8/Plg;->a:Lc8/Xlg;

    invoke-static {v0}, Lc8/Xlg;->a(Lc8/Xlg;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string/jumbo v3, "auth://tauth.qq.com/"

    invoke-virtual {v2, v0, v3}, Lc8/nmg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lc8/Plg;->a:Lc8/Xlg;

    invoke-static {v0}, Lc8/Xlg;->b(Lc8/Xlg;)Lc8/Rlg;

    move-result-object v0

    invoke-static {p2}, Lc8/umg;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc8/Rlg;->onComplete(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lc8/Plg;->a:Lc8/Xlg;

    invoke-virtual {v0}, Lc8/Xlg;->dismiss()V

    move v0, v1

    .line 247
    :goto_0
    return v0

    .line 238
    :cond_0
    const-string/jumbo v0, "auth://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lc8/Plg;->a:Lc8/Xlg;

    invoke-static {v0}, Lc8/Xlg;->b(Lc8/Xlg;)Lc8/Rlg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Rlg;->onCancel()V

    .line 240
    iget-object v0, p0, Lc8/Plg;->a:Lc8/Xlg;

    invoke-virtual {v0}, Lc8/Xlg;->dismiss()V

    move v0, v1

    .line 241
    goto :goto_0

    .line 242
    :cond_1
    const-string/jumbo v0, "auth://close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lc8/Plg;->a:Lc8/Xlg;

    invoke-virtual {v0}, Lc8/Xlg;->dismiss()V

    move v0, v1

    .line 245
    goto :goto_0

    .line 247
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
