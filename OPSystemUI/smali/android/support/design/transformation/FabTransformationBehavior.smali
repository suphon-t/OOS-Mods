.class public abstract Landroid/support/design/transformation/FabTransformationBehavior;
.super Landroid/support/design/transformation/ExpandableTransformationBehavior;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    }
.end annotation


# instance fields
.field private final tmpArray:[I

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 81
    return-void
.end method

.method private calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 631
    sget v0, Landroid/support/design/transformation/R$id;->mtrl_child_content_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 632
    .local v0, "childContentContainer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 633
    invoke-direct {p0, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1

    .line 637
    :cond_0
    instance-of v1, p1, Landroid/support/design/transformation/TransformationChildLayout;

    if-nez v1, :cond_2

    instance-of v1, p1, Landroid/support/design/transformation/TransformationChildCard;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 643
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/design/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1

    .line 638
    :cond_2
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 639
    invoke-direct {p0, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1
.end method

.method private calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;Landroid/support/design/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p3, "translationXTiming"    # Landroid/support/design/animation/MotionTiming;
    .param p4, "translationYTiming"    # Landroid/support/design/animation/MotionTiming;
    .param p5, "fromX"    # F
    .param p6, "fromY"    # F
    .param p7, "toX"    # F
    .param p8, "toY"    # F
    .param p9, "childBounds"    # Landroid/graphics/RectF;

    .line 589
    nop

    .line 590
    invoke-direct {p0, p2, p3, p5, p7}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;FF)F

    move-result v0

    .line 591
    .local v0, "translationX":F
    nop

    .line 592
    invoke-direct {p0, p2, p4, p6, p8}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;FF)F

    move-result v1

    .line 595
    .local v1, "translationY":F
    iget-object v2, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 596
    .local v2, "window":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 597
    iget-object v3, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 598
    .local v3, "windowF":Landroid/graphics/RectF;
    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 601
    iget-object v4, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 602
    .local v4, "childVisibleBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v4}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 603
    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 604
    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 606
    invoke-virtual {p9, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 607
    return-void
.end method

.method private calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F
    .locals 5
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "positioning"    # Landroid/support/design/animation/Positioning;

    .line 554
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 555
    .local v0, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 557
    .local v1, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 558
    invoke-direct {p0, p2, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 560
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v2

    .line 561
    .local v2, "translationX":F
    neg-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 563
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    return v3
.end method

.method private calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F
    .locals 5
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "positioning"    # Landroid/support/design/animation/Positioning;

    .line 567
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 568
    .local v0, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 570
    .local v1, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 571
    invoke-direct {p0, p2, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 573
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v2

    .line 574
    .local v2, "translationY":F
    neg-float v3, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 576
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    return v3
.end method

.method private calculateTranslationX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F
    .locals 5
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "positioning"    # Landroid/support/design/animation/Positioning;

    .line 490
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 491
    .local v0, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 493
    .local v1, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 494
    invoke-direct {p0, p2, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 496
    const/4 v2, 0x0

    .line 497
    .local v2, "translationX":F
    iget v3, p3, Landroid/support/design/animation/Positioning;->gravity:I

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    sub-float v2, v3, v4

    .line 506
    goto :goto_0

    .line 499
    :cond_1
    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float v2, v3, v4

    .line 500
    goto :goto_0

    .line 502
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float v2, v3, v4

    .line 503
    nop

    .line 510
    :goto_0
    iget v3, p3, Landroid/support/design/animation/Positioning;->xAdjustment:F

    add-float/2addr v2, v3

    .line 511
    return v2
.end method

.method private calculateTranslationY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F
    .locals 5
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "positioning"    # Landroid/support/design/animation/Positioning;

    .line 515
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 516
    .local v0, "dependencyBounds":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 518
    .local v1, "childBounds":Landroid/graphics/RectF;
    invoke-direct {p0, p1, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 519
    invoke-direct {p0, p2, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 521
    const/4 v2, 0x0

    .line 522
    .local v2, "translationY":F
    iget v3, p3, Landroid/support/design/animation/Positioning;->gravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    const/16 v4, 0x50

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v3, v4

    .line 531
    goto :goto_0

    .line 524
    :cond_1
    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float v2, v3, v4

    .line 525
    goto :goto_0

    .line 527
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float v2, v3, v4

    .line 528
    nop

    .line 535
    :goto_0
    iget v3, p3, Landroid/support/design/animation/Positioning;->yAdjustment:F

    add-float/2addr v2, v3

    .line 536
    return v2
.end method

.method private calculateValueOfAnimationAtEndOfExpansion(Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;FF)F
    .locals 9
    .param p1, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p2, "timing"    # Landroid/support/design/animation/MotionTiming;
    .param p3, "from"    # F
    .param p4, "to"    # F

    .line 611
    invoke-virtual {p2}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v0

    .line 612
    .local v0, "delay":J
    invoke-virtual {p2}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v2

    .line 615
    .local v2, "duration":J
    iget-object v4, p1, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v5, "expansion"

    invoke-virtual {v4, v5}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v4

    .line 616
    .local v4, "expansionTiming":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v4}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 619
    .local v5, "expansionEnd":J
    const-wide/16 v7, 0x11

    add-long/2addr v5, v7

    .line 620
    sub-long v7, v5, v0

    long-to-float v7, v7

    long-to-float v8, v2

    div-float/2addr v7, v8

    .line 623
    .local v7, "fraction":F
    invoke-virtual {p2}, Landroid/support/design/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v7

    .line 624
    invoke-static {p3, p4, v7}, Landroid/support/design/animation/AnimationUtils;->lerp(FFF)F

    move-result v8

    return v8
.end method

.method private calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/RectF;

    .line 540
    move-object v0, p2

    .line 541
    .local v0, "windowBounds":Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 543
    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 544
    .local v1, "windowLocation":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 546
    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 550
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    neg-float v3, v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 551
    return-void
.end method

.method private createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "unusedDependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 457
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 458
    return-void

    .line 460
    :cond_0
    instance-of v0, p2, Landroid/support/design/circularreveal/CircularRevealWidget;

    if-eqz v0, :cond_1

    sget v0, Landroid/support/design/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez v0, :cond_1

    .line 463
    return-void

    .line 466
    :cond_1
    invoke-direct {p0, p2}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 467
    .local v0, "childContentContainer":Landroid/view/ViewGroup;
    if-nez v0, :cond_2

    .line 468
    return-void

    .line 473
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_4

    .line 474
    if-nez p4, :cond_3

    .line 475
    sget-object v4, Landroid/support/design/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    :cond_3
    sget-object v3, Landroid/support/design/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v1

    .line 478
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 480
    .end local v1    # "animator":Landroid/animation/Animator;
    :cond_4
    sget-object v4, Landroid/support/design/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    aput v3, v2, v1

    .line 481
    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 484
    .restart local v1    # "animator":Landroid/animation/Animator;
    :goto_0
    iget-object v2, p5, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v3, "contentFade"

    invoke-virtual {v2, v3}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    .line 485
    .local v2, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v2, v1}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 486
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    return-void
.end method

.method private createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 417
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    instance-of v0, p2, Landroid/support/design/circularreveal/CircularRevealWidget;

    if-nez v0, :cond_0

    .line 418
    return-void

    .line 420
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/support/design/circularreveal/CircularRevealWidget;

    .line 422
    .local v0, "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    invoke-direct {p0, p1}, Landroid/support/design/transformation/FabTransformationBehavior;->getBackgroundTint(Landroid/view/View;)I

    move-result v1

    .line 423
    .local v1, "tint":I
    const v2, 0xffffff

    and-int/2addr v2, v1

    .line 426
    .local v2, "transparent":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p3, :cond_2

    .line 427
    if-nez p4, :cond_1

    .line 428
    invoke-interface {v0, v1}, Landroid/support/design/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    .line 430
    :cond_1
    sget-object v5, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    new-array v4, v4, [I

    aput v2, v4, v3

    .line 431
    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "animator":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 436
    .end local v3    # "animator":Landroid/animation/ObjectAnimator;
    :cond_2
    sget-object v5, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    new-array v4, v4, [I

    aput v1, v4, v3

    .line 437
    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 443
    .restart local v3    # "animator":Landroid/animation/ObjectAnimator;
    :goto_0
    invoke-static {}, Landroid/support/design/animation/ArgbEvaluatorCompat;->getInstance()Landroid/support/design/animation/ArgbEvaluatorCompat;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 444
    iget-object v4, p5, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v5, "color"

    invoke-virtual {v4, v5}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v4

    .line 445
    .local v4, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v4, v3}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 446
    invoke-interface {p6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    return-void
.end method

.method private createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 188
    .local v0, "translationZ":F
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    .line 189
    if-nez p4, :cond_0

    .line 190
    neg-float v3, v0

    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 192
    :cond_0
    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v4, v2, v1

    invoke-static {p2, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "animator":Landroid/animation/Animator;
    goto :goto_0

    .line 194
    .end local v1    # "animator":Landroid/animation/Animator;
    :cond_1
    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v2, [F

    neg-float v4, v0

    aput v4, v2, v1

    invoke-static {p2, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 197
    .restart local v1    # "animator":Landroid/animation/Animator;
    :goto_0
    iget-object v2, p5, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v3, "elevation"

    invoke-virtual {v2, v3}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    .line 198
    .local v2, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v2, v1}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 199
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method private createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V
    .locals 23
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p6, "childWidth"    # F
    .param p7, "childHeight"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "FF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .local p8, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p9, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v11, p5

    .line 332
    instance-of v0, v14, Landroid/support/design/circularreveal/CircularRevealWidget;

    if-nez v0, :cond_0

    .line 333
    return-void

    .line 335
    :cond_0
    move-object v10, v14

    check-cast v10, Landroid/support/design/circularreveal/CircularRevealWidget;

    .line 337
    .local v10, "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    iget-object v0, v11, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Landroid/support/design/animation/Positioning;

    invoke-direct {v12, v13, v14, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v9

    .line 338
    .local v9, "revealCenterX":F
    iget-object v0, v11, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Landroid/support/design/animation/Positioning;

    invoke-direct {v12, v13, v14, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v8

    .line 339
    .local v8, "revealCenterY":F
    move-object v0, v13

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iget-object v1, v12, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    .line 340
    iget-object v0, v12, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    .line 343
    .local v7, "dependencyRadius":F
    iget-object v0, v11, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v1, "expansion"

    invoke-virtual {v0, v1}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v5

    .line 345
    .local v5, "timing":Landroid/support/design/animation/MotionTiming;
    if-eqz p3, :cond_3

    .line 346
    if-nez p4, :cond_1

    .line 347
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v0, v9, v8, v7}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    invoke-interface {v10, v0}, Landroid/support/design/circularreveal/CircularRevealWidget;->setRevealInfo(Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 350
    :cond_1
    if-eqz p4, :cond_2

    .line 351
    invoke-interface {v10}, Landroid/support/design/circularreveal/CircularRevealWidget;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    iget v0, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move v6, v0

    goto :goto_0

    :cond_2
    move v6, v7

    .line 352
    .local v6, "fromRadius":F
    :goto_0
    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 353
    move v15, v9

    move/from16 v16, v8

    move/from16 v19, p6

    move/from16 v20, p7

    invoke-static/range {v15 .. v20}, Landroid/support/design/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result v4

    .line 356
    .local v4, "toRadius":F
    nop

    .line 357
    invoke-static {v10, v9, v8, v4}, Landroid/support/design/circularreveal/CircularRevealCompat;->createCircularReveal(Landroid/support/design/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v2

    .line 359
    .local v2, "animator":Landroid/animation/Animator;
    new-instance v0, Landroid/support/design/transformation/FabTransformationBehavior$4;

    invoke-direct {v0, v12, v10}, Landroid/support/design/transformation/FabTransformationBehavior$4;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/support/design/circularreveal/CircularRevealWidget;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 371
    nop

    .line 373
    invoke-virtual {v5}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v15

    float-to-int v3, v9

    float-to-int v1, v8

    .line 371
    move-object v0, v12

    move/from16 v17, v1

    move-object v1, v14

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-wide v2, v15

    .end local v2    # "animator":Landroid/animation/Animator;
    .local v18, "animator":Landroid/animation/Animator;
    move v15, v4

    move/from16 v4, v19

    .end local v4    # "toRadius":F
    .local v15, "toRadius":F
    move-object v13, v5

    move/from16 v5, v17

    .end local v5    # "timing":Landroid/support/design/animation/MotionTiming;
    .local v13, "timing":Landroid/support/design/animation/MotionTiming;
    move/from16 v16, v7

    move-object/from16 v7, p8

    .end local v7    # "dependencyRadius":F
    .local v16, "dependencyRadius":F
    invoke-direct/range {v0 .. v7}, Landroid/support/design/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    .line 379
    .end local v6    # "fromRadius":F
    .end local v15    # "toRadius":F
    nop

    .line 404
    move/from16 v21, v8

    move/from16 v20, v9

    move-object v12, v10

    move-object/from16 v0, v18

    goto :goto_1

    .line 380
    .end local v13    # "timing":Landroid/support/design/animation/MotionTiming;
    .end local v16    # "dependencyRadius":F
    .end local v18    # "animator":Landroid/animation/Animator;
    .restart local v5    # "timing":Landroid/support/design/animation/MotionTiming;
    .restart local v7    # "dependencyRadius":F
    :cond_3
    move-object v13, v5

    move/from16 v16, v7

    .end local v5    # "timing":Landroid/support/design/animation/MotionTiming;
    .end local v7    # "dependencyRadius":F
    .restart local v13    # "timing":Landroid/support/design/animation/MotionTiming;
    .restart local v16    # "dependencyRadius":F
    invoke-interface {v10}, Landroid/support/design/circularreveal/CircularRevealWidget;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    iget v7, v0, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 381
    .local v7, "fromRadius":F
    move/from16 v6, v16

    .line 382
    .local v6, "toRadius":F
    nop

    .line 383
    invoke-static {v10, v9, v8, v6}, Landroid/support/design/circularreveal/CircularRevealCompat;->createCircularReveal(Landroid/support/design/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v15

    .line 386
    .local v15, "animator":Landroid/animation/Animator;
    nop

    .line 388
    invoke-virtual {v13}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    float-to-int v4, v9

    float-to-int v5, v8

    .line 386
    move-object v0, v12

    move-object v1, v14

    move/from16 v17, v6

    move v6, v7

    .end local v6    # "toRadius":F
    .local v17, "toRadius":F
    move/from16 v18, v7

    move-object/from16 v7, p8

    .end local v7    # "fromRadius":F
    .local v18, "fromRadius":F
    invoke-direct/range {v0 .. v7}, Landroid/support/design/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    .line 393
    nop

    .line 395
    invoke-virtual {v13}, Landroid/support/design/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    .line 396
    invoke-virtual {v13}, Landroid/support/design/animation/MotionTiming;->getDuration()J

    move-result-wide v4

    iget-object v0, v11, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    .line 397
    invoke-virtual {v0}, Landroid/support/design/animation/MotionSpec;->getTotalDuration()J

    move-result-wide v6

    float-to-int v1, v9

    float-to-int v0, v8

    .line 393
    move/from16 v19, v0

    move-object v0, v12

    move/from16 v20, v1

    move-object v1, v14

    move/from16 v21, v8

    move/from16 v8, v20

    .end local v8    # "revealCenterY":F
    .local v21, "revealCenterY":F
    move/from16 v20, v9

    move/from16 v9, v19

    .end local v9    # "revealCenterX":F
    .local v20, "revealCenterX":F
    move-object v12, v10

    move/from16 v10, v17

    .end local v10    # "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    .local v12, "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Landroid/support/design/transformation/FabTransformationBehavior;->createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V

    .line 404
    .end local v17    # "toRadius":F
    .end local v18    # "fromRadius":F
    move-object v0, v15

    .end local v15    # "animator":Landroid/animation/Animator;
    .local v0, "animator":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v13, v0}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 405
    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-static {v12}, Landroid/support/design/circularreveal/CircularRevealCompat;->createCircularRevealListener(Landroid/support/design/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    move-object/from16 v3, p9

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method private createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    instance-of v0, p2, Landroid/support/design/circularreveal/CircularRevealWidget;

    if-eqz v0, :cond_4

    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 274
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/support/design/circularreveal/CircularRevealWidget;

    .line 275
    .local v0, "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    .line 276
    .local v1, "dependencyImageView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 278
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 279
    return-void

    .line 281
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 285
    const/4 v3, 0x1

    const/16 v4, 0xff

    const/4 v5, 0x0

    if-eqz p3, :cond_3

    .line 286
    if-nez p4, :cond_2

    .line 287
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 289
    :cond_2
    sget-object v4, Landroid/support/design/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    new-array v3, v3, [I

    aput v5, v3, v5

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "animator":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 291
    .end local v3    # "animator":Landroid/animation/ObjectAnimator;
    :cond_3
    sget-object v6, Landroid/support/design/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    new-array v3, v3, [I

    aput v4, v3, v5

    invoke-static {v2, v6, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 294
    .restart local v3    # "animator":Landroid/animation/ObjectAnimator;
    :goto_0
    new-instance v4, Landroid/support/design/transformation/FabTransformationBehavior$2;

    invoke-direct {v4, p0, p2}, Landroid/support/design/transformation/FabTransformationBehavior$2;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 304
    iget-object v4, p5, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string v5, "iconFade"

    invoke-virtual {v4, v5}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v4

    .line 305
    .local v4, "timing":Landroid/support/design/animation/MotionTiming;
    invoke-virtual {v4, v3}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 306
    invoke-interface {p6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v5, Landroid/support/design/transformation/FabTransformationBehavior$3;

    invoke-direct {v5, p0, v0, v2}, Landroid/support/design/transformation/FabTransformationBehavior$3;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/support/design/circularreveal/CircularRevealWidget;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    return-void

    .line 271
    .end local v0    # "circularRevealChild":Landroid/support/design/circularreveal/CircularRevealWidget;
    .end local v1    # "dependencyImageView":Landroid/widget/ImageView;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "animator":Landroid/animation/ObjectAnimator;
    .end local v4    # "timing":Landroid/support/design/animation/MotionTiming;
    :cond_4
    :goto_1
    return-void
.end method

.method private createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "totalDuration"    # J
    .param p8, "revealCenterX"    # I
    .param p9, "revealCenterY"    # I
    .param p10, "toRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JJJIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 693
    .local p11, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 695
    add-long v0, p2, p4

    cmp-long v0, v0, p6

    if-gez v0, :cond_0

    .line 696
    nop

    .line 697
    invoke-static {p1, p8, p9, p10, p10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 699
    .local v0, "animator":Landroid/animation/Animator;
    add-long v1, p2, p4

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 700
    add-long v1, p2, p4

    sub-long v1, p6, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 701
    invoke-interface {p11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    return-void
.end method

.method private createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "delay"    # J
    .param p4, "revealCenterX"    # I
    .param p5, "revealCenterY"    # I
    .param p6, "fromRadius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 671
    .local p7, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 673
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 674
    nop

    .line 675
    invoke-static {p1, p4, p5, p6, p6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    .line 677
    .local v2, "animator":Landroid/animation/Animator;
    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 678
    invoke-virtual {v2, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 679
    invoke-interface {p7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    .end local v2    # "animator":Landroid/animation/Animator;
    :cond_0
    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 23
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "currentlyAnimating"    # Z
    .param p5, "spec"    # Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    .param p8, "childBounds"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .line 211
    .local p6, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p7, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 211
    iget-object v0, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Landroid/support/design/animation/Positioning;

    invoke-direct {v10, v11, v12, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v9

    .line 212
    .local v9, "translationX":F
    iget-object v0, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Landroid/support/design/animation/Positioning;

    invoke-direct {v10, v11, v12, v0}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Landroid/support/design/animation/Positioning;)F

    move-result v8

    .line 219
    .local v8, "translationY":F
    const/4 v0, 0x0

    cmpl-float v1, v9, v0

    if-eqz v1, :cond_4

    cmpl-float v1, v8, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    if-eqz p3, :cond_1

    cmpg-float v1, v8, v0

    if-ltz v1, :cond_2

    :cond_1
    if-nez p3, :cond_3

    cmpl-float v1, v8, v0

    if-lez v1, :cond_3

    .line 225
    :cond_2
    iget-object v1, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string/jumbo v2, "translationXCurveUpwards"

    invoke-virtual {v1, v2}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v1

    .line 226
    .local v1, "translationXTiming":Landroid/support/design/animation/MotionTiming;
    iget-object v2, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string/jumbo v3, "translationYCurveUpwards"

    invoke-virtual {v2, v3}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    goto :goto_1

    .line 229
    .end local v1    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    :cond_3
    iget-object v1, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string/jumbo v2, "translationXCurveDownwards"

    invoke-virtual {v1, v2}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v1

    .line 230
    .restart local v1    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    iget-object v2, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string/jumbo v3, "translationYCurveDownwards"

    invoke-virtual {v2, v3}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    goto :goto_1

    .line 221
    .end local v1    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    :cond_4
    :goto_0
    iget-object v1, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string/jumbo v2, "translationXLinear"

    invoke-virtual {v1, v2}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v1

    .line 222
    .restart local v1    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    iget-object v2, v13, Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Landroid/support/design/animation/MotionSpec;

    const-string/jumbo v3, "translationYLinear"

    invoke-virtual {v2, v3}, Landroid/support/design/animation/MotionSpec;->getTiming(Ljava/lang/String;)Landroid/support/design/animation/MotionTiming;

    move-result-object v2

    .line 230
    .end local v1    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .local v2, "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .local v7, "translationXTiming":Landroid/support/design/animation/MotionTiming;
    :goto_1
    move-object v7, v1

    move-object v6, v2

    .line 233
    .end local v2    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .local v6, "translationYTiming":Landroid/support/design/animation/MotionTiming;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_6

    .line 234
    if-nez p4, :cond_5

    .line 235
    neg-float v3, v9

    invoke-virtual {v12, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 236
    neg-float v3, v8

    invoke-virtual {v12, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 238
    :cond_5
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v2, [F

    aput v0, v4, v1

    invoke-static {v12, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 239
    .local v15, "translationXAnimator":Landroid/animation/ValueAnimator;
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    aput v0, v2, v1

    invoke-static {v12, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 241
    .local v16, "translationYAnimator":Landroid/animation/ValueAnimator;
    neg-float v5, v9

    neg-float v4, v8

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v0, v10

    move-object v1, v12

    move-object v2, v13

    move-object v3, v7

    move/from16 v19, v4

    move-object v4, v6

    move-object/from16 v20, v6

    move/from16 v6, v19

    .end local v6    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .local v20, "translationYTiming":Landroid/support/design/animation/MotionTiming;
    move-object v10, v7

    move/from16 v7, v17

    .line 241
    .end local v7    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .local v10, "translationXTiming":Landroid/support/design/animation/MotionTiming;
    move/from16 v21, v8

    move/from16 v8, v18

    .line 241
    .end local v8    # "translationY":F
    .local v21, "translationY":F
    move v11, v9

    move-object/from16 v9, p8

    .line 241
    .end local v9    # "translationX":F
    .local v11, "translationX":F
    invoke-direct/range {v0 .. v9}, Landroid/support/design/transformation/FabTransformationBehavior;->calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Landroid/support/design/animation/MotionTiming;Landroid/support/design/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V

    .line 253
    move-object v0, v15

    move/from16 v3, v21

    goto :goto_2

    .line 252
    .end local v10    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .end local v11    # "translationX":F
    .end local v15    # "translationXAnimator":Landroid/animation/ValueAnimator;
    .end local v16    # "translationYAnimator":Landroid/animation/ValueAnimator;
    .end local v20    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .end local v21    # "translationY":F
    .restart local v6    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .restart local v7    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .restart local v8    # "translationY":F
    .restart local v9    # "translationX":F
    :cond_6
    move-object/from16 v20, v6

    move-object v10, v7

    move/from16 v21, v8

    move v11, v9

    .line 252
    .end local v6    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .end local v7    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .end local v8    # "translationY":F
    .end local v9    # "translationX":F
    .restart local v10    # "translationXTiming":Landroid/support/design/animation/MotionTiming;
    .restart local v11    # "translationX":F
    .restart local v20    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .restart local v21    # "translationY":F
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v2, [F

    neg-float v4, v11

    aput v4, v3, v1

    invoke-static {v12, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 253
    .restart local v15    # "translationXAnimator":Landroid/animation/ValueAnimator;
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    move/from16 v3, v21

    neg-float v4, v3

    .line 253
    .end local v21    # "translationY":F
    .local v3, "translationY":F
    aput v4, v2, v1

    invoke-static {v12, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object v0, v15

    .line 253
    .end local v15    # "translationXAnimator":Landroid/animation/ValueAnimator;
    .local v0, "translationXAnimator":Landroid/animation/ValueAnimator;
    .restart local v16    # "translationYAnimator":Landroid/animation/ValueAnimator;
    :goto_2
    move-object/from16 v1, v16

    .line 256
    .end local v16    # "translationYAnimator":Landroid/animation/ValueAnimator;
    .local v1, "translationYAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v10, v0}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 257
    move-object/from16 v2, v20

    invoke-virtual {v2, v1}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 258
    .end local v20    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    .restart local v2    # "translationYTiming":Landroid/support/design/animation/MotionTiming;
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method private getBackgroundTint(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 656
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 657
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    return v1

    .line 660
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 648
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 649
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 651
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .line 86
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 91
    instance-of v0, p3, Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 92
    move-object v0, p3

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    .line 93
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result v0

    .line 94
    .local v0, "expandedComponentIdHint":I
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 96
    .end local v0    # "expandedComponentIdHint":I
    :cond_2
    return v1

    .line 87
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttachedToLayoutParams(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 102
    iget v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez v0, :cond_0

    .line 105
    const/16 v0, 0x50

    iput v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    .line 107
    :cond_0
    return-void
.end method

.method protected onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 18
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "isAnimating"    # Z

    move-object/from16 v10, p0

    move/from16 v11, p3

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v10, v0, v11}, Landroid/support/design/transformation/FabTransformationBehavior;->onCreateMotionSpec(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;

    move-result-object v12

    .line 115
    .local v12, "spec":Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 116
    .local v13, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 118
    .local v14, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 119
    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v11

    move/from16 v4, p4

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Landroid/support/design/transformation/FabTransformationBehavior;->createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 123
    :cond_0
    iget-object v15, v10, Landroid/support/design/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 124
    .local v15, "childBounds":Landroid/graphics/RectF;
    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v11

    move/from16 v4, p4

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Landroid/support/design/transformation/FabTransformationBehavior;->createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V

    .line 126
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v16

    .line 127
    .local v16, "childWidth":F
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v17

    .line 129
    .local v17, "childHeight":F
    invoke-direct/range {v0 .. v7}, Landroid/support/design/transformation/FabTransformationBehavior;->createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 130
    move/from16 v6, v16

    move/from16 v7, v17

    move-object v8, v13

    move-object v9, v14

    invoke-direct/range {v0 .. v9}, Landroid/support/design/transformation/FabTransformationBehavior;->createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V

    .line 140
    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Landroid/support/design/transformation/FabTransformationBehavior;->createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 141
    invoke-direct/range {v0 .. v7}, Landroid/support/design/transformation/FabTransformationBehavior;->createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLandroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 144
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 145
    .local v0, "set":Landroid/animation/AnimatorSet;
    invoke-static {v0, v13}, Landroid/support/design/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 146
    new-instance v1, Landroid/support/design/transformation/FabTransformationBehavior$1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v1, v10, v11, v3, v2}, Landroid/support/design/transformation/FabTransformationBehavior$1;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 168
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "count":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 169
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    .end local v4    # "count":I
    :cond_1
    return-object v0
.end method

.method protected abstract onCreateMotionSpec(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$FabTransformationSpec;
.end method
