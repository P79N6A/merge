.class public Lc8/Qr;
.super Lc8/pu;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellsUsed:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public expandable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field expanded:Z

.field public extraPixels:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public isOverflowButton:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public preventEdgeOffset:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 841
    invoke-direct {p0, p1, p2}, Lc8/pu;-><init>(II)V

    .line 842
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Qr;->isOverflowButton:Z

    .line 843
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOverflowButton"    # Z

    .prologue
    .line 846
    invoke-direct {p0, p1, p2}, Lc8/pu;-><init>(II)V

    .line 847
    iput-boolean p3, p0, Lc8/Qr;->isOverflowButton:Z

    .line 848
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 828
    invoke-direct {p0, p1, p2}, Lc8/pu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 829
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 832
    invoke-direct {p0, p1}, Lc8/pu;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    return-void
.end method

.method public constructor <init>(Lc8/Qr;)V
    .locals 1
    .param p1, "other"    # Lc8/Qr;

    .prologue
    .line 836
    invoke-direct {p0, p1}, Lc8/pu;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    iget-boolean v0, p1, Lc8/Qr;->isOverflowButton:Z

    iput-boolean v0, p0, Lc8/Qr;->isOverflowButton:Z

    .line 838
    return-void
.end method
