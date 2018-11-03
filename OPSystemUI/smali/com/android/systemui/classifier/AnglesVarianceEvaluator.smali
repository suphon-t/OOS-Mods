.class public Lcom/android/systemui/classifier/AnglesVarianceEvaluator;
.super Ljava/lang/Object;
.source "AnglesVarianceEvaluator.java"


# direct methods
.method public static evaluate(FI)F
    .locals 7
    .param p0, "value"    # F
    .param p1, "type"    # I

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "evaluation":F
    float-to-double v1, p0

    const-wide v3, 0x3fc999999999999aL    # 0.2

    cmpl-double v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_0

    add-float/2addr v0, v2

    .line 23
    :cond_0
    float-to-double v3, p0

    const-wide v5, 0x3fd999999999999aL    # 0.4

    cmpl-double v1, v3, v5

    if-lez v1, :cond_1

    add-float/2addr v0, v2

    .line 24
    :cond_1
    float-to-double v3, p0

    const-wide v5, 0x3fe999999999999aL    # 0.8

    cmpl-double v1, v3, v5

    if-lez v1, :cond_2

    add-float/2addr v0, v2

    .line 25
    :cond_2
    float-to-double v3, p0

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    cmpl-double v1, v3, v5

    if-lez v1, :cond_3

    add-float/2addr v0, v2

    .line 26
    :cond_3
    return v0
.end method
