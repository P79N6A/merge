.class public abstract Lc8/Wzg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Vzg;,
        Lcom/xiaomi/mipush/sdk/MiPushClient$a;
    }
.end annotation


# static fields
.field public static final ACCEPT_TIME_SEPARATOR:Ljava/lang/String; = ","

.field public static final COMMAND_REGISTER:Ljava/lang/String; = "register"

.field public static final COMMAND_SET_ACCEPT_TIME:Ljava/lang/String; = "accept-time"

.field public static final COMMAND_SET_ACCOUNT:Ljava/lang/String; = "set-account"

.field public static final COMMAND_SET_ALIAS:Ljava/lang/String; = "set-alias"

.field public static final COMMAND_SUBSCRIBE_TOPIC:Ljava/lang/String; = "subscribe-topic"

.field public static final COMMAND_UNSET_ACCOUNT:Ljava/lang/String; = "unset-account"

.field public static final COMMAND_UNSET_ALIAS:Ljava/lang/String; = "unset-alias"

.field public static final COMMAND_UNSUBSCRIBE_TOPIC:Ljava/lang/String; = "unsubscibe-topic"

.field private static awakeService:Z

.field private static sContext:Landroid/content/Context;

.field private static sCurMsgId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lc8/Wzg;->awakeService:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lc8/Wzg;->sCurMsgId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static acceptTimeSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "accept_time"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lc8/Wzg;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static accountSetTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    const-string/jumbo v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "account_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static declared-synchronized addAcceptTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-class v1, Lc8/Wzg;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "accept_time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized addAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-class v1, Lc8/Wzg;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "account_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized addAlias(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-class v1, Lc8/Wzg;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "alias_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static addPullNotificationTime(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_pull_notification"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static addRegRequestTime(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_reg_request"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static declared-synchronized addTopic(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-class v1, Lc8/Wzg;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "topic_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static aliasSetTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    const-string/jumbo v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "alias_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static awakePushServices(Landroid/content/Context;)V
    .locals 6

    const-string/jumbo v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    sub-long/2addr v2, v4

    const-string/jumbo v1, "wake_up"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "wake_up"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/fAg;

    invoke-direct {v1, p0}, Lc8/fAg;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static checkManifest(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1004

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {p0}, Lc8/Wzg;->checkReceivers(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lc8/Wzg;->checkServices(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    invoke-static {p0, v0}, Lc8/Wzg;->checkPermissions(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lc8/Hzg;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "param "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not nullable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkPermissions(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ".permission.MIPUSH_RECEIVE"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.INTERNET"

    aput-object v5, v0, v1

    const-string/jumbo v5, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v5, v0, v2

    const/4 v5, 0x2

    aput-object v4, v0, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "android.permission.ACCESS_WIFI_STATE"

    aput-object v6, v0, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "android.permission.READ_PHONE_STATE"

    aput-object v6, v0, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "android.permission.GET_TASKS"

    aput-object v6, v0, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "android.permission.VIBRATE"

    aput-object v6, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v0, :cond_5

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    array-length v6, v5

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_5

    aget-object v7, v5, v0

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushClient$a;

    const-string/jumbo v3, "<permission android:name=\"%1$s\" /> is undefined."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/xiaomi/mipush/sdk/MiPushClient$a;-><init>(Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushClient$a;

    const-string/jumbo v4, "<use-permission android:name=\"%1$s\" /> is missing."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/xiaomi/mipush/sdk/MiPushClient$a;-><init>(Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)V

    throw v0

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private static checkReceivers(Landroid/content/Context;)V
    .locals 9

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-class v5, Lc8/uAg;

    new-array v6, v6, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v0, v5, v6}, Lc8/Wzg;->findAndCheckReceiverInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;[Ljava/lang/Boolean;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v5, Lc8/sAg;->o:Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string/jumbo v5, "com.xiaomi.push.service.receivers.PingReceiver"

    invoke-static {v5}, Lc8/Wzg;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Boolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v0, v5, v6}, Lc8/Wzg;->findAndCheckReceiverInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;[Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x4000

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lc8/Yzg;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Lc8/Wzg;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_0

    move v0, v3

    :goto_2
    if-eqz v0, :cond_1

    :goto_3
    if-nez v0, :cond_2

    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushClient$a;

    const-string/jumbo v1, "Receiver: none of the subclasses of PushMessageReceiver is enabled or defined."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient$a;-><init>(Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lc8/Hzg;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_2

    :cond_1
    move v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lc8/Hzg;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method private static checkServices(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "com.xiaomi.push.service.XMPushService"

    new-array v1, v10, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v9

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v9

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/xiaomi/mipush/sdk/MessageHandleService;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v9

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_3

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Boolean;

    aget-object v7, v0, v2

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-boolean v8, v6, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eq v7, v8, :cond_0

    new-instance v1, Lcom/xiaomi/mipush/sdk/MiPushClient$a;

    const-string/jumbo v3, "Wrong attribute: %n    <service android:name=\"%1$s\" .../> android:enabled should be %<b."

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v2

    aget-object v0, v0, v2

    aput-object v0, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient$a;-><init>(Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)V

    throw v1

    :cond_0
    aget-object v7, v0, v9

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-boolean v8, v6, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eq v7, v8, :cond_1

    new-instance v1, Lcom/xiaomi/mipush/sdk/MiPushClient$a;

    const-string/jumbo v3, "Wrong attribute: %n    <service android:name=\"%1$s\" .../> android:exported should be %<b."

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v2

    aget-object v0, v0, v9

    aput-object v0, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v6}, Lcom/xiaomi/mipush/sdk/MiPushClient$a;-><init>(Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)V

    throw v1

    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushClient$a;

    const-string/jumbo v1, "<service android:name=\"%1$s\" /> is missing or disabled."

    new-array v4, v9, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient$a;-><init>(Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)V

    throw v0

    :cond_4
    return-void
.end method

.method protected static clearExtras(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const-string/jumbo v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "wake_up"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-string/jumbo v1, "wake_up"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static clearLocalNotificationType(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lAg;->e()V

    return-void
.end method

.method public static clearNotification(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lc8/lAg;->a(I)V

    return-void
.end method

.method public static clearNotification(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/lAg;->a(I)V

    return-void
.end method

.method private static findAndCheckReceiverInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/Class;[Ljava/lang/Boolean;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x4000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/ali/mobisecenhance/ReflectMap;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v3, p3, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-boolean v4, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eq v3, v4, :cond_1

    new-instance v3, Lcom/xiaomi/mipush/sdk/MiPushClient$a;

    const-string/jumbo v4, "Wrong attribute: %n    <receiver android:name=\"%1$s\" .../> android:enabled should be %<b."

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    aget-object v2, p3, v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient$a;-><init>(Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)V

    throw v3

    :cond_1
    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-boolean v4, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eq v3, v4, :cond_2

    new-instance v3, Lcom/xiaomi/mipush/sdk/MiPushClient$a;

    const-string/jumbo v4, "Wrong attribute: %n    <receiver android:name=\"%1$s\" .../> android:exported should be %<b."

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    aget-object v2, p3, v1

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lcom/xiaomi/mipush/sdk/MiPushClient$a;-><init>(Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)V

    throw v3

    :cond_2
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Lcom/xiaomi/mipush/sdk/MiPushClient$a;

    const-string/jumbo v3, "<receiver android:name=\"%1$s\" /> is missing or disabled."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/ali/mobisecenhance/ReflectMap;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient$a;-><init>(Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)V

    throw v0

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method protected static declared-synchronized generatePacketID()Ljava/lang/String;
    .locals 6

    const-class v1, Lc8/Wzg;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    invoke-static {v2}, Lc8/Qzg;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lc8/Wzg;->sCurMsgId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-wide v2, Lc8/Wzg;->sCurMsgId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lc8/Wzg;->sCurMsgId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getAllAlias(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "alias_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "alias_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getAllTopic(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "topic_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "**ALL**"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "topic_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getAllUserAccount(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "account_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "account_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getRegId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cAg;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cAg;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Vzg;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string/jumbo v2, "context"

    invoke-static {p0, v2}, Lc8/Wzg;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "appID"

    invoke-static {p1, v2}, Lc8/Wzg;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "appToken"

    invoke-static {p2, v2}, Lc8/Wzg;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lc8/Wzg;->sContext:Landroid/content/Context;

    if-nez v2, :cond_0

    sput-object p0, Lc8/Wzg;->sContext:Landroid/content/Context;

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Lc8/Vzg;)V

    :cond_1
    sget-object v2, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/cAg;->m()I

    move-result v2

    invoke-static {}, Lc8/Rzg;->a()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    sget-object v2, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/Wzg;->shouldSendRegRequest(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lAg;->a()V

    const-string/jumbo v0, "Could not send  register message within 5s repeatly ."

    invoke-static {v0}, Lc8/Hzg;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    if-nez v0, :cond_a

    sget-object v2, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lc8/cAg;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/cAg;->n()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {p0}, Lc8/Xzg;->getPushMode(Landroid/content/Context;)I

    move-result v0

    if-ne v1, v0, :cond_9

    const-string/jumbo v0, "callback"

    invoke-static {p3, v0}, Lc8/Wzg;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v3

    invoke-virtual {v3}, Lc8/cAg;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v0, v1, v2, v3}, Lc8/Vzg;->onInitializeResult(JLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lAg;->a()V

    sget-object v0, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cAg;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/xiaomi/xmpush/thrift/i;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/i;-><init>()V

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cAg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/i;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    const-string/jumbo v1, "client_info_update"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/i;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    invoke-static {}, Lc8/Wzg;->generatePacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/i;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/xiaomi/xmpush/thrift/i;->h:Ljava/util/Map;

    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/i;->h:Ljava/util/Map;

    const-string/jumbo v2, "app_version"

    sget-object v3, Lc8/Wzg;->sContext:Landroid/content/Context;

    sget-object v4, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/cAg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/i;->h:Ljava/util/Map;

    const-string/jumbo v2, "push_sdk_vn"

    const-string/jumbo v3, "2_2_22"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/xiaomi/xmpush/thrift/i;->h:Ljava/util/Map;

    const-string/jumbo v2, "push_sdk_vc"

    const/16 v3, 0x4efe

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cAg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/xiaomi/xmpush/thrift/i;->h:Ljava/util/Map;

    const-string/jumbo v3, "deviceid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lc8/lAg;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/c;)V

    :cond_5
    sget-object v0, Lc8/Wzg;->sContext:Landroid/content/Context;

    const-string/jumbo v1, "update_devId"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc8/Dzg;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lc8/Wzg;->updateIMEI()V

    sget-object v0, Lc8/Wzg;->sContext:Landroid/content/Context;

    const-string/jumbo v1, "update_devId"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc8/Dzg;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_6
    sget-object v0, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Wzg;->shouldUseMIUIPush(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Wzg;->shouldPullNotification(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v1, Lcom/xiaomi/xmpush/thrift/i;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/i;-><init>()V

    sget-object v0, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cAg;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/i;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    const-string/jumbo v0, "pull"

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/i;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    invoke-static {}, Lc8/Wzg;->generatePacketID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/i;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/i;->a(Z)Lcom/xiaomi/xmpush/thrift/i;

    sget-object v0, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lc8/lAg;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/c;Z)V

    sget-object v0, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Wzg;->addPullNotificationTime(Landroid/content/Context;)V

    :cond_7
    :goto_2
    sget-boolean v0, Lc8/Wzg;->awakeService:Z

    if-eqz v0, :cond_8

    sget-object v0, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Wzg;->awakePushServices(Landroid/content/Context;)V

    :cond_8
    sget-object v0, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Wzg;->addRegRequestTime(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lc8/Hzg;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_9
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cAg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "register"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc8/Xzg;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    sget-object v1, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lc8/Xzg;->sendCommandMessageBroadcast(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto/16 :goto_1

    :cond_a
    const/4 v1, 0x6

    invoke-static {v1}, Lc8/Qzg;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/cAg;->h()V

    sget-object v2, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v2

    invoke-static {}, Lc8/Rzg;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lc8/cAg;->a(I)V

    sget-object v2, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Lc8/cAg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lc8/Wzg;->clearExtras(Landroid/content/Context;)V

    new-instance v2, Lcom/xiaomi/xmpush/thrift/j;

    invoke-direct {v2}, Lcom/xiaomi/xmpush/thrift/j;-><init>()V

    invoke-static {}, Lc8/Wzg;->generatePacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/j;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {v2, p1}, Lcom/xiaomi/xmpush/thrift/j;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {v2, p2}, Lcom/xiaomi/xmpush/thrift/j;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/xmpush/thrift/j;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {v2, v1}, Lcom/xiaomi/xmpush/thrift/j;->f(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lc8/cAg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaomi/xmpush/thrift/j;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    const-string/jumbo v1, "2_2_22"

    invoke-virtual {v2, v1}, Lcom/xiaomi/xmpush/thrift/j;->g(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    const-wide/16 v4, 0x4efe

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/xmpush/thrift/j;->a(J)Lcom/xiaomi/xmpush/thrift/j;

    sget-object v1, Lc8/Wzg;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lc8/lAg;->a(Lcom/xiaomi/xmpush/thrift/j;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public static pausePush(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lc8/Wzg;->setAcceptTime(Landroid/content/Context;IIIILjava/lang/String;)V

    return-void
.end method

.method static reInitialize(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cAg;->i()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Lc8/Qzg;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cAg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v2

    invoke-virtual {v2}, Lc8/cAg;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v3

    invoke-virtual {v3}, Lc8/cAg;->h()V

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lc8/cAg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/xiaomi/xmpush/thrift/j;

    invoke-direct {v3}, Lcom/xiaomi/xmpush/thrift/j;-><init>()V

    invoke-static {}, Lc8/Wzg;->generatePacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/xmpush/thrift/j;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {v3, v1}, Lcom/xiaomi/xmpush/thrift/j;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {v3, v2}, Lcom/xiaomi/xmpush/thrift/j;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {v3, v0}, Lcom/xiaomi/xmpush/thrift/j;->f(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/xmpush/thrift/j;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/cAg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/xmpush/thrift/j;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/j;

    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lc8/lAg;->a(Lcom/xiaomi/xmpush/thrift/j;Z)V

    goto :goto_0
.end method

.method public static registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/dAg;

    invoke-direct {v1, p0, p1, p2}, Lc8/dAg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static declared-synchronized removeAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lc8/Wzg;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "account_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized removeAlias(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lc8/Wzg;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "alias_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized removeTopic(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v1, Lc8/Wzg;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "topic_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static reportIgnoreRegMessageClicked(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Lcom/xiaomi/xmpush/thrift/i;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/i;-><init>()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "do not report clicked message"

    invoke-static {v0}, Lc8/Hzg;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, p4}, Lcom/xiaomi/xmpush/thrift/i;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    const-string/jumbo v0, "bar:click"

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/i;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/i;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    invoke-virtual {v1, v3}, Lcom/xiaomi/xmpush/thrift/i;->a(Z)Lcom/xiaomi/xmpush/thrift/i;

    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    move-object v5, p2

    move v6, v4

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lc8/lAg;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZZLcom/xiaomi/xmpush/thrift/c;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 3

    new-instance v0, Lcom/xiaomi/xmpush/thrift/c;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/c;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/c;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/c;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/c;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/c;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getNotifyId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/c;->c(I)Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getNotifyType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/c;->a(I)Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getPassThrough()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/c;->b(I)Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/c;->a(Ljava/util/Map;)Lcom/xiaomi/xmpush/thrift/c;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lc8/Wzg;->reportMessageClicked(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/c;Ljava/lang/String;)V

    return-void
.end method

.method public static reportMessageClicked(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lc8/Wzg;->reportMessageClicked(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/c;Ljava/lang/String;)V

    return-void
.end method

.method static reportMessageClicked(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/xmpush/thrift/c;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/xmpush/thrift/i;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/i;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cAg;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cAg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/i;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    :goto_0
    const-string/jumbo v1, "bar:click"

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/i;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/i;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    invoke-virtual {v0, v3}, Lcom/xiaomi/xmpush/thrift/i;->a(Z)Lcom/xiaomi/xmpush/thrift/i;

    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->i:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {v1, v0, v2, v3, p2}, Lc8/lAg;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;ZLcom/xiaomi/xmpush/thrift/c;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "do not report clicked message"

    invoke-static {v0}, Lc8/Hzg;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p3}, Lcom/xiaomi/xmpush/thrift/i;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/i;

    goto :goto_0
.end method

.method public static resumePush(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v3, 0x17

    const/16 v4, 0x3b

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lc8/Wzg;->setAcceptTime(Landroid/content/Context;IIIILjava/lang/String;)V

    return-void
.end method

.method public static setAcceptTime(Landroid/content/Context;IIIILjava/lang/String;)V
    .locals 14

    if-ltz p1, :cond_0

    const/16 v2, 0x18

    if-ge p1, v2, :cond_0

    if-ltz p3, :cond_0

    const/16 v2, 0x18

    move/from16 v0, p3

    if-ge v0, v2, :cond_0

    if-ltz p2, :cond_0

    const/16 v2, 0x3c

    move/from16 v0, p2

    if-ge v0, v2, :cond_0

    if-ltz p4, :cond_0

    const/16 v2, 0x3c

    move/from16 v0, p4

    if-lt v0, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "the input parameter is not valid."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo v2, "GMT+08"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    const-wide/16 v4, 0x5a0

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    mul-int/lit8 v6, p1, 0x3c

    add-int v6, v6, p2

    int-to-long v6, v6

    add-long/2addr v6, v2

    add-long/2addr v6, v4

    rem-long/2addr v6, v4

    mul-int/lit8 v8, p3, 0x3c

    add-int v8, v8, p4

    int-to-long v8, v8

    add-long/2addr v2, v8

    add-long/2addr v2, v4

    rem-long/2addr v2, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "%1$02d:%2$02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v10, 0x3c

    div-long v10, v6, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-wide/16 v10, 0x3c

    rem-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "%1$02d:%2$02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3c

    div-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-wide/16 v8, 0x3c

    rem-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "%1$02d:%2$02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "%1$02d:%2$02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lc8/Wzg;->acceptTimeSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-static {p0}, Lc8/Xzg;->getPushMode(Landroid/content/Context;)I

    move-result v3

    if-ne v2, v3, :cond_2

    const-string/jumbo v5, "accept-time"

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object/from16 v4, p5

    invoke-static/range {v3 .. v9}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v8, "accept-time"

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lc8/Xzg;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v2

    invoke-static {p0, v2}, Lc8/Xzg;->sendCommandMessageBroadcast(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "accept-time"

    move-object/from16 v0, p5

    invoke-static {p0, v2, v4, v0}, Lc8/Wzg;->setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "set-alias"

    invoke-static {p0, v0, p1, p2}, Lc8/Wzg;->setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected static setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v0, "set-alias"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p2}, Lc8/Wzg;->aliasSetTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    invoke-static {p0}, Lc8/Xzg;->getPushMode(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "set-alias"

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lc8/Xzg;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/Xzg;->sendCommandMessageBroadcast(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "unset-alias"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p2}, Lc8/Wzg;->aliasSetTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Don\'t cancel alias for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is unseted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Hzg;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "set-account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p2}, Lc8/Wzg;->accountSetTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    const/4 v0, 0x1

    invoke-static {p0}, Lc8/Xzg;->getPushMode(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_4

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "set-account"

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lc8/Xzg;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/Xzg;->sendCommandMessageBroadcast(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "unset-account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0, p2}, Lc8/Wzg;->accountSetTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Don\'t cancel account for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is unseted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Hzg;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p0, p1, v7, p3}, Lc8/Wzg;->setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected static setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cAg;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/xiaomi/xmpush/thrift/f;

    invoke-direct {v1}, Lcom/xiaomi/xmpush/thrift/f;-><init>()V

    invoke-static {}, Lc8/Wzg;->generatePacketID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/f;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/f;

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cAg;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/f;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/f;

    invoke-virtual {v1, p1}, Lcom/xiaomi/xmpush/thrift/f;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/f;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/f;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p3}, Lcom/xiaomi/xmpush/thrift/f;->f(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/f;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/xmpush/thrift/f;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/f;

    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->j:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lc8/lAg;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;Lcom/xiaomi/xmpush/thrift/c;)V

    goto :goto_0
.end method

.method public static setLocalNotificationType(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/lAg;->b(I)V

    return-void
.end method

.method public static setUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "set-account"

    invoke-static {p0, v0, p1, p2}, Lc8/Wzg;->setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static shouldPullNotification(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    const-string/jumbo v1, "mipush_extra"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "last_pull_notification"

    const-wide/16 v6, -0x1

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static shouldSendRegRequest(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    const-string/jumbo v1, "mipush_extra"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "last_reg_request"

    const-wide/16 v6, -0x1

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static shouldUseMIUIPush(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/lAg;->b()Z

    move-result v0

    return v0
.end method

.method public static subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cAg;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1}, Lc8/Wzg;->topicSubscribedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    new-instance v0, Lcom/xiaomi/xmpush/thrift/o;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/o;-><init>()V

    invoke-static {}, Lc8/Wzg;->generatePacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/o;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/o;

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cAg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/o;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/o;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/o;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/o;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/o;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/o;

    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/o;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/o;

    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->c:Lcom/xiaomi/xmpush/thrift/a;

    invoke-virtual {v1, v0, v2, v4}, Lc8/lAg;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;Lcom/xiaomi/xmpush/thrift/c;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-static {p0}, Lc8/Xzg;->getPushMode(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_3

    move-object v0, p0

    move-object v1, p2

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "subscribe-topic"

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lc8/Xzg;->generateCommandMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;

    move-result-object v0

    invoke-static {p0, v0}, Lc8/Xzg;->sendCommandMessageBroadcast(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V

    goto :goto_0
.end method

.method public static topicSubscribedTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    const-string/jumbo v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "topic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static unregisterPush(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cAg;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/xmpush/thrift/q;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/q;-><init>()V

    invoke-static {}, Lc8/Wzg;->generatePacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/q;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/q;

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cAg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/q;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/q;

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cAg;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/q;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/q;

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cAg;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/q;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/q;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/q;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/q;

    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/lAg;->a(Lcom/xiaomi/xmpush/thrift/q;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cAg;->k()V

    invoke-static {p0}, Lc8/Wzg;->clearExtras(Landroid/content/Context;)V

    invoke-static {p0}, Lc8/Wzg;->clearLocalNotificationType(Landroid/content/Context;)V

    invoke-static {p0}, Lc8/Wzg;->clearNotification(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static unsetAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "unset-alias"

    invoke-static {p0, v0, p1, p2}, Lc8/Wzg;->setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unsetUserAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "unset-account"

    invoke-static {p0, v0, p1, p2}, Lc8/Wzg;->setCommand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unsubscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cAg;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lc8/Wzg;->topicSubscribedTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Don\'t cancel subscribe for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is unsubscribed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Hzg;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/xmpush/thrift/s;

    invoke-direct {v0}, Lcom/xiaomi/xmpush/thrift/s;-><init>()V

    invoke-static {}, Lc8/Wzg;->generatePacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/s;->a(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/s;

    invoke-static {p0}, Lc8/cAg;->a(Landroid/content/Context;)Lc8/cAg;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cAg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/s;->b(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/s;

    invoke-virtual {v0, p1}, Lcom/xiaomi/xmpush/thrift/s;->c(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/s;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/xmpush/thrift/s;->d(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/s;

    invoke-virtual {v0, p2}, Lcom/xiaomi/xmpush/thrift/s;->e(Ljava/lang/String;)Lcom/xiaomi/xmpush/thrift/s;

    invoke-static {p0}, Lc8/lAg;->a(Landroid/content/Context;)Lc8/lAg;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/xmpush/thrift/a;->d:Lcom/xiaomi/xmpush/thrift/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lc8/lAg;->a(Lorg/apache/thrift/a;Lcom/xiaomi/xmpush/thrift/a;Lcom/xiaomi/xmpush/thrift/c;)V

    goto :goto_0
.end method

.method private static updateIMEI()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/eAg;

    invoke-direct {v1}, Lc8/eAg;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
