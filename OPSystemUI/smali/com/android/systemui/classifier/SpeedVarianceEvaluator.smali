.class public Lcom/android/systemui/classifier/SpeedVarianceEvaluator;
.super Ljava/lang/Object;
.source "SpeedVarianceEvaluator.java"


# direct methods
.method public static evaluate(F)F
    .locals 7
    .param p0, "value"    # F

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "evaluation":F
    float-to-double v1, p0

    const-wide v3, 0x3faeb851eb851eb8L    # 0.06

    cmpl-double v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    add-float/2addr v0, v2

    .line 23
    :cond_0
    float-to-double v3, p0

    const-wide v5, 0x3fc3333333333333L    # 0.15

    cmpl-double v1, v3, v5

    if-lez v1, :cond_1

    add-float/2addr v0, v2

    .line 24
    :cond_1
    float-to-double v3, p0

    const-wide v5, 0x3fd3333333333333L    # 0.3

    cmpl-double v1, v3, v5

    if-lez v1, :cond_2

    add-float/2addr v0, v2

    .line 25
    :cond_2
    float-to-double v3, p0

    const-wide v5, 0x3fe3333333333333L    # 0.6

    cmpl-double v1, v3, v5

    if-lez v1, :cond_3

    add-float/2addr v0, v2

    .line 26
    :cond_3
    return v0
.end method
