.class public Lc8/ED;
.super Ljava/lang/Object;
.source "WVUCWebViewClient.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/FD;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/FD;

.field final synthetic val$mPageFinshTime:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/FD;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lc8/ED;->this$0:Lc8/FD;

    iput-object p2, p0, Lc8/ED;->val$url:Ljava/lang/String;

    iput-wide p3, p0, Lc8/ED;->val$mPageFinshTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 122
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/ED;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v0

    iget-object v1, p0, Lc8/ED;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lc8/cG;->didPagePerformanceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lc8/YF;->getPerformanceMonitor()Lc8/cG;

    move-result-object v0

    iget-object v1, p0, Lc8/ED;->val$url:Ljava/lang/String;

    iget-wide v2, p0, Lc8/ED;->val$mPageFinshTime:J

    invoke-interface {v0, v1, v2, v3}, Lc8/cG;->didPageFinishLoadAtTime(Ljava/lang/String;J)V

    .line 130
    :cond_0
    return-void
.end method
