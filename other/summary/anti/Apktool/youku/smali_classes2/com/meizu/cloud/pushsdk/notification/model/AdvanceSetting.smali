.class public Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;
.super Ljava/lang/Object;
.source "AdvanceSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ADVANCE_SETTING:Ljava/lang/String; = "as"

.field public static final CLEAR_NOTIFICATION:Ljava/lang/String; = "cn"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEAD_UP_NOTIFICATION:Ljava/lang/String; = "hn"

.field public static final NETWORK_TYPE:Ljava/lang/String; = "it"

.field public static final NOTIFY_TYPE:Ljava/lang/String; = "nt"

.field public static final TAG:Ljava/lang/String; = "advance_setting"


# instance fields
.field private clearNotification:Z

.field private headUpNotification:Z

.field private netWorkType:I

.field private notifyType:Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lc8/iKd;

    invoke-direct {v0}, Lc8/iKd;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->netWorkType:I

    .line 32
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->clearNotification:Z

    .line 36
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->headUpNotification:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->netWorkType:I

    .line 32
    iput-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->clearNotification:Z

    .line 36
    iput-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->headUpNotification:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->netWorkType:I

    .line 63
    const-class v0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->notifyType:Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->clearNotification:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->headUpNotification:Z

    .line 66
    return-void

    :cond_0
    move v0, v2

    .line 64
    goto :goto_0

    :cond_1
    move v1, v2

    .line 65
    goto :goto_1
.end method

.method public static parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;
    .locals 6
    .param p0, "setting"    # Ljava/lang/String;

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "advanceObj":Lorg/json/JSONObject;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "advanceObj":Lorg/json/JSONObject;
    .local v1, "advanceObj":Lorg/json/JSONObject;
    move-object v0, v1

    .line 126
    .end local v1    # "advanceObj":Lorg/json/JSONObject;
    .restart local v0    # "advanceObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    move-result-object v3

    return-object v3

    .line 122
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "advance_setting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parse json string error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;
    .locals 5
    .param p0, "advanceObj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 130
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;-><init>()V

    .line 131
    .local v0, "advanceSetting":Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;
    if-eqz p0, :cond_6

    .line 133
    :try_start_0
    const-string/jumbo v4, "it"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 134
    const-string/jumbo v4, "it"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->setNetWorkType(I)V

    .line 136
    :cond_0
    const-string/jumbo v4, "nt"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 137
    const-string/jumbo v4, "nt"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->setNotifyType(Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;)V

    .line 139
    :cond_1
    const-string/jumbo v4, "cn"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 140
    const-string/jumbo v4, "cn"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->setClearNotification(Z)V

    .line 142
    :cond_2
    const-string/jumbo v4, "hn"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 143
    const-string/jumbo v4, "hn"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    invoke-virtual {v0, v2}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->setHeadUpNotification(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_3
    :goto_2
    return-object v0

    :cond_4
    move v4, v3

    .line 140
    goto :goto_0

    :cond_5
    move v2, v3

    .line 143
    goto :goto_1

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "advance_setting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parse json obj error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 149
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_6
    const-string/jumbo v2, "advance_setting"

    const-string/jumbo v3, "no such tag advance_setting"

    invoke-static {v2, v3}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getNetWorkType()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->netWorkType:I

    return v0
.end method

.method public getNotifyType()Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->notifyType:Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    return-object v0
.end method

.method public isClearNotification()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->clearNotification:Z

    return v0
.end method

.method public isHeadUpNotification()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->headUpNotification:Z

    return v0
.end method

.method public setClearNotification(Z)V
    .locals 0
    .param p1, "clearNotification"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->clearNotification:Z

    .line 107
    return-void
.end method

.method public setHeadUpNotification(Z)V
    .locals 0
    .param p1, "headUpNotification"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->headUpNotification:Z

    .line 115
    return-void
.end method

.method public setNetWorkType(I)V
    .locals 0
    .param p1, "netWorkType"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->netWorkType:I

    .line 91
    return-void
.end method

.method public setNotifyType(Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;)V
    .locals 0
    .param p1, "notifyType"    # Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->notifyType:Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AdvanceSetting{netWorkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->netWorkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", notifyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->notifyType:Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", clearNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->clearNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", headUpNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->headUpNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    iget v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->netWorkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->notifyType:Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 77
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->clearNotification:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->headUpNotification:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    return-void

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0

    :cond_1
    move v1, v2

    .line 78
    goto :goto_1
.end method
