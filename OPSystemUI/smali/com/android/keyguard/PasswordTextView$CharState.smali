.class Lcom/android/keyguard/PasswordTextView$CharState;
.super Ljava/lang/Object;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharState"
.end annotation


# instance fields
.field currentDotSizeFactor:F

.field currentTextSizeFactor:F

.field currentTextTranslationY:F

.field currentWidthFactor:F

.field dotAnimationIsGrowing:Z

.field dotAnimator:Landroid/animation/Animator;

.field dotFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotSwapperRunnable:Ljava/lang/Runnable;

.field isDotSwapPending:Z

.field removeEndListener:Landroid/animation/Animator$AnimatorListener;

.field textAnimationIsGrowing:Z

.field textAnimator:Landroid/animation/ValueAnimator;

.field textFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field textTranslateAnimator:Landroid/animation/ValueAnimator;

.field textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final synthetic this$0:Lcom/android/keyguard/PasswordTextView;

.field whichChar:C

.field widthAnimationIsGrowing:Z

.field widthAnimator:Landroid/animation/ValueAnimator;

.field widthFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/PasswordTextView;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    .line 388
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$1;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 412
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$2;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 419
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$3;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$3;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 426
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$4;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$4;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 433
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$5;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$5;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 440
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$6;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$6;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 449
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$7;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$7;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 470
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$8;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$8;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 479
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$9;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$9;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 488
    new-instance p1, Lcom/android/keyguard/PasswordTextView$CharState$10;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextView$CharState$10;-><init>(Lcom/android/keyguard/PasswordTextView$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/PasswordTextView;Lcom/android/keyguard/PasswordTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/PasswordTextView;
    .param p2, "x1"    # Lcom/android/keyguard/PasswordTextView$1;

    .line 373
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView$CharState;-><init>(Lcom/android/keyguard/PasswordTextView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/PasswordTextView$CharState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView$CharState;

    .line 373
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/PasswordTextView$CharState;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView$CharState;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 373
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/PasswordTextView$CharState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextView$CharState;

    .line 373
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->performSwap()V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 684
    if-eqz p1, :cond_0

    .line 685
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 687
    :cond_0
    return-void
.end method

.method private performSwap()V
    .locals 2

    .line 576
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextDisappearAnimation(J)V

    .line 577
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotAppearAnimation(J)V

    .line 579
    return-void
.end method

.method private postDotSwap(J)V
    .locals 2
    .param p1, "delay"    # J

    .line 554
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    .line 555
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/keyguard/PasswordTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 557
    return-void
.end method

.method private removeDotSwapCallbacks()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->isDotSwapPending:Z

    .line 562
    return-void
.end method

.method private startDotAppearAnimation(J)V
    .locals 9
    .param p1, "delay"    # J

    .line 651
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 652
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView;->access$700(Lcom/android/keyguard/PasswordTextView;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 654
    new-array v0, v3, [F

    iget v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    aput v4, v0, v1

    const/high16 v4, 0x3fc00000    # 1.5f

    aput v4, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 656
    .local v0, "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 657
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v4}, Lcom/android/keyguard/PasswordTextView;->access$900(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 658
    const-wide/16 v4, 0xa0

    .line 660
    .local v4, "overShootDuration":J
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 661
    new-array v6, v3, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 663
    .local v6, "settleBackAnimator":Landroid/animation/ValueAnimator;
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 664
    const-wide/16 v7, 0x140

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 665
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 666
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 667
    .local v7, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v1

    aput-object v6, v3, v2

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 668
    invoke-virtual {v7, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 669
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 670
    iput-object v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 671
    .end local v0    # "overShootAnimator":Landroid/animation/ValueAnimator;
    .end local v4    # "overShootDuration":J
    .end local v6    # "settleBackAnimator":Landroid/animation/ValueAnimator;
    .end local v7    # "animatorSet":Landroid/animation/AnimatorSet;
    goto :goto_0

    .line 672
    :cond_0
    new-array v0, v3, [F

    iget v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    aput v3, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 673
    .local v0, "growAnimator":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 674
    const/high16 v3, 0x43200000    # 160.0f

    iget v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    sub-float/2addr v1, v4

    mul-float/2addr v3, v1

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 675
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 676
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 677
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 678
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 680
    .end local v0    # "growAnimator":Landroid/animation/ValueAnimator;
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 681
    return-void

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startDotDisappearAnimation(J)V
    .locals 5
    .param p1, "startDelay"    # J

    .line 606
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 607
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 608
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 609
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 610
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->access$800(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 611
    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v3, v1

    float-to-long v3, v3

    .line 612
    .local v3, "duration":J
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 613
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 614
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 615
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 616
    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    .line 617
    return-void
.end method

.method private startTextAppearAnimation()V
    .locals 6

    .line 630
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 631
    const/4 v0, 0x2

    new-array v1, v0, [F

    iget v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 632
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 633
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 634
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v4}, Lcom/android/keyguard/PasswordTextView;->access$900(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 635
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v4, v2

    float-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 636
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 637
    iput-boolean v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 640
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 641
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 642
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 643
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 644
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->access$900(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 645
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 646
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 648
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startTextDisappearAnimation(J)V
    .locals 5
    .param p1, "startDelay"    # J

    .line 594
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 595
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 596
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 597
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 598
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->access$800(Lcom/android/keyguard/PasswordTextView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 599
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v3, v1

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 600
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 601
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 602
    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    .line 603
    return-void
.end method

.method private startWidthAppearAnimation()V
    .locals 5

    .line 620
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 621
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 622
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 623
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 624
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v3, v1

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 625
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 626
    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .line 627
    return-void
.end method

.method private startWidthDisappearAnimation(J)V
    .locals 5
    .param p1, "widthDelay"    # J

    .line 582
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 583
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 584
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 585
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 587
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v3, v1

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 588
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 589
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 590
    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    .line 591
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FIFF)F
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentDrawPosition"    # F
    .param p3, "charHeight"    # I
    .param p4, "yPosition"    # F
    .param p5, "charLength"    # F

    .line 696
    iget v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 697
    .local v0, "textVisible":Z
    :goto_0
    iget v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    move v2, v3

    nop

    .line 698
    .local v2, "dotVisible":Z
    :cond_1
    iget v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v3, p5

    .line 699
    .local v3, "charWidth":F
    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    .line 700
    int-to-float v5, p3

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v5, p4

    int-to-float v6, p3

    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    mul-float/2addr v6, v7

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 702
    .local v5, "currYPosition":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 703
    div-float v6, v3, v4

    add-float/2addr v6, p2

    .line 704
    .local v6, "centerX":F
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 705
    iget v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    iget v8, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 706
    iget-char v7, p0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v8}, Lcom/android/keyguard/PasswordTextView;->access$1000(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {p1, v7, v1, v1, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 707
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 709
    .end local v5    # "currYPosition":F
    .end local v6    # "centerX":F
    :cond_2
    if-eqz v2, :cond_3

    .line 710
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 711
    div-float v4, v3, v4

    add-float/2addr v4, p2

    .line 712
    .local v4, "centerX":F
    invoke-virtual {p1, v4, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 713
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v5}, Lcom/android/keyguard/PasswordTextView;->access$1100(Lcom/android/keyguard/PasswordTextView;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v6}, Lcom/android/keyguard/PasswordTextView;->access$1000(Lcom/android/keyguard/PasswordTextView;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v1, v1, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 714
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 716
    .end local v4    # "centerX":F
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextView;->access$1200(Lcom/android/keyguard/PasswordTextView;)I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    return v1
.end method

.method public isCharVisibleForA11y()Z
    .locals 5

    .line 723
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 724
    .local v0, "textIsGrowing":Z
    :goto_0
    iget v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    return v1
.end method

.method reset()V
    .locals 2

    .line 497
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->whichChar:C

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    .line 499
    iput v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    .line 500
    iput v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 503
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 504
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 505
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/android/keyguard/PasswordTextView$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 506
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 507
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextTranslationY:F

    .line 508
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    .line 509
    return-void
.end method

.method startAppearAnimation()V
    .locals 6

    .line 530
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v0}, Lcom/android/keyguard/PasswordTextView;->access$700(Lcom/android/keyguard/PasswordTextView;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 532
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v3}, Lcom/android/keyguard/PasswordTextView;->access$700(Lcom/android/keyguard/PasswordTextView;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    if-nez v3, :cond_3

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    .line 534
    .local v3, "textNeedsAnimation":Z
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_3

    :cond_5
    :goto_2
    move v1, v2

    .line 535
    .local v1, "widthNeedsAnimation":Z
    :goto_3
    if-eqz v0, :cond_6

    .line 536
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotAppearAnimation(J)V

    .line 538
    :cond_6
    if-eqz v3, :cond_7

    .line 539
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextAppearAnimation()V

    .line 541
    :cond_7
    if-eqz v1, :cond_8

    .line 542
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->startWidthAppearAnimation()V

    .line 544
    :cond_8
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {v2}, Lcom/android/keyguard/PasswordTextView;->access$700(Lcom/android/keyguard/PasswordTextView;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 545
    const-wide/16 v4, 0x514

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/PasswordTextView$CharState;->postDotSwap(J)V

    .line 547
    :cond_9
    return-void
.end method

.method startRemoveAnimation(JJ)V
    .locals 6
    .param p1, "startDelay"    # J
    .param p3, "widthDelay"    # J

    .line 512
    iget v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentDotSizeFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->dotAnimationIsGrowing:Z

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 514
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentTextSizeFactor:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimationIsGrowing:Z

    if-eqz v4, :cond_5

    :cond_4
    move v4, v3

    goto :goto_1

    :cond_5
    move v4, v2

    .line 516
    .local v4, "textNeedsAnimation":Z
    :goto_1
    iget v5, p0, Lcom/android/keyguard/PasswordTextView$CharState;->currentWidthFactor:F

    cmpl-float v1, v5, v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->widthAnimationIsGrowing:Z

    if-eqz v1, :cond_8

    :cond_7
    move v2, v3

    nop

    :cond_8
    move v1, v2

    .line 518
    .local v1, "widthNeedsAnimation":Z
    if-eqz v0, :cond_9

    .line 519
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView$CharState;->startDotDisappearAnimation(J)V

    .line 521
    :cond_9
    if-eqz v4, :cond_a

    .line 522
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView$CharState;->startTextDisappearAnimation(J)V

    .line 524
    :cond_a
    if-eqz v1, :cond_b

    .line 525
    invoke-direct {p0, p3, p4}, Lcom/android/keyguard/PasswordTextView$CharState;->startWidthDisappearAnimation(J)V

    .line 527
    :cond_b
    return-void
.end method

.method swapToDotWhenAppearFinished()V
    .locals 4

    .line 565
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->removeDotSwapCallbacks()V

    .line 566
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 568
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 569
    .local v0, "remainingDuration":J
    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/PasswordTextView$CharState;->postDotSwap(J)V

    .line 570
    .end local v0    # "remainingDuration":J
    goto :goto_0

    .line 571
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextView$CharState;->performSwap()V

    .line 573
    :goto_0
    return-void
.end method
