.class public Lcom/android/systemui/statusbar/stack/ViewState;
.super Ljava/lang/Object;
.source "ViewState.java"


# static fields
.field protected static final NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

.field private static final SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private static final SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;


# instance fields
.field public alpha:F

.field public gone:Z

.field public hidden:Z

.field public scaleX:F

.field public scaleY:F

.field public xTranslation:F

.field public yTranslation:F

.field public zTranslation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/stack/ViewState$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ViewState$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    .line 121
    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    return-void
.end method

.method public static cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .locals 6
    .param p0, "duration"    # J
    .param p2, "previousAnimator"    # Landroid/animation/ValueAnimator;

    .line 632
    move-wide v0, p0

    .line 633
    .local v0, "newDuration":J
    if-eqz p2, :cond_0

    .line 636
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    .line 637
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 636
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 638
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 640
    :cond_0
    return-wide v0
.end method

.method public static getChildTag(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 613
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFinalTranslationX(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 648
    if-nez p0, :cond_0

    .line 649
    const/4 v0, 0x0

    return v0

    .line 651
    :cond_0
    const v0, 0x7f0a045d

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 652
    .local v0, "xAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 653
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    return v1

    .line 655
    :cond_1
    const v1, 0x7f0a045b

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public static getFinalTranslationY(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 664
    if-nez p0, :cond_0

    .line 665
    const/4 v0, 0x0

    return v0

    .line 667
    :cond_0
    const v0, 0x7f0a0460

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 668
    .local v0, "yAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 669
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    return v1

    .line 671
    :cond_1
    const v1, 0x7f0a045e

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method public static getFinalTranslationZ(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 680
    if-nez p0, :cond_0

    .line 681
    const/4 v0, 0x0

    return v0

    .line 683
    :cond_0
    const v0, 0x7f0a0463

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 684
    .local v0, "zAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 685
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    return v1

    .line 687
    :cond_1
    const v1, 0x7f0a0461

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method private static isAnimating(Landroid/view/View;I)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tag"    # I

    .line 250
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "property"    # Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 254
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAnimatingY(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .line 692
    const v0, 0x7f0a0460

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 20
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 324
    move-object/from16 v2, p2

    const v3, 0x7f0a004b

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 325
    .local v4, "previousStartValue":Ljava/lang/Float;
    const v5, 0x7f0a004a

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 326
    .local v6, "previousEndValue":Ljava/lang/Float;
    iget v7, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 327
    .local v7, "newEndValue":F
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v7

    if-nez v8, :cond_0

    .line 328
    return-void

    .line 330
    :cond_0
    const v8, 0x7f0a004c

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 331
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v10

    .line 332
    .local v10, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v11, v10, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-nez v11, :cond_2

    .line 334
    if-eqz v9, :cond_1

    .line 337
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 338
    .local v8, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sub-float v11, v7, v11

    .line 339
    .local v11, "relativeDiff":F
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float/2addr v12, v11

    .line 340
    .local v12, "newStartValue":F
    aget-object v5, v8, v15

    new-array v14, v14, [F

    aput v12, v14, v15

    aput v7, v14, v13

    invoke-virtual {v5, v14}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 341
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 342
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v5, 0x7f0a004a

    invoke-virtual {v1, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 343
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 344
    return-void

    .line 347
    .end local v8    # "values":[Landroid/animation/PropertyValuesHolder;
    .end local v11    # "relativeDiff":F
    .end local v12    # "newStartValue":F
    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 348
    cmpl-float v5, v7, v12

    if-nez v5, :cond_2

    .line 349
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :cond_2
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v14, [F

    .line 355
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v16

    aput v16, v11, v15

    aput v7, v11, v13

    .line 354
    invoke-static {v1, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 356
    .local v5, "animator":Landroid/animation/ObjectAnimator;
    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 358
    const/4 v11, 0x0

    invoke-virtual {v1, v14, v11}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 359
    new-instance v11, Lcom/android/systemui/statusbar/stack/ViewState$4;

    invoke-direct {v11, v0, v1, v7}, Lcom/android/systemui/statusbar/stack/ViewState$4;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;F)V

    invoke-virtual {v5, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 384
    iget-wide v13, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v13, v14, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v13

    .line 385
    .local v13, "newDuration":J
    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 386
    move-object/from16 v17, v4

    iget-wide v3, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    .end local v4    # "previousStartValue":Ljava/lang/Float;
    .local v17, "previousStartValue":Ljava/lang/Float;
    const-wide/16 v18, 0x0

    cmp-long v3, v3, v18

    if-lez v3, :cond_4

    if-eqz v9, :cond_3

    .line 387
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v3

    cmpl-float v3, v3, v12

    if-nez v3, :cond_4

    .line 388
    :cond_3
    iget-wide v3, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 390
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v3

    .line 391
    .local v3, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v3, :cond_5

    .line 392
    invoke-virtual {v5, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    :cond_5
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 396
    invoke-virtual {v1, v8, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v8, 0x7f0a004b

    invoke-virtual {v1, v8, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 398
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v8, 0x7f0a004a

    invoke-virtual {v1, v8, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 399
    return-void
.end method

.method public static startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0
    .param p0, "animator"    # Landroid/animation/Animator;
    .param p1, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 605
    if-eqz p1, :cond_0

    .line 607
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 609
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 610
    return-void
.end method

.method private startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 471
    move-object/from16 v2, p2

    const v3, 0x7f0a045c

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 472
    .local v4, "previousStartValue":Ljava/lang/Float;
    const v5, 0x7f0a045b

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 473
    .local v6, "previousEndValue":Ljava/lang/Float;
    iget v7, v0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    .line 474
    .local v7, "newEndValue":F
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v7

    if-nez v8, :cond_0

    .line 475
    return-void

    .line 477
    :cond_0
    const v8, 0x7f0a045d

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 478
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v10

    .line 479
    .local v10, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v11, v10, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateX:Z

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-nez v11, :cond_2

    .line 481
    if-eqz v9, :cond_1

    .line 484
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 485
    .local v8, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sub-float v11, v7, v11

    .line 486
    .local v11, "relativeDiff":F
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v15

    add-float/2addr v15, v11

    .line 487
    .local v15, "newStartValue":F
    aget-object v5, v8, v14

    new-array v13, v13, [F

    aput v15, v13, v14

    aput v7, v13, v12

    invoke-virtual {v5, v13}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 488
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 489
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v5, 0x7f0a045b

    invoke-virtual {v1, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 490
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 491
    return-void

    .line 494
    .end local v8    # "values":[Landroid/animation/PropertyValuesHolder;
    .end local v11    # "relativeDiff":F
    .end local v15    # "newStartValue":F
    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 495
    return-void

    .line 499
    :cond_2
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v13, [F

    .line 500
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v13

    aput v13, v11, v14

    aput v7, v11, v12

    .line 499
    invoke-static {v1, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 501
    .local v5, "animator":Landroid/animation/ObjectAnimator;
    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {v2, v1, v11}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v11

    .line 503
    .local v11, "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v11, :cond_3

    .line 504
    move-object v12, v11

    goto :goto_0

    :cond_3
    sget-object v12, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 505
    .local v12, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    invoke-virtual {v5, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 506
    iget-wide v13, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v13, v14, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v13

    .line 507
    .local v13, "newDuration":J
    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 508
    move-object/from16 v16, v4

    iget-wide v3, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    .end local v4    # "previousStartValue":Ljava/lang/Float;
    .local v16, "previousStartValue":Ljava/lang/Float;
    const-wide/16 v17, 0x0

    cmp-long v3, v3, v17

    if-lez v3, :cond_5

    if-eqz v9, :cond_4

    .line 509
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5

    .line 510
    :cond_4
    iget-wide v3, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 512
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v3

    .line 513
    .local v3, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v3, :cond_6

    .line 514
    invoke-virtual {v5, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 517
    :cond_6
    new-instance v4, Lcom/android/systemui/statusbar/stack/ViewState$6;

    invoke-direct {v4, v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState$6;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 525
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 526
    invoke-virtual {v1, v8, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v8, 0x7f0a045c

    invoke-virtual {v1, v8, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 528
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v8, 0x7f0a045b

    invoke-virtual {v1, v8, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 529
    return-void
.end method

.method private startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 536
    move-object/from16 v2, p2

    const v3, 0x7f0a045f

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 537
    .local v4, "previousStartValue":Ljava/lang/Float;
    const v5, 0x7f0a045e

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 538
    .local v6, "previousEndValue":Ljava/lang/Float;
    iget v7, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 539
    .local v7, "newEndValue":F
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v7

    if-nez v8, :cond_0

    .line 540
    return-void

    .line 542
    :cond_0
    const v8, 0x7f0a0460

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 543
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v10

    .line 544
    .local v10, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->shouldAnimateY(Landroid/view/View;)Z

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-nez v11, :cond_2

    .line 546
    if-eqz v9, :cond_1

    .line 549
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 550
    .local v8, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sub-float v11, v7, v11

    .line 551
    .local v11, "relativeDiff":F
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v15

    add-float/2addr v15, v11

    .line 552
    .local v15, "newStartValue":F
    aget-object v5, v8, v14

    new-array v13, v13, [F

    aput v15, v13, v14

    aput v7, v13, v12

    invoke-virtual {v5, v13}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 553
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 554
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v5, 0x7f0a045e

    invoke-virtual {v1, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 555
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 556
    return-void

    .line 559
    .end local v8    # "values":[Landroid/animation/PropertyValuesHolder;
    .end local v11    # "relativeDiff":F
    .end local v15    # "newStartValue":F
    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 560
    return-void

    .line 564
    :cond_2
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v11, v13, [F

    .line 565
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v13

    aput v13, v11, v14

    aput v7, v11, v12

    .line 564
    invoke-static {v1, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 566
    .local v5, "animator":Landroid/animation/ObjectAnimator;
    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {v2, v1, v11}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v11

    .line 568
    .local v11, "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v11, :cond_3

    .line 569
    move-object v12, v11

    goto :goto_0

    :cond_3
    sget-object v12, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 570
    .local v12, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    invoke-virtual {v5, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 571
    iget-wide v13, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v13, v14, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v13

    .line 572
    .local v13, "newDuration":J
    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 573
    move-object/from16 v16, v4

    iget-wide v3, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    .end local v4    # "previousStartValue":Ljava/lang/Float;
    .local v16, "previousStartValue":Ljava/lang/Float;
    const-wide/16 v17, 0x0

    cmp-long v3, v3, v17

    if-lez v3, :cond_5

    if-eqz v9, :cond_4

    .line 574
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5

    .line 575
    :cond_4
    iget-wide v3, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 577
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v3

    .line 578
    .local v3, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v3, :cond_6

    .line 579
    invoke-virtual {v5, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 582
    :cond_6
    new-instance v4, Lcom/android/systemui/statusbar/stack/ViewState$7;

    invoke-direct {v4, v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState$7;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 592
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 593
    invoke-virtual {v1, v8, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 594
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v8, 0x7f0a045f

    invoke-virtual {v1, v8, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 595
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const v8, 0x7f0a045e

    invoke-virtual {v1, v8, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 596
    return-void
.end method

.method private startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 18
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 411
    move-object/from16 v2, p2

    const v3, 0x7f0a0462

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 412
    .local v4, "previousStartValue":Ljava/lang/Float;
    const v5, 0x7f0a0461

    invoke-static {v1, v5}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 413
    .local v6, "previousEndValue":Ljava/lang/Float;
    iget v7, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 414
    .local v7, "newEndValue":F
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v7

    if-nez v8, :cond_0

    .line 415
    return-void

    .line 417
    :cond_0
    const v8, 0x7f0a0463

    invoke-static {v1, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 418
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v10

    .line 419
    .local v10, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    iget-boolean v11, v10, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-nez v11, :cond_2

    .line 421
    if-eqz v9, :cond_1

    .line 424
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 425
    .local v8, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sub-float v11, v7, v11

    .line 426
    .local v11, "relativeDiff":F
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v15

    add-float/2addr v15, v11

    .line 427
    .local v15, "newStartValue":F
    aget-object v5, v8, v14

    new-array v13, v13, [F

    aput v15, v13, v14

    aput v7, v13, v12

    invoke-virtual {v5, v13}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 428
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 429
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v5, 0x7f0a0461

    invoke-virtual {v1, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 430
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 431
    return-void

    .line 434
    .end local v8    # "values":[Landroid/animation/PropertyValuesHolder;
    .end local v11    # "relativeDiff":F
    .end local v15    # "newStartValue":F
    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationZ(F)V

    .line 438
    :cond_2
    sget-object v5, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v11, v13, [F

    .line 439
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v13

    aput v13, v11, v14

    aput v7, v11, v12

    .line 438
    invoke-static {v1, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 440
    .local v5, "animator":Landroid/animation/ObjectAnimator;
    sget-object v11, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 441
    iget-wide v11, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v11, v12, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v11

    .line 442
    .local v11, "newDuration":J
    invoke-virtual {v5, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 443
    iget-wide v13, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    const-wide/16 v16, 0x0

    cmp-long v13, v13, v16

    if-lez v13, :cond_4

    if-eqz v9, :cond_3

    .line 444
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-nez v13, :cond_4

    .line 445
    :cond_3
    iget-wide v13, v2, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v5, v13, v14}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 447
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v13

    .line 448
    .local v13, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v13, :cond_5

    .line 449
    invoke-virtual {v5, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 452
    :cond_5
    new-instance v14, Lcom/android/systemui/statusbar/stack/ViewState$5;

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/ViewState$5;-><init>(Lcom/android/systemui/statusbar/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v5, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 460
    invoke-static {v5, v13}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 461
    invoke-virtual {v1, v8, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 463
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v8, 0x7f0a0461

    invoke-virtual {v1, v8, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 464
    return-void
.end method

.method private updateAlphaAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 320
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 321
    return-void
.end method

.method private updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "property"    # Lcom/android/systemui/statusbar/notification/AnimatableProperty;
    .param p3, "endValue"    # F

    .line 407
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-static {p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 408
    return-void
.end method

.method private updateAnimationX(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 467
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 468
    return-void
.end method

.method private updateAnimationY(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 532
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 533
    return-void
.end method

.method private updateAnimationZ(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 402
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 403
    return-void
.end method


# virtual methods
.method protected abortAnimation(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animatorTag"    # I

    .line 617
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 618
    .local v0, "previousAnimator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 621
    :cond_0
    return-void
.end method

.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animationProperties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 264
    .local v0, "wasVisible":Z
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 265
    .local v3, "alpha":F
    if-nez v0, :cond_2

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_2

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    if-nez v4, :cond_2

    .line 267
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    .line 270
    .local v4, "childAlpha":F
    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_3

    move v1, v2

    nop

    .line 271
    .local v1, "alphaChanging":Z
    :cond_3
    instance-of v5, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v5, :cond_4

    .line 273
    move-object v5, p1

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v5

    xor-int/2addr v2, v5

    and-int/2addr v1, v2

    .line 277
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_5

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_1

    .line 280
    :cond_5
    const v2, 0x7f0a045d

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 284
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_6

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_2

    .line 287
    :cond_6
    const v2, 0x7f0a0460

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 291
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v2

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_7

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_3

    .line 294
    :cond_7
    const v2, 0x7f0a0463

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 298
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_8

    .line 299
    sget-object v2, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    invoke-static {p1, v2, v5, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_4

    .line 301
    :cond_8
    sget-object v2, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 305
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v2

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_9

    .line 306
    sget-object v2, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    invoke-static {p1, v2, v5, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_5

    .line 308
    :cond_9
    sget-object v2, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 312
    :goto_5
    if-eqz v1, :cond_a

    .line 313
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    goto :goto_6

    .line 315
    :cond_a
    const v2, 0x7f0a004c

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->abortAnimation(Landroid/view/View;I)V

    .line 317
    :goto_6
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    if-eqz v0, :cond_0

    .line 151
    return-void

    .line 155
    :cond_0
    const v0, 0x7f0a045d

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    .line 156
    .local v0, "animatingX":Z
    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationX(Landroid/view/View;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 159
    iget v1, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 163
    :cond_2
    :goto_0
    const v1, 0x7f0a0460

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v1

    .line 164
    .local v1, "animatingY":Z
    if-eqz v1, :cond_3

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationY(Landroid/view/View;)V

    goto :goto_1

    .line 166
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 167
    iget v2, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 171
    :cond_4
    :goto_1
    const v2, 0x7f0a0463

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v2

    .line 172
    .local v2, "animatingZ":Z
    if-eqz v2, :cond_5

    .line 173
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimationZ(Landroid/view/View;)V

    goto :goto_2

    .line 174
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6

    .line 175
    iget v3, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 179
    :cond_6
    :goto_2
    sget-object v3, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result v3

    .line 180
    .local v3, "animatingScaleX":Z
    if-eqz v3, :cond_7

    .line 181
    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    invoke-direct {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V

    goto :goto_3

    .line 182
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_8

    .line 183
    iget v4, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 187
    :cond_8
    :goto_3
    sget-object v4, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result v4

    .line 188
    .local v4, "animatingScaleY":Z
    if-eqz v4, :cond_9

    .line 189
    sget-object v5, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget v6, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    invoke-direct {p0, p1, v5, v6}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V

    goto :goto_4

    .line 190
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_a

    .line 191
    iget v5, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 194
    :cond_a
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    .line 195
    .local v5, "oldVisibility":I
    iget v6, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    if-eqz v6, :cond_b

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_b
    move v6, v8

    goto :goto_6

    :cond_c
    :goto_5
    move v6, v7

    .line 197
    .local v6, "becomesInvisible":Z
    :goto_6
    const v9, 0x7f0a004c

    invoke-static {p1, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v9

    .line 198
    .local v9, "animatingAlpha":Z
    if-eqz v9, :cond_d

    .line 199
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->updateAlphaAnimation(Landroid/view/View;)V

    goto :goto_a

    .line 200
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_12

    .line 202
    iget v10, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_e

    move v10, v7

    goto :goto_7

    :cond_e
    move v10, v8

    .line 203
    .local v10, "becomesFullyVisible":Z
    :goto_7
    if-nez v6, :cond_f

    if-nez v10, :cond_f

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_8

    :cond_f
    move v7, v8

    .line 205
    .local v7, "newLayerTypeIsHardware":Z
    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v11

    .line 206
    .local v11, "layerType":I
    if-eqz v7, :cond_10

    .line 207
    const/4 v12, 0x2

    goto :goto_9

    .line 208
    :cond_10
    move v12, v8

    .line 209
    .local v12, "newLayerType":I
    :goto_9
    if-eq v11, v12, :cond_11

    .line 210
    const/4 v13, 0x0

    invoke-virtual {p1, v12, v13}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 214
    :cond_11
    iget v13, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    invoke-virtual {p1, v13}, Landroid/view/View;->setAlpha(F)V

    .line 218
    .end local v7    # "newLayerTypeIsHardware":Z
    .end local v10    # "becomesFullyVisible":Z
    .end local v11    # "layerType":I
    .end local v12    # "newLayerType":I
    :cond_12
    :goto_a
    if-eqz v6, :cond_13

    const/4 v8, 0x4

    nop

    :cond_13
    move v7, v8

    .line 219
    .local v7, "newVisibility":I
    if-eq v7, v5, :cond_15

    .line 220
    instance-of v8, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v8, :cond_14

    move-object v8, p1

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v8

    if-nez v8, :cond_15

    .line 222
    :cond_14
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :cond_15
    return-void
.end method

.method public cancelAnimations(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 696
    const v0, 0x7f0a045d

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 697
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 700
    :cond_0
    const v1, 0x7f0a0460

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/animation/Animator;

    .line 701
    if-eqz v0, :cond_1

    .line 702
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 704
    :cond_1
    const v1, 0x7f0a0463

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/animation/Animator;

    .line 705
    if-eqz v0, :cond_2

    .line 706
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 708
    :cond_2
    const v1, 0x7f0a004c

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/animation/Animator;

    .line 709
    if-eqz v0, :cond_3

    .line 710
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 712
    :cond_3
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 1
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;

    .line 124
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 125
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    .line 126
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 127
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 128
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    .line 129
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 130
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    .line 131
    iget v0, p1, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    .line 132
    return-void
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->xTranslation:F

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleX:F

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->scaleY:F

    .line 143
    return-void
.end method

.method public isAnimating(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 228
    const v0, 0x7f0a045d

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 229
    return v1

    .line 231
    :cond_0
    const v0, 0x7f0a0460

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    return v1

    .line 234
    :cond_1
    const v0, 0x7f0a0463

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    return v1

    .line 237
    :cond_2
    const v0, 0x7f0a004c

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    return v1

    .line 240
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    return v1

    .line 243
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/stack/ViewState;->SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    return v1

    .line 246
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method protected onYTranslationAnimationFinished(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 599
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    if-nez v0, :cond_0

    .line 600
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 602
    :cond_0
    return-void
.end method
