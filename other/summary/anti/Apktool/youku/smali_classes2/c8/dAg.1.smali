.class public final Lc8/dAg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/dAg;->a:Landroid/content/Context;

    iput-object p2, p0, Lc8/dAg;->b:Ljava/lang/String;

    iput-object p3, p0, Lc8/dAg;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lc8/dAg;->a:Landroid/content/Context;

    iget-object v1, p0, Lc8/dAg;->b:Ljava/lang/String;

    iget-object v2, p0, Lc8/dAg;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lc8/Wzg;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Vzg;)V

    return-void
.end method
