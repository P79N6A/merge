.class public Lcom/taobao/accs/init/Launcher_Login;
.super Ljava/lang/Object;
.source "Launcher_Login.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "Launcher_Login"

    const-string/jumbo v1, "login"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    new-instance v0, Lcom/taobao/accs/init/Launcher_Login$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/taobao/accs/init/Launcher_Login$1;-><init>(Lcom/taobao/accs/init/Launcher_Login;Ljava/util/HashMap;Landroid/app/Application;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method
