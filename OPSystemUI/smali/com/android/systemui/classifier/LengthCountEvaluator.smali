.class public Lcom/android/systemui/classifier/LengthCountEvaluator;
.super Ljava/lang/Object;
.source "LengthCountEvaluator.java"


# direct methods
.method public static evaluate(F)F
    .locals 7
    .param p0, "value"    # F

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "evaluation":F
    float-to-double v1, p0

    const-wide v3, 0x3fb70a3d70a3d70aL    # 0.09

    cmpg-double v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    add-float/2addr v0, v2

    .line 27
    :cond_0
    float-to-double v3, p0

    const-wide v5, 0x3fa999999999999aL    # 0.05

    cmpg-double v1, v3, v5

    if-gez v1, :cond_1

    add-float/2addr v0, v2

    .line 28
    :cond_1
    float-to-double v3, p0

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v1, v3, v5

    if-gez v1, :cond_2

    add-float/2addr v0, v2

    .line 29
    :cond_2
    float-to-double v3, p0

    const-wide v5, 0x3fe3333333333333L    # 0.6

    cmpl-double v1, v3, v5

    if-lez v1, :cond_3

    add-float/2addr v0, v2

    .line 30
    :cond_3
    float-to-double v3, p0

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    cmpl-double v1, v3, v5

    if-lez v1, :cond_4

    add-float/2addr v0, v2

    .line 31
    :cond_4
    float-to-double v3, p0

    const-wide v5, 0x3ff3333333333333L    # 1.2

    cmpl-double v1, v3, v5

    if-lez v1, :cond_5

    add-float/2addr v0, v2

    .line 32
    :cond_5
    return v0
.end method
