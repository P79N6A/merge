.class public final Lc8/qXp;
.super Ljava/lang/Object;
.source "MiPushRegistar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sXp;->unregister(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lc8/qXp;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lc8/qXp;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lc8/Wzg;->unregisterPush(Landroid/content/Context;)V

    .line 79
    return-void
.end method
