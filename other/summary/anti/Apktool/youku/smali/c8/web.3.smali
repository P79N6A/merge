.class public Lc8/web;
.super Ljava/lang/Object;
.source "AnimatableValueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final initialValue:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ecb",
            "<TT;>;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lc8/web;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<TT;>;"
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<TT;>;>;"
    .local p2, "initialValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lc8/web;->keyframes:Ljava/util/List;

    .line 79
    iput-object p2, p0, Lc8/web;->initialValue:Ljava/lang/Object;

    .line 80
    return-void
.end method
