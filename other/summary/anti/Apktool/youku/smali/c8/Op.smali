.class public Lc8/Op;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Sp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_IGNORE:I = 0x10

.field private static final FLAG_MASK:I = 0x1f

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x5


# instance fields
.field private final mCallback:Lc8/Mp;

.field private final mDetectMoves:Z

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I

.field private final mSnakes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Rp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/Mp;Ljava/util/List;[I[IZ)V
    .locals 2
    .param p1, "callback"    # Lc8/Mp;
    .param p3, "oldItemStatuses"    # [I
    .param p4, "newItemStatuses"    # [I
    .param p5, "detectMoves"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mp;",
            "Ljava/util/List",
            "<",
            "Lc8/Rp;",
            ">;[I[IZ)V"
        }
    .end annotation

    .prologue
    .local p2, "snakes":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$Snake;>;"
    const/4 v1, 0x0

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object p2, p0, Lc8/Op;->mSnakes:Ljava/util/List;

    .line 475
    iput-object p3, p0, Lc8/Op;->mOldItemStatuses:[I

    .line 476
    iput-object p4, p0, Lc8/Op;->mNewItemStatuses:[I

    .line 477
    iget-object v0, p0, Lc8/Op;->mOldItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 478
    iget-object v0, p0, Lc8/Op;->mNewItemStatuses:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 479
    iput-object p1, p0, Lc8/Op;->mCallback:Lc8/Mp;

    .line 480
    invoke-virtual {p1}, Lc8/Mp;->getOldListSize()I

    move-result v0

    iput v0, p0, Lc8/Op;->mOldListSize:I

    .line 481
    invoke-virtual {p1}, Lc8/Mp;->getNewListSize()I

    move-result v0

    iput v0, p0, Lc8/Op;->mNewListSize:I

    .line 482
    iput-boolean p5, p0, Lc8/Op;->mDetectMoves:Z

    .line 483
    invoke-direct {p0}, Lc8/Op;->addRootSnake()V

    .line 484
    invoke-direct {p0}, Lc8/Op;->findMatchingItems()V

    .line 485
    return-void
.end method

.method private addRootSnake()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 492
    iget-object v2, p0, Lc8/Op;->mSnakes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 493
    .local v0, "firstSnake":Lc8/Rp;
    :goto_0
    if-eqz v0, :cond_0

    iget v2, v0, Lc8/Rp;->x:I

    if-nez v2, :cond_0

    iget v2, v0, Lc8/Rp;->y:I

    if-eqz v2, :cond_1

    .line 494
    :cond_0
    new-instance v1, Lc8/Rp;

    invoke-direct {v1}, Lc8/Rp;-><init>()V

    .line 495
    .local v1, "root":Lc8/Rp;
    iput v3, v1, Lc8/Rp;->x:I

    .line 496
    iput v3, v1, Lc8/Rp;->y:I

    .line 497
    iput-boolean v3, v1, Lc8/Rp;->removal:Z

    .line 498
    iput v3, v1, Lc8/Rp;->size:I

    .line 499
    iput-boolean v3, v1, Lc8/Rp;->reverse:Z

    .line 500
    iget-object v2, p0, Lc8/Op;->mSnakes:Ljava/util/List;

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 502
    .end local v1    # "root":Lc8/Rp;
    :cond_1
    return-void

    .line 492
    .end local v0    # "firstSnake":Lc8/Rp;
    :cond_2
    iget-object v2, p0, Lc8/Op;->mSnakes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Rp;

    move-object v0, v2

    goto :goto_0
.end method

.method private dispatchAdditions(Ljava/util/List;Lc8/Tp;III)V
    .locals 8
    .param p2, "updateCallback"    # Lc8/Tp;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Pp;",
            ">;",
            "Lc8/Tp;",
            "III)V"
        }
    .end annotation

    .prologue
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    const/4 v7, 0x1

    .line 750
    iget-boolean v4, p0, Lc8/Op;->mDetectMoves:Z

    if-nez v4, :cond_1

    .line 751
    invoke-interface {p2, p3, p4}, Lc8/Tp;->onInserted(II)V

    .line 786
    :cond_0
    return-void

    .line 754
    :cond_1
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 755
    iget-object v4, p0, Lc8/Op;->mNewItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    and-int/lit8 v2, v4, 0x1f

    .line 756
    .local v2, "status":I
    sparse-switch v2, :sswitch_data_0

    .line 781
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown flag for pos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, p5, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    .line 783
    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 758
    :sswitch_0
    invoke-interface {p2, p3, v7}, Lc8/Tp;->onInserted(II)V

    .line 759
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Pp;

    .line 760
    .local v3, "update":Lc8/Pp;
    iget v5, v3, Lc8/Pp;->currentPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lc8/Pp;->currentPos:I

    goto :goto_1

    .line 765
    .end local v3    # "update":Lc8/Pp;
    :sswitch_1
    iget-object v4, p0, Lc8/Op;->mNewItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    shr-int/lit8 v1, v4, 0x5

    .line 766
    .local v1, "pos":I
    invoke-static {p1, v1, v7}, Lc8/Op;->removePostponedUpdate(Ljava/util/List;IZ)Lc8/Pp;

    move-result-object v3

    .line 770
    .restart local v3    # "update":Lc8/Pp;
    iget v4, v3, Lc8/Pp;->currentPos:I

    invoke-interface {p2, v4, p3}, Lc8/Tp;->onMoved(II)V

    .line 771
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 773
    iget-object v4, p0, Lc8/Op;->mCallback:Lc8/Mp;

    add-int v5, p5, v0

    .line 774
    invoke-virtual {v4, v1, v5}, Lc8/Mp;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v4

    .line 773
    invoke-interface {p2, p3, v7, v4}, Lc8/Tp;->onChanged(IILjava/lang/Object;)V

    .line 754
    .end local v1    # "pos":I
    .end local v3    # "update":Lc8/Pp;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 778
    :sswitch_2
    new-instance v4, Lc8/Pp;

    add-int v5, p5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, p3, v6}, Lc8/Pp;-><init>(IIZ)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 756
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private dispatchRemovals(Ljava/util/List;Lc8/Tp;III)V
    .locals 8
    .param p2, "updateCallback"    # Lc8/Tp;
    .param p3, "start"    # I
    .param p4, "count"    # I
    .param p5, "globalIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Pp;",
            ">;",
            "Lc8/Tp;",
            "III)V"
        }
    .end annotation

    .prologue
    .local p1, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    const/4 v7, 0x1

    .line 790
    iget-boolean v4, p0, Lc8/Op;->mDetectMoves:Z

    if-nez v4, :cond_1

    .line 791
    invoke-interface {p2, p3, p4}, Lc8/Tp;->onRemoved(II)V

    .line 827
    :cond_0
    return-void

    .line 794
    :cond_1
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 795
    iget-object v4, p0, Lc8/Op;->mOldItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    and-int/lit8 v2, v4, 0x1f

    .line 796
    .local v2, "status":I
    sparse-switch v2, :sswitch_data_0

    .line 822
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown flag for pos "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, p5, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    .line 824
    invoke-static {v6, v7}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 798
    :sswitch_0
    add-int v4, p3, v0

    invoke-interface {p2, v4, v7}, Lc8/Tp;->onRemoved(II)V

    .line 799
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Pp;

    .line 800
    .local v3, "update":Lc8/Pp;
    iget v5, v3, Lc8/Pp;->currentPos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lc8/Pp;->currentPos:I

    goto :goto_1

    .line 805
    .end local v3    # "update":Lc8/Pp;
    :sswitch_1
    iget-object v4, p0, Lc8/Op;->mOldItemStatuses:[I

    add-int v5, p5, v0

    aget v4, v4, v5

    shr-int/lit8 v1, v4, 0x5

    .line 806
    .local v1, "pos":I
    const/4 v4, 0x0

    invoke-static {p1, v1, v4}, Lc8/Op;->removePostponedUpdate(Ljava/util/List;IZ)Lc8/Pp;

    move-result-object v3

    .line 811
    .restart local v3    # "update":Lc8/Pp;
    add-int v4, p3, v0

    iget v5, v3, Lc8/Pp;->currentPos:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p2, v4, v5}, Lc8/Tp;->onMoved(II)V

    .line 812
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 814
    iget v4, v3, Lc8/Pp;->currentPos:I

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lc8/Op;->mCallback:Lc8/Mp;

    add-int v6, p5, v0

    .line 815
    invoke-virtual {v5, v6, v1}, Lc8/Mp;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v5

    .line 814
    invoke-interface {p2, v4, v7, v5}, Lc8/Tp;->onChanged(IILjava/lang/Object;)V

    .line 794
    .end local v1    # "pos":I
    .end local v3    # "update":Lc8/Pp;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 819
    :sswitch_2
    new-instance v4, Lc8/Pp;

    add-int v5, p5, v0

    add-int v6, p3, v0

    invoke-direct {v4, v5, v6, v7}, Lc8/Pp;-><init>(IIZ)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 796
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private findAddition(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .prologue
    .line 552
    iget-object v0, p0, Lc8/Op;->mOldItemStatuses:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 555
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/Op;->findMatchingItem(IIIZ)Z

    goto :goto_0
.end method

.method private findMatchingItem(IIIZ)Z
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I
    .param p4, "removal"    # Z

    .prologue
    .line 581
    if-eqz p4, :cond_0

    .line 582
    add-int/lit8 v6, p2, -0x1

    .line 583
    .local v6, "myItemPos":I
    move v1, p1

    .line 584
    .local v1, "curX":I
    add-int/lit8 v2, p2, -0x1

    .line 590
    .local v2, "curY":I
    :goto_0
    move/from16 v5, p3

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_7

    .line 591
    iget-object v10, p0, Lc8/Op;->mSnakes:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/Rp;

    .line 592
    .local v8, "snake":Lc8/Rp;
    iget v10, v8, Lc8/Rp;->x:I

    iget v11, v8, Lc8/Rp;->size:I

    add-int v3, v10, v11

    .line 593
    .local v3, "endX":I
    iget v10, v8, Lc8/Rp;->y:I

    iget v11, v8, Lc8/Rp;->size:I

    add-int v4, v10, v11

    .line 594
    .local v4, "endY":I
    if-eqz p4, :cond_3

    .line 596
    add-int/lit8 v7, v1, -0x1

    .local v7, "pos":I
    :goto_2
    if-lt v7, v3, :cond_6

    .line 597
    iget-object v10, p0, Lc8/Op;->mCallback:Lc8/Mp;

    invoke-virtual {v10, v7, v6}, Lc8/Mp;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 599
    iget-object v10, p0, Lc8/Op;->mCallback:Lc8/Mp;

    invoke-virtual {v10, v7, v6}, Lc8/Mp;->areContentsTheSame(II)Z

    move-result v9

    .line 600
    .local v9, "theSame":Z
    if-eqz v9, :cond_1

    const/16 v0, 0x8

    .line 602
    .local v0, "changeFlag":I
    :goto_3
    iget-object v10, p0, Lc8/Op;->mNewItemStatuses:[I

    shl-int/lit8 v11, v7, 0x5

    or-int/lit8 v11, v11, 0x10

    aput v11, v10, v6

    .line 603
    iget-object v10, p0, Lc8/Op;->mOldItemStatuses:[I

    shl-int/lit8 v11, v6, 0x5

    or-int/2addr v11, v0

    aput v11, v10, v7

    .line 604
    const/4 v10, 0x1

    .line 624
    .end local v0    # "changeFlag":I
    .end local v3    # "endX":I
    .end local v4    # "endY":I
    .end local v7    # "pos":I
    .end local v8    # "snake":Lc8/Rp;
    .end local v9    # "theSame":Z
    :goto_4
    return v10

    .line 586
    .end local v1    # "curX":I
    .end local v2    # "curY":I
    .end local v5    # "i":I
    .end local v6    # "myItemPos":I
    :cond_0
    add-int/lit8 v6, p1, -0x1

    .line 587
    .restart local v6    # "myItemPos":I
    add-int/lit8 v1, p1, -0x1

    .line 588
    .restart local v1    # "curX":I
    move v2, p2

    .restart local v2    # "curY":I
    goto :goto_0

    .line 600
    .restart local v3    # "endX":I
    .restart local v4    # "endY":I
    .restart local v5    # "i":I
    .restart local v7    # "pos":I
    .restart local v8    # "snake":Lc8/Rp;
    .restart local v9    # "theSame":Z
    :cond_1
    const/4 v0, 0x4

    goto :goto_3

    .line 596
    .end local v9    # "theSame":Z
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 609
    .end local v7    # "pos":I
    :cond_3
    add-int/lit8 v7, v2, -0x1

    .restart local v7    # "pos":I
    :goto_5
    if-lt v7, v4, :cond_6

    .line 610
    iget-object v10, p0, Lc8/Op;->mCallback:Lc8/Mp;

    invoke-virtual {v10, v6, v7}, Lc8/Mp;->areItemsTheSame(II)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 612
    iget-object v10, p0, Lc8/Op;->mCallback:Lc8/Mp;

    invoke-virtual {v10, v6, v7}, Lc8/Mp;->areContentsTheSame(II)Z

    move-result v9

    .line 613
    .restart local v9    # "theSame":Z
    if-eqz v9, :cond_4

    const/16 v0, 0x8

    .line 615
    .restart local v0    # "changeFlag":I
    :goto_6
    iget-object v10, p0, Lc8/Op;->mOldItemStatuses:[I

    add-int/lit8 v11, p1, -0x1

    shl-int/lit8 v12, v7, 0x5

    or-int/lit8 v12, v12, 0x10

    aput v12, v10, v11

    .line 616
    iget-object v10, p0, Lc8/Op;->mNewItemStatuses:[I

    add-int/lit8 v11, p1, -0x1

    shl-int/lit8 v11, v11, 0x5

    or-int/2addr v11, v0

    aput v11, v10, v7

    .line 617
    const/4 v10, 0x1

    goto :goto_4

    .line 613
    .end local v0    # "changeFlag":I
    :cond_4
    const/4 v0, 0x4

    goto :goto_6

    .line 609
    .end local v9    # "theSame":Z
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 621
    :cond_6
    iget v1, v8, Lc8/Rp;->x:I

    .line 622
    iget v2, v8, Lc8/Rp;->y:I

    .line 590
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    .line 624
    .end local v3    # "endX":I
    .end local v4    # "endY":I
    .end local v7    # "pos":I
    .end local v8    # "snake":Lc8/Rp;
    :cond_7
    const/4 v10, 0x0

    goto :goto_4
.end method

.method private findMatchingItems()V
    .locals 13

    .prologue
    .line 516
    iget v8, p0, Lc8/Op;->mOldListSize:I

    .line 517
    .local v8, "posOld":I
    iget v7, p0, Lc8/Op;->mNewListSize:I

    .line 519
    .local v7, "posNew":I
    iget-object v11, p0, Lc8/Op;->mSnakes:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 520
    iget-object v11, p0, Lc8/Op;->mSnakes:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/Rp;

    .line 521
    .local v9, "snake":Lc8/Rp;
    iget v11, v9, Lc8/Rp;->x:I

    iget v12, v9, Lc8/Rp;->size:I

    add-int v1, v11, v12

    .line 522
    .local v1, "endX":I
    iget v11, v9, Lc8/Rp;->y:I

    iget v12, v9, Lc8/Rp;->size:I

    add-int v2, v11, v12

    .line 523
    .local v2, "endY":I
    iget-boolean v11, p0, Lc8/Op;->mDetectMoves:Z

    if-eqz v11, :cond_1

    .line 524
    :goto_1
    if-le v8, v1, :cond_0

    .line 526
    invoke-direct {p0, v8, v7, v3}, Lc8/Op;->findAddition(III)V

    .line 527
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 529
    :cond_0
    :goto_2
    if-le v7, v2, :cond_1

    .line 532
    invoke-direct {p0, v8, v7, v3}, Lc8/Op;->findRemoval(III)V

    .line 533
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 536
    :cond_1
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    iget v11, v9, Lc8/Rp;->size:I

    if-ge v4, v11, :cond_3

    .line 538
    iget v11, v9, Lc8/Rp;->x:I

    add-int v6, v11, v4

    .line 539
    .local v6, "oldItemPos":I
    iget v11, v9, Lc8/Rp;->y:I

    add-int v5, v11, v4

    .line 540
    .local v5, "newItemPos":I
    iget-object v11, p0, Lc8/Op;->mCallback:Lc8/Mp;

    .line 541
    invoke-virtual {v11, v6, v5}, Lc8/Mp;->areContentsTheSame(II)Z

    move-result v10

    .line 542
    .local v10, "theSame":Z
    if-eqz v10, :cond_2

    const/4 v0, 0x1

    .line 543
    .local v0, "changeFlag":I
    :goto_4
    iget-object v11, p0, Lc8/Op;->mOldItemStatuses:[I

    shl-int/lit8 v12, v5, 0x5

    or-int/2addr v12, v0

    aput v12, v11, v6

    .line 544
    iget-object v11, p0, Lc8/Op;->mNewItemStatuses:[I

    shl-int/lit8 v12, v6, 0x5

    or-int/2addr v12, v0

    aput v12, v11, v5

    .line 536
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 542
    .end local v0    # "changeFlag":I
    :cond_2
    const/4 v0, 0x2

    goto :goto_4

    .line 546
    .end local v5    # "newItemPos":I
    .end local v6    # "oldItemPos":I
    .end local v10    # "theSame":Z
    :cond_3
    iget v8, v9, Lc8/Rp;->x:I

    .line 547
    iget v7, v9, Lc8/Rp;->y:I

    .line 519
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 549
    .end local v1    # "endX":I
    .end local v2    # "endY":I
    .end local v4    # "j":I
    .end local v9    # "snake":Lc8/Rp;
    :cond_4
    return-void
.end method

.method private findRemoval(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snakeIndex"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lc8/Op;->mNewItemStatuses:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 563
    :goto_0
    return-void

    .line 562
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/Op;->findMatchingItem(IIIZ)Z

    goto :goto_0
.end method

.method private static removePostponedUpdate(Ljava/util/List;IZ)Lc8/Pp;
    .locals 6
    .param p1, "pos"    # I
    .param p2, "removal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Pp;",
            ">;IZ)",
            "Lc8/Pp;"
        }
    .end annotation

    .prologue
    .line 734
    .local p0, "updates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 735
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Pp;

    .line 736
    .local v2, "update":Lc8/Pp;
    iget v3, v2, Lc8/Pp;->posInOwnerList:I

    if-ne v3, p1, :cond_1

    iget-boolean v3, v2, Lc8/Pp;->removal:Z

    if-ne v3, p2, :cond_1

    .line 737
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 738
    move v1, v0

    .local v1, "j":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 740
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Pp;

    iget v5, v3, Lc8/Pp;->currentPos:I

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :goto_2
    add-int/2addr v4, v5

    iput v4, v3, Lc8/Pp;->currentPos:I

    .line 738
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 740
    :cond_0
    const/4 v4, -0x1

    goto :goto_2

    .line 734
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 745
    .end local v2    # "update":Lc8/Pp;
    :cond_2
    const/4 v2, 0x0

    :cond_3
    return-object v2
.end method


# virtual methods
.method public dispatchUpdatesTo(Lc8/Tp;)V
    .locals 16
    .param p1, "updateCallback"    # Lc8/Tp;

    .prologue
    .line 693
    move-object/from16 v0, p1

    instance-of v1, v0, Lc8/Kp;

    if-eqz v1, :cond_3

    move-object/from16 v3, p1

    .line 694
    check-cast v3, Lc8/Kp;

    .line 704
    .local v3, "batchingCallback":Lc8/Kp;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v2, "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    move-object/from16 v0, p0

    iget v10, v0, Lc8/Op;->mOldListSize:I

    .line 706
    .local v10, "posOld":I
    move-object/from16 v0, p0

    iget v9, v0, Lc8/Op;->mNewListSize:I

    .line 707
    .local v9, "posNew":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/Op;->mSnakes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    .local v12, "snakeIndex":I
    :goto_1
    if-ltz v12, :cond_5

    .line 708
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/Op;->mSnakes:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/Rp;

    .line 709
    .local v11, "snake":Lc8/Rp;
    iget v13, v11, Lc8/Rp;->size:I

    .line 710
    .local v13, "snakeSize":I
    iget v1, v11, Lc8/Rp;->x:I

    add-int v4, v1, v13

    .line 711
    .local v4, "endX":I
    iget v1, v11, Lc8/Rp;->y:I

    add-int v7, v1, v13

    .line 712
    .local v7, "endY":I
    if-ge v4, v10, :cond_0

    .line 713
    sub-int v5, v10, v4

    move-object/from16 v1, p0

    move v6, v4

    invoke-direct/range {v1 .. v6}, Lc8/Op;->dispatchRemovals(Ljava/util/List;Lc8/Tp;III)V

    .line 716
    :cond_0
    if-ge v7, v9, :cond_1

    .line 717
    sub-int v5, v9, v7

    move-object/from16 v1, p0

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lc8/Op;->dispatchAdditions(Ljava/util/List;Lc8/Tp;III)V

    .line 720
    :cond_1
    add-int/lit8 v8, v13, -0x1

    .local v8, "i":I
    :goto_2
    if-ltz v8, :cond_4

    .line 721
    move-object/from16 v0, p0

    iget-object v1, v0, Lc8/Op;->mOldItemStatuses:[I

    iget v5, v11, Lc8/Rp;->x:I

    add-int/2addr v5, v8

    aget v1, v1, v5

    and-int/lit8 v1, v1, 0x1f

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 722
    iget v1, v11, Lc8/Rp;->x:I

    add-int/2addr v1, v8

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Op;->mCallback:Lc8/Mp;

    iget v14, v11, Lc8/Rp;->x:I

    add-int/2addr v14, v8

    iget v15, v11, Lc8/Rp;->y:I

    add-int/2addr v15, v8

    .line 723
    invoke-virtual {v6, v14, v15}, Lc8/Mp;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v6

    .line 722
    invoke-virtual {v3, v1, v5, v6}, Lc8/Kp;->onChanged(IILjava/lang/Object;)V

    .line 720
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 696
    .end local v2    # "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    .end local v3    # "batchingCallback":Lc8/Kp;
    .end local v4    # "endX":I
    .end local v7    # "endY":I
    .end local v8    # "i":I
    .end local v9    # "posNew":I
    .end local v10    # "posOld":I
    .end local v11    # "snake":Lc8/Rp;
    .end local v12    # "snakeIndex":I
    .end local v13    # "snakeSize":I
    :cond_3
    new-instance v3, Lc8/Kp;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lc8/Kp;-><init>(Lc8/Tp;)V

    .restart local v3    # "batchingCallback":Lc8/Kp;
    goto :goto_0

    .line 726
    .restart local v2    # "postponedUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/util/DiffUtil$PostponedUpdate;>;"
    .restart local v4    # "endX":I
    .restart local v7    # "endY":I
    .restart local v8    # "i":I
    .restart local v9    # "posNew":I
    .restart local v10    # "posOld":I
    .restart local v11    # "snake":Lc8/Rp;
    .restart local v12    # "snakeIndex":I
    .restart local v13    # "snakeSize":I
    :cond_4
    iget v10, v11, Lc8/Rp;->x:I

    .line 727
    iget v9, v11, Lc8/Rp;->y:I

    .line 707
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 729
    .end local v4    # "endX":I
    .end local v7    # "endY":I
    .end local v8    # "i":I
    .end local v11    # "snake":Lc8/Rp;
    .end local v13    # "snakeSize":I
    :cond_5
    invoke-virtual {v3}, Lc8/Kp;->dispatchLastEvent()V

    .line 730
    return-void
.end method

.method public dispatchUpdatesTo(Lc8/iv;)V
    .locals 1
    .param p1, "adapter"    # Lc8/iv;

    .prologue
    .line 659
    new-instance v0, Lc8/Np;

    invoke-direct {v0, p0, p1}, Lc8/Np;-><init>(Lc8/Op;Lc8/iv;)V

    invoke-virtual {p0, v0}, Lc8/Op;->dispatchUpdatesTo(Lc8/Tp;)V

    .line 680
    return-void
.end method

.method getSnakes()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Rp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 831
    iget-object v0, p0, Lc8/Op;->mSnakes:Ljava/util/List;

    return-object v0
.end method
