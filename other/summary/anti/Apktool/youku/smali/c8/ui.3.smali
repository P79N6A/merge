.class public final Lc8/ui;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$inFragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 361
    iput-object p1, p0, Lc8/ui;->val$enterTransition:Ljava/lang/Object;

    iput-object p2, p0, Lc8/ui;->val$nonExistentView:Landroid/view/View;

    iput-object p3, p0, Lc8/ui;->val$inFragment:Landroid/support/v4/app/Fragment;

    iput-object p4, p0, Lc8/ui;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p5, p0, Lc8/ui;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p6, p0, Lc8/ui;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p7, p0, Lc8/ui;->val$exitTransition:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 364
    iget-object v2, p0, Lc8/ui;->val$enterTransition:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 365
    iget-object v2, p0, Lc8/ui;->val$enterTransition:Ljava/lang/Object;

    iget-object v3, p0, Lc8/ui;->val$nonExistentView:Landroid/view/View;

    invoke-static {v2, v3}, Landroid/support/v4/app/FragmentTransitionCompat21;->removeTarget(Ljava/lang/Object;Landroid/view/View;)V

    .line 367
    iget-object v2, p0, Lc8/ui;->val$enterTransition:Ljava/lang/Object;

    iget-object v3, p0, Lc8/ui;->val$inFragment:Landroid/support/v4/app/Fragment;

    iget-object v4, p0, Lc8/ui;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v5, p0, Lc8/ui;->val$nonExistentView:Landroid/view/View;

    invoke-static {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransition;->access$100(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    .line 369
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Lc8/ui;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 372
    .end local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    iget-object v2, p0, Lc8/ui;->val$exitingViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 373
    iget-object v2, p0, Lc8/ui;->val$exitTransition:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v0, "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Lc8/ui;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v2, p0, Lc8/ui;->val$exitTransition:Ljava/lang/Object;

    iget-object v3, p0, Lc8/ui;->val$exitingViews:Ljava/util/ArrayList;

    invoke-static {v2, v3, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 379
    .end local v0    # "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    iget-object v2, p0, Lc8/ui;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 380
    iget-object v2, p0, Lc8/ui;->val$exitingViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lc8/ui;->val$nonExistentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_2
    return-void
.end method
