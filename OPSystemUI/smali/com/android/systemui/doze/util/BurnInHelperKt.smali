.class public final Lcom/android/systemui/doze/util/BurnInHelperKt;
.super Ljava/lang/Object;
.source "BurnInHelper.kt"


# direct methods
.method public static final getBurnInOffset(IZ)I
    .locals 2

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x476a6000    # 60000.0f

    div-float/2addr v0, v1

    int-to-float p0, p0

    if-eqz p1, :cond_0

    const/high16 p1, 0x42a60000    # 83.0f

    goto :goto_0

    :cond_0
    const p1, 0x44024000    # 521.0f

    :goto_0
    invoke-static {v0, p0, p1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->zigzag(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static final zigzag(FFF)F
    .locals 1

    rem-float/2addr p0, p2

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p2, v0

    div-float/2addr p0, p2

    const/4 p2, 0x1

    int-to-float p2, p2

    cmpg-float p2, p0, p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    sub-float p0, v0, p0

    :goto_0
    const/4 p2, 0x0

    .line 50
    invoke-static {p2, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method
