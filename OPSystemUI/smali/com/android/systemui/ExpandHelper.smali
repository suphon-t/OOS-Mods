.class public Lcom/android/systemui/ExpandHelper;
.super Ljava/lang/Object;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ExpandHelper$ViewScaler;,
        Lcom/android/systemui/ExpandHelper$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentHeight:F

.field private mEnabled:Z

.field private mEventSource:Landroid/view/View;

.field private mExpanding:Z

.field private mExpansionStyle:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mGravity:I

.field private mHasPopped:Z

.field private mInitialTouchFocusY:F

.field private mInitialTouchSpan:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLargeSize:I

.field private mLastFocusY:F

.field private mLastMotionY:F

.field private mLastSpanY:F

.field private mMaximumStretch:F

.field private mNaturalHeight:F

.field private mOldHeight:F

.field private mOnlyMovements:Z

.field private mPullGestureMinXSpan:F

.field private mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

.field private mSGD:Landroid/view/ScaleGestureDetector;

.field private mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

.field private mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

.field private mSmallSize:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchingForPull:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/systemui/ExpandHelper$Callback;
    .param p3, "small"    # I
    .param p4, "large"    # I

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 111
    new-instance v2, Lcom/android/systemui/ExpandHelper$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/ExpandHelper$1;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 168
    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 169
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mMaximumStretch:F

    .line 170
    iput p4, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    .line 171
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 173
    new-instance v2, Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-direct {v2, p0}, Lcom/android/systemui/ExpandHelper$ViewScaler;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 174
    const/16 v2, 0x30

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 175
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const-string v3, "height"

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v4, v1, v0

    invoke-static {v2, v3, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 176
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070528

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    .line 178
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 179
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 181
    new-instance v2, Landroid/view/ScaleGestureDetector;

    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v2, p1, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 183
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, v0}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 185
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, p1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ExpandHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;

    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/ExpandHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;

    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/ExpandHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;
    .param p1, "x1"    # F

    .line 40
    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$ViewScaler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/ExpandHelper;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private cancel(Z)V
    .locals 3
    .param p1, "allowAnimation"    # Z

    .line 653
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZFZ)V

    .line 654
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    .line 657
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 659
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 661
    return-void
.end method

.method private clamp(F)F
    .locals 2
    .param p1, "target"    # F

    .line 207
    move v0, p1

    .line 208
    .local v0, "out":F
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v0, v1

    .line 209
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    move v0, v1

    .line 210
    return v0
.end method

.method private clearView()V
    .locals 1

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 635
    return-void
.end method

.method private findView(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 215
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 217
    .local v0, "location":[I
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 218
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    .line 219
    const/4 v1, 0x1

    aget v1, v0, v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    .line 220
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 221
    .local v0, "v":Lcom/android/systemui/statusbar/ExpandableView;
    goto :goto_0

    .line 222
    .end local v0    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    .line 224
    .restart local v0    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :goto_0
    return-object v0
.end method

.method private finishExpanding(ZFZ)V
    .locals 12
    .param p1, "forceAbort"    # Z
    .param p2, "velocity"    # F
    .param p3, "allowAnimation"    # Z

    .line 561
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v0, :cond_0

    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    .line 566
    .local v0, "currentHeight":F
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 568
    .local v1, "wasClosed":Z
    :goto_0
    const/4 v4, 0x0

    if-nez p1, :cond_7

    .line 569
    if-eqz v1, :cond_3

    .line 570
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2

    cmpl-float v5, p2, v4

    if-ltz v5, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v3

    .local v5, "nowExpanded":Z
    :goto_1
    goto :goto_3

    .line 572
    .end local v5    # "nowExpanded":Z
    :cond_3
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    cmpl-float v5, v0, v5

    if-gez v5, :cond_5

    cmpl-float v5, p2, v4

    if-lez v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v2

    .line 574
    .restart local v5    # "nowExpanded":Z
    :goto_3
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    move v6, v2

    goto :goto_4

    :cond_6
    move v6, v3

    :goto_4
    or-int/2addr v5, v6

    goto :goto_5

    .line 576
    .end local v5    # "nowExpanded":Z
    :cond_7
    if-nez v1, :cond_8

    move v5, v2

    goto :goto_5

    :cond_8
    move v5, v3

    .line 578
    .restart local v5    # "nowExpanded":Z
    :goto_5
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 579
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 581
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v6, v3}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 582
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v6}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight()I

    move-result v6

    .line 583
    .local v6, "naturalHeight":I
    if-eqz v5, :cond_a

    int-to-float v7, v6

    goto :goto_6

    :cond_a
    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v7, v7

    .line 584
    .local v7, "targetHeight":F
    :goto_6
    cmpl-float v8, v7, v0

    if-eqz v8, :cond_d

    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    if-eqz v8, :cond_d

    if-eqz p3, :cond_d

    .line 585
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-array v9, v2, [F

    aput v7, v9, v3

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 586
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    .line 587
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 588
    .local v8, "scaledView":Landroid/view/View;
    move v9, v5

    .line 589
    .local v9, "expand":Z
    iget-object v10, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-instance v11, Lcom/android/systemui/ExpandHelper$2;

    invoke-direct {v11, p0, v8, v9}, Lcom/android/systemui/ExpandHelper$2;-><init>(Lcom/android/systemui/ExpandHelper;Landroid/view/View;Z)V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 611
    cmpl-float v10, p2, v4

    if-ltz v10, :cond_b

    goto :goto_7

    :cond_b
    move v2, v3

    :goto_7
    if-ne v5, v2, :cond_c

    move v4, p2

    nop

    :cond_c
    move p2, v4

    .line 612
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v4, v0, v7, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 613
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 614
    .end local v8    # "scaledView":Landroid/view/View;
    .end local v9    # "expand":Z
    goto :goto_8

    .line 615
    :cond_d
    cmpl-float v2, v7, v0

    if-eqz v2, :cond_e

    .line 616
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v2, v7}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 618
    :cond_e
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v2, v4, v5}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 619
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v2, v4, v3}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 620
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 623
    :goto_8
    iput-boolean v3, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 624
    iput v3, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 631
    return-void
.end method

.method private getCurrentVelocity()F
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0

    .line 385
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isEnabled()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    return v0
.end method

.method private isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z
    .locals 2
    .param p1, "underFocus"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 398
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 399
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->areChildrenExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 398
    :goto_0
    return v0
.end method

.method private isInside(Landroid/view/View;FF)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 230
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 232
    return v0

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 235
    new-array v1, v2, [I

    .line 236
    .local v1, "location":[I
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 237
    aget v4, v1, v0

    int-to-float v4, v4

    add-float/2addr p2, v4

    .line 238
    aget v4, v1, v3

    int-to-float v4, v4

    add-float/2addr p3, v4

    .line 241
    .end local v1    # "location":[I
    :cond_1
    new-array v1, v2, [I

    .line 242
    .restart local v1    # "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 243
    aget v2, v1, v0

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 244
    aget v2, v1, v3

    int-to-float v2, v2

    sub-float/2addr p3, v2

    .line 247
    const/4 v2, 0x0

    cmpl-float v4, p2, v2

    if-lez v4, :cond_4

    cmpl-float v2, p3, v2

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p3, v4

    if-gez v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_1
    and-int/2addr v2, v4

    if-eqz v2, :cond_4

    move v0, v3

    nop

    .line 248
    .local v0, "inside":Z
    :cond_4
    return v0
.end method

.method private maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 373
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 378
    :cond_1
    return-void
.end method

.method private trackVelocity(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 352
    .local v0, "action":I
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 363
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 366
    goto :goto_1

    .line 354
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_3

    .line 355
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 357
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 359
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 360
    nop

    .line 370
    :goto_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 649
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->cancel(Z)V

    .line 650
    return-void
.end method

.method public cancelImmediately()V
    .locals 1

    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/ExpandHelper;->cancel(Z)V

    .line 643
    return-void
.end method

.method finishExpanding(ZF)V
    .locals 1
    .param p1, "forceAbort"    # Z
    .param p2, "velocity"    # F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 551
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZFZ)V

    .line 552
    return-void
.end method

.method getScaleAnimation()Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 266
    return v1

    .line 268
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 276
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 277
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    float-to-int v2, v2

    .line 278
    .local v2, "x":I
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    float-to-int v3, v3

    .line 280
    .local v3, "y":I
    int-to-float v4, v3

    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 281
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 282
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 283
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 286
    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 288
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 289
    return v5

    .line 291
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_2

    .line 293
    return v5

    .line 295
    :cond_2
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    .line 297
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v6

    .line 298
    .local v6, "xspan":F
    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 299
    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    iget-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v7, :cond_3

    .line 302
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p0, v7, v4}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    .line 303
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 305
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v4, :cond_8

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float/2addr v4, v7

    .line 307
    .local v4, "yDiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    sub-float/2addr v7, v8

    .line 308
    .local v7, "xDiff":F
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v4, v8

    if-lez v8, :cond_4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v4, v8

    if-lez v8, :cond_4

    .line 310
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 311
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v8}, Lcom/android/systemui/ExpandHelper;->isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 312
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p0, v8, v5}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 315
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 319
    .end local v4    # "yDiff":F
    .end local v7    # "xDiff":F
    :cond_4
    goto :goto_2

    .line 339
    .end local v6    # "xspan":F
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    .line 340
    move v1, v5

    goto :goto_0

    .line 339
    :cond_5
    nop

    .line 340
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->getCurrentVelocity()F

    move-result v4

    .line 339
    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto :goto_2

    .line 324
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    .line 325
    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->getHostView()Landroid/view/View;

    move-result-object v4

    int-to-float v6, v2

    int-to-float v7, v3

    invoke-direct {p0, v4, v6, v7}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    .line 326
    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->isScrolledToTop()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    move v5, v1

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 327
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 328
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v4, v5}, Lcom/android/systemui/ExpandHelper$Callback;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 329
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 330
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 332
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    .line 334
    nop

    .line 344
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 345
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 346
    iget-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v0, :cond_0

    .line 406
    return v1

    .line 408
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 416
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 417
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    float-to-int v2, v2

    .line 418
    .local v2, "x":I
    iget-object v3, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    float-to-int v3, v3

    .line 420
    .local v3, "y":I
    iget-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    if-eqz v4, :cond_1

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 422
    return v1

    .line 424
    :cond_1
    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 493
    :pswitch_1
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 494
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    sub-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 495
    goto/16 :goto_4

    .line 433
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v5, :cond_2

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float/2addr v5, v6

    .line 435
    .local v5, "yDiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    sub-float/2addr v6, v7

    .line 436
    .local v6, "xDiff":F
    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_2

    .line 438
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 439
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v7}, Lcom/android/systemui/ExpandHelper;->isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 440
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p0, v7, v4}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 442
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 443
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 448
    .end local v5    # "yDiff":F
    .end local v6    # "xDiff":F
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_8

    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    add-float/2addr v5, v6

    .line 450
    .local v5, "rawHeight":F
    invoke-direct {p0, v5}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v6

    .line 451
    .local v6, "newHeight":F
    const/4 v7, 0x0

    .line 452
    .local v7, "isFinished":Z
    const/4 v8, 0x0

    .line 453
    .local v8, "expanded":Z
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v9, v5, v9

    if-lez v9, :cond_3

    .line 454
    const/4 v7, 0x1

    .line 455
    const/4 v8, 0x1

    .line 457
    :cond_3
    iget v9, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v9, v9

    cmpg-float v9, v5, v9

    if-gez v9, :cond_4

    .line 458
    const/4 v7, 0x1

    .line 459
    const/4 v8, 0x0

    .line 462
    :cond_4
    iget-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-nez v9, :cond_6

    .line 463
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v9, :cond_5

    .line 464
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v9, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 466
    :cond_5
    iput-boolean v4, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 469
    :cond_6
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v9, v6}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 471
    if-eqz v7, :cond_7

    .line 472
    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v9, v1}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    goto :goto_0

    .line 474
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, v4}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 476
    :goto_0
    return v4

    .line 479
    .end local v5    # "rawHeight":F
    .end local v6    # "newHeight":F
    .end local v7    # "isFinished":Z
    .end local v8    # "expanded":Z
    :cond_8
    iget-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v5, :cond_c

    .line 482
    invoke-virtual {p0}, Lcom/android/systemui/ExpandHelper;->updateExpansion()V

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 484
    return v4

    .line 500
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9

    goto :goto_1

    .line 501
    :cond_9
    move v5, v1

    goto :goto_2

    .line 500
    :cond_a
    :goto_1
    nop

    .line 501
    move v5, v4

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->getCurrentVelocity()F

    move-result v6

    .line 500
    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 502
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto :goto_4

    .line 426
    :pswitch_4
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    .line 427
    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->getHostView()Landroid/view/View;

    move-result-object v5

    int-to-float v6, v2

    int-to-float v7, v3

    invoke-direct {p0, v5, v6, v7}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v4

    goto :goto_3

    :cond_b
    move v5, v1

    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 428
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchX:F

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 431
    nop

    .line 505
    :cond_c
    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 506
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 507
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v5, :cond_d

    move v1, v4

    nop

    :cond_d
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onlyObserveMovements(Z)V
    .locals 0
    .param p1, "onlyMovements"    # Z

    .line 672
    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    .line 673
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 390
    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 391
    return-void
.end method

.method public setEventSource(Landroid/view/View;)V
    .locals 0
    .param p1, "eventSource"    # Landroid/view/View;

    .line 252
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    .line 253
    return-void
.end method

.method public setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    .line 260
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    .line 261
    return-void
.end method

.method startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z
    .locals 3
    .param p1, "v"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "expandType"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 515
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_0

    .line 516
    const/4 v0, 0x0

    return v0

    .line 518
    :cond_0
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 519
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-ne p1, v0, :cond_1

    .line 520
    return v1

    .line 522
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 523
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 525
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 526
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 527
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 528
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v0, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 529
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/ExpandHelper$Callback;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v0

    .line 530
    .local v0, "canBeExpanded":Z
    if-eqz v0, :cond_2

    .line 532
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 533
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    goto :goto_0

    .line 536
    :cond_2
    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v2, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 540
    :goto_0
    return v1
.end method

.method updateExpansion()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    sub-float/2addr v0, v1

    .line 193
    .local v0, "span":F
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 194
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    sub-float/2addr v2, v3

    .line 195
    .local v2, "drag":F
    mul-float/2addr v2, v1

    .line 196
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    const/16 v4, 0x50

    if-ne v3, v4, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    mul-float/2addr v2, v3

    .line 197
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 198
    .local v3, "pull":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v0

    div-float/2addr v4, v3

    add-float/2addr v1, v4

    .line 199
    .local v1, "hand":F
    iget v4, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float/2addr v4, v1

    .line 200
    .local v4, "target":F
    invoke-direct {p0, v4}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v5

    .line 201
    .local v5, "newHeight":F
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v6, v5}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 202
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 203
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 204
    return-void
.end method
