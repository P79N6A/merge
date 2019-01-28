.class public Lc8/mb;
.super Lc8/qb;
.source "ConstraintTableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/lb;,
        Lc8/kb;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:I = 0x0

.field private static final ALIGN_FULL:I = 0x3

.field public static final ALIGN_LEFT:I = 0x1

.field public static final ALIGN_RIGHT:I = 0x2


# instance fields
.field private mHorizontalGuidelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/sb;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/kb;",
            ">;"
        }
    .end annotation
.end field

.field private mNumCols:I

.field private mNumRows:I

.field private mPadding:I

.field private mVerticalGrowth:Z

.field private mVerticalGuidelines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/sb;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalSlices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lb;",
            ">;"
        }
    .end annotation
.end field

.field private system:Lc8/bb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lc8/qb;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/mb;->mVerticalGrowth:Z

    .line 29
    iput v1, p0, Lc8/mb;->mNumCols:I

    .line 30
    iput v1, p0, Lc8/mb;->mNumRows:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Lc8/mb;->mPadding:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/mb;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/mb;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/mb;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/mb;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/mb;->system:Lc8/bb;

    .line 67
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Lc8/qb;-><init>(II)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/mb;->mVerticalGrowth:Z

    .line 29
    iput v1, p0, Lc8/mb;->mNumCols:I

    .line 30
    iput v1, p0, Lc8/mb;->mNumRows:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Lc8/mb;->mPadding:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/mb;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/mb;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/mb;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/mb;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/mb;->system:Lc8/bb;

    .line 89
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/qb;-><init>(IIII)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/mb;->mVerticalGrowth:Z

    .line 29
    iput v1, p0, Lc8/mb;->mNumCols:I

    .line 30
    iput v1, p0, Lc8/mb;->mNumRows:I

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Lc8/mb;->mPadding:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/mb;->mVerticalSlices:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/mb;->mHorizontalSlices:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/mb;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/mb;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/mb;->system:Lc8/bb;

    .line 79
    return-void
.end method

.method private setChildrenConnections()V
    .locals 15

    .prologue
    .line 479
    iget-object v12, p0, Lc8/mb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 480
    .local v1, "count":I
    const/4 v4, 0x0

    .line 481
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 482
    iget-object v12, p0, Lc8/mb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/ob;

    .line 483
    .local v6, "target":Lc8/ob;
    invoke-virtual {v6}, Lc8/ob;->getContainerItemSkip()I

    move-result v12

    add-int/2addr v4, v12

    .line 485
    iget v12, p0, Lc8/mb;->mNumCols:I

    rem-int v0, v4, v12

    .line 486
    .local v0, "col":I
    iget v12, p0, Lc8/mb;->mNumCols:I

    div-int v5, v4, v12

    .line 488
    .local v5, "row":I
    iget-object v12, p0, Lc8/mb;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/kb;

    .line 489
    .local v2, "horizontalSlice":Lc8/kb;
    iget-object v12, p0, Lc8/mb;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/lb;

    .line 490
    .local v11, "verticalSlice":Lc8/lb;
    iget-object v8, v11, Lc8/lb;->left:Lc8/ob;

    .line 491
    .local v8, "targetLeft":Lc8/ob;
    iget-object v9, v11, Lc8/lb;->right:Lc8/ob;

    .line 492
    .local v9, "targetRight":Lc8/ob;
    iget-object v10, v2, Lc8/kb;->top:Lc8/ob;

    .line 493
    .local v10, "targetTop":Lc8/ob;
    iget-object v7, v2, Lc8/kb;->bottom:Lc8/ob;

    .line 495
    .local v7, "targetBottom":Lc8/ob;
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 496
    invoke-virtual {v8, v13}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v13

    iget v14, p0, Lc8/mb;->mPadding:I

    invoke-virtual {v12, v13, v14}, Lc8/ib;->connect(Lc8/ib;I)Z

    .line 497
    instance-of v12, v9, Lc8/sb;

    if-eqz v12, :cond_0

    .line 498
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 499
    invoke-virtual {v9, v13}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v13

    iget v14, p0, Lc8/mb;->mPadding:I

    invoke-virtual {v12, v13, v14}, Lc8/ib;->connect(Lc8/ib;I)Z

    .line 506
    :goto_1
    iget v12, v11, Lc8/lb;->alignment:I

    packed-switch v12, :pswitch_data_0

    .line 526
    :goto_2
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 527
    invoke-virtual {v10, v13}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v13

    iget v14, p0, Lc8/mb;->mPadding:I

    invoke-virtual {v12, v13, v14}, Lc8/ib;->connect(Lc8/ib;I)Z

    .line 528
    instance-of v12, v7, Lc8/sb;

    if-eqz v12, :cond_1

    .line 529
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 530
    invoke-virtual {v7, v13}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v13

    iget v14, p0, Lc8/mb;->mPadding:I

    invoke-virtual {v12, v13, v14}, Lc8/ib;->connect(Lc8/ib;I)Z

    .line 536
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 481
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 501
    :cond_0
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 502
    invoke-virtual {v9, v13}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v13

    iget v14, p0, Lc8/mb;->mPadding:I

    invoke-virtual {v12, v13, v14}, Lc8/ib;->connect(Lc8/ib;I)Z

    goto :goto_1

    .line 508
    :pswitch_0
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v12}, Lc8/ob;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_2

    .line 512
    :pswitch_1
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Lc8/ib;->setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    .line 514
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Lc8/ib;->setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    goto :goto_2

    .line 519
    :pswitch_2
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Lc8/ib;->setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    .line 521
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    invoke-virtual {v12, v13}, Lc8/ib;->setStrength(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    goto :goto_2

    .line 532
    :cond_1
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v6, v12}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v12

    sget-object v13, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 533
    invoke-virtual {v7, v13}, Lc8/ob;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Lc8/ib;

    move-result-object v13

    iget v14, p0, Lc8/mb;->mPadding:I

    invoke-virtual {v12, v13, v14}, Lc8/ib;->connect(Lc8/ib;I)Z

    goto :goto_3

    .line 538
    .end local v0    # "col":I
    .end local v2    # "horizontalSlice":Lc8/kb;
    .end local v5    # "row":I
    .end local v6    # "target":Lc8/ob;
    .end local v7    # "targetBottom":Lc8/ob;
    .end local v8    # "targetLeft":Lc8/ob;
    .end local v9    # "targetRight":Lc8/ob;
    .end local v10    # "targetTop":Lc8/ob;
    .end local v11    # "verticalSlice":Lc8/lb;
    :cond_2
    return-void

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setHorizontalSlices()V
    .locals 8

    .prologue
    .line 451
    iget-object v6, p0, Lc8/mb;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 452
    const/high16 v6, 0x42c80000    # 100.0f

    iget v7, p0, Lc8/mb;->mNumRows:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 453
    .local v2, "increment":F
    move v3, v2

    .line 454
    .local v3, "percent":F
    move-object v4, p0

    .line 455
    .local v4, "previous":Lc8/ob;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lc8/mb;->mNumRows:I

    if-ge v1, v6, :cond_1

    .line 456
    new-instance v5, Lc8/kb;

    invoke-direct {v5, p0}, Lc8/kb;-><init>(Lc8/mb;)V

    .line 457
    .local v5, "slice":Lc8/kb;
    iput-object v4, v5, Lc8/kb;->top:Lc8/ob;

    .line 458
    iget v6, p0, Lc8/mb;->mNumRows:I

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 459
    new-instance v0, Lc8/sb;

    invoke-direct {v0}, Lc8/sb;-><init>()V

    .line 460
    .local v0, "guideline":Lc8/sb;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lc8/sb;->setOrientation(I)V

    .line 461
    invoke-virtual {v0, p0}, Lc8/sb;->setParent(Lc8/ob;)V

    .line 462
    float-to-int v6, v3

    invoke-virtual {v0, v6}, Lc8/sb;->setGuidePercent(I)V

    .line 463
    add-float/2addr v3, v2

    .line 464
    iput-object v0, v5, Lc8/kb;->bottom:Lc8/ob;

    .line 465
    iget-object v6, p0, Lc8/mb;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    .end local v0    # "guideline":Lc8/sb;
    :goto_1
    iget-object v4, v5, Lc8/kb;->bottom:Lc8/ob;

    .line 470
    iget-object v6, p0, Lc8/mb;->mHorizontalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    :cond_0
    iput-object p0, v5, Lc8/kb;->bottom:Lc8/ob;

    goto :goto_1

    .line 472
    .end local v5    # "slice":Lc8/kb;
    :cond_1
    invoke-direct {p0}, Lc8/mb;->updateDebugSolverNames()V

    .line 473
    return-void
.end method

.method private setVerticalSlices()V
    .locals 8

    .prologue
    .line 422
    iget-object v6, p0, Lc8/mb;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 423
    move-object v4, p0

    .line 424
    .local v4, "previous":Lc8/ob;
    const/high16 v6, 0x42c80000    # 100.0f

    iget v7, p0, Lc8/mb;->mNumCols:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 425
    .local v2, "increment":F
    move v3, v2

    .line 426
    .local v3, "percent":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lc8/mb;->mNumCols:I

    if-ge v1, v6, :cond_1

    .line 427
    new-instance v5, Lc8/lb;

    invoke-direct {v5, p0}, Lc8/lb;-><init>(Lc8/mb;)V

    .line 428
    .local v5, "slice":Lc8/lb;
    iput-object v4, v5, Lc8/lb;->left:Lc8/ob;

    .line 429
    iget v6, p0, Lc8/mb;->mNumCols:I

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_0

    .line 430
    new-instance v0, Lc8/sb;

    invoke-direct {v0}, Lc8/sb;-><init>()V

    .line 431
    .local v0, "guideline":Lc8/sb;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lc8/sb;->setOrientation(I)V

    .line 432
    invoke-virtual {v0, p0}, Lc8/sb;->setParent(Lc8/ob;)V

    .line 433
    float-to-int v6, v3

    invoke-virtual {v0, v6}, Lc8/sb;->setGuidePercent(I)V

    .line 434
    add-float/2addr v3, v2

    .line 435
    iput-object v0, v5, Lc8/lb;->right:Lc8/ob;

    .line 436
    iget-object v6, p0, Lc8/mb;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v0    # "guideline":Lc8/sb;
    :goto_1
    iget-object v4, v5, Lc8/lb;->right:Lc8/ob;

    .line 441
    iget-object v6, p0, Lc8/mb;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_0
    iput-object p0, v5, Lc8/lb;->right:Lc8/ob;

    goto :goto_1

    .line 443
    .end local v5    # "slice":Lc8/lb;
    :cond_1
    invoke-direct {p0}, Lc8/mb;->updateDebugSolverNames()V

    .line 444
    return-void
.end method

.method private updateDebugSolverNames()V
    .locals 6

    .prologue
    .line 404
    iget-object v2, p0, Lc8/mb;->system:Lc8/bb;

    if-nez v2, :cond_1

    .line 415
    :cond_0
    return-void

    .line 407
    :cond_1
    iget-object v2, p0, Lc8/mb;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 408
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 409
    iget-object v2, p0, Lc8/mb;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/sb;

    iget-object v3, p0, Lc8/mb;->system:Lc8/bb;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/mb;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".VG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/sb;->setDebugSolverName(Lc8/bb;Ljava/lang/String;)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_2
    iget-object v2, p0, Lc8/mb;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 412
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    .line 413
    iget-object v2, p0, Lc8/mb;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/sb;

    iget-object v3, p0, Lc8/mb;->system:Lc8/bb;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/mb;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".HG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/sb;->setDebugSolverName(Lc8/bb;Ljava/lang/String;)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addToSolver(Lc8/bb;I)V
    .locals 9
    .param p1, "system"    # Lc8/bb;
    .param p2, "group"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 314
    invoke-super {p0, p1, p2}, Lc8/qb;->addToSolver(Lc8/bb;I)V

    .line 315
    iget-object v5, p0, Lc8/mb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 316
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 342
    :cond_0
    return-void

    .line 319
    :cond_1
    invoke-virtual {p0}, Lc8/mb;->setTableDimensions()V

    .line 322
    iget-object v5, p0, Lc8/mb;->mSystem:Lc8/bb;

    if-ne p1, v5, :cond_0

    .line 323
    iget-object v5, p0, Lc8/mb;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 324
    .local v4, "num":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 325
    iget-object v5, p0, Lc8/mb;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/sb;

    .line 327
    .local v2, "guideline":Lc8/sb;
    invoke-virtual {p0}, Lc8/mb;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_2

    move v5, v6

    .line 326
    :goto_1
    invoke-virtual {v2, v5}, Lc8/sb;->setPositionRelaxed(Z)V

    .line 328
    invoke-virtual {v2, p1, p2}, Lc8/sb;->addToSolver(Lc8/bb;I)V

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v5, v7

    .line 327
    goto :goto_1

    .line 330
    .end local v2    # "guideline":Lc8/sb;
    :cond_3
    iget-object v5, p0, Lc8/mb;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 331
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    .line 332
    iget-object v5, p0, Lc8/mb;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/sb;

    .line 334
    .restart local v2    # "guideline":Lc8/sb;
    invoke-virtual {p0}, Lc8/mb;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_4

    move v5, v6

    .line 333
    :goto_3
    invoke-virtual {v2, v5}, Lc8/sb;->setPositionRelaxed(Z)V

    .line 335
    invoke-virtual {v2, p1, p2}, Lc8/sb;->addToSolver(Lc8/bb;I)V

    .line 331
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move v5, v7

    .line 334
    goto :goto_3

    .line 337
    .end local v2    # "guideline":Lc8/sb;
    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v1, :cond_0

    .line 338
    iget-object v5, p0, Lc8/mb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ob;

    .line 339
    .local v0, "child":Lc8/ob;
    invoke-virtual {v0, p1, p2}, Lc8/ob;->addToSolver(Lc8/bb;I)V

    .line 337
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public computeGuidelinesPercentPositions()V
    .locals 3

    .prologue
    .line 578
    iget-object v2, p0, Lc8/mb;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 579
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 580
    iget-object v2, p0, Lc8/mb;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/sb;

    invoke-virtual {v2}, Lc8/sb;->inferRelativePercentPosition()V

    .line 579
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 582
    :cond_0
    iget-object v2, p0, Lc8/mb;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 583
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 584
    iget-object v2, p0, Lc8/mb;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/sb;

    invoke-virtual {v2}, Lc8/sb;->inferRelativePercentPosition()V

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 586
    :cond_1
    return-void
.end method

.method public cycleColumnAlignment(I)V
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 252
    iget-object v1, p0, Lc8/mb;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lb;

    .line 253
    .local v0, "slice":Lc8/lb;
    iget v1, v0, Lc8/lb;->alignment:I

    packed-switch v1, :pswitch_data_0

    .line 264
    :goto_0
    invoke-direct {p0}, Lc8/mb;->setChildrenConnections()V

    .line 265
    return-void

    .line 255
    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Lc8/lb;->alignment:I

    goto :goto_0

    .line 258
    :pswitch_1
    const/4 v1, 0x1

    iput v1, v0, Lc8/lb;->alignment:I

    goto :goto_0

    .line 261
    :pswitch_2
    const/4 v1, 0x2

    iput v1, v0, Lc8/lb;->alignment:I

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getColumnAlignmentRepresentation(I)Ljava/lang/String;
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lc8/mb;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lb;

    .line 159
    .local v0, "slice":Lc8/lb;
    iget v1, v0, Lc8/lb;->alignment:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 160
    const-string/jumbo v1, "L"

    .line 168
    :goto_0
    return-object v1

    .line 161
    :cond_0
    iget v1, v0, Lc8/lb;->alignment:I

    if-nez v1, :cond_1

    .line 162
    const-string/jumbo v1, "C"

    goto :goto_0

    .line 163
    :cond_1
    iget v1, v0, Lc8/lb;->alignment:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 164
    const-string/jumbo v1, "F"

    goto :goto_0

    .line 165
    :cond_2
    iget v1, v0, Lc8/lb;->alignment:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 166
    const-string/jumbo v1, "R"

    goto :goto_0

    .line 168
    :cond_3
    const-string/jumbo v1, "!"

    goto :goto_0
.end method

.method public getColumnsAlignmentRepresentation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 134
    iget-object v4, p0, Lc8/mb;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 135
    .local v1, "numSlices":I
    const-string/jumbo v2, ""

    .line 136
    .local v2, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 137
    iget-object v4, p0, Lc8/mb;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/lb;

    .line 138
    .local v3, "slice":Lc8/lb;
    iget v4, v3, Lc8/lb;->alignment:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    iget v4, v3, Lc8/lb;->alignment:I

    if-nez v4, :cond_2

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 142
    :cond_2
    iget v4, v3, Lc8/lb;->alignment:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 144
    :cond_3
    iget v4, v3, Lc8/lb;->alignment:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 148
    .end local v3    # "slice":Lc8/lb;
    :cond_4
    return-object v2
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/sb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lc8/mb;->mHorizontalGuidelines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumCols()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lc8/mb;->mNumCols:I

    return v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lc8/mb;->mNumRows:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lc8/mb;->mPadding:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string/jumbo v0, "ConstraintTableLayout"

    return-object v0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/sb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lc8/mb;->mVerticalGuidelines:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handlesInternalConstraints()Z
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x1

    return v0
.end method

.method public isVerticalGrowth()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lc8/mb;->mVerticalGrowth:Z

    return v0
.end method

.method public setColumnAlignment(II)V
    .locals 2
    .param p1, "column"    # I
    .param p2, "alignment"    # I

    .prologue
    .line 239
    iget-object v1, p0, Lc8/mb;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 240
    iget-object v1, p0, Lc8/mb;->mVerticalSlices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lb;

    .line 241
    .local v0, "slice":Lc8/lb;
    iput p2, v0, Lc8/lb;->alignment:I

    .line 242
    invoke-direct {p0}, Lc8/mb;->setChildrenConnections()V

    .line 244
    .end local v0    # "slice":Lc8/lb;
    :cond_0
    return-void
.end method

.method public setColumnAlignment(Ljava/lang/String;)V
    .locals 5
    .param p1, "alignment"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 273
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 274
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 275
    .local v0, "c":C
    const/16 v3, 0x4c

    if-ne v0, v3, :cond_0

    .line 276
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lc8/mb;->setColumnAlignment(II)V

    .line 273
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_0
    const/16 v3, 0x43

    if-ne v0, v3, :cond_1

    .line 278
    invoke-virtual {p0, v1, v4}, Lc8/mb;->setColumnAlignment(II)V

    goto :goto_1

    .line 279
    :cond_1
    const/16 v3, 0x46

    if-ne v0, v3, :cond_2

    .line 280
    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Lc8/mb;->setColumnAlignment(II)V

    goto :goto_1

    .line 281
    :cond_2
    const/16 v3, 0x52

    if-ne v0, v3, :cond_3

    .line 282
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Lc8/mb;->setColumnAlignment(II)V

    goto :goto_1

    .line 284
    :cond_3
    invoke-virtual {p0, v1, v4}, Lc8/mb;->setColumnAlignment(II)V

    goto :goto_1

    .line 287
    .end local v0    # "c":C
    :cond_4
    return-void
.end method

.method public setDebugSolverName(Lc8/bb;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Lc8/bb;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 396
    iput-object p1, p0, Lc8/mb;->system:Lc8/bb;

    .line 397
    invoke-super {p0, p1, p2}, Lc8/qb;->setDebugSolverName(Lc8/bb;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lc8/mb;->updateDebugSolverNames()V

    .line 399
    return-void
.end method

.method public setNumCols(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 179
    iget-boolean v0, p0, Lc8/mb;->mVerticalGrowth:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/mb;->mNumCols:I

    if-eq v0, p1, :cond_0

    .line 180
    iput p1, p0, Lc8/mb;->mNumCols:I

    .line 181
    invoke-direct {p0}, Lc8/mb;->setVerticalSlices()V

    .line 182
    invoke-virtual {p0}, Lc8/mb;->setTableDimensions()V

    .line 184
    :cond_0
    return-void
.end method

.method public setNumRows(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 194
    iget-boolean v0, p0, Lc8/mb;->mVerticalGrowth:Z

    if-nez v0, :cond_0

    iget v0, p0, Lc8/mb;->mNumCols:I

    if-eq v0, p1, :cond_0

    .line 195
    iput p1, p0, Lc8/mb;->mNumRows:I

    .line 196
    invoke-direct {p0}, Lc8/mb;->setHorizontalSlices()V

    .line 197
    invoke-virtual {p0}, Lc8/mb;->setTableDimensions()V

    .line 199
    :cond_0
    return-void
.end method

.method public setPadding(I)V
    .locals 1
    .param p1, "padding"    # I

    .prologue
    .line 226
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 227
    iput p1, p0, Lc8/mb;->mPadding:I

    .line 229
    :cond_0
    return-void
.end method

.method public setTableDimensions()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "extra":I
    iget-object v6, p0, Lc8/mb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 351
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 352
    iget-object v6, p0, Lc8/mb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/ob;

    .line 353
    .local v5, "widget":Lc8/ob;
    invoke-virtual {v5}, Lc8/ob;->getContainerItemSkip()I

    move-result v6

    add-int/2addr v2, v6

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    .end local v5    # "widget":Lc8/ob;
    :cond_0
    add-int/2addr v1, v2

    .line 356
    iget-boolean v6, p0, Lc8/mb;->mVerticalGrowth:Z

    if-eqz v6, :cond_5

    .line 357
    iget v6, p0, Lc8/mb;->mNumCols:I

    if-nez v6, :cond_1

    .line 358
    invoke-virtual {p0, v7}, Lc8/mb;->setNumCols(I)V

    .line 360
    :cond_1
    iget v6, p0, Lc8/mb;->mNumCols:I

    div-int v4, v1, v6

    .line 361
    .local v4, "rows":I
    iget v6, p0, Lc8/mb;->mNumCols:I

    mul-int/2addr v6, v4

    if-ge v6, v1, :cond_2

    .line 362
    add-int/lit8 v4, v4, 0x1

    .line 364
    :cond_2
    iget v6, p0, Lc8/mb;->mNumRows:I

    if-ne v6, v4, :cond_4

    iget-object v6, p0, Lc8/mb;->mVerticalGuidelines:Ljava/util/ArrayList;

    .line 365
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lc8/mb;->mNumCols:I

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 386
    .end local v4    # "rows":I
    :cond_3
    :goto_1
    return-void

    .line 368
    .restart local v4    # "rows":I
    :cond_4
    iput v4, p0, Lc8/mb;->mNumRows:I

    .line 369
    invoke-direct {p0}, Lc8/mb;->setHorizontalSlices()V

    .line 385
    .end local v4    # "rows":I
    :goto_2
    invoke-direct {p0}, Lc8/mb;->setChildrenConnections()V

    goto :goto_1

    .line 371
    :cond_5
    iget v6, p0, Lc8/mb;->mNumRows:I

    if-nez v6, :cond_6

    .line 372
    invoke-virtual {p0, v7}, Lc8/mb;->setNumRows(I)V

    .line 374
    :cond_6
    iget v6, p0, Lc8/mb;->mNumRows:I

    div-int v0, v1, v6

    .line 375
    .local v0, "cols":I
    iget v6, p0, Lc8/mb;->mNumRows:I

    mul-int/2addr v6, v0

    if-ge v6, v1, :cond_7

    .line 376
    add-int/lit8 v0, v0, 0x1

    .line 378
    :cond_7
    iget v6, p0, Lc8/mb;->mNumCols:I

    if-ne v6, v0, :cond_8

    iget-object v6, p0, Lc8/mb;->mHorizontalGuidelines:Ljava/util/ArrayList;

    .line 379
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lc8/mb;->mNumRows:I

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_3

    .line 382
    :cond_8
    iput v0, p0, Lc8/mb;->mNumCols:I

    .line 383
    invoke-direct {p0}, Lc8/mb;->setVerticalSlices()V

    goto :goto_2
.end method

.method public setVerticalGrowth(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lc8/mb;->mVerticalGrowth:Z

    .line 218
    return-void
.end method

.method public updateFromSolver(Lc8/bb;I)V
    .locals 4
    .param p1, "system"    # Lc8/bb;
    .param p2, "group"    # I

    .prologue
    .line 547
    invoke-super {p0, p1, p2}, Lc8/qb;->updateFromSolver(Lc8/bb;I)V

    .line 550
    iget-object v3, p0, Lc8/mb;->mSystem:Lc8/bb;

    if-ne p1, v3, :cond_1

    .line 551
    iget-object v3, p0, Lc8/mb;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 552
    .local v2, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 553
    iget-object v3, p0, Lc8/mb;->mVerticalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/sb;

    .line 554
    .local v0, "guideline":Lc8/sb;
    invoke-virtual {v0, p1, p2}, Lc8/sb;->updateFromSolver(Lc8/bb;I)V

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    .end local v0    # "guideline":Lc8/sb;
    :cond_0
    iget-object v3, p0, Lc8/mb;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 557
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 558
    iget-object v3, p0, Lc8/mb;->mHorizontalGuidelines:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/sb;

    .line 559
    .restart local v0    # "guideline":Lc8/sb;
    invoke-virtual {v0, p1, p2}, Lc8/sb;->updateFromSolver(Lc8/bb;I)V

    .line 557
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 562
    .end local v0    # "guideline":Lc8/sb;
    .end local v1    # "i":I
    .end local v2    # "num":I
    :cond_1
    return-void
.end method
