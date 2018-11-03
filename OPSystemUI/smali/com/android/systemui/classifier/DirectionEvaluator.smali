.class public Lcom/android/systemui/classifier/DirectionEvaluator;
.super Ljava/lang/Object;
.source "DirectionEvaluator.java"


# direct methods
.method public static evaluate(FFI)F
    .locals 6
    .param p0, "xDiff"    # F
    .param p1, "yDiff"    # F
    .param p2, "type"    # I

    .line 21
    const/high16 v0, 0x40b00000    # 5.5f

    .line 22
    .local v0, "falsingEvaluation":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 23
    .local v1, "vertical":Z
    :goto_0
    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 47
    :pswitch_1
    float-to-double v4, p0

    cmpl-double v4, v4, v2

    if-lez v4, :cond_3

    float-to-double v4, p1

    cmpl-double v2, v4, v2

    if-lez v2, :cond_3

    .line 48
    return v0

    .line 42
    :pswitch_2
    float-to-double v4, p0

    cmpg-double v4, v4, v2

    if-gez v4, :cond_3

    float-to-double v4, p1

    cmpl-double v2, v4, v2

    if-lez v2, :cond_3

    .line 43
    return v0

    .line 37
    :pswitch_3
    if-eqz v1, :cond_1

    float-to-double v4, p1

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_3

    .line 38
    :cond_1
    return v0

    .line 31
    :pswitch_4
    if-eqz v1, :cond_3

    .line 32
    return v0

    .line 26
    :pswitch_5
    if-eqz v1, :cond_2

    float-to-double v4, p1

    cmpg-double v2, v4, v2

    if-gtz v2, :cond_3

    .line 27
    :cond_2
    return v0

    .line 53
    :cond_3
    :goto_1
    const/4 v2, 0x0

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
