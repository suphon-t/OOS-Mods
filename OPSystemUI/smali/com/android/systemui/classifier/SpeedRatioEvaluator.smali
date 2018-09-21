.class public Lcom/android/systemui/classifier/SpeedRatioEvaluator;
.super Ljava/lang/Object;
.source "SpeedRatioEvaluator.java"


# direct methods
.method public static evaluate(F)F
    .locals 7
    .param p0, "value"    # F

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "evaluation":F
    const/4 v1, 0x0

    cmpl-float v2, p0, v1

    if-nez v2, :cond_0

    return v1

    .line 23
    :cond_0
    float-to-double v1, p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v1, :cond_1

    add-float/2addr v0, v2

    .line 24
    :cond_1
    float-to-double v3, p0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_2

    add-float/2addr v0, v2

    .line 25
    :cond_2
    float-to-double v3, p0

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_3

    add-float/2addr v0, v2

    .line 26
    :cond_3
    float-to-double v3, p0

    const-wide/high16 v5, 0x4032000000000000L    # 18.0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_4

    add-float/2addr v0, v2

    .line 27
    :cond_4
    return v0
.end method
