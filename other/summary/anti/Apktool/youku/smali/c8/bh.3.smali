.class public Lc8/bh;
.super Ljava/lang/Object;
.source "TransitionKitKat.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompatListener"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/ah;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/dh;


# direct methods
.method constructor <init>(Lc8/dh;)V
    .locals 1

    .prologue
    .line 333
    iput-object p1, p0, Lc8/bh;->this$0:Lc8/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/bh;->mListeners:Ljava/util/ArrayList;

    .line 334
    return-void
.end method


# virtual methods
.method addListener(Lc8/ah;)V
    .locals 1
    .param p1, "listener"    # Lc8/ah;

    .prologue
    .line 337
    iget-object v0, p0, Lc8/bh;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lc8/bh;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 364
    iget-object v1, p0, Lc8/bh;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ah;

    .line 365
    .local v0, "listener":Lc8/ah;
    iget-object v2, p0, Lc8/bh;->this$0:Lc8/dh;

    iget-object v2, v2, Lc8/dh;->mExternalTransition:Lc8/Zg;

    invoke-interface {v0, v2}, Lc8/ah;->onTransitionCancel(Lc8/Zg;)V

    goto :goto_0

    .line 367
    .end local v0    # "listener":Lc8/ah;
    :cond_0
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 357
    iget-object v1, p0, Lc8/bh;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ah;

    .line 358
    .local v0, "listener":Lc8/ah;
    iget-object v2, p0, Lc8/bh;->this$0:Lc8/dh;

    iget-object v2, v2, Lc8/dh;->mExternalTransition:Lc8/Zg;

    invoke-interface {v0, v2}, Lc8/ah;->onTransitionEnd(Lc8/Zg;)V

    goto :goto_0

    .line 360
    .end local v0    # "listener":Lc8/ah;
    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 371
    iget-object v1, p0, Lc8/bh;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ah;

    .line 372
    .local v0, "listener":Lc8/ah;
    iget-object v2, p0, Lc8/bh;->this$0:Lc8/dh;

    iget-object v2, v2, Lc8/dh;->mExternalTransition:Lc8/Zg;

    invoke-interface {v0, v2}, Lc8/ah;->onTransitionPause(Lc8/Zg;)V

    goto :goto_0

    .line 374
    .end local v0    # "listener":Lc8/ah;
    :cond_0
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 378
    iget-object v1, p0, Lc8/bh;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ah;

    .line 379
    .local v0, "listener":Lc8/ah;
    iget-object v2, p0, Lc8/bh;->this$0:Lc8/dh;

    iget-object v2, v2, Lc8/dh;->mExternalTransition:Lc8/Zg;

    invoke-interface {v0, v2}, Lc8/ah;->onTransitionResume(Lc8/Zg;)V

    goto :goto_0

    .line 381
    .end local v0    # "listener":Lc8/ah;
    :cond_0
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 350
    iget-object v1, p0, Lc8/bh;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ah;

    .line 351
    .local v0, "listener":Lc8/ah;
    iget-object v2, p0, Lc8/bh;->this$0:Lc8/dh;

    iget-object v2, v2, Lc8/dh;->mExternalTransition:Lc8/Zg;

    invoke-interface {v0, v2}, Lc8/ah;->onTransitionStart(Lc8/Zg;)V

    goto :goto_0

    .line 353
    .end local v0    # "listener":Lc8/ah;
    :cond_0
    return-void
.end method

.method removeListener(Lc8/ah;)V
    .locals 1
    .param p1, "listener"    # Lc8/ah;

    .prologue
    .line 341
    iget-object v0, p0, Lc8/bh;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 342
    return-void
.end method
