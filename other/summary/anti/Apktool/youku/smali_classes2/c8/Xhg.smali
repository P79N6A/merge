.class public final Lc8/Xhg;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zhg;->a(Landroid/content/Context;Ljava/util/ArrayList;Lc8/jmg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/jmg;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lc8/jmg;)V
    .locals 0

    .prologue
    .line 131
    iput-object p2, p0, Lc8/Xhg;->a:Lc8/jmg;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 135
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 141
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 142
    :goto_0
    return-void

    .line 137
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "images"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lc8/Xhg;->a:Lc8/jmg;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lc8/jmg;->a(ILjava/util/ArrayList;)V

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
