.class public Landroid/support/transition/Explode;
.super Landroid/support/transition/Visibility;
.source "Explode.java"


# static fields
.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mTempLoc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 45
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/support/transition/Visibility;-><init>()V

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    .line 51
    new-instance v0, Landroid/support/transition/CircularPropagation;

    invoke-direct {v0}, Landroid/support/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/transition/Explode;->setPropagation(Landroid/support/transition/TransitionPropagation;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    .line 56
    new-instance v0, Landroid/support/transition/CircularPropagation;

    invoke-direct {v0}, Landroid/support/transition/CircularPropagation;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/transition/Explode;->setPropagation(Landroid/support/transition/TransitionPropagation;)V

    .line 57
    return-void
.end method

.method private static calculateDistance(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 173
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static calculateMaxDistance(Landroid/view/View;II)F
    .locals 4
    .param p0, "sceneRoot"    # Landroid/view/View;
    .param p1, "focalX"    # I
    .param p2, "focalY"    # I

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 168
    .local v0, "maxX":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 169
    .local v1, "maxY":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-static {v2, v3}, Landroid/support/transition/Explode;->calculateDistance(FF)F

    move-result v2

    return v2
.end method

.method private calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V
    .locals 20
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "outVector"    # [I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 128
    iget-object v2, v0, Landroid/support/transition/Explode;->mTempLoc:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 129
    iget-object v2, v0, Landroid/support/transition/Explode;->mTempLoc:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 130
    .local v2, "sceneRootX":I
    iget-object v4, v0, Landroid/support/transition/Explode;->mTempLoc:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 134
    .local v4, "sceneRootY":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Explode;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v6

    .line 135
    .local v6, "epicenter":Landroid/graphics/Rect;
    if-nez v6, :cond_0

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    .line 138
    .local v7, "focalX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v4

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    .local v8, "focalY":I
    goto :goto_0

    .line 141
    .end local v7    # "focalX":I
    .end local v8    # "focalY":I
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    .line 142
    .restart local v7    # "focalX":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 145
    .restart local v8    # "focalY":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    .line 146
    .local v9, "centerX":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    .line 147
    .local v10, "centerY":I
    sub-int v11, v9, v7

    int-to-float v11, v11

    .line 148
    .local v11, "xVector":F
    sub-int v12, v10, v8

    int-to-float v12, v12

    .line 150
    .local v12, "yVector":F
    const/4 v13, 0x0

    cmpl-float v14, v11, v13

    if-nez v14, :cond_1

    cmpl-float v13, v12, v13

    if-nez v13, :cond_1

    .line 152
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double/2addr v13, v15

    double-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v11, v13, v14

    .line 153
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v17

    move-object/from16 v19, v6

    mul-double v5, v17, v15

    .end local v6    # "epicenter":Landroid/graphics/Rect;
    .local v19, "epicenter":Landroid/graphics/Rect;
    double-to-float v5, v5

    sub-float v12, v5, v14

    goto :goto_1

    .line 155
    .end local v19    # "epicenter":Landroid/graphics/Rect;
    .restart local v6    # "epicenter":Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v19, v6

    .end local v6    # "epicenter":Landroid/graphics/Rect;
    .restart local v19    # "epicenter":Landroid/graphics/Rect;
    :goto_1
    invoke-static {v11, v12}, Landroid/support/transition/Explode;->calculateDistance(FF)F

    move-result v5

    .line 156
    .local v5, "vectorSize":F
    div-float/2addr v11, v5

    .line 157
    div-float/2addr v12, v5

    .line 159
    sub-int v6, v7, v2

    sub-int v13, v8, v4

    .line 160
    invoke-static {v1, v6, v13}, Landroid/support/transition/Explode;->calculateMaxDistance(Landroid/view/View;II)F

    move-result v6

    .line 162
    .local v6, "maxDistance":F
    mul-float v13, v6, v11

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    aput v13, p3, v3

    .line 163
    mul-float v3, v6, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v13, 0x1

    aput v3, p3, v13

    .line 164
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 8
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 60
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 61
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 62
    iget-object v1, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 63
    .local v1, "left":I
    iget-object v2, p0, Landroid/support/transition/Explode;->mTempLoc:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 64
    .local v2, "top":I
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 65
    .local v3, "right":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 66
    .local v4, "bottom":I
    iget-object v5, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v6, "android:explode:screenBounds"

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 77
    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 78
    invoke-direct {p0, p1}, Landroid/support/transition/Explode;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 79
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 71
    invoke-super {p0, p1}, Landroid/support/transition/Visibility;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 72
    invoke-direct {p0, p1}, Landroid/support/transition/Explode;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 73
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 17
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;

    move-object/from16 v0, p0

    .line 84
    move-object/from16 v10, p4

    if-nez v10, :cond_0

    .line 85
    const/4 v1, 0x0

    return-object v1

    .line 87
    :cond_0
    iget-object v1, v10, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:explode:screenBounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/graphics/Rect;

    .line 88
    .local v11, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v12

    .line 89
    .local v12, "endX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v13

    .line 90
    .local v13, "endY":F
    iget-object v1, v0, Landroid/support/transition/Explode;->mTempLoc:[I

    move-object/from16 v14, p1

    invoke-direct {v0, v14, v11, v1}, Landroid/support/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 91
    iget-object v1, v0, Landroid/support/transition/Explode;->mTempLoc:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    add-float v15, v12, v1

    .line 92
    .local v15, "startX":F
    iget-object v1, v0, Landroid/support/transition/Explode;->mTempLoc:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    add-float v16, v13, v1

    .line 94
    .local v16, "startY":F
    iget v3, v11, Landroid/graphics/Rect;->left:I

    iget v4, v11, Landroid/graphics/Rect;->top:I

    sget-object v9, Landroid/support/transition/Explode;->sDecelerate:Landroid/animation/TimeInterpolator;

    move-object/from16 v1, p2

    move-object v2, v10

    move v5, v15

    move/from16 v6, v16

    move v7, v12

    move v8, v13

    invoke-static/range {v1 .. v9}, Landroid/support/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/support/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 20
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;

    move-object/from16 v0, p0

    move-object/from16 v10, p3

    .line 101
    if-nez v10, :cond_0

    .line 102
    const/4 v1, 0x0

    return-object v1

    .line 104
    :cond_0
    iget-object v1, v10, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:explode:screenBounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/graphics/Rect;

    .line 105
    .local v11, "bounds":Landroid/graphics/Rect;
    iget v12, v11, Landroid/graphics/Rect;->left:I

    .line 106
    .local v12, "viewPosX":I
    iget v13, v11, Landroid/graphics/Rect;->top:I

    .line 107
    .local v13, "viewPosY":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v14

    .line 108
    .local v14, "startX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v15

    .line 109
    .local v15, "startY":F
    move v1, v14

    .line 110
    .local v1, "endX":F
    move v2, v15

    .line 111
    .local v2, "endY":F
    iget-object v3, v10, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    sget v4, Landroid/support/transition/R$id;->transition_position:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [I

    .line 112
    .local v16, "interruptedPosition":[I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v16, :cond_1

    .line 115
    aget v5, v16, v4

    iget v6, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 116
    aget v5, v16, v3

    iget v6, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v2, v5

    .line 117
    aget v5, v16, v4

    aget v6, v16, v3

    invoke-virtual {v11, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 119
    :cond_1
    iget-object v5, v0, Landroid/support/transition/Explode;->mTempLoc:[I

    move-object/from16 v9, p1

    invoke-direct {v0, v9, v11, v5}, Landroid/support/transition/Explode;->calculateOut(Landroid/view/View;Landroid/graphics/Rect;[I)V

    .line 120
    iget-object v5, v0, Landroid/support/transition/Explode;->mTempLoc:[I

    aget v4, v5, v4

    int-to-float v4, v4

    add-float v17, v1, v4

    .line 121
    .end local v1    # "endX":F
    .local v17, "endX":F
    iget-object v1, v0, Landroid/support/transition/Explode;->mTempLoc:[I

    aget v1, v1, v3

    int-to-float v1, v1

    add-float v18, v2, v1

    .line 123
    .end local v2    # "endY":F
    .local v18, "endY":F
    sget-object v19, Landroid/support/transition/Explode;->sAccelerate:Landroid/animation/TimeInterpolator;

    move-object/from16 v1, p2

    move-object v2, v10

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v17

    move/from16 v8, v18

    move-object/from16 v9, v19

    invoke-static/range {v1 .. v9}, Landroid/support/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/support/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method
