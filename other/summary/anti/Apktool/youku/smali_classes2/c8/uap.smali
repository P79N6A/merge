.class public Lc8/uap;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# instance fields
.field private isMove:Z

.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private final mReverse:Z

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 1
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "depthZ"    # F
    .param p6, "reverse"    # Z

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/uap;->isMove:Z

    .line 60
    iput p1, p0, Lc8/uap;->mFromDegrees:F

    .line 61
    iput p2, p0, Lc8/uap;->mToDegrees:F

    .line 62
    iput p3, p0, Lc8/uap;->mCenterX:F

    .line 63
    iput p4, p0, Lc8/uap;->mCenterY:F

    .line 64
    iput p5, p0, Lc8/uap;->mDepthZ:F

    .line 65
    iput-boolean p6, p0, Lc8/uap;->mReverse:Z

    .line 66
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v8, 0x0

    .line 76
    iget v4, p0, Lc8/uap;->mFromDegrees:F

    .line 77
    .local v4, "fromDegrees":F
    iget v6, p0, Lc8/uap;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 79
    .local v3, "degrees":F
    iget v1, p0, Lc8/uap;->mCenterX:F

    .line 80
    .local v1, "centerX":F
    iget v2, p0, Lc8/uap;->mCenterY:F

    .line 81
    .local v2, "centerY":F
    iget-object v0, p0, Lc8/uap;->mCamera:Landroid/graphics/Camera;

    .line 83
    .local v0, "camera":Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 85
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 87
    iget-boolean v6, p0, Lc8/uap;->isMove:Z

    if-eqz v6, :cond_0

    .line 88
    iget-boolean v6, p0, Lc8/uap;->mReverse:Z

    if-eqz v6, :cond_1

    .line 89
    iget v6, p0, Lc8/uap;->mDepthZ:F

    mul-float/2addr v6, p1

    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 94
    :cond_0
    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 95
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 98
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 99
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 100
    return-void

    .line 91
    :cond_1
    iget v6, p0, Lc8/uap;->mDepthZ:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, p1

    mul-float/2addr v6, v7

    invoke-virtual {v0, v8, v8, v6}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 71
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lc8/uap;->mCamera:Landroid/graphics/Camera;

    .line 72
    return-void
.end method

.method public setMove(Z)V
    .locals 0
    .param p1, "isMove"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lc8/uap;->isMove:Z

    .line 41
    return-void
.end method
