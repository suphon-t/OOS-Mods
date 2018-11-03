.class public Lcom/android/systemui/statusbar/notification/TransformState;
.super Ljava/lang/Object;
.source "TransformState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;
    }
.end annotation


# static fields
.field private static CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/android/systemui/statusbar/notification/TransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mOwnPosition:[I

.field private mSameAsAny:Z

.field protected mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

.field private mTransformationEndX:F

.field private mTransformationEndY:F

.field protected mTransformedView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/notification/TransformState$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/TransformState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    .line 79
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 80
    iput v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 81
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static createFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "transformInfo"    # Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    .line 436
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 437
    invoke-static {}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->obtain()Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    move-result-object v0

    .line 438
    .local v0, "result":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    .line 439
    return-object v0

    .line 441
    .end local v0    # "result":Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x102018d

    if-ne v0, v1, :cond_1

    .line 442
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ActionListTransformState;

    move-result-object v0

    .line 443
    .local v0, "result":Lcom/android/systemui/statusbar/notification/ActionListTransformState;
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/ActionListTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    .line 444
    return-object v0

    .line 446
    .end local v0    # "result":Lcom/android/systemui/statusbar/notification/ActionListTransformState;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020345

    if-ne v0, v1, :cond_2

    .line 447
    invoke-static {}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->obtain()Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;

    move-result-object v0

    .line 448
    .local v0, "result":Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    .line 449
    return-object v0

    .line 451
    .end local v0    # "result":Lcom/android/systemui/statusbar/notification/MessagingLayoutTransformState;
    :cond_2
    instance-of v0, p0, Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v0, :cond_3

    .line 452
    invoke-static {}, Lcom/android/systemui/statusbar/notification/MessagingImageTransformState;->obtain()Lcom/android/systemui/statusbar/notification/MessagingImageTransformState;

    move-result-object v0

    .line 453
    .local v0, "result":Lcom/android/systemui/statusbar/notification/MessagingImageTransformState;
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/MessagingImageTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    .line 454
    return-object v0

    .line 456
    .end local v0    # "result":Lcom/android/systemui/statusbar/notification/MessagingImageTransformState;
    :cond_3
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 457
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ImageTransformState;

    move-result-object v0

    .line 458
    .local v0, "result":Lcom/android/systemui/statusbar/notification/ImageTransformState;
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/ImageTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x10203ad

    if-ne v1, v2, :cond_4

    .line 460
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setIsSameAsAnyView(Z)V

    .line 462
    :cond_4
    return-object v0

    .line 464
    .end local v0    # "result":Lcom/android/systemui/statusbar/notification/ImageTransformState;
    :cond_5
    instance-of v0, p0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_6

    .line 465
    invoke-static {}, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->obtain()Lcom/android/systemui/statusbar/notification/ProgressTransformState;

    move-result-object v0

    .line 466
    .local v0, "result":Lcom/android/systemui/statusbar/notification/ProgressTransformState;
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/ProgressTransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    .line 467
    return-object v0

    .line 469
    .end local v0    # "result":Lcom/android/systemui/statusbar/notification/ProgressTransformState;
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/notification/TransformState;->obtain()Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 470
    .local v0, "result":Lcom/android/systemui/statusbar/notification/TransformState;
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    .line 471
    return-object v0
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/TransformState;
    .locals 2

    .line 571
    sget-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/TransformState;

    .line 572
    .local v0, "instance":Lcom/android/systemui/statusbar/notification/TransformState;
    if-eqz v0, :cond_0

    .line 573
    return-object v0

    .line 575
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/TransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-object v1
.end method

.method private setTransformationStartScaleX(F)V
    .locals 3
    .param p1, "startScaleX"    # F

    .line 522
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0451

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 523
    return-void
.end method

.method private setTransformationStartScaleY(F)V
    .locals 3
    .param p1, "startScaleY"    # F

    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0452

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 527
    return-void
.end method

.method private transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 18
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationFlags"    # I
    .param p3, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p4, "transformationAmount"    # F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 301
    move/from16 v3, p4

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 302
    .local v4, "transformedView":Landroid/view/View;
    and-int/lit8 v5, p2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 303
    .local v5, "transformX":Z
    :goto_0
    and-int/lit8 v8, p2, 0x10

    if-eqz v8, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v6

    .line 304
    .local v8, "transformY":Z
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v9

    .line 306
    .local v9, "transformScale":Z
    const/4 v10, 0x0

    cmpl-float v11, v3, v10

    const/high16 v12, -0x40800000    # -1.0f

    if-nez v11, :cond_8

    .line 307
    if-eqz v5, :cond_3

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v11

    .line 309
    .local v11, "transformationStartX":F
    cmpl-float v13, v11, v12

    if-eqz v13, :cond_2

    .line 310
    move v13, v11

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v13

    .line 311
    .local v13, "start":F
    :goto_2
    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    .line 313
    .end local v11    # "transformationStartX":F
    .end local v13    # "start":F
    :cond_3
    if-eqz v8, :cond_5

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v11

    .line 315
    .local v11, "transformationStartY":F
    cmpl-float v13, v11, v12

    if-eqz v13, :cond_4

    .line 316
    move v13, v11

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v13

    .line 317
    .restart local v13    # "start":F
    :goto_3
    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 319
    .end local v11    # "transformationStartY":F
    .end local v13    # "start":F
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v11

    .line 320
    .local v11, "otherView":Landroid/view/View;
    if-eqz v9, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v14

    if-eq v13, v14, :cond_6

    .line 321
    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v13

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 322
    invoke-virtual {v4, v10}, Landroid/view/View;->setPivotX(F)V

    goto :goto_4

    .line 324
    :cond_6
    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 326
    :goto_4
    if-eqz v9, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v14

    if-eq v13, v14, :cond_7

    .line 327
    invoke-virtual {v4}, Landroid/view/View;->getScaleY()F

    move-result v13

    invoke-direct {v0, v13}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 328
    invoke-virtual {v4, v10}, Landroid/view/View;->setPivotY(F)V

    goto :goto_5

    .line 330
    :cond_7
    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 332
    :goto_5
    invoke-virtual {v0, v4, v7}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 334
    .end local v11    # "otherView":Landroid/view/View;
    :cond_8
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    .line 336
    .local v10, "interpolatedValue":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v11

    .line 337
    .local v11, "otherStablePosition":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v13

    .line 338
    .local v13, "ownPosition":[I
    if-eqz v5, :cond_b

    .line 339
    aget v14, v11, v6

    aget v15, v13, v6

    sub-int/2addr v14, v15

    int-to-float v14, v14

    .line 340
    .local v14, "endX":F
    move v15, v10

    .line 341
    .local v15, "interpolation":F
    if-eqz v2, :cond_a

    .line 342
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 343
    iget v14, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 345
    :cond_9
    nop

    .line 346
    invoke-virtual {v2, v7, v6}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v12

    .line 347
    .local v12, "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v12, :cond_a

    .line 348
    invoke-interface {v12, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v15

    .line 351
    .end local v15    # "interpolation":F
    .local v12, "interpolation":F
    :cond_a
    move v12, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v6

    invoke-static {v6, v14, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 355
    .end local v12    # "interpolation":F
    .end local v14    # "endX":F
    :cond_b
    if-eqz v8, :cond_e

    .line 356
    aget v6, v11, v7

    aget v7, v13, v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 357
    .local v6, "endY":F
    move v7, v10

    .line 358
    .local v7, "interpolation":F
    if-eqz v2, :cond_d

    .line 359
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->customTransformTarget(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 360
    iget v6, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 362
    :cond_c
    nop

    .line 363
    const/16 v12, 0x10

    const/4 v14, 0x0

    invoke-virtual {v2, v12, v14}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v12

    .line 364
    .local v12, "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v12, :cond_d

    .line 365
    invoke-interface {v12, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    .line 368
    .end local v12    # "customInterpolator":Landroid/view/animation/Interpolator;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v12

    invoke-static {v12, v6, v7}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v12

    invoke-virtual {v4, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 372
    .end local v6    # "endY":F
    .end local v7    # "interpolation":F
    :cond_e
    if-eqz v9, :cond_10

    .line 373
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v6

    .line 374
    .local v6, "otherView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v7

    .line 375
    .local v7, "transformationStartScaleX":F
    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v14, v7, v12

    if-eqz v14, :cond_f

    .line 376
    nop

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v12, v14

    .line 377
    invoke-static {v7, v12, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v12

    .line 376
    invoke-virtual {v4, v12}, Landroid/view/View;->setScaleX(F)V

    .line 381
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v12

    .line 382
    .local v12, "transformationStartScaleY":F
    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v14, v12, v14

    if-eqz v14, :cond_10

    .line 383
    nop

    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v14, v1

    .line 384
    invoke-static {v12, v14, v10}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    .line 383
    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleY(F)V

    .line 389
    .end local v6    # "otherView":Landroid/view/View;
    .end local v7    # "transformationStartScaleX":F
    .end local v12    # "transformationStartScaleY":F
    :cond_10
    return-void
.end method


# virtual methods
.method public abortTransformation()V
    .locals 4

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x7f0a0453

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x7f0a0454

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x7f0a0451

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 567
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0452

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 568
    return-void
.end method

.method public appear(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 1
    .param p1, "transformationAmount"    # F
    .param p2, "otherView"    # Lcom/android/systemui/statusbar/TransformableView;

    .line 424
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->prepareFadeIn()V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    .line 428
    return-void
.end method

.method public disappear(FLcom/android/systemui/statusbar/TransformableView;)V
    .locals 1
    .param p1, "transformationAmount"    # F
    .param p2, "otherView"    # Lcom/android/systemui/statusbar/TransformableView;

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    .line 432
    return-void
.end method

.method protected ensureVisible()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_1
    return-void
.end method

.method public getLaidOutLocationOnScreen()[I
    .locals 4

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLocationOnScreen()[I

    move-result-object v0

    .line 398
    .local v0, "location":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 399
    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 400
    return-object v0
.end method

.method public getLocationOnScreen()[I
    .locals 6

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPivotX()F

    move-result v5

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    sub-float/2addr v4, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPivotY()F

    move-result v3

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    float-to-int v2, v2

    aput v2, v0, v1

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    aget v2, v0, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getTop(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 412
    invoke-static {v4}, Lcom/android/internal/widget/MessagingPropertyAnimator;->getLayoutTop(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mOwnPosition:[I

    return-object v0
.end method

.method public getTransformationStartScaleX()F
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v1, 0x7f0a0451

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 505
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1
.end method

.method public getTransformationStartScaleY()F
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v1, 0x7f0a0452

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 510
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1
.end method

.method public getTransformationStartX()F
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v1, 0x7f0a0453

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 495
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1
.end method

.method public getTransformationStartY()F
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const v1, 0x7f0a0454

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 500
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    return v1
.end method

.method public getTransformedView()Landroid/view/View;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    return-object v0
.end method

.method protected getViewHeight()I
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected getViewWidth()I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transformInfo"    # Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 85
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    .line 86
    return-void
.end method

.method public prepareFadeIn()V
    .locals 0

    .line 551
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    .line 552
    return-void
.end method

.method public recycle()V
    .locals 2

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    .line 480
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/notification/TransformState;

    if-ne v0, v1, :cond_0

    .line 481
    sget-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 483
    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 1

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 531
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformInfo:Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    .line 533
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndX:F

    .line 534
    iput v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 535
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 536
    return-void
.end method

.method protected resetTransformedView()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 560
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->abortTransformation()V

    .line 561
    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .line 417
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    return v0
.end method

.method protected setClippingDeactivated(Landroid/view/View;Z)V
    .locals 1
    .param p1, "transformedView"    # Landroid/view/View;
    .param p2, "deactivated"    # Z

    .line 392
    sget-object v0, Lcom/android/systemui/statusbar/notification/TransformState;->CLIPPING_PARAMETERS:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    invoke-static {p1, p2, v0}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    .line 393
    return-void
.end method

.method public setDefaultInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 583
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 584
    return-void
.end method

.method public setIsSameAsAnyView(Z)V
    .locals 0
    .param p1, "sameAsAny"    # Z

    .line 475
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mSameAsAny:Z

    .line 476
    return-void
.end method

.method public setTransformationEndY(F)V
    .locals 0
    .param p1, "transformationEndY"    # F

    .line 486
    iput p1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformationEndY:F

    .line 487
    return-void
.end method

.method public setTransformationStartX(F)V
    .locals 3
    .param p1, "transformationStartX"    # F

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0453

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 515
    return-void
.end method

.method public setTransformationStartY(F)V
    .locals 3
    .param p1, "transformationStartY"    # F

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x7f0a0454

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 519
    return-void
.end method

.method public setVisible(ZZ)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "force"    # Z

    .line 539
    const/16 v0, 0x8

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 540
    return-void

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->resetTransformedView()V

    .line 548
    return-void
.end method

.method protected transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->ensureVisible()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    .line 100
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 101
    return-void
.end method

.method protected transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 22
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationFlags"    # I
    .param p3, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p4, "transformationAmount"    # F

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    .line 135
    move/from16 v3, p4

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    .line 136
    .local v4, "transformedView":Landroid/view/View;
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 137
    .local v5, "transformX":Z
    :goto_0
    and-int/lit8 v8, p2, 0x10

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 138
    .local v8, "transformY":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v9

    .line 139
    .local v9, "viewHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewHeight()I

    move-result v10

    .line 140
    .local v10, "otherHeight":I
    if-eq v10, v9, :cond_2

    if-eqz v10, :cond_2

    if-eqz v9, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 141
    .local v11, "differentHeight":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v12

    .line 142
    .local v12, "viewWidth":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result v13

    .line 143
    .local v13, "otherWidth":I
    if-eq v13, v12, :cond_3

    if-eqz v13, :cond_3

    if-eqz v12, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .line 144
    .local v14, "differentWidth":Z
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-nez v11, :cond_4

    if-eqz v14, :cond_5

    :cond_4
    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    .line 146
    .local v15, "transformScale":Z
    :goto_4
    const/4 v7, 0x0

    cmpl-float v17, v3, v7

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v17, :cond_9

    if-eqz v5, :cond_6

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v17

    cmpl-float v17, v17, v6

    if-eqz v17, :cond_9

    :cond_6
    if-eqz v8, :cond_7

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v17

    cmpl-float v17, v17, v6

    if-eqz v17, :cond_9

    :cond_7
    if-eqz v15, :cond_8

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v17

    cmpl-float v17, v17, v6

    if-nez v17, :cond_8

    if-nez v14, :cond_9

    :cond_8
    if-eqz v15, :cond_14

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v17

    cmpl-float v17, v17, v6

    if-nez v17, :cond_14

    if-eqz v11, :cond_14

    .line 153
    :cond_9
    cmpl-float v17, v3, v7

    if-eqz v17, :cond_a

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v17

    .local v17, "otherPosition":[I
    goto :goto_5

    .line 156
    .end local v17    # "otherPosition":[I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getLocationOnScreen()[I

    move-result-object v17

    .line 158
    .restart local v17    # "otherPosition":[I
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getLaidOutLocationOnScreen()[I

    move-result-object v19

    .line 159
    .local v19, "ownStablePosition":[I
    if-eqz v2, :cond_c

    .line 160
    move-object/from16 v6, p1

    invoke-virtual {v2, v0, v6}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->initTransformation(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v20

    if-nez v20, :cond_b

    goto :goto_7

    .line 184
    :cond_b
    :goto_6
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_9

    .line 161
    :cond_c
    move-object/from16 v6, p1

    :goto_7
    if-eqz v5, :cond_d

    .line 162
    const/16 v18, 0x0

    aget v20, v17, v18

    aget v18, v19, v18

    sub-int v7, v20, v18

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    .line 164
    :cond_d
    if-eqz v8, :cond_e

    .line 165
    const/4 v7, 0x1

    aget v18, v17, v7

    aget v20, v19, v7

    sub-int v7, v18, v20

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 168
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformedView()Landroid/view/View;

    move-result-object v7

    .line 169
    .local v7, "otherView":Landroid/view/View;
    if-eqz v15, :cond_f

    if-eqz v14, :cond_f

    .line 170
    int-to-float v1, v13

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v18

    mul-float v1, v1, v18

    int-to-float v6, v12

    div-float/2addr v1, v6

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_8

    .line 174
    :cond_f
    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 176
    :goto_8
    if-eqz v15, :cond_10

    if-eqz v11, :cond_10

    .line 177
    int-to-float v1, v10

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v6

    mul-float/2addr v1, v6

    int-to-float v6, v9

    div-float/2addr v1, v6

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 179
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_6

    .line 181
    :cond_10
    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 184
    .end local v7    # "otherView":Landroid/view/View;
    :goto_9
    if-nez v5, :cond_11

    .line 185
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartX(F)V

    .line 187
    :cond_11
    if-nez v8, :cond_12

    .line 188
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartY(F)V

    .line 190
    :cond_12
    if-nez v15, :cond_13

    .line 191
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleX(F)V

    .line 192
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setTransformationStartScaleY(F)V

    .line 194
    :cond_13
    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/notification/TransformState;->setClippingDeactivated(Landroid/view/View;Z)V

    .line 196
    .end local v17    # "otherPosition":[I
    .end local v19    # "ownStablePosition":[I
    :cond_14
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/TransformState;->mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 198
    .local v1, "interpolatedValue":F
    if-eqz v5, :cond_17

    .line 199
    move v6, v1

    .line 200
    .local v6, "interpolation":F
    if-eqz v2, :cond_15

    .line 201
    nop

    .line 202
    move/from16 v21, v5

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v7}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 203
    .local v5, "customInterpolator":Landroid/view/animation/Interpolator;
    .local v21, "transformX":Z
    if-eqz v5, :cond_16

    .line 204
    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    .end local v5    # "customInterpolator":Landroid/view/animation/Interpolator;
    goto :goto_a

    .line 207
    .end local v21    # "transformX":Z
    .local v5, "transformX":Z
    :cond_15
    move/from16 v21, v5

    .end local v5    # "transformX":Z
    .restart local v21    # "transformX":Z
    :cond_16
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartX()F

    move-result v5

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    .end local v6    # "interpolation":F
    goto :goto_b

    .line 211
    .end local v21    # "transformX":Z
    .restart local v5    # "transformX":Z
    :cond_17
    move/from16 v21, v5

    .end local v5    # "transformX":Z
    .restart local v21    # "transformX":Z
    :goto_b
    if-eqz v8, :cond_19

    .line 212
    move v5, v1

    .line 213
    .local v5, "interpolation":F
    if-eqz v2, :cond_18

    .line 214
    nop

    .line 215
    const/16 v6, 0x10

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;->getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 216
    .local v6, "customInterpolator":Landroid/view/animation/Interpolator;
    if-eqz v6, :cond_18

    .line 217
    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 220
    .end local v6    # "customInterpolator":Landroid/view/animation/Interpolator;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartY()F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v5}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 224
    .end local v5    # "interpolation":F
    :cond_19
    if-eqz v15, :cond_1b

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleX()F

    move-result v5

    .line 226
    .local v5, "transformationStartScaleX":F
    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v7, v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v7, :cond_1a

    .line 227
    nop

    .line 228
    invoke-static {v5, v6, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    .line 227
    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleX(F)V

    .line 232
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getTransformationStartScaleY()F

    move-result v7

    .line 233
    .local v7, "transformationStartScaleY":F
    const/high16 v16, -0x40800000    # -1.0f

    cmpl-float v16, v7, v16

    if-eqz v16, :cond_1b

    .line 234
    nop

    .line 235
    invoke-static {v7, v6, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    .line 234
    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleY(F)V

    .line 240
    .end local v5    # "transformationStartScaleX":F
    .end local v7    # "transformationStartScaleY":F
    :cond_1b
    return-void
.end method

.method public transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .line 113
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 114
    return-void
.end method

.method public transformViewFullyFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p3, "transformationAmount"    # F

    .line 119
    const/16 v0, 0x11

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 120
    return-void
.end method

.method public transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .line 277
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 278
    return-void
.end method

.method public transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p3, "transformationAmount"    # F

    .line 283
    const/16 v0, 0x11

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 284
    return-void
.end method

.method public transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;F)Z
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TransformState;->mTransformedView:Landroid/view/View;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFullyTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .line 129
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 130
    return-void
.end method

.method public transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p3, "transformationAmount"    # F

    .line 125
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewFrom(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 126
    return-void
.end method

.method public transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V
    .locals 2
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "transformationAmount"    # F

    .line 293
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 294
    return-void
.end method

.method public transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V
    .locals 1
    .param p1, "otherState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "customTransformation"    # Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
    .param p3, "transformationAmount"    # F

    .line 289
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewTo(Lcom/android/systemui/statusbar/notification/TransformState;ILcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;F)V

    .line 290
    return-void
.end method
