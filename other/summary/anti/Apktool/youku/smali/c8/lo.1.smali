.class public Lc8/lo;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mo;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/mo;


# direct methods
.method constructor <init>(Lc8/mo;)V
    .locals 0
    .param p1, "this$1"    # Lc8/mo;

    .prologue
    .line 794
    iput-object p1, p0, Lc8/lo;->this$1:Lc8/mo;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 802
    iget-object v0, p0, Lc8/lo;->this$1:Lc8/mo;

    iget-object v0, v0, Lc8/mo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 803
    iget-object v0, p0, Lc8/lo;->this$1:Lc8/mo;

    iget-object v0, v0, Lc8/mo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 804
    iget-object v0, p0, Lc8/lo;->this$1:Lc8/mo;

    iget-object v0, v0, Lc8/mo;->this$0:Lc8/vo;

    iput-object v2, v0, Lc8/vo;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 805
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 797
    iget-object v0, p0, Lc8/lo;->this$1:Lc8/mo;

    iget-object v0, v0, Lc8/mo;->this$0:Lc8/vo;

    iget-object v0, v0, Lc8/vo;->mActionModeView:Lc8/yr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/yr;->setVisibility(I)V

    .line 798
    return-void
.end method
