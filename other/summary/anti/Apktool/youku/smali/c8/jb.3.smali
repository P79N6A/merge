.class public Lc8/jb;
.super Lc8/qb;
.source "ConstraintHorizontalLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;
    }
.end annotation


# instance fields
.field private mAlignment:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lc8/qb;-><init>()V

    .line 30
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    iput-object v0, p0, Lc8/jb;->mAlignment:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    .line 35
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lc8/qb;-><init>(II)V

    .line 30
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    iput-object v0, p0, Lc8/jb;->mAlignment:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    .line 55
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/qb;-><init>(IIII)V

    .line 30
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->MIDDLE:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    iput-object v0, p0, Lc8/jb;->mAlignment:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    .line 46
    return-void
.end method


# virtual methods
.method public addToSolver(Lc8/bb;I)V
    .locals 14
    .param p1, "system"    # Lc8/bb;
    .param p2, "group"    # I

    .prologue
    .line 63
    iget-object v1, p0, Lc8/jb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 64
    move-object v2, p0

    .line 65
    .local v2, "previous":Lc8/ob;
    const/4 v12, 0x0

    .local v12, "i":I
    iget-object v1, p0, Lc8/jb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, "mChildrenSize":I
    :goto_0
    if-ge v12, v13, :cond_2

    .line 66
    iget-object v1, p0, Lc8/jb;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ob;

    .line 67
    .local v0, "widget":Lc8/ob;
    if-eq v2, p0, :cond_0

    .line 68
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1, v2, v3}, Lc8/ob;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    .line 69
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v1, v0, v3}, Lc8/ob;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    .line 78
    :goto_1
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1, p0, v3}, Lc8/ob;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    .line 79
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v0, v1, p0, v3}, Lc8/ob;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)V

    .line 80
    move-object v2, v0

    .line 65
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 71
    :cond_0
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 72
    .local v5, "strength":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    iget-object v1, p0, Lc8/jb;->mAlignment:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->END:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    if-ne v1, v3, :cond_1

    .line 73
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 75
    :cond_1
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lc8/ob;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    goto :goto_1

    .line 82
    .end local v0    # "widget":Lc8/ob;
    .end local v5    # "strength":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    :cond_2
    if-eq v2, p0, :cond_4

    .line 83
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 84
    .restart local v5    # "strength":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    iget-object v1, p0, Lc8/jb;->mAlignment:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;->BEGIN:Landroid/support/constraint/solver/widgets/ConstraintHorizontalLayout$ContentAlignment;

    if-ne v1, v3, :cond_3

    .line 85
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;->WEAK:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;

    .line 87
    :cond_3
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    sget-object v9, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    const/4 v10, 0x0

    move-object v6, v2

    move-object v8, p0

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lc8/ob;->connect(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;Lc8/ob;Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;ILandroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;)V

    .line 91
    .end local v2    # "previous":Lc8/ob;
    .end local v5    # "strength":Landroid/support/constraint/solver/widgets/ConstraintAnchor$Strength;
    .end local v12    # "i":I
    .end local v13    # "mChildrenSize":I
    :cond_4
    invoke-super/range {p0 .. p2}, Lc8/qb;->addToSolver(Lc8/bb;I)V

    .line 92
    return-void
.end method
