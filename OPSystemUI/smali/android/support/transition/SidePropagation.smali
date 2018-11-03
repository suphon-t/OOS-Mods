.class public Landroid/support/transition/SidePropagation;
.super Landroid/support/transition/VisibilityPropagation;
.source "SidePropagation.java"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/support/transition/VisibilityPropagation;-><init>()V

    .line 36
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/support/transition/SidePropagation;->mPropagationSpeed:F

    .line 37
    const/16 v0, 0x50

    iput v0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "viewX"    # I
    .param p3, "viewY"    # I
    .param p4, "epicenterX"    # I
    .param p5, "epicenterY"    # I
    .param p6, "left"    # I
    .param p7, "top"    # I
    .param p8, "right"    # I
    .param p9, "bottom"    # I

    .line 125
    iget v0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x1

    const v5, 0x800003

    if-ne v0, v5, :cond_2

    .line 126
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    move v0, v4

    .line 128
    .local v0, "isRtl":Z
    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .end local v0    # "isRtl":Z
    :goto_1
    move v0, v1

    .line 129
    .local v0, "side":I
    goto :goto_4

    .end local v0    # "side":I
    :cond_2
    iget v0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    const v5, 0x800005

    if-ne v0, v5, :cond_5

    .line 130
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    move v0, v4

    .line 132
    .local v0, "isRtl":Z
    if-eqz v0, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v3

    .end local v0    # "isRtl":Z
    :goto_3
    move v0, v1

    .line 133
    .local v0, "side":I
    goto :goto_4

    .line 134
    .end local v0    # "side":I
    :cond_5
    iget v0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    .line 136
    .restart local v0    # "side":I
    :goto_4
    const/4 v1, 0x0

    .line 137
    .local v1, "distance":I
    if-eq v0, v2, :cond_9

    if-eq v0, v3, :cond_8

    const/16 v2, 0x30

    if-eq v0, v2, :cond_7

    const/16 v2, 0x50

    if-eq v0, v2, :cond_6

    goto :goto_5

    .line 148
    :cond_6
    sub-int v2, p3, p7

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    goto :goto_5

    .line 142
    :cond_7
    sub-int v2, p9, p3

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    .line 143
    goto :goto_5

    .line 145
    :cond_8
    sub-int v2, p2, p6

    sub-int v3, p5, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    .line 146
    goto :goto_5

    .line 139
    :cond_9
    sub-int v2, p8, p2

    sub-int v3, p5, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    .line 140
    nop

    .line 151
    :goto_5
    return v1
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .locals 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 155
    iget v0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const v1, 0x800003

    if-eq v0, v1, :cond_0

    const v1, 0x800005

    if-eq v0, v1, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/support/transition/Transition;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)J
    .locals 25
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroid/support/transition/Transition;
    .param p3, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    .line 76
    const-wide/16 v12, 0x0

    if-nez v11, :cond_0

    if-nez p4, :cond_0

    .line 77
    return-wide v12

    .line 79
    :cond_0
    const/4 v0, 0x1

    .line 80
    .local v0, "directionMultiplier":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v14

    .line 82
    .local v14, "epicenter":Landroid/graphics/Rect;
    if-eqz p4, :cond_2

    invoke-virtual {v10, v11}, Landroid/support/transition/SidePropagation;->getViewVisibility(Landroid/support/transition/TransitionValues;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    move-object/from16 v1, p4

    goto :goto_1

    .line 83
    :cond_2
    :goto_0
    move-object v1, v11

    .line 84
    .local v1, "positionValues":Landroid/support/transition/TransitionValues;
    const/4 v0, -0x1

    .line 86
    .end local v0    # "directionMultiplier":I
    .local v9, "directionMultiplier":I
    :goto_1
    move v9, v0

    move-object v8, v1

    .line 89
    .end local v1    # "positionValues":Landroid/support/transition/TransitionValues;
    .local v8, "positionValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {v10, v8}, Landroid/support/transition/SidePropagation;->getViewX(Landroid/support/transition/TransitionValues;)I

    move-result v15

    .line 90
    .local v15, "viewCenterX":I
    invoke-virtual {v10, v8}, Landroid/support/transition/SidePropagation;->getViewY(Landroid/support/transition/TransitionValues;)I

    move-result v16

    .line 92
    .local v16, "viewCenterY":I
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 93
    .local v7, "loc":[I
    move-object/from16 v6, p1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 94
    const/4 v1, 0x0

    aget v1, v7, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v17, v1, v2

    .line 95
    .local v17, "left":I
    const/4 v1, 0x1

    aget v1, v7, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v18, v1, v2

    .line 96
    .local v18, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    add-int v19, v17, v1

    .line 97
    .local v19, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int v20, v18, v1

    .line 101
    .local v20, "bottom":I
    if-eqz v14, :cond_3

    .line 102
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 103
    .local v0, "epicenterX":I
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 106
    .local v1, "epicenterY":I
    move/from16 v21, v0

    move v5, v1

    goto :goto_2

    .line 105
    .end local v0    # "epicenterX":I
    .end local v1    # "epicenterY":I
    :cond_3
    add-int v1, v17, v19

    div-int/2addr v1, v0

    .line 106
    .local v1, "epicenterX":I
    add-int v2, v18, v20

    div-int/2addr v2, v0

    move/from16 v21, v1

    move v5, v2

    .line 109
    .end local v1    # "epicenterX":I
    .local v5, "epicenterY":I
    .local v21, "epicenterX":I
    :goto_2
    move-object v0, v10

    move-object v1, v6

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v21

    move/from16 v6, v17

    move-object/from16 v22, v7

    move/from16 v7, v18

    .end local v7    # "loc":[I
    .local v22, "loc":[I
    move-object/from16 v23, v8

    move/from16 v8, v19

    .end local v8    # "positionValues":Landroid/support/transition/TransitionValues;
    .local v23, "positionValues":Landroid/support/transition/TransitionValues;
    move/from16 v24, v9

    move/from16 v9, v20

    .end local v9    # "directionMultiplier":I
    .local v24, "directionMultiplier":I
    invoke-direct/range {v0 .. v9}, Landroid/support/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v0

    int-to-float v0, v0

    .line 111
    .local v0, "distance":F
    invoke-direct/range {p0 .. p1}, Landroid/support/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v1

    int-to-float v1, v1

    .line 112
    .local v1, "maxDistance":F
    div-float v2, v0, v1

    .line 114
    .local v2, "distanceFraction":F
    invoke-virtual/range {p2 .. p2}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v3

    .line 115
    .local v3, "duration":J
    cmp-long v6, v3, v12

    if-gez v6, :cond_4

    .line 116
    const-wide/16 v3, 0x12c

    .line 119
    :cond_4
    move/from16 v6, v24

    int-to-long v7, v6

    .end local v24    # "directionMultiplier":I
    .local v6, "directionMultiplier":I
    mul-long/2addr v7, v3

    long-to-float v7, v7

    iget v8, v10, Landroid/support/transition/SidePropagation;->mPropagationSpeed:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-long v7, v7

    return-wide v7
.end method

.method public setSide(I)V
    .locals 0
    .param p1, "side"    # I

    .line 51
    iput p1, p0, Landroid/support/transition/SidePropagation;->mSide:I

    .line 52
    return-void
.end method
