.class public final Lc8/fAq;
.super Ljava/lang/Object;
.source "AsyncCompletableSubscriber.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gAq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unsubscribed"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public unsubscribe()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method
