.class public Lc8/Gyo;
.super Ljava/lang/Object;
.source "Debuggable.java"


# static fields
.field private static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Gyo;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 18
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 19
    .local v0, "app_info":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lc8/Gyo;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .end local v0    # "app_info":Landroid/content/pm/ApplicationInfo;
    :goto_1
    return-void

    .line 19
    .restart local v0    # "app_info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 21
    .end local v0    # "app_info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 11
    sget-boolean v0, Lc8/Gyo;->DEBUG:Z

    return v0
.end method
