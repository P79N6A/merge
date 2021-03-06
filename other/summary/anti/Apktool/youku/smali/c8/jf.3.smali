.class public Lc8/jf;
.super Lc8/df;
.source "ValueAnimatorCompatImplHoneycombMr1.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation

.annotation build Lc8/N;
    value = 0xc
.end annotation


# instance fields
.field private final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/df;-><init>()V

    .line 33
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 34
    return-void
.end method


# virtual methods
.method public addListener(Lc8/bf;)V
    .locals 2
    .param p1, "listener"    # Lc8/bf;

    .prologue
    .line 63
    iget-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lc8/if;

    invoke-direct {v1, p0, p1}, Lc8/if;-><init>(Lc8/jf;Lc8/bf;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 79
    return-void
.end method

.method public addUpdateListener(Lc8/cf;)V
    .locals 2
    .param p1, "updateListener"    # Lc8/cf;

    .prologue
    .line 53
    iget-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lc8/hf;

    invoke-direct {v1, p0, p1}, Lc8/hf;-><init>(Lc8/jf;Lc8/cf;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 59
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 109
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 119
    return-void
.end method

.method public getAnimatedFloatValue()F
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getAnimatedFraction()F
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    return v0
.end method

.method public getAnimatedIntValue()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 103
    iget-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 104
    return-void
.end method

.method public setFloatValues(FF)V
    .locals 3
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 93
    iget-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 94
    return-void
.end method

.method public setIntValues(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 84
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 48
    iget-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/jf;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 39
    return-void
.end method
