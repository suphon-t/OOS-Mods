.class public Lcom/android/systemui/statusbar/notification/PropertyAnimator;
.super Ljava/lang/Object;
.source "PropertyAnimator.java"


# direct methods
.method static synthetic lambda$startAnimation$0(Landroid/util/Property;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p0, "property"    # Landroid/util/Property;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 88
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p0, p1, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;Z)V
    .locals 4
    .param p1, "animatableProperty"    # Lcom/android/systemui/statusbar/notification/AnimatableProperty;
    .param p2, "newEndValue"    # F
    .param p3, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .param p4, "animated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/android/systemui/statusbar/notification/AnimatableProperty;",
            "F",
            "Lcom/android/systemui/statusbar/stack/AnimationProperties;",
            "Z)V"
        }
    .end annotation

    .line 41
    .local p0, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result v0

    .line 42
    .local v0, "animatorTag":I
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 43
    .local v1, "previousAnimator":Landroid/animation/ValueAnimator;
    if-nez v1, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 49
    :goto_1
    return-void
.end method

.method public static startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 20
    .param p1, "animatableProperty"    # Lcom/android/systemui/statusbar/notification/AnimatableProperty;
    .param p2, "newEndValue"    # F
    .param p3, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/android/systemui/statusbar/notification/AnimatableProperty;",
            "F",
            "Lcom/android/systemui/statusbar/stack/AnimationProperties;",
            ")V"
        }
    .end annotation

    .local p0, "view":Landroid/view/View;, "TT;"
    move-object/from16 v0, p0

    .line 54
    move-object/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v2

    .line 55
    .local v2, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimationStartTag()I

    move-result v3

    .line 56
    .local v3, "animationStartTag":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimationEndTag()I

    move-result v4

    .line 57
    .local v4, "animationEndTag":I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 58
    .local v5, "previousStartValue":Ljava/lang/Float;
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 59
    .local v6, "previousEndValue":Ljava/lang/Float;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v7, v7, p2

    if-nez v7, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result v7

    .line 63
    .local v7, "animatorTag":I
    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/ValueAnimator;

    .line 64
    .local v8, "previousAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v9

    .line 65
    .local v9, "filter":Lcom/android/systemui/statusbar/stack/AnimationFilter;
    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->shouldAnimateProperty(Landroid/util/Property;)Z

    move-result v10

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-nez v10, :cond_2

    .line 67
    if-eqz v8, :cond_1

    .line 70
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 71
    .local v10, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v14, p2, v14

    .line 72
    .local v14, "relativeDiff":F
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v15

    add-float v11, v15, v14

    .line 73
    .local v11, "newStartValue":F
    move-object/from16 v17, v5

    aget-object v5, v10, v13

    .end local v5    # "previousStartValue":Ljava/lang/Float;
    .local v17, "previousStartValue":Ljava/lang/Float;
    new-array v12, v12, [F

    aput v11, v12, v13

    const/4 v13, 0x1

    aput p2, v12, v13

    invoke-virtual {v5, v12}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 74
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 75
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 76
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 77
    return-void

    .line 80
    .end local v10    # "values":[Landroid/animation/PropertyValuesHolder;
    .end local v11    # "newStartValue":F
    .end local v14    # "relativeDiff":F
    .end local v17    # "previousStartValue":Ljava/lang/Float;
    .restart local v5    # "previousStartValue":Ljava/lang/Float;
    :cond_1
    move-object/from16 v17, v5

    .end local v5    # "previousStartValue":Ljava/lang/Float;
    .restart local v17    # "previousStartValue":Ljava/lang/Float;
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    return-void

    .line 85
    .end local v17    # "previousStartValue":Ljava/lang/Float;
    .restart local v5    # "previousStartValue":Ljava/lang/Float;
    :cond_2
    move-object/from16 v17, v5

    .end local v5    # "previousStartValue":Ljava/lang/Float;
    .restart local v17    # "previousStartValue":Ljava/lang/Float;
    invoke-virtual {v2, v0}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 86
    .local v5, "currentValue":Ljava/lang/Float;
    new-array v10, v12, [F

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v10, v13

    const/4 v11, 0x1

    aput p2, v10, v11

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 87
    .local v10, "animator":Landroid/animation/ValueAnimator;
    new-instance v11, Lcom/android/systemui/statusbar/notification/-$$Lambda$PropertyAnimator$VEXcQp-kY9kIrKbFhOrW7gy9zN4;

    invoke-direct {v11, v2, v0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$PropertyAnimator$VEXcQp-kY9kIrKbFhOrW7gy9zN4;-><init>(Landroid/util/Property;Landroid/view/View;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 89
    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v11

    .line 90
    .local v11, "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v11, :cond_3

    .line 91
    move-object v12, v11

    goto :goto_0

    :cond_3
    sget-object v12, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 92
    .local v12, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    invoke-virtual {v10, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    iget-wide v13, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->duration:J

    invoke-static {v13, v14, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v13

    .line 95
    .local v13, "newDuration":J
    invoke-virtual {v10, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 96
    move-object/from16 v18, v11

    move-object/from16 v19, v12

    iget-wide v11, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    .end local v11    # "customInterpolator":Landroid/view/animation/Interpolator;
    .end local v12    # "interpolator":Landroid/view/animation/Interpolator;
    .local v18, "customInterpolator":Landroid/view/animation/Interpolator;
    .local v19, "interpolator":Landroid/view/animation/Interpolator;
    const-wide/16 v15, 0x0

    cmp-long v11, v11, v15

    if-lez v11, :cond_5

    if-eqz v8, :cond_4

    .line 97
    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_5

    .line 98
    :cond_4
    iget-wide v11, v1, Lcom/android/systemui/statusbar/stack/AnimationProperties;->delay:J

    invoke-virtual {v10, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 100
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v11

    .line 101
    .local v11, "listener":Landroid/animation/AnimatorListenerAdapter;
    if-eqz v11, :cond_6

    .line 102
    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 105
    :cond_6
    new-instance v12, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;

    invoke-direct {v12, v0, v7, v3, v4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;-><init>(Landroid/view/View;III)V

    invoke-virtual {v10, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    invoke-static {v10, v11}, Lcom/android/systemui/statusbar/stack/ViewState;->startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 114
    invoke-virtual {v0, v7, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 115
    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 116
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v0, v4, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 117
    return-void
.end method
