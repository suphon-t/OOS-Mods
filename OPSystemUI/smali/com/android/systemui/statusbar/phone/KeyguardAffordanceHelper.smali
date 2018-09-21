.class public Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    }
.end annotation


# instance fields
.field private mAnimationEndRunnable:Ljava/lang/Runnable;

.field private final mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

.field private mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private final mContext:Landroid/content/Context;

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHintGrowAmount:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mMinBackgroundRadius:I

.field private mMinFlingVelocity:I

.field private mMinTranslationAmount:I

.field private mMotionCancelled:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mSwipeAnimator:Landroid/animation/Animator;

.field private mSwipingInProgress:Z

.field private mTargetedView:Landroid/view/View;

.field private mTouchSlop:I

.field private mTouchSlopExeeded:Z

.field private mTouchTargetSize:I

.field private mTranslation:F

.field private mTranslationOnDown:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;)V
    .locals 9
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .param p2, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    .line 85
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 88
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v3

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    .line 92
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # Landroid/animation/Animator;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # Landroid/view/View;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;ZLjava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/Runnable;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # F

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getTranslationFromRadius(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # F

    .line 37
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconsFromTranslation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 315
    :cond_0
    return-void
.end method

.method private endMotion(ZFF)V
    .locals 2
    .param p1, "forceSnapBack"    # Z
    .param p2, "lastX"    # F
    .param p3, "lastY"    # F

    .line 217
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->flingWithCurrentVelocity(ZFF)V

    goto :goto_0

    .line 220
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 224
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 226
    :cond_1
    return-void
.end method

.method private fling(FZZ)V
    .locals 5
    .param p1, "vel"    # F
    .param p2, "snapBack"    # Z
    .param p3, "right"    # Z

    .line 344
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    .line 346
    .local v0, "target":F
    :goto_0
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    move v0, v1

    .line 348
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 349
    .local v1, "animator":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-virtual {v3, v1, v4, v0, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 350
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 356
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 357
    if-nez p2, :cond_2

    .line 358
    const/high16 v2, 0x3ec00000    # 0.375f

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v2, v3, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startFinishingCircleAnimation(FLjava/lang/Runnable;Z)V

    .line 359
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-interface {v2, p3, v3, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFF)V

    goto :goto_2

    .line 361
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 363
    :goto_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 364
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 365
    if-eqz p2, :cond_3

    .line 366
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    .line 368
    :cond_3
    return-void
.end method

.method private flingWithCurrentVelocity(ZFF)V
    .locals 8
    .param p1, "forceSnapBack"    # Z
    .param p2, "lastX"    # F
    .param p3, "lastY"    # F

    .line 318
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getCurrentVelocity(FF)F

    move-result v0

    .line 321
    .local v0, "vel":F
    const/4 v1, 0x0

    .line 322
    .local v1, "snapBack":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->needsAntiFalsing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 323
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v2}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    move v1, v2

    .line 325
    :cond_2
    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    :goto_3
    move v1, v2

    .line 328
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    mul-float/2addr v2, v0

    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    if-gez v2, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    move v2, v4

    .line 329
    .local v2, "velIsInWrongDirection":Z
    :goto_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    if-eqz v2, :cond_6

    move v6, v3

    goto :goto_5

    :cond_6
    move v6, v4

    :goto_5
    or-int/2addr v1, v6

    .line 330
    xor-int v6, v1, v2

    if-eqz v6, :cond_7

    move v6, v5

    goto :goto_6

    :cond_7
    move v6, v0

    :goto_6
    move v0, v6

    .line 331
    if-nez v1, :cond_9

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    move v6, v4

    goto :goto_8

    :cond_9
    :goto_7
    move v6, v3

    :goto_8
    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpg-float v5, v7, v5

    if-gez v5, :cond_a

    goto :goto_9

    :cond_a
    move v3, v4

    :goto_9
    invoke-direct {p0, v0, v6, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->fling(FZZ)V

    .line 332
    return-void
.end method

.method private getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "right"    # Z
    .param p2, "radius"    # I

    .line 296
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 297
    .local v0, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getCircleRadius()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, p2

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 298
    .local v1, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 308
    return-object v1
.end method

.method private getCurrentVelocity(FF)F
    .locals 8
    .param p1, "lastX"    # F
    .param p2, "lastY"    # F

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 485
    const/4 v0, 0x0

    return v0

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 489
    .local v0, "aX":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 490
    .local v1, "aY":F
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float v2, p1, v2

    .line 491
    .local v2, "bX":F
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float v3, p2, v3

    .line 492
    .local v3, "bY":F
    float-to-double v4, v2

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 494
    .local v4, "bLen":F
    mul-float v5, v0, v2

    mul-float v6, v1, v3

    add-float/2addr v5, v6

    div-float/2addr v5, v4

    .line 495
    .local v5, "projectedVelocity":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v6, v7, :cond_1

    .line 496
    neg-float v5, v5

    .line 498
    :cond_1
    return v5
.end method

.method private getIconAtPosition(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0

    .line 202
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMinTranslationAmount()I
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getAffordanceFalsingFactor()F

    move-result v0

    .line 340
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getRadiusFromTranslation(F)F
    .locals 2
    .param p1, "translation"    # F

    .line 431
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 432
    const/4 v0, 0x0

    return v0

    .line 434
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private getScale(FLcom/android/systemui/statusbar/KeyguardAffordanceView;)F
    .locals 2
    .param p1, "alpha"    # F
    .param p2, "icon"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 465
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v0

    div-float v0, p1, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, v1

    .line 467
    .local v0, "scale":F
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private getTranslationFromRadius(F)F
    .locals 3
    .param p1, "circleSize"    # F

    .line 425
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    const/high16 v1, 0x3e800000    # 0.25f

    div-float/2addr v0, v1

    .line 427
    .local v0, "translation":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    nop

    :cond_0
    return v1
.end method

.method private initDimens()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 96
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    .line 97
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070208

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    .line 104
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintGrowAmount:I

    .line 106
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 108
    return-void
.end method

.method private initIcons()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updatePreviews()V

    .line 115
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 480
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 481
    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .locals 3

    .line 335
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOnIcon(Landroid/view/View;FF)Z
    .locals 6
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 211
    .local v0, "iconX":F
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 212
    .local v1, "iconY":F
    sub-float v2, p2, v0

    float-to-double v2, v2

    sub-float v4, p3, v1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    .line 213
    .local v2, "distance":D
    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private leftSwipePossible()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private rightSwipePossible()Z
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setTranslation(FZZ)V
    .locals 21
    .param p1, "translation"    # F
    .param p2, "isReset"    # Z
    .param p3, "animateReset"    # Z

    move-object/from16 v14, p0

    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move/from16 v0, p1

    move v2, v0

    goto :goto_0

    :cond_0
    move/from16 v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_0
    move v0, v2

    .line 378
    .end local p1    # "translation":F
    .local v0, "translation":F
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :goto_1
    move v11, v2

    .line 379
    .end local v0    # "translation":F
    .local v11, "translation":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 380
    .local v10, "absTranslation":F
    iget v0, v14, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpl-float v0, v11, v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    .line 407
    :cond_2
    move/from16 v20, v10

    move v9, v11

    move-object v8, v14

    goto/16 :goto_9

    .line 381
    :cond_3
    :goto_2
    cmpl-float v0, v11, v1

    if-lez v0, :cond_4

    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_3

    :cond_4
    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_3
    move-object v9, v0

    .line 382
    .local v9, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    cmpl-float v0, v11, v1

    if-lez v0, :cond_5

    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_4

    :cond_5
    iget-object v0, v14, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_4
    move-object v8, v0

    .line 383
    .local v8, "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v0

    int-to-float v0, v0

    div-float v16, v10, v0

    .line 386
    .local v16, "alpha":F
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, v0, v16

    .line 387
    .local v0, "fadeOutAlpha":F
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 389
    .end local v0    # "fadeOutAlpha":F
    .local v17, "fadeOutAlpha":F
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    move v12, v1

    goto :goto_5

    :cond_6
    move v12, v0

    .line 390
    .local v12, "animateIcons":Z
    :goto_5
    if-eqz p2, :cond_7

    if-nez p3, :cond_7

    move v15, v1

    goto :goto_6

    :cond_7
    move v15, v0

    .line 391
    .local v15, "forceNoCircleAnimation":Z
    :goto_6
    invoke-direct {v14, v10}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getRadiusFromTranslation(F)F

    move-result v18

    .line 392
    .local v18, "radius":F
    if-eqz p2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result v2

    if-eqz v2, :cond_8

    move v13, v1

    goto :goto_7

    :cond_8
    move v13, v0

    .line 393
    .local v13, "slowAnimation":Z
    :goto_7
    if-nez p2, :cond_9

    .line 394
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v0

    mul-float v0, v0, v17

    add-float v3, v16, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v14

    move-object v1, v9

    move/from16 v2, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 400
    move-object v7, v8

    move-object/from16 v19, v9

    move/from16 v20, v10

    move v6, v11

    move-object v5, v14

    goto :goto_8

    .line 397
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v1

    mul-float v1, v1, v17

    const/4 v2, 0x1

    move-object v7, v8

    move-object v8, v14

    .end local v8    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .local v7, "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    move-object/from16 v19, v9

    .end local v9    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .local v19, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    move/from16 v20, v10

    move v10, v0

    .end local v10    # "absTranslation":F
    .local v20, "absTranslation":F
    move v6, v11

    move v11, v1

    .end local v11    # "translation":F
    .local v6, "translation":F
    move-object v5, v14

    move v14, v2

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 400
    :goto_8
    const/4 v2, 0x0

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v0

    mul-float v3, v17, v0

    move-object v0, v5

    move-object v1, v7

    move v4, v12

    move-object v8, v5

    move v5, v13

    move v9, v6

    move/from16 v6, p2

    .end local v6    # "translation":F
    .local v9, "translation":F
    move-object v10, v7

    move v7, v15

    .end local v7    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .local v10, "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 402
    iget-object v1, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v0

    mul-float v3, v17, v0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 405
    iput v9, v8, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    .line 407
    .end local v10    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .end local v12    # "animateIcons":Z
    .end local v13    # "slowAnimation":Z
    .end local v15    # "forceNoCircleAnimation":Z
    .end local v16    # "alpha":F
    .end local v17    # "fadeOutAlpha":F
    .end local v18    # "radius":F
    .end local v19    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_9
    return-void
.end method

.method private startFinishingCircleAnimation(FLjava/lang/Runnable;Z)V
    .locals 1
    .param p1, "velocity"    # F
    .param p2, "mAnimationEndRunnable"    # Ljava/lang/Runnable;
    .param p3, "right"    # Z

    .line 372
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 373
    .local v0, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->finishAnimation(FLjava/lang/Runnable;)V

    .line 374
    return-void
.end method

.method private startHintAnimationPhase1(ZLjava/lang/Runnable;)V
    .locals 4
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .line 247
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 248
    .local v0, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintGrowAmount:I

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 249
    .local v1, "animator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Ljava/lang/Runnable;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 268
    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 269
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 270
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 271
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 272
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    .line 273
    return-void
.end method

.method private startSwiping(Landroid/view/View;)V
    .locals 3
    .param p1, "targetView"    # Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    .line 191
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    .line 192
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    .line 193
    return-void
.end method

.method private startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V
    .locals 3
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 280
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 288
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 290
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 291
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 292
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 293
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 474
    :cond_0
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p2, "circleRadius"    # F
    .param p3, "alpha"    # F
    .param p4, "animate"    # Z
    .param p5, "slowRadiusAnimation"    # Z
    .param p6, "force"    # Z
    .param p7, "forceNoCircleAnimation"    # Z

    .line 446
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p6, :cond_0

    .line 447
    return-void

    .line 449
    :cond_0
    if-eqz p7, :cond_1

    .line 450
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadiusWithoutAnimation(F)V

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual {p1, p2, p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZ)V

    .line 454
    :goto_0
    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 455
    return-void
.end method

.method private updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p2, "alpha"    # F
    .param p3, "animate"    # Z

    .line 458
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getScale(FLcom/android/systemui/statusbar/KeyguardAffordanceView;)F

    move-result v0

    .line 459
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 460
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 461
    invoke-virtual {p1, v0, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZ)V

    .line 462
    return-void
.end method

.method private updateIconsFromTranslation(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 7
    .param p1, "targetView"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 410
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 411
    .local v0, "absTranslation":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 414
    .local v1, "alpha":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    .line 415
    .local v2, "fadeOutAlpha":F
    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 418
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 419
    .local v3, "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 420
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-direct {p0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 421
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v6

    mul-float/2addr v6, v2

    invoke-direct {p0, v4, v6, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 422
    return-void
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 9

    .line 438
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 439
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 440
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 441
    return-void
.end method

.method public isOnAffordanceIcon(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSwipingInProgress()Z
    .locals 1

    .line 521
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    return v0
.end method

.method public launchAffordance(ZZ)V
    .locals 13
    .param p1, "animate"    # Z
    .param p2, "left"    # Z

    move-object v10, p0

    .line 525
    iget-boolean v0, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_0

    .line 527
    return-void

    .line 529
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    :cond_1
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_0
    move-object v11, v0

    .line 530
    .local v11, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    if-eqz p2, :cond_2

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_1
    move-object v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_1

    .line 531
    .local v1, "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_2
    invoke-direct {v10, v11}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startSwiping(Landroid/view/View;)V

    .line 535
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 536
    const/4 v0, 0x0

    .line 539
    .end local p1    # "animate":Z
    .local v0, "animate":Z
    move v12, v0

    goto :goto_3

    .end local v0    # "animate":Z
    .restart local p1    # "animate":Z
    :cond_3
    move v12, p1

    .end local p1    # "animate":Z
    .local v12, "animate":Z
    :goto_3
    const/4 v0, 0x0

    if-eqz v12, :cond_4

    .line 540
    const/4 v2, 0x0

    xor-int/lit8 v3, p2, 0x1

    invoke-direct {v10, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->fling(FZZ)V

    .line 541
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 542
    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    goto :goto_5

    .line 547
    :cond_4
    if-nez p2, :cond_5

    .line 548
    iget-object v2, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleColorToInverse(Z)V

    .line 552
    :cond_5
    iget-object v2, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    xor-int/lit8 v3, p2, 0x1

    iget v4, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-interface {v2, v3, v4, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFF)V

    .line 553
    if-eqz p2, :cond_6

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    goto :goto_4

    .line 554
    :cond_6
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getMaxTranslationDistance()F

    move-result v0

    :goto_4
    iput v0, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    .line 555
    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 556
    move-object v3, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZZZ)V

    .line 557
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->instantFinishAnimation()V

    .line 558
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 559
    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 561
    :goto_5
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 502
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    .line 503
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 504
    return-void
.end method

.method public onRtlPropertiesChanged()V
    .locals 0

    .line 507
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    .line 508
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 124
    .local v0, "action":I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 125
    return v2

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 128
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 130
    .local v3, "x":F
    const/4 v4, 0x0

    .line 131
    .local v4, "isUp":Z
    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eq v0, v5, :cond_8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 156
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 157
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float v5, v3, v5

    .line 158
    .local v5, "xDist":F
    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float v7, v1, v7

    .line 159
    .local v7, "yDist":F
    float-to-double v8, v5

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 160
    .local v8, "distance":F
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    if-nez v9, :cond_1

    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_1

    .line 161
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    .line 163
    :cond_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v9, :cond_9

    .line 164
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v11, 0x0

    if-ne v9, v10, :cond_2

    .line 165
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    sub-float/2addr v9, v8

    .line 166
    .end local v8    # "distance":F
    .local v9, "distance":F
    invoke-static {v11, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .end local v9    # "distance":F
    .restart local v8    # "distance":F
    :goto_0
    goto :goto_1

    .line 168
    :cond_2
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    add-float/2addr v9, v8

    .line 169
    .end local v8    # "distance":F
    .restart local v9    # "distance":F
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_0

    .line 171
    .end local v9    # "distance":F
    .restart local v8    # "distance":F
    :goto_1
    invoke-direct {p0, v8, v2, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    goto :goto_5

    .line 176
    .end local v5    # "xDist":F
    .end local v7    # "yDist":F
    .end local v8    # "distance":F
    :pswitch_1
    const/4 v4, 0x1

    .line 178
    :pswitch_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne v5, v7, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    move v5, v2

    .line 179
    .local v5, "hintOnTheRight":Z
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 180
    if-nez v4, :cond_4

    move v2, v6

    nop

    :cond_4
    invoke-direct {p0, v2, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(ZFF)V

    .line 181
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    if-nez v2, :cond_9

    if-eqz v4, :cond_9

    .line 182
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v2, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onIconClicked(Z)V

    .end local v5    # "hintOnTheRight":Z
    goto :goto_5

    .line 133
    :pswitch_3
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getIconAtPosition(FF)Landroid/view/View;

    move-result-object v5

    .line 134
    .local v5, "targetView":Landroid/view/View;
    if-eqz v5, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eq v7, v5, :cond_5

    goto :goto_4

    .line 138
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTargetedView:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    goto :goto_3

    .line 141
    :cond_6
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlopExeeded:Z

    .line 143
    :goto_3
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startSwiping(Landroid/view/View;)V

    .line 144
    iput v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    .line 145
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    .line 146
    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    iput v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initVelocityTracker()V

    .line 148
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 149
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 150
    goto :goto_5

    .line 135
    :cond_7
    :goto_4
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 136
    return v2

    .line 152
    .end local v5    # "targetView":Landroid/view/View;
    :cond_8
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 153
    invoke-direct {p0, v6, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(ZFF)V

    .line 154
    nop

    .line 186
    :cond_9
    :goto_5
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 512
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    .line 513
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    .line 514
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    .line 518
    :cond_0
    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    .line 243
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;)V

    .line 244
    return-void
.end method

.method public updatePreviews()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 120
    return-void
.end method
