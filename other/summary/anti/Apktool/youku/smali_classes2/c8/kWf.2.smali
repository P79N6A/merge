.class public Lc8/kWf;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lWf;->setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lc8/nWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/lWf;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lc8/nWf;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/lWf;Ljava/lang/String;Ljava/lang/String;Lc8/nWf;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lc8/kWf;->this$0:Lc8/lWf;

    iput-object p2, p0, Lc8/kWf;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lc8/kWf;->val$value:Ljava/lang/String;

    iput-object p4, p0, Lc8/kWf;->val$listener:Lc8/nWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 135
    iget-object v1, p0, Lc8/kWf;->this$0:Lc8/lWf;

    iget-object v2, p0, Lc8/kWf;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lc8/kWf;->val$value:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v4}, Lc8/lWf;->access$000(Lc8/lWf;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v1

    invoke-static {v1}, Lc8/pWf;->setItemResult(Z)Ljava/util/Map;

    move-result-object v0

    .line 136
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lc8/kWf;->val$listener:Lc8/nWf;

    if-nez v1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lc8/kWf;->val$listener:Lc8/nWf;

    invoke-interface {v1, v0}, Lc8/nWf;->onReceived(Ljava/util/Map;)V

    goto :goto_0
.end method
