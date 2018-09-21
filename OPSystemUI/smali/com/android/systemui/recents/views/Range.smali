.class Lcom/android/systemui/recents/views/Range;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# instance fields
.field max:F

.field min:F

.field origin:F

.field final relativeMax:F

.field final relativeMin:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "relMin"    # F
    .param p2, "relMax"    # F

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    iput p1, p0, Lcom/android/systemui/recents/views/Range;->min:F

    .line 62
    iput p2, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    iput p2, p0, Lcom/android/systemui/recents/views/Range;->max:F

    .line 63
    return-void
.end method


# virtual methods
.method public getAbsoluteX(F)F
    .locals 2
    .param p1, "normX"    # F

    .line 92
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 93
    sub-float v1, p1, v0

    div-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    neg-float v0, v0

    mul-float/2addr v1, v0

    return v1

    .line 95
    :cond_0
    sub-float v1, p1, v0

    div-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    mul-float/2addr v1, v0

    return v1
.end method

.method public getNormalizedX(F)F
    .locals 3
    .param p1, "x"    # F

    .line 80
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-gez v0, :cond_0

    .line 81
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    sub-float v0, p1, v0

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    neg-float v2, v2

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    return v1

    .line 83
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    sub-float v0, p1, v0

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public isInRange(F)Z
    .locals 4
    .param p1, "absX"    # F

    .line 103
    float-to-double v0, p1

    iget v2, p0, Lcom/android/systemui/recents/views/Range;->min:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    float-to-double v0, p1

    iget v2, p0, Lcom/android/systemui/recents/views/Range;->max:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offset(F)V
    .locals 1
    .param p1, "x"    # F

    .line 69
    iput p1, p0, Lcom/android/systemui/recents/views/Range;->origin:F

    .line 70
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/recents/views/Range;->min:F

    .line 71
    iget v0, p0, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/recents/views/Range;->max:F

    .line 72
    return-void
.end method
