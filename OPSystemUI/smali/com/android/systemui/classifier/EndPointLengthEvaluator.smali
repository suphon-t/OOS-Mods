.class public Lcom/android/systemui/classifier/EndPointLengthEvaluator;
.super Ljava/lang/Object;
.source "EndPointLengthEvaluator.java"


# direct methods
.method public static evaluate(F)F
    .locals 8
    .param p0, "value"    # F

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "evaluation":F
    float-to-double v1, p0

    const-wide v3, 0x3fa999999999999aL    # 0.05

    cmpg-double v1, v1, v3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    if-gez v1, :cond_0

    float-to-double v4, v0

    add-double/2addr v4, v2

    double-to-float v0, v4

    .line 23
    :cond_0
    float-to-double v4, p0

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v4, v6

    if-gez v1, :cond_1

    float-to-double v4, v0

    add-double/2addr v4, v2

    double-to-float v0, v4

    .line 24
    :cond_1
    float-to-double v4, p0

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpg-double v1, v4, v6

    if-gez v1, :cond_2

    float-to-double v4, v0

    add-double/2addr v4, v2

    double-to-float v0, v4

    .line 25
    :cond_2
    float-to-double v4, p0

    const-wide v6, 0x3fd3333333333333L    # 0.3

    cmpg-double v1, v4, v6

    if-gez v1, :cond_3

    float-to-double v4, v0

    add-double/2addr v4, v2

    double-to-float v0, v4

    .line 26
    :cond_3
    float-to-double v4, p0

    const-wide v6, 0x3fd999999999999aL    # 0.4

    cmpg-double v1, v4, v6

    if-gez v1, :cond_4

    float-to-double v4, v0

    add-double/2addr v4, v2

    double-to-float v0, v4

    .line 27
    :cond_4
    float-to-double v4, p0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v4, v6

    if-gez v1, :cond_5

    float-to-double v4, v0

    add-double/2addr v4, v2

    double-to-float v0, v4

    .line 28
    :cond_5
    return v0
.end method
