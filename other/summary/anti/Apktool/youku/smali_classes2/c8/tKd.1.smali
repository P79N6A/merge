.class public final Lc8/tKd;
.super Ljava/lang/Object;
.source "PlatformMessageSender.java"

# interfaces
.implements Lc8/yKd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zKd;->sendPushStatus(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$pushSwitchStatus:Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lc8/tKd;->val$pushSwitchStatus:Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicStatus()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lc8/tKd;->val$pushSwitchStatus:Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    return-object v0
.end method

.method public getBasicStatusExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "extra_app_push_switch_status"

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "push_status"

    return-object v0
.end method
