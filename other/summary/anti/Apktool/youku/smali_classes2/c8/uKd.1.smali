.class public final Lc8/uKd;
.super Ljava/lang/Object;
.source "PlatformMessageSender.java"

# interfaces
.implements Lc8/yKd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zKd;->sendRegisterStatus(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$registerStatus:Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lc8/uKd;->val$registerStatus:Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicStatus()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lc8/uKd;->val$registerStatus:Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    return-object v0
.end method

.method public getBasicStatusExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "extra_app_push_register_status"

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "register_status"

    return-object v0
.end method
