.class public final Lc8/Ujg;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/Ojg;


# static fields
.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXApiImplV10"

.field private static wxappPayEntryClassname:Ljava/lang/String;


# instance fields
.field private appId:Ljava/lang/String;

.field private checkSignature:Z

.field private context:Landroid/content/Context;

.field private detached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lc8/Ujg;->wxappPayEntryClassname:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lc8/Ujg;->checkSignature:Z

    iput-boolean v0, p0, Lc8/Ujg;->detached:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<init>, appId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", checkSignature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-object p1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    iput-object p2, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    iput-boolean p3, p0, Lc8/Ujg;->checkSignature:Z

    return-void
.end method

.method private checkSumConsistent([B[B)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"

    const-string/jumbo v2, "checkSumConsistent fail, invalid arguments"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_3

    const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"

    const-string/jumbo v2, "checkSumConsistent fail, length is different"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_4

    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private createChatroom(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.tencent.mm.sdk.comm.provider/createChatroom"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x7

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string/jumbo v3, "_wxapi_basereq_transaction"

    const-string/jumbo v5, ""

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const/4 v3, 0x2

    const-string/jumbo v5, "_wxapi_create_chatroom_group_id"

    const-string/jumbo v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string/jumbo v5, "_wxapi_create_chatroom_chatroom_name"

    const-string/jumbo v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string/jumbo v5, "_wxapi_create_chatroom_chatroom_nickname"

    const-string/jumbo v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string/jumbo v5, "_wxapi_create_chatroom_ext_msg"

    const-string/jumbo v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x6

    const-string/jumbo v5, "_wxapi_basereq_openid"

    const-string/jumbo v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method private joinChatroom(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.tencent.mm.sdk.comm.provider/joinChatroom"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string/jumbo v3, "_wxapi_basereq_transaction"

    const-string/jumbo v5, ""

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const/4 v3, 0x2

    const-string/jumbo v5, "_wxapi_join_chatroom_group_id"

    const-string/jumbo v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string/jumbo v5, "_wxapi_join_chatroom_chatroom_nickname"

    const-string/jumbo v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string/jumbo v5, "_wxapi_join_chatroom_ext_msg"

    const-string/jumbo v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string/jumbo v5, "_wxapi_basereq_openid"

    const-string/jumbo v6, ""

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method private sendAddCardToWX(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.tencent.mm.sdk.comm.provider/addCardToWX"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string/jumbo v3, "_wxapi_add_card_to_wx_card_list"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string/jumbo v5, "_wxapi_basereq_transaction"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v6
.end method

.method private sendChooseCardFromWX(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.tencent.mm.sdk.comm.provider/chooseCardFromWX"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v3, 0xa

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "_wxapi_choose_card_from_wx_card_app_id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string/jumbo v3, "_wxapi_choose_card_from_wx_card_location_id"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string/jumbo v5, "_wxapi_choose_card_from_wx_card_sign_type"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string/jumbo v5, "_wxapi_choose_card_from_wx_card_card_sign"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string/jumbo v5, "_wxapi_choose_card_from_wx_card_time_stamp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string/jumbo v5, "_wxapi_choose_card_from_wx_card_nonce_str"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x6

    const-string/jumbo v5, "_wxapi_choose_card_from_wx_card_card_id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x7

    const-string/jumbo v5, "_wxapi_choose_card_from_wx_card_card_type"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0x8

    const-string/jumbo v5, "_wxapi_choose_card_from_wx_card_can_multi_select"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0x9

    const-string/jumbo v5, "_wxapi_basereq_transaction"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v6
.end method

.method private sendJumpToBizProfileReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.tencent.mm.sdk.comm.provider/jumpToBizProfile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string/jumbo v3, "_wxapi_jump_to_biz_profile_req_to_user_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const/4 v3, 0x2

    const-string/jumbo v5, "_wxapi_jump_to_biz_profile_req_ext_msg"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_wxapi_jump_to_biz_profile_req_scene"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_wxapi_jump_to_biz_profile_req_profile_type"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method private sendJumpToBizTempSessionReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.tencent.mm.sdk.comm.provider/jumpToBizTempSession"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string/jumbo v3, "_wxapi_jump_to_biz_webview_req_to_user_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const/4 v3, 0x2

    const-string/jumbo v5, "_wxapi_jump_to_biz_webview_req_session_from"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_wxapi_jump_to_biz_webview_req_show_type"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method private sendJumpToBizWebviewReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.tencent.mm.sdk.comm.provider/jumpToBizProfile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string/jumbo v3, "_wxapi_jump_to_biz_webview_req_to_user_name"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v7

    const/4 v3, 0x2

    const-string/jumbo v5, "_wxapi_jump_to_biz_webview_req_ext_msg"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_wxapi_jump_to_biz_webview_req_scene"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7
.end method

.method private sendOpenBusiLuckyMoney(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.tencent.mm.sdk.comm.provider/openBusiLuckyMoney"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string/jumbo v3, "_wxapi_open_busi_lucky_money_timeStamp"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string/jumbo v5, "_wxapi_open_busi_lucky_money_nonceStr"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string/jumbo v5, "_wxapi_open_busi_lucky_money_signType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string/jumbo v5, "_wxapi_open_busi_lucky_money_signature"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x5

    const-string/jumbo v5, "_wxapi_open_busi_lucky_money_package"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v6
.end method

.method private sendOpenRankListReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.tencent.mm.sdk.comm.provider/openRankList"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private sendOpenWebview(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.tencent.mm.sdk.comm.provider/openWebview"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string/jumbo v3, "_wxapi_jump_to_webview_url"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v6

    const/4 v3, 0x2

    const-string/jumbo v5, "_wxapi_basereq_transaction"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v6
.end method

.method private sendPayReq(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lc8/Ujg;->wxappPayEntryClassname:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lc8/Rjg;

    invoke-direct {v0, p1}, Lc8/Rjg;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "_wxapp_pay_entry_classname_"

    invoke-virtual {v0, v1, v2}, Lc8/Rjg;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Ujg;->wxappPayEntryClassname:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pay, set wxappPayEntryClassname = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lc8/Ujg;->wxappPayEntryClassname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lc8/Ujg;->wxappPayEntryClassname:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.tencent.mm"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.tencent.mm.BuildInfo.OPEN_SDK_PAY_ENTRY_CLASSNAME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Ujg;->wxappPayEntryClassname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lc8/Ujg;->wxappPayEntryClassname:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"

    const-string/jumbo v1, "pay fail, wxappPayEntryClassname is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get from metaData failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Lc8/big;

    invoke-direct {v0}, Lc8/big;-><init>()V

    iput-object p2, v0, Lc8/big;->d:Landroid/os/Bundle;

    const-string/jumbo v1, "com.tencent.mm"

    iput-object v1, v0, Lc8/big;->a:Ljava/lang/String;

    sget-object v1, Lc8/Ujg;->wxappPayEntryClassname:Ljava/lang/String;

    iput-object v1, v0, Lc8/big;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lc8/fig;->a(Landroid/content/Context;Lc8/big;)Z

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public final detach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ujg;->detached:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Ujg;->context:Landroid/content/Context;

    return-void
.end method

.method public final getWXAppSupportAPI()I
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lc8/Ujg;->detached:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "getWXAppSupportAPI fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lc8/Ujg;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"

    const-string/jumbo v2, "open wx app failed, not installed or signature check failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v1, Lc8/Rjg;

    iget-object v2, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lc8/Rjg;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "_build_info_sdk_int_"

    invoke-virtual {v1, v2, v0}, Lc8/Rjg;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.tencent.mm"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.tencent.mm.BuildInfo.OPEN_SDK_VERSION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "MicroMsg.SDK.WXApiImplV10"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get from metaData failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final handleIntent(Landroid/content/Intent;Lc8/Pjg;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v2, "com.tencent.mm.openapi.token"

    invoke-static {p1, v2}, Lc8/Tjg;->isIntentFromWx(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lc8/Ujg;->detached:Z

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "handleIntent fail, WXMsgImpl has been detached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "MicroMsg.SDK.WXApiImplV10"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleIntent fail, ex = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v2, "_mmessage_content"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "_mmessage_sdkVersion"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "_mmessage_appPackage"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"

    const-string/jumbo v2, "invalid argument"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "_mmessage_checksum"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v2, v3, v4}, Lc8/eig;->a(Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v5, v2}, Lc8/Ujg;->checkSumConsistent([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"

    const-string/jumbo v2, "checksum fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "_wxapi_command_type"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unknown cmd = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    new-instance v2, Lc8/mjg;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/mjg;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lc8/Pjg;->onResp(Lc8/Eig;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_2
    new-instance v2, Lc8/pjg;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/pjg;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lc8/Pjg;->onResp(Lc8/Eig;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_3
    new-instance v2, Lc8/fjg;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/fjg;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lc8/Pjg;->onReq(Lc8/Cig;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_4
    new-instance v2, Lc8/rjg;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/rjg;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lc8/Pjg;->onReq(Lc8/Cig;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_5
    new-instance v2, Lc8/Njg;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Njg;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lc8/Pjg;->onResp(Lc8/Eig;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_6
    new-instance v2, Lc8/ijg;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/ijg;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lc8/Pjg;->onReq(Lc8/Cig;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_7
    new-instance v2, Lc8/Gig;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Gig;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lc8/Pjg;->onResp(Lc8/Eig;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_8
    new-instance v2, Lc8/Kig;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Kig;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lc8/Pjg;->onResp(Lc8/Eig;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_9
    new-instance v2, Lc8/Nig;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Nig;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lc8/Pjg;->onResp(Lc8/Eig;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_a
    new-instance v2, Lc8/Qig;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/Qig;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lc8/Pjg;->onResp(Lc8/Eig;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_b
    new-instance v2, Lc8/djg;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lc8/djg;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p2, v2}, Lc8/Pjg;->onResp(Lc8/Eig;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method public final isWXAppInstalled()Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lc8/Ujg;->detached:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "isWXAppInstalled fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.tencent.mm"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lc8/Ujg;->context:Landroid/content/Context;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-boolean v3, p0, Lc8/Ujg;->checkSignature:Z

    invoke-static {v2, v1, v3}, Lc8/Tjg;->validateAppSignature(Landroid/content/Context;[Landroid/content/pm/Signature;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final isWXAppSupportAPI()Z
    .locals 2

    iget-boolean v0, p0, Lc8/Ujg;->detached:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "isWXAppSupportAPI fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lc8/Ujg;->getWXAppSupportAPI()I

    move-result v0

    const v1, 0x24000002

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final openWXApp()Z
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lc8/Ujg;->detached:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "openWXApp fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lc8/Ujg;->isWXAppInstalled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"

    const-string/jumbo v2, "open wx app failed, not installed or signature check failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    iget-object v2, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.tencent.mm"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "MicroMsg.SDK.WXApiImplV10"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startActivity fail, exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final registerApp(Ljava/lang/String;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lc8/Ujg;->registerApp(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public final registerApp(Ljava/lang/String;J)Z
    .locals 4

    iget-boolean v0, p0, Lc8/Ujg;->detached:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "registerApp fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc8/Ujg;->context:Landroid/content/Context;

    const-string/jumbo v1, "com.tencent.mm"

    iget-boolean v2, p0, Lc8/Ujg;->checkSignature:Z

    invoke-static {v0, v1, v2}, Lc8/Tjg;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"

    const-string/jumbo v1, "register app failed for wechat app signature check failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registerApp, appId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "registerApp, appId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_3

    iput-object p1, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "register app "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lc8/cig;

    invoke-direct {v0}, Lc8/cig;-><init>()V

    const-string/jumbo v1, "com.tencent.mm"

    iput-object v1, v0, Lc8/cig;->e:Ljava/lang/String;

    const-string/jumbo v1, "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER"

    iput-object v1, v0, Lc8/cig;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "weixin://registerapp?appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/cig;->c:Ljava/lang/String;

    iput-wide p2, v0, Lc8/cig;->g:J

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lc8/dig;->a(Landroid/content/Context;Lc8/cig;)Z

    move-result v0

    goto :goto_0
.end method

.method public final sendReq(Lc8/Cig;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lc8/Ujg;->detached:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sendReq fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.tencent.mm"

    iget-boolean v3, p0, Lc8/Ujg;->checkSignature:Z

    invoke-static {v1, v2, v3}, Lc8/Tjg;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"

    const-string/jumbo v2, "sendReq failed for wechat app signature check failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lc8/Cig;->checkArgs()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"

    const-string/jumbo v2, "sendReq checkArgs fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendReq, req type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc8/Cig;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lc8/Cig;->toBundle(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Lc8/Cig;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lc8/Ujg;->sendPayReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lc8/Cig;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lc8/Ujg;->sendJumpToBizProfileReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lc8/Cig;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lc8/Ujg;->sendJumpToBizWebviewReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lc8/Cig;->getType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lc8/Ujg;->sendJumpToBizTempSessionReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lc8/Cig;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lc8/Ujg;->sendAddCardToWX(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lc8/Cig;->getType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lc8/Ujg;->sendChooseCardFromWX(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p1}, Lc8/Cig;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lc8/Ujg;->sendOpenRankListReq(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Lc8/Cig;->getType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lc8/Ujg;->sendOpenWebview(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lc8/Cig;->getType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lc8/Ujg;->sendOpenBusiLuckyMoney(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lc8/Cig;->getType()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lc8/Ujg;->createChatroom(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Lc8/Cig;->getType()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lc8/Ujg;->joinChatroom(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    goto/16 :goto_0

    :cond_d
    new-instance v1, Lc8/big;

    invoke-direct {v1}, Lc8/big;-><init>()V

    iput-object v0, v1, Lc8/big;->d:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "weixin://sendreq?appid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lc8/big;->c:Ljava/lang/String;

    const-string/jumbo v0, "com.tencent.mm"

    iput-object v0, v1, Lc8/big;->a:Ljava/lang/String;

    const-string/jumbo v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    iput-object v0, v1, Lc8/big;->b:Ljava/lang/String;

    iget-object v0, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lc8/fig;->a(Landroid/content/Context;Lc8/big;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public final sendResp(Lc8/Eig;)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lc8/Ujg;->detached:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sendResp fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.tencent.mm"

    iget-boolean v3, p0, Lc8/Ujg;->checkSignature:Z

    invoke-static {v1, v2, v3}, Lc8/Tjg;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"

    const-string/jumbo v2, "sendResp failed for wechat app signature check failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lc8/Eig;->checkArgs()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "MicroMsg.SDK.WXApiImplV10"

    const-string/jumbo v2, "sendResp checkArgs fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0}, Lc8/Eig;->toBundle(Landroid/os/Bundle;)V

    new-instance v1, Lc8/big;

    invoke-direct {v1}, Lc8/big;-><init>()V

    iput-object v0, v1, Lc8/big;->d:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "weixin://sendresp?appid="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lc8/big;->c:Ljava/lang/String;

    const-string/jumbo v0, "com.tencent.mm"

    iput-object v0, v1, Lc8/big;->a:Ljava/lang/String;

    const-string/jumbo v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    iput-object v0, v1, Lc8/big;->b:Ljava/lang/String;

    iget-object v0, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lc8/fig;->a(Landroid/content/Context;Lc8/big;)Z

    move-result v0

    goto :goto_0
.end method

.method public final unregisterApp()V
    .locals 3

    iget-boolean v0, p0, Lc8/Ujg;->detached:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unregisterApp fail, WXMsgImpl has been detached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc8/Ujg;->context:Landroid/content/Context;

    const-string/jumbo v1, "com.tencent.mm"

    iget-boolean v2, p0, Lc8/Ujg;->checkSignature:Z

    invoke-static {v0, v1, v2}, Lc8/Tjg;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"

    const-string/jumbo v1, "unregister app failed for wechat app signature check failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregisterApp, appId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v0, "MicroMsg.SDK.WXApiImplV10"

    const-string/jumbo v1, "unregisterApp fail, appId is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregister app "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lc8/cig;

    invoke-direct {v0}, Lc8/cig;-><init>()V

    const-string/jumbo v1, "com.tencent.mm"

    iput-object v1, v0, Lc8/cig;->e:Ljava/lang/String;

    const-string/jumbo v1, "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_UNREGISTER"

    iput-object v1, v0, Lc8/cig;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "weixin://unregisterapp?appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc8/Ujg;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/cig;->c:Ljava/lang/String;

    iget-object v1, p0, Lc8/Ujg;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lc8/dig;->a(Landroid/content/Context;Lc8/cig;)Z

    goto :goto_0
.end method
