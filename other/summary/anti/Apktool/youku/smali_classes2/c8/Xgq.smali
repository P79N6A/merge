.class public abstract Lc8/Xgq;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Wgq;,
        Lc8/Qgq;,
        Lc8/Ogq;,
        Lc8/Vgq;
    }
.end annotation


# static fields
.field static final HAS_RX_JAVA:Z

.field private static final PLATFORM:Lc8/Xgq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lc8/Xgq;->findPlatform()Lc8/Xgq;

    move-result-object v0

    sput-object v0, Lc8/Xgq;->PLATFORM:Lc8/Xgq;

    .line 40
    invoke-static {}, Lc8/Xgq;->hasRxJavaOnClasspath()Z

    move-result v0

    sput-boolean v0, Lc8/Xgq;->HAS_RX_JAVA:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
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

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lc8/Xgq;->hasOkHttpOnClasspath()Z

    move-result v0

    return v0
.end method

.method private static findPlatform()Lc8/Xgq;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    :try_start_0
    const-string/jumbo v0, "android.os.Build"

    invoke-static {v0}, Lc8/Xgq;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lc8/Ogq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/Ogq;-><init>(Lc8/Kgq;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 55
    :cond_0
    const-string/jumbo v0, "com.google.appengine.runtime.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lc8/Qgq;

    invoke-direct {v0, v2}, Lc8/Qgq;-><init>(Lc8/Kgq;)V

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lc8/Vgq;

    invoke-direct {v0, v2}, Lc8/Vgq;-><init>(Lc8/Kgq;)V

    goto :goto_0
.end method

.method static get()Lc8/Xgq;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lc8/Xgq;->PLATFORM:Lc8/Xgq;

    return-object v0
.end method

.method private static hasOkHttpOnClasspath()Z
    .locals 1

    .prologue
    .line 172
    :try_start_0
    const-string/jumbo v0, "com.squareup.okhttp.OkHttpClient"

    invoke-static {v0}, Lc8/Xgq;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasRxJavaOnClasspath()Z
    .locals 1

    .prologue
    .line 191
    :try_start_0
    const-string/jumbo v0, "rx.Observable"

    invoke-static {v0}, Lc8/Xgq;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method abstract defaultCallbackExecutor()Ljava/util/concurrent/Executor;
.end method

.method abstract defaultClient()Lc8/Ohq;
.end method

.method abstract defaultConverter()Lc8/aiq;
.end method

.method abstract defaultHttpExecutor()Ljava/util/concurrent/Executor;
.end method

.method abstract defaultLog()Lc8/phq;
.end method