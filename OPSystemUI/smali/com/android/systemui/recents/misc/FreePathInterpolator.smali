.class public Lcom/android/systemui/recents/misc/FreePathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "FreePathInterpolator.java"


# instance fields
.field private mArcLength:F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "path"    # Landroid/graphics/Path;

    .line 52
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 54
    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 18
    .param p1, "path"    # Landroid/graphics/Path;

    move-object/from16 v0, p0

    .line 57
    const v1, 0x3b03126f    # 0.002f

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v1

    .line 59
    .local v1, "pointComponents":[F
    array-length v3, v1

    div-int/lit8 v3, v3, 0x3

    .line 61
    .local v3, "numPoints":I
    new-array v4, v3, [F

    iput-object v4, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    .line 62
    new-array v4, v3, [F

    iput-object v4, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    .line 63
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    .line 64
    const/4 v4, 0x0

    .line 65
    .local v4, "prevX":F
    const/4 v5, 0x0

    .line 66
    .local v5, "prevY":F
    const/4 v6, 0x0

    .line 67
    .local v6, "prevFraction":F
    const/4 v7, 0x0

    .line 68
    .local v7, "componentIndex":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_3

    .line 69
    add-int/lit8 v9, v7, 0x1

    .local v9, "componentIndex":I
    aget v7, v1, v7

    .line 70
    .local v7, "fraction":F
    add-int/lit8 v10, v9, 0x1

    .local v10, "componentIndex":I
    aget v9, v1, v9

    .line 71
    .local v9, "x":F
    add-int/lit8 v11, v10, 0x1

    .local v11, "componentIndex":I
    aget v10, v1, v10

    .line 72
    .local v10, "y":F
    cmpl-float v12, v7, v6

    if-nez v12, :cond_1

    cmpl-float v12, v9, v4

    if-nez v12, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "The Path cannot have discontinuity in the X axis."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 76
    :cond_1
    :goto_1
    cmpg-float v12, v9, v4

    if-ltz v12, :cond_2

    .line 79
    iget-object v12, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aput v9, v12, v8

    .line 80
    iget-object v12, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aput v10, v12, v8

    .line 81
    iget v12, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    float-to-double v12, v12

    sub-float v14, v9, v4

    float-to-double v14, v14

    move-object/from16 v16, v1

    sub-float v1, v10, v5

    .end local v1    # "pointComponents":[F
    .local v16, "pointComponents":[F
    float-to-double v1, v1

    invoke-static {v14, v15, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    add-double/2addr v12, v1

    double-to-float v1, v12

    iput v1, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    .line 82
    move v4, v9

    .line 83
    move v5, v10

    .line 84
    move v6, v7

    .line 68
    .end local v7    # "fraction":F
    .end local v9    # "x":F
    .end local v10    # "y":F
    add-int/lit8 v8, v8, 0x1

    move v7, v11

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    goto :goto_0

    .line 77
    .end local v16    # "pointComponents":[F
    .restart local v1    # "pointComponents":[F
    .restart local v7    # "fraction":F
    .restart local v9    # "x":F
    .restart local v10    # "y":F
    :cond_2
    move-object/from16 v16, v1

    .end local v1    # "pointComponents":[F
    .restart local v16    # "pointComponents":[F
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The Path cannot loop back on itself."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    .end local v8    # "i":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "componentIndex":I
    .end local v16    # "pointComponents":[F
    .restart local v1    # "pointComponents":[F
    .local v7, "componentIndex":I
    :cond_3
    move-object/from16 v16, v1

    .end local v1    # "pointComponents":[F
    .restart local v16    # "pointComponents":[F
    return-void
.end method


# virtual methods
.method public getArcLength()F
    .locals 1

    .line 175
    iget v0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    return v0
.end method

.method public getInterpolation(F)F
    .locals 8
    .param p1, "t"    # F

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "startIndex":I
    iget-object v1, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 103
    .local v1, "endIndex":I
    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v2, v2, v0

    return v2

    .line 105
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v2, v2, v1

    return v2

    .line 110
    :cond_1
    :goto_0
    sub-int v4, v1, v0

    if-le v4, v2, :cond_3

    .line 111
    add-int v4, v0, v1

    div-int/lit8 v4, v4, 0x2

    .line 112
    .local v4, "midIndex":I
    iget-object v5, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v5, v5, v4

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    .line 113
    move v1, v4

    goto :goto_1

    .line 115
    :cond_2
    move v0, v4

    .line 117
    .end local v4    # "midIndex":I
    :goto_1
    goto :goto_0

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v2, v2, v1

    iget-object v4, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v4, v4, v0

    sub-float/2addr v2, v4

    .line 120
    .local v2, "xRange":F
    cmpl-float v3, v2, v3

    if-nez v3, :cond_4

    .line 121
    iget-object v3, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v3, v3, v0

    return v3

    .line 124
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v3, v3, v0

    sub-float v3, p1, v3

    .line 125
    .local v3, "tInRange":F
    div-float v4, v3, v2

    .line 127
    .local v4, "fraction":F
    iget-object v5, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v5, v5, v0

    .line 128
    .local v5, "startY":F
    iget-object v6, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v6, v6, v1

    .line 129
    .local v6, "endY":F
    sub-float v7, v6, v5

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    return v7
.end method

.method public getX(F)F
    .locals 8
    .param p1, "y"    # F

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "startIndex":I
    iget-object v1, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 142
    .local v1, "endIndex":I
    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_0

    .line 143
    iget-object v2, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v2, v2, v1

    return v2

    .line 144
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v2, v2, v0

    return v2

    .line 149
    :cond_1
    :goto_0
    sub-int v4, v1, v0

    if-le v4, v2, :cond_3

    .line 150
    add-int v4, v0, v1

    div-int/lit8 v4, v4, 0x2

    .line 151
    .local v4, "midIndex":I
    iget-object v5, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v5, v5, v4

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    .line 152
    move v0, v4

    goto :goto_1

    .line 154
    :cond_2
    move v1, v4

    .line 156
    .end local v4    # "midIndex":I
    :goto_1
    goto :goto_0

    .line 158
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v2, v2, v1

    iget-object v4, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v4, v4, v0

    sub-float/2addr v2, v4

    .line 159
    .local v2, "yRange":F
    cmpl-float v3, v2, v3

    if-nez v3, :cond_4

    .line 160
    iget-object v3, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v3, v3, v0

    return v3

    .line 163
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v3, v3, v0

    sub-float v3, p1, v3

    .line 164
    .local v3, "tInRange":F
    div-float v4, v3, v2

    .line 166
    .local v4, "fraction":F
    iget-object v5, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v5, v5, v0

    .line 167
    .local v5, "startX":F
    iget-object v6, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v6, v6, v1

    .line 168
    .local v6, "endX":F
    sub-float v7, v6, v5

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    return v7
.end method
