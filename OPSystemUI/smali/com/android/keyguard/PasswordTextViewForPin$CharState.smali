.class Lcom/android/keyguard/PasswordTextViewForPin$CharState;
.super Ljava/lang/Object;
.source "PasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextViewForPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharState"
.end annotation


# instance fields
.field currentDotSizeFactor:F

.field currentEmptyCircleSizeFactor:F

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

.field final synthetic this$0:Lcom/android/keyguard/PasswordTextViewForPin;

.field whichChar:C

.field widthAnimationIsGrowing:Z

.field widthAnimator:Landroid/animation/ValueAnimator;

.field widthFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/PasswordTextViewForPin;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextTranslationY:F

    .line 489
    iput p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    .line 491
    new-instance p1, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 515
    new-instance p1, Lcom/android/keyguard/PasswordTextViewForPin$CharState$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$2;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 522
    new-instance p1, Lcom/android/keyguard/PasswordTextViewForPin$CharState$3;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$3;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 529
    new-instance p1, Lcom/android/keyguard/PasswordTextViewForPin$CharState$4;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$4;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 536
    new-instance p1, Lcom/android/keyguard/PasswordTextViewForPin$CharState$5;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$5;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 543
    new-instance p1, Lcom/android/keyguard/PasswordTextViewForPin$CharState$6;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$6;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 552
    new-instance p1, Lcom/android/keyguard/PasswordTextViewForPin$CharState$7;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$7;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 561
    new-instance p1, Lcom/android/keyguard/PasswordTextViewForPin$CharState$8;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$8;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 570
    new-instance p1, Lcom/android/keyguard/PasswordTextViewForPin$CharState$9;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$9;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 579
    new-instance p1, Lcom/android/keyguard/PasswordTextViewForPin$CharState$10;

    invoke-direct {p1, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$10;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/PasswordTextViewForPin;Lcom/android/keyguard/PasswordTextViewForPin$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin;
    .param p2, "x1"    # Lcom/android/keyguard/PasswordTextViewForPin$1;

    .line 475
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;-><init>(Lcom/android/keyguard/PasswordTextViewForPin;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 475
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/PasswordTextViewForPin$CharState;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 475
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .line 475
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->performSwap()V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 775
    if-eqz p1, :cond_0

    .line 776
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 778
    :cond_0
    return-void
.end method

.method private performSwap()V
    .locals 2

    .line 667
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startTextDisappearAnimation(J)V

    .line 668
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 670
    return-void
.end method

.method private postDotSwap(J)V
    .locals 2
    .param p1, "delay"    # J

    .line 645
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 646
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 647
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 648
    return-void
.end method

.method private removeDotSwapCallbacks()V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 653
    return-void
.end method

.method private startDotAppearAnimation(J)V
    .locals 9
    .param p1, "delay"    # J

    .line 742
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 743
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->access$700(Lcom/android/keyguard/PasswordTextViewForPin;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-nez v0, :cond_0

    .line 745
    new-array v0, v3, [F

    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    aput v4, v0, v1

    const/high16 v4, 0x3fc00000    # 1.5f

    aput v4, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 747
    .local v0, "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 748
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v4}, Lcom/android/keyguard/PasswordTextViewForPin;->access$900(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 749
    const-wide/16 v4, 0xa0

    .line 751
    .local v4, "overShootDuration":J
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 752
    new-array v6, v3, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 754
    .local v6, "settleBackAnimator":Landroid/animation/ValueAnimator;
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 755
    const-wide/16 v7, 0x140

    sub-long/2addr v7, v4

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 756
    iget-object v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 757
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 758
    .local v7, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v1

    aput-object v6, v3, v2

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 759
    invoke-virtual {v7, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 760
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 761
    iput-object v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 762
    .end local v0    # "overShootAnimator":Landroid/animation/ValueAnimator;
    .end local v4    # "overShootDuration":J
    .end local v6    # "settleBackAnimator":Landroid/animation/ValueAnimator;
    .end local v7    # "animatorSet":Landroid/animation/AnimatorSet;
    goto :goto_0

    .line 763
    :cond_0
    new-array v0, v3, [F

    iget v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    aput v3, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 764
    .local v0, "growAnimator":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 765
    const/high16 v3, 0x43200000    # 160.0f

    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    sub-float/2addr v1, v4

    mul-float/2addr v3, v1

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 766
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 767
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 768
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 769
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 771
    .end local v0    # "growAnimator":Landroid/animation/ValueAnimator;
    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .line 772
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

    .line 697
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 698
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 699
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 700
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 701
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$800(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 702
    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v3, v1

    float-to-long v3, v3

    .line 703
    .local v3, "duration":J
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 704
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 705
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 706
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 707
    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .line 708
    return-void
.end method

.method private startTextAppearAnimation()V
    .locals 6

    .line 721
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 722
    const/4 v0, 0x2

    new-array v1, v0, [F

    iget v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 723
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 724
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 725
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v4}, Lcom/android/keyguard/PasswordTextViewForPin;->access$900(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 726
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v4, v2

    float-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 727
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 728
    iput-boolean v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .line 731
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 732
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 733
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 734
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 735
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$900(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 736
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 737
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 739
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

    .line 685
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 686
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 687
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 688
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 689
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$800(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 690
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v3, v1

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 691
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 692
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 693
    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .line 694
    return-void
.end method

.method private startWidthAppearAnimation()V
    .locals 5

    .line 711
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 712
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 713
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 714
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 715
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v3, v1

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 716
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 717
    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    .line 718
    return-void
.end method

.method private startWidthDisappearAnimation(J)V
    .locals 5
    .param p1, "widthDelay"    # J

    .line 673
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 674
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 675
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 676
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 677
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 678
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    const/high16 v3, 0x43200000    # 160.0f

    mul-float/2addr v3, v1

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 679
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 680
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 681
    iput-boolean v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    .line 682
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

    .line 787
    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 788
    .local v0, "textVisible":Z
    :goto_0
    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    move v2, v3

    nop

    .line 789
    .local v2, "dotVisible":Z
    :cond_1
    iget v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr v3, p5

    .line 790
    .local v3, "charWidth":F
    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    .line 791
    int-to-float v5, p3

    div-float/2addr v5, v4

    iget v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v5, p4

    int-to-float v6, p3

    iget v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextTranslationY:F

    mul-float/2addr v6, v7

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 793
    .local v5, "currYPosition":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 794
    div-float v6, v3, v4

    add-float/2addr v6, p2

    .line 795
    .local v6, "centerX":F
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 796
    iget v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    iget v8, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 797
    iget-char v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->whichChar:C

    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v8}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1000(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v8

    invoke-virtual {p1, v7, v1, v1, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 798
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 800
    .end local v5    # "currYPosition":F
    .end local v6    # "centerX":F
    :cond_2
    if-eqz v2, :cond_3

    .line 801
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 802
    div-float v4, v3, v4

    add-float/2addr v4, p2

    .line 803
    .local v4, "centerX":F
    invoke-virtual {p1, v4, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 804
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v5}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1100(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v6}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1000(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v1, v1, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 805
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 807
    .end local v4    # "centerX":F
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->access$1200(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    return v1
.end method

.method reset()V
    .locals 2

    .line 588
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->whichChar:C

    .line 589
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    .line 590
    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 591
    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    .line 592
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 594
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 595
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 596
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 597
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 598
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextTranslationY:F

    .line 599
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 600
    return-void
.end method

.method startAppearAnimation()V
    .locals 6

    .line 621
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->access$700(Lcom/android/keyguard/PasswordTextViewForPin;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 623
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v3}, Lcom/android/keyguard/PasswordTextViewForPin;->access$700(Lcom/android/keyguard/PasswordTextViewForPin;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    if-nez v3, :cond_3

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    .line 625
    .local v3, "textNeedsAnimation":Z
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_3

    :cond_5
    :goto_2
    move v1, v2

    .line 626
    .local v1, "widthNeedsAnimation":Z
    :goto_3
    if-eqz v0, :cond_6

    .line 627
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 629
    :cond_6
    if-eqz v3, :cond_7

    .line 630
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startTextAppearAnimation()V

    .line 632
    :cond_7
    if-eqz v1, :cond_8

    .line 633
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startWidthAppearAnimation()V

    .line 635
    :cond_8
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v2}, Lcom/android/keyguard/PasswordTextViewForPin;->access$700(Lcom/android/keyguard/PasswordTextViewForPin;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 636
    const-wide/16 v4, 0xfa

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->postDotSwap(J)V

    .line 638
    :cond_9
    return-void
.end method

.method startRemoveAnimation(JJ)V
    .locals 6
    .param p1, "startDelay"    # J
    .param p3, "widthDelay"    # J

    .line 603
    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    if-eqz v0, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 605
    .local v0, "dotNeedsAnimation":Z
    :goto_0
    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    if-eqz v4, :cond_5

    :cond_4
    move v4, v3

    goto :goto_1

    :cond_5
    move v4, v2

    .line 607
    .local v4, "textNeedsAnimation":Z
    :goto_1
    iget v5, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    cmpl-float v1, v5, v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    if-eqz v1, :cond_8

    :cond_7
    move v2, v3

    nop

    :cond_8
    move v1, v2

    .line 609
    .local v1, "widthNeedsAnimation":Z
    if-eqz v0, :cond_9

    .line 610
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startDotDisappearAnimation(J)V

    .line 612
    :cond_9
    if-eqz v4, :cond_a

    .line 613
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startTextDisappearAnimation(J)V

    .line 615
    :cond_a
    if-eqz v1, :cond_b

    .line 616
    invoke-direct {p0, p3, p4}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startWidthDisappearAnimation(J)V

    .line 618
    :cond_b
    return-void
.end method

.method swapToDotWhenAppearFinished()V
    .locals 4

    .line 656
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 657
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 659
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 660
    .local v0, "remainingDuration":J
    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->postDotSwap(J)V

    .line 661
    .end local v0    # "remainingDuration":J
    goto :goto_0

    .line 662
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->performSwap()V

    .line 664
    :goto_0
    return-void
.end method
