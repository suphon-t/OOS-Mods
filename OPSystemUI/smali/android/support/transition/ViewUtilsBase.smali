.class Landroid/support/transition/ViewUtilsBase;
.super Ljava/lang/Object;
.source "ViewUtilsBase.java"


# instance fields
.field private mMatrixValues:[F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget v0, Landroid/support/transition/R$id;->save_non_transition_alpha:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 39
    sget v0, Landroid/support/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 40
    .local v0, "savedAlpha":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    return v1

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    return v1
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 48
    sget v0, Landroid/support/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    sget v0, Landroid/support/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 51
    :cond_0
    return-void
.end method

.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 93
    const/4 v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget-object v3, p0, Landroid/support/transition/ViewUtilsBase;->mMatrixValues:[F

    .line 103
    .local v3, "values":[F
    if-nez v3, :cond_1

    .line 104
    const/16 v4, 0x9

    new-array v4, v4, [F

    move-object v3, v4

    iput-object v4, p0, Landroid/support/transition/ViewUtilsBase;->mMatrixValues:[F

    .line 106
    :cond_1
    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 107
    const/4 v4, 0x3

    aget v4, v3, v4

    .line 108
    .local v4, "sin":F
    mul-float v5, v4, v4

    sub-float/2addr v1, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v1, v5

    const/4 v5, 0x0

    aget v6, v3, v5

    cmpg-float v6, v6, v2

    if-gez v6, :cond_2

    const/4 v6, -0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    :goto_0
    int-to-float v6, v6

    mul-float/2addr v1, v6

    .line 110
    .local v1, "cos":F
    float-to-double v6, v4

    float-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 111
    .local v6, "rotation":F
    aget v5, v3, v5

    div-float/2addr v5, v1

    .line 112
    .local v5, "scaleX":F
    const/4 v7, 0x4

    aget v7, v3, v7

    div-float/2addr v7, v1

    .line 113
    .local v7, "scaleY":F
    aget v0, v3, v0

    .line 114
    .local v0, "dx":F
    const/4 v8, 0x5

    aget v8, v3, v8

    .line 115
    .local v8, "dy":F
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 116
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 118
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 119
    invoke-virtual {p1, v6}, Landroid/view/View;->setRotation(F)V

    .line 120
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 121
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .end local v0    # "dx":F
    .end local v1    # "cos":F
    .end local v3    # "values":[F
    .end local v4    # "sin":F
    .end local v5    # "scaleX":F
    .end local v6    # "rotation":F
    .end local v7    # "scaleY":F
    .end local v8    # "dy":F
    goto :goto_2

    .line 94
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    int-to-float v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 96
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 97
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 98
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 99
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 100
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotation(F)V

    .line 123
    :goto_2
    return-void
.end method

.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 126
    invoke-virtual {p1, p2}, Landroid/view/View;->setLeft(I)V

    .line 127
    invoke-virtual {p1, p3}, Landroid/view/View;->setTop(I)V

    .line 128
    invoke-virtual {p1, p4}, Landroid/view/View;->setRight(I)V

    .line 129
    invoke-virtual {p1, p5}, Landroid/view/View;->setBottom(I)V

    .line 130
    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .line 30
    sget v0, Landroid/support/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 31
    .local v0, "savedAlpha":Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 36
    :goto_0
    return-void
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 63
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 65
    .local v1, "vp":Landroid/view/View;
    invoke-virtual {p0, v1, p2}, Landroid/support/transition/ViewUtilsBase;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 68
    .end local v1    # "vp":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 70
    .local v1, "vm":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 73
    :cond_1
    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 77
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 79
    .local v1, "vp":Landroid/view/View;
    invoke-virtual {p0, v1, p2}, Landroid/support/transition/ViewUtilsBase;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 82
    .end local v1    # "vp":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 84
    .local v1, "vm":Landroid/graphics/Matrix;
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 86
    .local v2, "inverted":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 90
    .end local v2    # "inverted":Landroid/graphics/Matrix;
    :cond_1
    return-void
.end method
