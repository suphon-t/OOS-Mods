.class Landroid/support/design/widget/TabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field private final defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

.field private indicatorAnimator:Landroid/animation/ValueAnimator;

.field private indicatorLeft:I

.field private indicatorRight:I

.field private layoutDirection:I

.field private selectedIndicatorHeight:I

.field private final selectedIndicatorPaint:Landroid/graphics/Paint;

.field selectedPosition:I

.field selectionOffset:F

.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 2326
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    .line 2327
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2316
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2319
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 2321
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2322
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 2328
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setWillNotDraw(Z)V

    .line 2329
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 2330
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    .line 2331
    return-void
.end method

.method private calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V
    .locals 7
    .param p1, "tabView"    # Landroid/support/design/widget/TabLayout$TabView;
    .param p2, "contentBounds"    # Landroid/graphics/RectF;

    .line 2573
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$TabView;->access$300(Landroid/support/design/widget/TabLayout$TabView;)I

    move-result v0

    .line 2575
    .local v0, "tabViewContentWidth":I
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2576
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    .line 2579
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$TabView;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 2580
    .local v1, "tabViewCenter":I
    div-int/lit8 v2, v0, 0x2

    sub-int v2, v1, v2

    .line 2581
    .local v2, "contentLeftBounds":I
    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v1

    .line 2583
    .local v3, "contentRightBounds":I
    int-to-float v4, v2

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p2, v4, v6, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2584
    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 10

    .line 2460
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2464
    .local v0, "selectedTitle":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    .line 2465
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2466
    .local v1, "left":I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2468
    .local v2, "right":I
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v3, v3, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v3, :cond_0

    instance-of v3, v0, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v3, :cond_0

    .line 2469
    move-object v3, v0

    check-cast v3, Landroid/support/design/widget/TabLayout$TabView;

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v4}, Landroid/support/design/widget/TabLayout;->access$200(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2470
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$200(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v1, v3

    .line 2471
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$200(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v2, v3

    .line 2474
    :cond_0
    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    .line 2476
    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2477
    .local v3, "nextTitle":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2478
    .local v4, "nextTitleLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 2480
    .local v5, "nextTitleRight":I
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v6, v6, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v6, :cond_1

    instance-of v6, v3, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v6, :cond_1

    .line 2481
    move-object v6, v3

    check-cast v6, Landroid/support/design/widget/TabLayout$TabView;

    iget-object v7, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v7}, Landroid/support/design/widget/TabLayout;->access$200(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2482
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$200(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v4, v6

    .line 2483
    iget-object v6, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v6}, Landroid/support/design/widget/TabLayout;->access$200(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    float-to-int v5, v6

    .line 2486
    :cond_1
    iget v6, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    iget v7, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    int-to-float v9, v1

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 2487
    iget v6, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    int-to-float v7, v5

    mul-float/2addr v6, v7

    iget v7, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    sub-float/2addr v8, v7

    int-to-float v7, v2

    mul-float/2addr v8, v7

    add-float/2addr v6, v8

    float-to-int v2, v6

    .line 2488
    .end local v3    # "nextTitle":Landroid/view/View;
    .end local v4    # "nextTitleLeft":I
    .end local v5    # "nextTitleRight":I
    goto :goto_0

    .line 2491
    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_2
    const/4 v1, -0x1

    move v2, v1

    .line 2494
    .restart local v1    # "left":I
    .restart local v2    # "right":I
    :cond_3
    :goto_0
    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    .line 2495
    return-void
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "duration"    # I

    move-object/from16 v6, p0

    .line 2507
    iget-object v0, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2508
    iget-object v0, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2511
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2512
    .local v7, "targetView":Landroid/view/View;
    if-nez v7, :cond_1

    .line 2514
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 2515
    return-void

    .line 2518
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2519
    .local v0, "targetLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v1

    .line 2521
    .local v1, "targetRight":I
    iget-object v2, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-boolean v2, v2, Landroid/support/design/widget/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v2, :cond_2

    instance-of v2, v7, Landroid/support/design/widget/TabLayout$TabView;

    if-eqz v2, :cond_2

    .line 2522
    move-object v2, v7

    check-cast v2, Landroid/support/design/widget/TabLayout$TabView;

    iget-object v3, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->access$200(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v6, v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Landroid/support/design/widget/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2523
    iget-object v2, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->access$200(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v0, v2

    .line 2524
    iget-object v2, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-static {v2}, Landroid/support/design/widget/TabLayout;->access$200(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v1, v2

    .line 2527
    .end local v0    # "targetLeft":I
    .end local v1    # "targetRight":I
    .local v8, "targetLeft":I
    .local v9, "targetRight":I
    :cond_2
    move v8, v0

    move v9, v1

    move v10, v8

    .line 2528
    .local v10, "finalTargetLeft":I
    move v11, v9

    .line 2530
    .local v11, "finalTargetRight":I
    iget v12, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2531
    .local v12, "startLeft":I
    iget v13, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 2533
    .local v13, "startRight":I
    if-ne v12, v10, :cond_4

    if-eq v13, v11, :cond_3

    goto :goto_0

    .line 2558
    :cond_3
    move/from16 v1, p1

    move/from16 v15, p2

    move-object/from16 v16, v7

    goto :goto_1

    .line 2534
    :cond_4
    :goto_0
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, v6, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    move-object v14, v0

    .line 2535
    .local v14, "animator":Landroid/animation/ValueAnimator;
    sget-object v0, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2536
    move/from16 v15, p2

    int-to-long v0, v15

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2537
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2538
    new-instance v5, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;

    move-object v0, v5

    move-object v1, v6

    move v2, v12

    move v3, v10

    move v4, v13

    move-object/from16 v16, v7

    move-object v7, v5

    move v5, v11

    .end local v7    # "targetView":Landroid/view/View;
    .local v16, "targetView":Landroid/view/View;
    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$1;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabIndicator;IIII)V

    invoke-virtual {v14, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2548
    new-instance v0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$2;

    move/from16 v1, p1

    invoke-direct {v0, v6, v1}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator$2;-><init>(Landroid/support/design/widget/TabLayout$SlidingTabIndicator;I)V

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2556
    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->start()V

    .line 2558
    .end local v14    # "animator":Landroid/animation/ValueAnimator;
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method childrenNeedLayout()Z
    .locals 4

    .line 2348
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2349
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2350
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    .line 2351
    const/4 v3, 0x1

    return v3

    .line 2348
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2354
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2588
    const/4 v0, 0x0

    .line 2589
    .local v0, "indicatorHeight":I
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 2590
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 2592
    :cond_0
    iget v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-ltz v1, :cond_1

    .line 2593
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 2596
    :cond_1
    const/4 v1, 0x0

    .line 2597
    .local v1, "indicatorTop":I
    const/4 v2, 0x0

    .line 2599
    .local v2, "indicatorBottom":I
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget v3, v3, Landroid/support/design/widget/TabLayout;->tabIndicatorGravity:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2613
    :pswitch_0
    const/4 v1, 0x0

    .line 2614
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v2

    .line 2615
    goto :goto_0

    .line 2609
    :pswitch_1
    const/4 v1, 0x0

    .line 2610
    move v2, v0

    .line 2611
    goto :goto_0

    .line 2605
    :pswitch_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v1, v3, 0x2

    .line 2606
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    div-int/lit8 v2, v3, 0x2

    .line 2607
    goto :goto_0

    .line 2601
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v3

    sub-int v1, v3, v0

    .line 2602
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v2

    .line 2603
    nop

    .line 2621
    :goto_0
    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ltz v3, :cond_5

    iget v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-le v3, v4, :cond_5

    .line 2623
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    .line 2624
    :goto_1
    invoke-static {v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2626
    .local v3, "selectedIndicator":Landroid/graphics/drawable/Drawable;
    iget v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    iget v5, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2627
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_4

    .line 2628
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_3

    .line 2630
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 2631
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2630
    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 2633
    :cond_3
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 2636
    :cond_4
    :goto_2
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2640
    .end local v3    # "selectedIndicator":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2641
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 2443
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2445
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2448
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2449
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    .line 2450
    .local v0, "duration":J
    iget v2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2452
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    sub-float/2addr v3, v4

    long-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2450
    invoke-virtual {p0, v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    .line 2453
    .end local v0    # "duration":J
    goto :goto_0

    .line 2455
    :cond_0
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 2457
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2387
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2389
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 2392
    return-void

    .line 2395
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->tabGravity:I

    if-ne v0, v1, :cond_8

    .line 2396
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    .line 2399
    .local v0, "count":I
    const/4 v1, 0x0

    .line 2400
    .local v1, "largestTabWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v1

    move v1, v0

    .local v1, "z":I
    .local v3, "largestTabWidth":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2401
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2402
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 2403
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2400
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2407
    .end local v1    # "z":I
    .end local v2    # "i":I
    :cond_2
    if-gtz v3, :cond_3

    .line 2409
    return-void

    .line 2412
    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v1

    .line 2413
    .local v1, "gutter":I
    const/4 v2, 0x0

    .line 2415
    .local v2, "remeasure":Z
    mul-int v4, v3, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getMeasuredWidth()I

    move-result v5

    mul-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    if-gt v4, v5, :cond_6

    .line 2418
    nop

    .local v6, "i":I
    :goto_1
    move v4, v6

    .end local v6    # "i":I
    .local v4, "i":I
    if-ge v4, v0, :cond_7

    .line 2419
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 2420
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v3, :cond_4

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    .line 2421
    :cond_4
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2422
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2423
    const/4 v2, 0x1

    .line 2418
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    .line 2429
    .end local v6    # "i":I
    :cond_6
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    iput v6, v4, Landroid/support/design/widget/TabLayout;->tabGravity:I

    .line 2430
    iget-object v4, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4, v6}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    .line 2431
    const/4 v2, 0x1

    .line 2434
    :cond_7
    if-eqz v2, :cond_8

    .line 2436
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2439
    .end local v0    # "count":I
    .end local v1    # "gutter":I
    .end local v2    # "remeasure":Z
    .end local v3    # "largestTabWidth":I
    :cond_8
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 2373
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 2377
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2378
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->layoutDirection:I

    if-eq v0, p1, :cond_0

    .line 2379
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->requestLayout()V

    .line 2380
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 2383
    :cond_0
    return-void
.end method

.method setIndicatorPosition(II)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 2498
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-eq p2, v0, :cond_1

    .line 2500
    :cond_0
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2501
    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 2502
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2504
    :cond_1
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .line 2358
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2359
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2362
    :cond_0
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2363
    iput p2, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 2364
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    .line 2365
    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 2334
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2335
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2336
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2338
    :cond_0
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .line 2341
    iget v0, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    .line 2342
    iput p1, p0, Landroid/support/design/widget/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 2343
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2345
    :cond_0
    return-void
.end method
