.class public Lc8/st;
.super Lc8/wt;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xt;->animateChangeImpl(Lc8/ut;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xt;

.field final synthetic val$changeInfo:Lc8/ut;

.field final synthetic val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lc8/xt;Lc8/ut;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0
    .param p1, "this$0"    # Lc8/xt;

    .prologue
    .line 351
    iput-object p1, p0, Lc8/st;->this$0:Lc8/xt;

    iput-object p2, p0, Lc8/st;->val$changeInfo:Lc8/ut;

    iput-object p3, p0, Lc8/st;->val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lc8/wt;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 359
    iget-object v0, p0, Lc8/st;->val$oldViewAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 360
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 361
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 362
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 363
    iget-object v0, p0, Lc8/st;->this$0:Lc8/xt;

    iget-object v1, p0, Lc8/st;->val$changeInfo:Lc8/ut;

    iget-object v1, v1, Lc8/ut;->oldHolder:Lc8/Qv;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lc8/xt;->dispatchChangeFinished(Lc8/Qv;Z)V

    .line 364
    iget-object v0, p0, Lc8/st;->this$0:Lc8/xt;

    iget-object v0, v0, Lc8/xt;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lc8/st;->val$changeInfo:Lc8/ut;

    iget-object v1, v1, Lc8/ut;->oldHolder:Lc8/Qv;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 365
    iget-object v0, p0, Lc8/st;->this$0:Lc8/xt;

    invoke-virtual {v0}, Lc8/xt;->dispatchFinishedWhenDone()V

    .line 366
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 354
    iget-object v0, p0, Lc8/st;->this$0:Lc8/xt;

    iget-object v1, p0, Lc8/st;->val$changeInfo:Lc8/ut;

    iget-object v1, v1, Lc8/ut;->oldHolder:Lc8/Qv;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lc8/xt;->dispatchChangeStarting(Lc8/Qv;Z)V

    .line 355
    return-void
.end method
