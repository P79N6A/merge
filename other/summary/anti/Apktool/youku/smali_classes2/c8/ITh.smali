.class public Lc8/ITh;
.super Ljava/lang/Object;
.source "YKWVDebug.java"


# static fields
.field private static isInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lc8/ITh;->isInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static declared-synchronized init()V
    .locals 3

    .prologue
    .line 13
    const-class v1, Lc8/ITh;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lc8/ITh;->isInited:Z

    if-nez v0, :cond_0

    .line 14
    const-string/jumbo v0, "WVDevelopTool"

    const-class v2, Lc8/fTh;

    invoke-static {v0, v2}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lc8/ITh;->isInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_0
    monitor-exit v1

    return-void

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
