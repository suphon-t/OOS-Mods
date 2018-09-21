.class public Lcom/android/systemui/classifier/EndPointRatioEvaluator;
.super Ljava/lang/Object;
.source "EndPointRatioEvaluator.java"


# direct methods
.method public static evaluate(F)F
    .locals 7
    .param p0, "value"    # F

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "evaluation":F
    float-to-double v1, p0

    const-wide v3, 0x3feb333333333333L    # 0.85

    cmpg-double v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    add-float/2addr v0, v2

    .line 23
    :cond_0
    float-to-double v3, p0

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    cmpg-double v1, v3, v5

    if-gez v1, :cond_1

    add-float/2addr v0, v2

    .line 24
    :cond_1
    float-to-double v3, p0

    const-wide v5, 0x3fe4cccccccccccdL    # 0.65

    cmpg-double v1, v3, v5

    if-gez v1, :cond_2

    add-float/2addr v0, v2

    .line 25
    :cond_2
    float-to-double v3, p0

    const-wide v5, 0x3fe199999999999aL    # 0.55

    cmpg-double v1, v3, v5

    if-gez v1, :cond_3

    add-float/2addr v0, v2

    .line 26
    :cond_3
    float-to-double v3, p0

    const-wide v5, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v1, v3, v5

    if-gez v1, :cond_4

    add-float/2addr v0, v2

    .line 27
    :cond_4
    float-to-double v3, p0

    const-wide v5, 0x3fd6666666666666L    # 0.35

    cmpg-double v1, v3, v5

    if-gez v1, :cond_5

    add-float/2addr v0, v2

    .line 28
    :cond_5
    return v0
.end method
