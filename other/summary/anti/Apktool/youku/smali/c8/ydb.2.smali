.class public Lc8/ydb;
.super Ljava/lang/Object;
.source "CubicCurveData.java"


# instance fields
.field private final controlPoint1:Landroid/graphics/PointF;

.field private final controlPoint2:Landroid/graphics/PointF;

.field private final vertex:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/ydb;->controlPoint1:Landroid/graphics/PointF;

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/ydb;->controlPoint2:Landroid/graphics/PointF;

    .line 13
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lc8/ydb;->vertex:Landroid/graphics/PointF;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0
    .param p1, "controlPoint1"    # Landroid/graphics/PointF;
    .param p2, "controlPoint2"    # Landroid/graphics/PointF;
    .param p3, "vertex"    # Landroid/graphics/PointF;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lc8/ydb;->controlPoint1:Landroid/graphics/PointF;

    .line 18
    iput-object p2, p0, Lc8/ydb;->controlPoint2:Landroid/graphics/PointF;

    .line 19
    iput-object p3, p0, Lc8/ydb;->vertex:Landroid/graphics/PointF;

    .line 20
    return-void
.end method


# virtual methods
.method public getControlPoint1()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lc8/ydb;->controlPoint1:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getControlPoint2()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lc8/ydb;->controlPoint2:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getVertex()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lc8/ydb;->vertex:Landroid/graphics/PointF;

    return-object v0
.end method

.method public setControlPoint1(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 23
    iget-object v0, p0, Lc8/ydb;->controlPoint1:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 24
    return-void
.end method

.method public setControlPoint2(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 31
    iget-object v0, p0, Lc8/ydb;->controlPoint2:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 32
    return-void
.end method

.method public setVertex(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 39
    iget-object v0, p0, Lc8/ydb;->vertex:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 40
    return-void
.end method
