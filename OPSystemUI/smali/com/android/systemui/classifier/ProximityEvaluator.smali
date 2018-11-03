.class public Lcom/android/systemui/classifier/ProximityEvaluator;
.super Ljava/lang/Object;
.source "ProximityEvaluator.java"


# direct methods
.method public static evaluate(FI)F
    .locals 6
    .param p0, "value"    # F
    .param p1, "type"    # I

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "evaluation":F
    const v1, 0x3dcccccd    # 0.1f

    .line 23
    .local v1, "threshold":F
    if-nez p1, :cond_0

    .line 24
    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    :cond_0
    cmpl-float v2, p0, v1

    if-ltz v2, :cond_1

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double/2addr v2, v4

    double-to-float v0, v2

    .line 27
    :cond_1
    return v0
.end method
