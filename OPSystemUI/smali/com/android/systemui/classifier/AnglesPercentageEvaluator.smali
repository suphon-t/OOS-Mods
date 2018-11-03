.class public Lcom/android/systemui/classifier/AnglesPercentageEvaluator;
.super Ljava/lang/Object;
.source "AnglesPercentageEvaluator.java"


# direct methods
.method public static evaluate(FI)F
    .locals 8
    .param p0, "value"    # F
    .param p1, "type"    # I

    .line 21
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    .local v0, "secureUnlock":Z
    :goto_0
    const/4 v1, 0x0

    .line 23
    .local v1, "evaluation":F
    float-to-double v2, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_1

    if-nez v0, :cond_1

    add-float/2addr v1, v3

    .line 24
    :cond_1
    float-to-double v4, p0

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    cmpg-double v2, v4, v6

    if-gez v2, :cond_2

    if-nez v0, :cond_2

    add-float/2addr v1, v3

    .line 25
    :cond_2
    float-to-double v4, p0

    const-wide v6, 0x3fe6666666666666L    # 0.7

    cmpg-double v2, v4, v6

    if-gez v2, :cond_3

    add-float/2addr v1, v3

    .line 26
    :cond_3
    return v1
.end method
