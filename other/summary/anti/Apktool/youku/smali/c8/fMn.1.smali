.class public Lc8/fMn;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lc8/cNn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KMn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KMn;


# direct methods
.method constructor <init>(Lc8/KMn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KMn;

    .prologue
    .line 1567
    iput-object p1, p0, Lc8/fMn;->this$0:Lc8/KMn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndLoading()V
    .locals 0

    .prologue
    .line 1577
    return-void
.end method

.method public onStartLoading()V
    .locals 0

    .prologue
    .line 1572
    return-void
.end method
