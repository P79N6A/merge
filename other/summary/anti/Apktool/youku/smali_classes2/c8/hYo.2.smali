.class public Lc8/hYo;
.super Ljava/lang/Object;
.source "ArrowRefreshHeader.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/iYo;->smoothScrollTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/iYo;


# direct methods
.method constructor <init>(Lc8/iYo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/iYo;

    .prologue
    .line 338
    iput-object p1, p0, Lc8/hYo;->this$0:Lc8/iYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 341
    iget-object v1, p0, Lc8/hYo;->this$0:Lc8/iYo;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lc8/iYo;->setVisibleHeight(I)V

    .line 342
    return-void
.end method
