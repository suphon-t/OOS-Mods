.class public Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.super Lcom/android/systemui/statusbar/stack/ViewState;
.source "ExpandableViewState.java"


# instance fields
.field public belowSpeedBump:Z

.field public clipTopAmount:I

.field public dark:Z

.field public dimmed:Z

.field public headsUpIsVisible:Z

.field public height:I

.field public hideSensitive:Z

.field public inShelf:Z

.field public location:I

.field public notGoneIndex:I

.field public shadowAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    return-void
.end method

.method public static getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2
    .param p0, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 461
    if-nez p0, :cond_0

    .line 462
    const/4 v0, 0x0

    return v0

    .line 464
    :cond_0
    const v0, 0x7f0a0195

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 465
    .local v0, "heightAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    return v1

    .line 468
    :cond_1
    const v1, 0x7f0a0193

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 251
    move-object/from16 v2, p2

    const v3, 0x7f0a0194

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 252
    .local v4, "previousStartValue":Ljava/lang/Integer;
    const v5, 0x7f0a0193

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 253
    .local v6, "previousEndValue":Ljava/lang/Integer;
    iget v7, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 254
    .local v7, "newEndValue":I
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_0

    .line 255
    return-void

    .line 257
    :cond_0
    const v8, 0x7f0a0195

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    .line 258
    .local v9, "previousAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v10

    .line 259
    .local v10, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v11, v10, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v11, :cond_2

    .line 261
    if-eqz v9, :cond_1

    .line 264
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 265
    .local v8, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v7, v11

    .line 266
    .local v11, "relativeDiff":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v15, v11

    .line 267
    .local v15, "newStartValue":I
    aget-object v5, v8, v14

    new-array v12, v12, [I

    aput v15, v12, v14

    aput v7, v12, v13

    invoke-virtual {v5, v12}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 268
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 269
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v5, 0x7f0a0193

    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 270
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 271
    return-void

    .line 274
    .end local v8    # "values":[Landroid/animation/PropertyValuesHolder;
    .end local v11    # "relativeDiff":I
    .end local v15    # "newStartValue":I
    :cond_1
    invoke-virtual {v1, v7, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 275
    return-void

    .line 279
    :cond_2
    new-array v5, v12, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v11

    aput v11, v5, v14

    aput v7, v5, v13

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 280
    .local v5, "animator":Landroid/animation/ValueAnimator;
    new-instance v11, Lcom/android/systemui/statusbar/stack/ExpandableViewState$1;

    invoke-direct {v11, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$1;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 287
    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    iget-wide v11, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v11, v12, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v11

    .line 289
    .local v11, "newDuration":J
    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 290
    iget-wide v14, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    .line 291
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    .line 292
    :cond_3
    iget-wide v14, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v5, v14, v15}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 294
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    .line 295
    .local v14, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v14, :cond_5

    .line 296
    invoke-virtual {v5, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 299
    :cond_5
    new-instance v15, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;

    invoke-direct {v15, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$2;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v5, v15}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 324
    invoke-static {v5, v14}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 325
    invoke-virtual {v1, v8, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 326
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 327
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v8, 0x7f0a0193

    invoke-virtual {v1, v8, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 328
    invoke-virtual {v1, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeightAnimating(Z)V

    .line 329
    return-void
.end method

.method private startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 395
    move-object/from16 v2, p2

    const v3, 0x7f0a0442

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 396
    .local v4, "previousStartValue":Ljava/lang/Integer;
    const v5, 0x7f0a0441

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 397
    .local v6, "previousEndValue":Ljava/lang/Integer;
    iget v7, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 398
    .local v7, "newEndValue":I
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_0

    .line 399
    return-void

    .line 401
    :cond_0
    const v8, 0x7f0a0443

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    .line 402
    .local v9, "previousAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v10

    .line 403
    .local v10, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v11, v10, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-nez v11, :cond_2

    .line 405
    if-eqz v9, :cond_1

    .line 408
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 409
    .local v8, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v7, v11

    .line 410
    .local v11, "relativeDiff":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v15, v11

    .line 411
    .local v15, "newStartValue":I
    aget-object v5, v8, v14

    new-array v13, v13, [I

    aput v15, v13, v14

    aput v7, v13, v12

    invoke-virtual {v5, v13}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 412
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 413
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v5, 0x7f0a0441

    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 414
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 415
    return-void

    .line 418
    .end local v8    # "values":[Landroid/animation/PropertyValuesHolder;
    .end local v11    # "relativeDiff":I
    .end local v15    # "newStartValue":I
    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 419
    return-void

    .line 423
    :cond_2
    new-array v5, v13, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v11

    aput v11, v5, v14

    aput v7, v5, v12

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 424
    .local v5, "animator":Landroid/animation/ValueAnimator;
    new-instance v11, Lcom/android/systemui/statusbar/stack/ExpandableViewState$5;

    invoke-direct {v11, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$5;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 430
    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 431
    iget-wide v11, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v11, v12, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v11

    .line 432
    .local v11, "newDuration":J
    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 433
    iget-wide v13, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v13, v13, v16

    if-lez v13, :cond_4

    if-eqz v9, :cond_3

    .line 434
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_4

    .line 435
    :cond_3
    iget-wide v13, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v5, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 437
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v13

    .line 438
    .local v13, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v13, :cond_5

    .line 439
    invoke-virtual {v5, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 442
    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$6;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v5, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 450
    invoke-static {v5, v13}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 451
    invoke-virtual {v1, v8, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 452
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 453
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v8, 0x7f0a0441

    invoke-virtual {v1, v8, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 454
    return-void
.end method

.method private startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 333
    move-object/from16 v2, p2

    const v3, 0x7f0a03c4

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 334
    .local v4, "previousStartValue":Ljava/lang/Float;
    const v5, 0x7f0a03c3

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 335
    .local v6, "previousEndValue":Ljava/lang/Float;
    iget v7, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 336
    .local v7, "newEndValue":F
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v7

    if-nez v8, :cond_0

    .line 337
    return-void

    .line 339
    :cond_0
    const v8, 0x7f0a03c5

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ValueAnimator;

    .line 340
    .local v9, "previousAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v10

    .line 341
    .local v10, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v11, v10, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-nez v11, :cond_2

    .line 343
    if-eqz v9, :cond_1

    .line 346
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 347
    .local v8, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sub-float v11, v7, v11

    .line 348
    .local v11, "relativeDiff":F
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v15

    add-float/2addr v15, v11

    .line 349
    .local v15, "newStartValue":F
    aget-object v5, v8, v14

    new-array v13, v13, [F

    aput v15, v13, v14

    aput v7, v13, v12

    invoke-virtual {v5, v13}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 350
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 351
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v5, 0x7f0a03c3

    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 352
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 353
    return-void

    .line 356
    .end local v8    # "values":[Landroid/animation/PropertyValuesHolder;
    .end local v11    # "relativeDiff":F
    .end local v15    # "newStartValue":F
    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    .line 357
    return-void

    .line 361
    :cond_2
    new-array v5, v13, [F

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v11

    aput v11, v5, v14

    aput v7, v5, v12

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 362
    .local v5, "animator":Landroid/animation/ValueAnimator;
    new-instance v11, Lcom/android/systemui/statusbar/stack/ExpandableViewState$3;

    invoke-direct {v11, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$3;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 369
    iget-wide v11, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v11, v12, v9}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v11

    .line 370
    .local v11, "newDuration":J
    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 371
    iget-wide v13, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v13, v13, v16

    if-lez v13, :cond_4

    if-eqz v9, :cond_3

    .line 372
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_4

    .line 373
    :cond_3
    iget-wide v13, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v5, v13, v14}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 375
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v13

    .line 376
    .local v13, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v13, :cond_5

    .line 377
    invoke-virtual {v5, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 380
    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState$4;-><init>(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v5, v14}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 388
    invoke-static {v5, v13}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 389
    invoke-virtual {v1, v8, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 391
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v8, 0x7f0a03c3

    invoke-virtual {v1, v8, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 392
    return-void
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 194
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 195
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v0, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 199
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v8

    .line 202
    .local v8, "animationFilter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 203
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_0

    .line 205
    :cond_1
    const v1, 0x7f0a0195

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    .line 209
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 210
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_1

    .line 212
    :cond_2
    const v1, 0x7f0a03c5

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    .line 216
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 217
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_2

    .line 219
    :cond_3
    const v1, 0x7f0a0443

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->abortAnimation(Landroid/view/View;I)V

    .line 223
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 226
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 229
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    iget-boolean v3, v8, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    iget-wide v4, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    iget-wide v6, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 233
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    iget-boolean v2, v8, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    iget-wide v3, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 235
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->wasAdded(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    if-nez v1, :cond_4

    .line 236
    iget-wide v2, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    iget-wide v4, p2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/ExpandableView;->performAddAnimation(JJZ)V

    .line 240
    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->isInShelf()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    if-eqz v1, :cond_5

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setTransformingInShelf(Z)V

    .line 243
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setInShelf(Z)V

    .line 245
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz v1, :cond_6

    .line 246
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->setHeadsUpIsVisible()V

    .line 248
    :cond_6
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .line 144
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 145
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_3

    .line 146
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 148
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v8

    .line 149
    .local v8, "height":I
    iget v9, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 152
    .local v9, "newHeight":I
    const/4 v10, 0x0

    if-eq v8, v9, :cond_0

    .line 153
    invoke-virtual {v0, v9, v10}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 156
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v11

    .line 157
    .local v11, "shadowAlpha":F
    iget v12, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 160
    .local v12, "newShadowAlpha":F
    cmpl-float v1, v11, v12

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    .line 165
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    invoke-virtual {v0, v1, v10}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 168
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 172
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 175
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 178
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v1

    int-to-float v1, v1

    .line 179
    .local v1, "oldClipTopAmount":F
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    .line 180
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 183
    :cond_2
    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/ExpandableView;->setTransformingInShelf(Z)V

    .line 184
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setInShelf(Z)V

    .line 186
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    if-eqz v2, :cond_3

    .line 187
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->setHeadsUpIsVisible()V

    .line 190
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v1    # "oldClipTopAmount":F
    .end local v8    # "height":I
    .end local v9    # "newHeight":I
    .end local v11    # "shadowAlpha":F
    .end local v12    # "newShadowAlpha":F
    :cond_3
    return-void
.end method

.method public cancelAnimations(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 474
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimations(Landroid/view/View;)V

    .line 475
    const v0, 0x7f0a0195

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 476
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 479
    :cond_0
    const v1, 0x7f0a03c5

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/animation/Animator;

    .line 480
    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 483
    :cond_1
    const v1, 0x7f0a0443

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/animation/Animator;

    .line 484
    if-eqz v0, :cond_2

    .line 485
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 487
    :cond_2
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 2
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;

    .line 123
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 124
    instance-of v0, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    if-eqz v0, :cond_0

    .line 125
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .line 126
    .local v0, "svs":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 127
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    .line 128
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 129
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    .line 130
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    .line 131
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 132
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 133
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 134
    iget v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 135
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 137
    .end local v0    # "svs":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_0
    return-void
.end method
