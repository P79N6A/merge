.class public final Lc8/HVb;
.super Ljava/lang/Object;
.source "AppMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KVb;->end(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$measureName:Ljava/lang/String;

.field final synthetic val$module:Ljava/lang/String;

.field final synthetic val$monitorPoint:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Lc8/HVb;->val$module:Ljava/lang/String;

    iput-object p2, p0, Lc8/HVb;->val$monitorPoint:Ljava/lang/String;

    iput-object p3, p0, Lc8/HVb;->val$measureName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 863
    :try_start_0
    sget-object v1, Lc8/gzb;->iAnalytics:Lc8/kzb;

    iget-object v2, p0, Lc8/HVb;->val$module:Ljava/lang/String;

    iget-object v3, p0, Lc8/HVb;->val$monitorPoint:Ljava/lang/String;

    iget-object v4, p0, Lc8/HVb;->val$measureName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lc8/kzb;->stat_end(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lc8/gzb;->handleRemoteException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
