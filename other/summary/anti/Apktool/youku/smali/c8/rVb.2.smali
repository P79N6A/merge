.class public final Lc8/rVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$arg:Ljava/lang/String;

.field final synthetic val$module:Ljava/lang/String;

.field final synthetic val$monitorPoint:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lc8/rVb;->val$module:Ljava/lang/String;

    iput-object p2, p0, Lc8/rVb;->val$monitorPoint:Ljava/lang/String;

    iput-object p3, p0, Lc8/rVb;->val$arg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 492
    :try_start_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    iget-object v2, p0, Lc8/rVb;->val$module:Ljava/lang/String;

    iget-object v3, p0, Lc8/rVb;->val$monitorPoint:Ljava/lang/String;

    iget-object v4, p0, Lc8/rVb;->val$arg:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lc8/kzb;->alarm_commitSuccess2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lc8/gzb;->handleRemoteException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
