.class public Lcom/android/systemui/classifier/SpeedAnglesPercentageEvaluator;
.super Ljava/lang/Object;
.source "SpeedAnglesPercentageEvaluator.java"


# direct methods
.method public static evaluate(F)F
    .locals 7
    .param p0, "value"    # F

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "evaluation":F
    float-to-double v1, p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    add-float/2addr v0, v2

    .line 23
    :cond_0
    float-to-double v3, p0

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    cmpg-double v1, v3, v5

    if-gez v1, :cond_1

    add-float/2addr v0, v2

    .line 24
    :cond_1
    float-to-double v3, p0

    const-wide v5, 0x3fe6666666666666L    # 0.7

    cmpg-double v1, v3, v5

    if-gez v1, :cond_2

    add-float/2addr v0, v2

    .line 25
    :cond_2
    return v0
.end method
