.class public Lc8/Eac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lc8/Dac;


# direct methods
.method constructor <init>(Lc8/Dac;)V
    .locals 0

    iput-object p1, p0, Lc8/Eac;->a:Lc8/Dac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lc8/Eac;->a:Lc8/Dac;

    invoke-static {v0}, Lc8/Dac;->a(Lc8/Dac;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
