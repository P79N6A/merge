.class public Lc8/Chg;
.super Landroid/app/Dialog;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Bhg;,
        Lc8/yhg;,
        Lc8/zhg;,
        Lc8/Ahg;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lc8/zhg;

.field private c:Lc8/Dmg;

.field private d:Landroid/os/Handler;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/ProgressBar;

.field private i:Ljava/lang/String;

.field private j:Lc8/Wlg;

.field private k:Landroid/content/Context;

.field private l:Lc8/Amg;

.field private m:Z

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:J

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 78
    :try_start_0
    invoke-static {}, Lc8/kmg;->a()Landroid/content/Context;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/shg;->SECURE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/shg;->SECURE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Chg;->_1load(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-->load lib success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/shg;->SECURE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string/jumbo v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-->fail, because so is not exists:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/shg;->SECURE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string/jumbo v1, "openSDK_LOG.AuthDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "-->load lib error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/shg;->SECURE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lc8/vlg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 88
    :cond_1
    :try_start_1
    const-string/jumbo v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-->load lib fail, because context is null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/shg;->SECURE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Dmg;Lc8/thg;)V
    .locals 6

    .prologue
    .line 130
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Chg;->m:Z

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Chg;->q:J

    .line 126
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lc8/Chg;->r:J

    .line 131
    iput-object p1, p0, Lc8/Chg;->k:Landroid/content/Context;

    .line 132
    iput-object p3, p0, Lc8/Chg;->a:Ljava/lang/String;

    .line 133
    new-instance v0, Lc8/zhg;

    invoke-virtual {p5}, Lc8/thg;->getAppId()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/zhg;-><init>(Lc8/Chg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Dmg;)V

    iput-object v0, p0, Lc8/Chg;->b:Lc8/zhg;

    .line 134
    new-instance v0, Lc8/Ahg;

    iget-object v1, p0, Lc8/Chg;->b:Lc8/zhg;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lc8/Ahg;-><init>(Lc8/Chg;Lc8/zhg;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/Chg;->d:Landroid/os/Handler;

    .line 135
    iput-object p4, p0, Lc8/Chg;->c:Lc8/Dmg;

    .line 136
    iput-object p2, p0, Lc8/Chg;->i:Ljava/lang/String;

    .line 137
    new-instance v0, Lc8/Amg;

    invoke-direct {v0}, Lc8/Amg;-><init>()V

    iput-object v0, p0, Lc8/Chg;->l:Lc8/Amg;

    .line 139
    invoke-virtual {p0}, Lc8/Chg;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 140
    return-void
.end method

.method private static _1load(Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/ali/mobisecenhance/Library;->isKeepSoload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    const/4 v1, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/Library;->before_System_load(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object p0, v2

    :cond_1
    const/4 v3, 0x0

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_2
    :goto_0
    invoke-static {v0, v3}, Lcom/ali/mobisecenhance/Library;->after_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lc8/Chg;J)J
    .locals 1

    .prologue
    .line 63
    iput-wide p1, p0, Lc8/Chg;->q:J

    return-wide p1
.end method

.method static synthetic a(Lc8/Chg;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Chg;->k:Landroid/content/Context;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lc8/Chg;->a:Ljava/lang/String;

    iget-object v1, p0, Lc8/Chg;->a:Ljava/lang/String;

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://qzs.qq.com/open/mobile/login/qzsjump.html?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    const-string/jumbo v1, "openSDK_LOG.AuthDialog"

    const-string/jumbo v2, "-->generateDownloadUrl, url: http://qzs.qq.com/open/mobile/login/qzsjump.html?"

    invoke-static {v1, v2}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-object v0
.end method

.method static synthetic a(Lc8/Chg;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/Chg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Chg;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lc8/Chg;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lc8/Chg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lc8/Chg;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/Chg;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 258
    iget-object v1, p0, Lc8/Chg;->p:Ljava/lang/String;

    iget-object v2, p0, Lc8/Chg;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    const-string/jumbo v2, "_u_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-static {p0, p1}, Lc8/Chg;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lc8/Chg;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lc8/Chg;->m:Z

    return p1
.end method

.method static synthetic b(Lc8/Chg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lc8/Chg;->p:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 476
    invoke-direct {p0}, Lc8/Chg;->c()V

    .line 477
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 480
    new-instance v1, Lc8/Wlg;

    iget-object v2, p0, Lc8/Chg;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Lc8/Wlg;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/Chg;->j:Lc8/Wlg;

    .line 481
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 483
    iget-object v1, p0, Lc8/Chg;->j:Lc8/Wlg;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lc8/Wlg;->setLayerType(ILandroid/graphics/Paint;)V

    .line 486
    :cond_0
    iget-object v1, p0, Lc8/Chg;->j:Lc8/Wlg;

    invoke-virtual {v1, v0}, Lc8/Wlg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lc8/Chg;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lc8/Chg;->e:Landroid/widget/FrameLayout;

    .line 489
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 490
    iget-object v1, p0, Lc8/Chg;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    iget-object v0, p0, Lc8/Chg;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lc8/Chg;->j:Lc8/Wlg;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 493
    iget-object v0, p0, Lc8/Chg;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lc8/Chg;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 495
    iget-object v0, p0, Lc8/Chg;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lc8/Chg;->setContentView(Landroid/view/View;)V

    .line 496
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 646
    :try_start_0
    invoke-static {p1}, Lc8/umg;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 647
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 649
    const-string/jumbo v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    return-void

    .line 652
    :catch_0
    move-exception v0

    .line 653
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lc8/Chg;)Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lc8/Chg;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lc8/Chg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lc8/Chg;->o:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 9

    .prologue
    const/16 v8, 0x50

    const/16 v7, 0x28

    const/16 v6, 0x11

    const/16 v5, 0xff

    const/4 v4, -0x2

    .line 499
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lc8/Chg;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Chg;->h:Landroid/widget/ProgressBar;

    .line 500
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 503
    iget-object v1, p0, Lc8/Chg;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lc8/Chg;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Chg;->f:Landroid/widget/LinearLayout;

    .line 505
    const/4 v0, 0x0

    .line 506
    iget-object v1, p0, Lc8/Chg;->i:Ljava/lang/String;

    const-string/jumbo v2, "action_login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 510
    const/16 v0, 0x10

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 511
    const/4 v0, 0x5

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 512
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lc8/Chg;->k:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 513
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 514
    const-string/jumbo v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 515
    const-string/jumbo v2, "\u767b\u5f55\u4e2d..."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    :goto_0
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 520
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 521
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 527
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 528
    iget-object v2, p0, Lc8/Chg;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    iget-object v1, p0, Lc8/Chg;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lc8/Chg;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 530
    if-eqz v0, :cond_1

    .line 531
    iget-object v1, p0, Lc8/Chg;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 533
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lc8/Chg;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Chg;->g:Landroid/widget/FrameLayout;

    .line 534
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 537
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 538
    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 539
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 540
    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 541
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 542
    iget-object v1, p0, Lc8/Chg;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    iget-object v0, p0, Lc8/Chg;->g:Landroid/widget/FrameLayout;

    const/high16 v1, 0x1080000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 544
    iget-object v0, p0, Lc8/Chg;->g:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lc8/Chg;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 545
    return-void

    .line 517
    :cond_2
    const-string/jumbo v2, "Logging in..."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic c(Lc8/Chg;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lc8/Chg;->m:Z

    return v0
.end method

.method static synthetic d(Lc8/Chg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Chg;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 552
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    invoke-virtual {v0, v3}, Lc8/Wlg;->setVerticalScrollBarEnabled(Z)V

    .line 553
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    invoke-virtual {v0, v3}, Lc8/Wlg;->setHorizontalScrollBarEnabled(Z)V

    .line 554
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    new-instance v1, Lc8/yhg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc8/yhg;-><init>(Lc8/Chg;Lc8/uhg;)V

    invoke-virtual {v0, v1}, Lc8/Wlg;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 555
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Lc8/Wlg;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 556
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    invoke-virtual {v0}, Lc8/Wlg;->clearFormData()V

    .line 559
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    invoke-virtual {v0}, Lc8/Wlg;->clearSslPreferences()V

    .line 560
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    new-instance v1, Lc8/uhg;

    invoke-direct {v1, p0}, Lc8/uhg;-><init>(Lc8/Chg;)V

    invoke-virtual {v0, v1}, Lc8/Wlg;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 568
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    new-instance v1, Lc8/vhg;

    invoke-direct {v1, p0}, Lc8/vhg;-><init>(Lc8/Chg;)V

    invoke-virtual {v0, v1}, Lc8/Wlg;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 585
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    invoke-virtual {v0}, Lc8/Wlg;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 586
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 587
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 589
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 592
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 593
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 594
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 596
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 597
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 599
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 600
    iget-object v1, p0, Lc8/Chg;->k:Landroid/content/Context;

    const-string/jumbo v2, "databases"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 604
    const-string/jumbo v0, "openSDK_LOG.AuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-->mUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Chg;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/vlg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lc8/Chg;->a:Ljava/lang/String;

    iput-object v0, p0, Lc8/Chg;->o:Ljava/lang/String;

    .line 606
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    iget-object v1, p0, Lc8/Chg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Wlg;->loadUrl(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lc8/Wlg;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    invoke-virtual {v0}, Lc8/Wlg;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 610
    iget-object v0, p0, Lc8/Chg;->l:Lc8/Amg;

    new-instance v1, Lc8/ymg;

    invoke-direct {v1}, Lc8/ymg;-><init>()V

    const-string/jumbo v2, "SecureJsInterface"

    invoke-virtual {v0, v1, v2}, Lc8/Amg;->a(Lc8/llg;Ljava/lang/String;)V

    .line 612
    sput-boolean v3, Lc8/ymg;->isPWDEdit:Z

    .line 614
    new-instance v0, Lc8/whg;

    invoke-direct {v0, p0}, Lc8/whg;-><init>(Lc8/Chg;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 624
    return-void
.end method

.method static synthetic e(Lc8/Chg;)Lc8/Wlg;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    return-object v0
.end method

.method private e()Z
    .locals 6

    .prologue
    .line 627
    invoke-static {}, Lc8/Ehg;->a()Lc8/Ehg;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, Lc8/Ehg;->c()Ljava/lang/String;

    move-result-object v1

    .line 629
    new-instance v2, Lc8/Dhg;

    invoke-direct {v2}, Lc8/Dhg;-><init>()V

    .line 630
    iget-object v3, p0, Lc8/Chg;->c:Lc8/Dmg;

    iput-object v3, v2, Lc8/Dhg;->a:Lc8/Dmg;

    .line 631
    iput-object p0, v2, Lc8/Dhg;->b:Lc8/Chg;

    .line 632
    iput-object v1, v2, Lc8/Dhg;->c:Ljava/lang/String;

    .line 633
    invoke-virtual {v0, v2}, Lc8/Ehg;->a(Lc8/Dhg;)Ljava/lang/String;

    move-result-object v0

    .line 634
    iget-object v2, p0, Lc8/Chg;->a:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/Chg;->a:Ljava/lang/String;

    const-string/jumbo v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 635
    iget-object v3, p0, Lc8/Chg;->a:Ljava/lang/String;

    invoke-static {v3}, Lc8/umg;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 636
    const-string/jumbo v4, "token_key"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string/jumbo v1, "serial"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string/jumbo v0, "browser"

    const-string/jumbo v1, "1"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lc8/cmg;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Chg;->a:Ljava/lang/String;

    .line 640
    iget-object v0, p0, Lc8/Chg;->k:Landroid/content/Context;

    iget-object v1, p0, Lc8/Chg;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/umg;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lc8/Chg;)Lc8/zhg;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Chg;->b:Lc8/zhg;

    return-object v0
.end method

.method static synthetic g(Lc8/Chg;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Chg;->g:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic h(Lc8/Chg;)Lc8/Amg;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Chg;->l:Lc8/Amg;

    return-object v0
.end method

.method static synthetic i(Lc8/Chg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Chg;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lc8/Chg;)J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lc8/Chg;->q:J

    return-wide v0
.end method

.method static synthetic k(Lc8/Chg;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lc8/Chg;->n:I

    return v0
.end method

.method static synthetic l(Lc8/Chg;)J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lc8/Chg;->r:J

    return-wide v0
.end method

.method static synthetic m(Lc8/Chg;)I
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lc8/Chg;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc8/Chg;->n:I

    return v0
.end method

.method static synthetic n(Lc8/Chg;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Chg;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lc8/Chg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lc8/Chg;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lc8/Chg;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Chg;->s:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");void("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lc8/Chg;->j:Lc8/Wlg;

    invoke-virtual {v1, v0}, Lc8/Wlg;->loadUrl(Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 665
    iget-object v0, p0, Lc8/Chg;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 666
    iget-object v0, p0, Lc8/Chg;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 667
    invoke-virtual {p0}, Lc8/Chg;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 670
    :cond_0
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lc8/Chg;->j:Lc8/Wlg;

    invoke-virtual {v0}, Lc8/Wlg;->destroy()V

    .line 672
    iput-object v1, p0, Lc8/Chg;->j:Lc8/Wlg;

    .line 674
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lc8/Chg;->m:Z

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lc8/Chg;->b:Lc8/zhg;

    invoke-virtual {v0}, Lc8/zhg;->onCancel()V

    .line 157
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/Chg;->requestWindowFeature(I)Z

    .line 145
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-direct {p0}, Lc8/Chg;->b()V

    .line 147
    invoke-direct {p0}, Lc8/Chg;->d()V

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Chg;->s:Ljava/util/HashMap;

    .line 150
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 164
    return-void
.end method