.class public final Lc8/rOc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "alipay_cashier_statistic_record"

.field private static b:Lc8/tOc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lc8/rOc;->b:Lc8/tOc;

    if-eqz v0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_0
    new-instance v0, Lc8/tOc;

    invoke-direct {v0, p0}, Lc8/tOc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/rOc;->b:Lc8/tOc;

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x2

    const/4 v1, 0x0

    .line 59
    const-class v3, Lc8/rOc;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lc8/rOc;->b:Lc8/tOc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 64
    :goto_0
    monitor-exit v3

    return-void

    .line 62
    :cond_0
    :try_start_1
    sget-object v4, Lc8/rOc;->b:Lc8/tOc;

    .line 2099
    iget-object v2, v4, Lc8/tOc;->Q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1156
    if-eqz v2, :cond_1

    .line 1157
    const-string/jumbo v0, ""

    .line 3025
    :goto_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lc8/sOc;

    invoke-direct {v2, p0, v0}, Lc8/sOc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3054
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lc8/rOc;->b:Lc8/tOc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 2178
    :cond_1
    :try_start_2
    const-string/jumbo v2, "&"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2179
    if-eqz v5, :cond_5

    .line 2180
    array-length v6, v5

    move v2, v1

    move-object v1, v0

    :goto_2
    if-ge v2, v6, :cond_6

    aget-object v7, v5, v2

    .line 2181
    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2182
    if-eqz v7, :cond_2

    array-length v8, v7

    if-ne v8, v10, :cond_2

    .line 2183
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string/jumbo v9, "partner"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2184
    const/4 v8, 0x1

    aget-object v7, v7, v8

    const-string/jumbo v8, "\""

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 2180
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2185
    :cond_3
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string/jumbo v9, "out_trade_no"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2186
    const/4 v1, 0x1

    aget-object v1, v7, v1

    const-string/jumbo v7, "\""

    const-string/jumbo v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 2187
    :cond_4
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string/jumbo v9, "trade_no"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2188
    const/4 v0, 0x1

    aget-object v0, v7, v0

    const-string/jumbo v7, "\""

    const-string/jumbo v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v1, v0

    .line 2193
    :cond_6
    invoke-static {v0}, Lc8/tOc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2194
    invoke-static {v1}, Lc8/tOc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2195
    invoke-static {v1}, Lc8/tOc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2196
    const-string/jumbo v5, "%s,%s,-,%s,-,-,-"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1159
    iput-object v0, v4, Lc8/tOc;->J:Ljava/lang/String;

    .line 1160
    const-string/jumbo v0, "[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, v4, Lc8/tOc;->I:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, v4, Lc8/tOc;->J:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x2

    iget-object v5, v4, Lc8/tOc;->K:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget-object v5, v4, Lc8/tOc;->L:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x4

    iget-object v5, v4, Lc8/tOc;->M:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x5

    iget-object v5, v4, Lc8/tOc;->N:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x6

    iget-object v5, v4, Lc8/tOc;->O:Ljava/lang/String;

    aput-object v5, v1, v2

    const/4 v2, 0x7

    iget-object v5, v4, Lc8/tOc;->P:Ljava/lang/String;

    aput-object v5, v1, v2

    const/16 v2, 0x8

    iget-object v5, v4, Lc8/tOc;->Q:Ljava/lang/String;

    aput-object v5, v1, v2

    const/16 v2, 0x9

    iget-object v4, v4, Lc8/tOc;->R:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lc8/rOc;->b:Lc8/tOc;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v0, Lc8/rOc;->b:Lc8/tOc;

    invoke-virtual {v0, p0, p1, p2}, Lc8/tOc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lc8/rOc;->b:Lc8/tOc;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    sget-object v0, Lc8/rOc;->b:Lc8/tOc;

    invoke-virtual {v0, p0, p1, p2}, Lc8/tOc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lc8/rOc;->b:Lc8/tOc;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lc8/rOc;->b:Lc8/tOc;

    .line 3108
    invoke-static {p2}, Lc8/tOc;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 3109
    invoke-virtual {v0, p0, p1, v1, p3}, Lc8/tOc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lc8/rOc;->b:Lc8/tOc;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lc8/rOc;->b:Lc8/tOc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lc8/tOc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/sOc;

    invoke-direct {v1, p0, p1}, Lc8/sOc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    return-void
.end method
