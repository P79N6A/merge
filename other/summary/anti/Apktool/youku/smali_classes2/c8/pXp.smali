.class public final Lc8/pXp;
.super Ljava/lang/Object;
.source "MiPushRegistar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sXp;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$XIAOMI_ID:Ljava/lang/String;

.field final synthetic val$XIAOMI_KEY:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lc8/pXp;->val$XIAOMI_ID:Ljava/lang/String;

    iput-object p2, p0, Lc8/pXp;->val$XIAOMI_KEY:Ljava/lang/String;

    iput-object p3, p0, Lc8/pXp;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lc8/pXp;->val$XIAOMI_ID:Ljava/lang/String;

    iget-object v1, p0, Lc8/pXp;->val$XIAOMI_KEY:Ljava/lang/String;

    iget-object v2, p0, Lc8/pXp;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lc8/sXp;->access$100(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 56
    return-void
.end method
