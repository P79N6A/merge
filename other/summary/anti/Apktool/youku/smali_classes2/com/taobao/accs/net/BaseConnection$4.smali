.class public Lcom/taobao/accs/net/BaseConnection$4;
.super Ljava/lang/Object;
.source "BaseConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/net/BaseConnection;->setPingTimeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/net/BaseConnection;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/BaseConnection;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/taobao/accs/net/BaseConnection$4;->this$0:Lcom/taobao/accs/net/BaseConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection$4;->this$0:Lcom/taobao/accs/net/BaseConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/BaseConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    invoke-virtual {v0}, Lcom/taobao/accs/data/MessageHandler;->getUnrcvPing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection$4;->this$0:Lcom/taobao/accs/net/BaseConnection;

    invoke-virtual {v0}, Lcom/taobao/accs/net/BaseConnection;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/taobao/accs/net/BaseConnection$4;->this$0:Lcom/taobao/accs/net/BaseConnection;

    iget v2, v2, Lcom/taobao/accs/net/BaseConnection;->mConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "receive ping time out! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection$4;->this$0:Lcom/taobao/accs/net/BaseConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/BaseConnection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/net/HeartbeatManager;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/net/HeartbeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/net/HeartbeatManager;->onNetworkTimeout()V

    .line 311
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection$4;->this$0:Lcom/taobao/accs/net/BaseConnection;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "receive ping timeout"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/net/BaseConnection;->onTimeOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection$4;->this$0:Lcom/taobao/accs/net/BaseConnection;

    iget-object v0, v0, Lcom/taobao/accs/net/BaseConnection;->mMessageHandler:Lcom/taobao/accs/data/MessageHandler;

    const/16 v1, -0xc

    invoke-virtual {v0, v1}, Lcom/taobao/accs/data/MessageHandler;->onNetworkFail(I)V

    .line 314
    :cond_0
    return-void
.end method
