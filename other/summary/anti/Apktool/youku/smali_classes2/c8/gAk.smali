.class public Lc8/gAk;
.super Ljava/lang/Object;
.source "SubscribUtil.java"

# interfaces
.implements Lc8/hzk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jAk;

.field final synthetic val$callback:Lc8/Tzk;

.field final synthetic val$finalUserUrl:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isMedia:Z

.field final synthetic val$isShowTips:Z

.field final synthetic val$mOfflineSubscribe:Lc8/jzk;

.field final synthetic val$showid:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/jAk;Lc8/jzk;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/Tzk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jAk;

    .prologue
    .line 174
    iput-object p1, p0, Lc8/gAk;->this$0:Lc8/jAk;

    iput-object p2, p0, Lc8/gAk;->val$mOfflineSubscribe:Lc8/jzk;

    iput-boolean p3, p0, Lc8/gAk;->val$isMedia:Z

    iput-boolean p4, p0, Lc8/gAk;->val$isShowTips:Z

    iput-object p5, p0, Lc8/gAk;->val$finalUserUrl:Ljava/lang/String;

    iput-object p6, p0, Lc8/gAk;->val$userId:Ljava/lang/String;

    iput-object p7, p0, Lc8/gAk;->val$showid:Ljava/lang/String;

    iput-object p8, p0, Lc8/gAk;->val$handler:Landroid/os/Handler;

    iput-object p9, p0, Lc8/gAk;->val$callback:Lc8/Tzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 227
    const/4 v0, 0x0

    sput-boolean v0, Lc8/jAk;->isCreateOfflineSucess:Z

    .line 228
    iget-boolean v0, p0, Lc8/gAk;->val$isMedia:Z

    if-eqz v0, :cond_0

    .line 229
    const-string/jumbo v0, "\u8ffd\u5267\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 233
    :goto_0
    iget-object v0, p0, Lc8/gAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/gAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/gAk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/gAk;->val$isMedia:Z

    iget-object v4, p0, Lc8/gAk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/gAk;->val$callback:Lc8/Tzk;

    invoke-static/range {v0 .. v5}, Lc8/jAk;->access$300(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    .line 234
    return-void

    .line 231
    :cond_0
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_follow_fail:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto :goto_0
.end method

.method public successReslut(Ljava/lang/String;)V
    .locals 8
    .param p1, "successResult"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 178
    :try_start_0
    iget-object v0, p0, Lc8/gAk;->val$mOfflineSubscribe:Lc8/jzk;

    invoke-virtual {v0, p1}, Lc8/jzk;->pareOfflineErrorResult(Ljava/lang/String;)Lc8/izk;

    move-result-object v7

    .line 180
    .local v7, "mOfflinInfo":Lc8/izk;
    if-eqz v7, :cond_6

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "==mofflininfo======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Lc8/izk;->codeStr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "====desc==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lc8/izk;->desStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    iget v0, v7, Lc8/izk;->codeStr:I

    if-ne v0, v2, :cond_2

    .line 185
    const/4 v0, 0x1

    sput-boolean v0, Lc8/jAk;->isCreateOfflineSucess:Z

    .line 186
    iget-object v0, p0, Lc8/gAk;->val$mOfflineSubscribe:Lc8/jzk;

    invoke-virtual {v0}, Lc8/jzk;->getOfflineSubscribeList()V

    .line 188
    iget-boolean v0, p0, Lc8/gAk;->val$isMedia:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/gAk;->val$isShowTips:Z

    if-eqz v0, :cond_0

    .line 189
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_follow_success:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    .line 192
    :cond_0
    iget-object v0, p0, Lc8/gAk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lc8/gAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/gAk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/jAk;->access$000(Lc8/jAk;Ljava/lang/String;)V

    .line 195
    :cond_1
    iget-object v0, p0, Lc8/gAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/gAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/gAk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/gAk;->val$isMedia:Z

    iget-object v4, p0, Lc8/gAk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/gAk;->val$callback:Lc8/Tzk;

    invoke-static/range {v0 .. v5}, Lc8/jAk;->access$100(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    .line 196
    iget-object v0, p0, Lc8/gAk;->this$0:Lc8/jAk;

    iget-boolean v1, p0, Lc8/gAk;->val$isMedia:Z

    invoke-static {v0, v1}, Lc8/jAk;->access$200(Lc8/jAk;Z)V

    .line 223
    .end local v7    # "mOfflinInfo":Lc8/izk;
    :goto_0
    return-void

    .line 200
    .restart local v7    # "mOfflinInfo":Lc8/izk;
    :cond_2
    iget v0, v7, Lc8/izk;->codeStr:I

    const/16 v1, -0x12c

    if-ne v0, v1, :cond_3

    .line 201
    iget-object v0, v7, Lc8/izk;->desStr:Ljava/lang/String;

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 202
    const-class v0, Lc8/fhn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fhn;

    iget-object v1, p0, Lc8/gAk;->this$0:Lc8/jAk;

    iget-object v1, v1, Lc8/jAk;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lc8/fhn;->goLogin(Landroid/content/Context;)V

    .line 203
    iget-object v0, p0, Lc8/gAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/gAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/gAk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/gAk;->val$isMedia:Z

    iget-object v4, p0, Lc8/gAk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/gAk;->val$callback:Lc8/Tzk;

    invoke-static/range {v0 .. v5}, Lc8/jAk;->access$300(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    .end local v7    # "mOfflinInfo":Lc8/izk;
    :catch_0
    move-exception v6

    .line 219
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v0, "SubscribUtil"

    invoke-static {v0, v6}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    iget-object v0, p0, Lc8/gAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/gAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/gAk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/gAk;->val$isMedia:Z

    iget-object v4, p0, Lc8/gAk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/gAk;->val$callback:Lc8/Tzk;

    invoke-static/range {v0 .. v5}, Lc8/jAk;->access$300(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    goto :goto_0

    .line 204
    .end local v6    # "e":Ljava/lang/ClassCastException;
    .restart local v7    # "mOfflinInfo":Lc8/izk;
    :cond_3
    :try_start_1
    iget v0, v7, Lc8/izk;->codeStr:I

    const/16 v1, -0x12e

    if-ne v0, v1, :cond_5

    .line 206
    iget-object v0, p0, Lc8/gAk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 207
    iget-object v0, p0, Lc8/gAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/gAk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/jAk;->access$000(Lc8/jAk;Ljava/lang/String;)V

    .line 209
    :cond_4
    iget-object v0, p0, Lc8/gAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/gAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/gAk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/gAk;->val$isMedia:Z

    iget-object v4, p0, Lc8/gAk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/gAk;->val$callback:Lc8/Tzk;

    invoke-static/range {v0 .. v5}, Lc8/jAk;->access$100(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    goto :goto_0

    .line 211
    :cond_5
    iget-object v0, p0, Lc8/gAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/gAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/gAk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/gAk;->val$isMedia:Z

    iget-object v4, p0, Lc8/gAk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/gAk;->val$callback:Lc8/Tzk;

    invoke-static/range {v0 .. v5}, Lc8/jAk;->access$300(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    .line 212
    iget-object v0, v7, Lc8/izk;->desStr:Ljava/lang/String;

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_6
    iget-object v0, p0, Lc8/gAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/gAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/gAk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/gAk;->val$isMedia:Z

    iget-object v4, p0, Lc8/gAk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/gAk;->val$callback:Lc8/Tzk;

    invoke-static/range {v0 .. v5}, Lc8/jAk;->access$300(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
