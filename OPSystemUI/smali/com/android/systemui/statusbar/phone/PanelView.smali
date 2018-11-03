.class public abstract Lcom/android/systemui/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private MinInCallVelocityAdjustment:I

.field private mAnimateAfterExpanding:Z

.field private mAnimatingOnDown:Z

.field mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mCallIdle:Z

.field private mClosing:Z

.field private mCollapsedAndHeadsUpOnDown:Z

.field private mDownTime:J

.field private mExpandLatencyTracking:Z

.field private mExpandedFraction:F

.field protected mExpandedHeight:F

.field protected mExpanding:Z

.field private mExpansionListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFixedDuration:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mFlingCollapseRunnable:Ljava/lang/Runnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureWaitForTouchSlop:Z

.field private mHasLayoutedSinceDown:Z

.field protected mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field private mHighlightHintVisualWidth:I

.field protected mHighlightHintVisualX:I

.field private mHightHintIntercepting:Z

.field protected mHintAnimationRunning:Z

.field private mHintDistance:F

.field private mIgnoreXTouchSlop:Z

.field private mInitialOffsetOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInstantExpanding:Z

.field private mJustPeeked:Z

.field protected mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field protected mLaunchingNotification:Z

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mMinExpandHeight:F

.field private mMotionAborted:Z

.field private mNextCollapseSpeedUpFactor:F

.field private mNotificationsDragEnabled:Z

.field private mOrientation:I

.field private mOverExpandedBeforeFling:Z

.field private mPanelClosedOnDown:Z

.field private mPanelUpdateWhenAnimatorEnds:Z

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mPeekTouching:Z

.field private mPerf:Landroid/util/BoostFramework;

.field protected final mPostCollapseRunnable:Ljava/lang/Runnable;

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTouchAboveFalsingThreshold:Z

.field private mTouchDisabled:Z

.field protected mTouchSlop:I

.field private mTouchSlopExceeded:Z

.field private mTouchStartedInEmptyArea:Z

.field protected mTracking:Z

.field private mTrackingPointer:I

.field private mUnlockFalsingThreshold:I

.field private mUpdateFlingOnLayout:Z

.field private mUpdateFlingVelocity:F

.field private mUpwardsWhenTresholdReached:Z

.field private mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

.field private mVibrateOnOpening:Z

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field private mViewName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 224
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFixedDuration:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 90
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPerf:Landroid/util/BoostFramework;

    .line 153
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    .line 1108
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    .line 1353
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    .line 1503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCallIdle:Z

    .line 1504
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->MinInCallVelocityAdjustment:I

    .line 225
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, p1, v1, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 227
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, p1, v2, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 229
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3f19999a    # 0.6f

    const v8, 0x3f570a3d    # 0.84f

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 232
    new-instance v0, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 233
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 234
    nop

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    .line 236
    const-class v0, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVibrateOnOpening:Z

    .line 240
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPerf:Landroid/util/BoostFramework;

    .line 243
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 247
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOrientation:I

    .line 249
    return-void
.end method

.method private abortAnimations()V
    .locals 1

    .line 1196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1200
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/util/BoostFramework;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPerf:Landroid/util/BoostFramework;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimateAfterExpanding:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createHeightAnimator(F)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "targetHeight"    # F

    .line 1314
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1315
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1321
    return-object v0
.end method

.method private endClosing()V
    .locals 1

    .line 743
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    .line 744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 745
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onClosingFinished()V

    .line 747
    :cond_0
    return-void
.end method

.method private endMotionEvent(Landroid/view/MotionEvent;FFZ)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "forceCancel"    # Z

    .line 527
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 528
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    if-nez v0, :cond_4

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v0, p2, v0

    .line 529
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v0, p3, v0

    .line 530
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_4

    .line 531
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_4

    if-eqz p4, :cond_1

    goto/16 :goto_1

    .line 575
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 576
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardFadingAway()Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    .line 578
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    .line 579
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 581
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    sub-long/2addr v0, v4

    .line 582
    .local v0, "timePassed":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 584
    const-wide/16 v4, 0x168

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getPeekHeight()F

    move-result v6

    invoke-direct {p0, v4, v5, v6, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation(JFZ)V

    goto :goto_0

    .line 587
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 589
    .end local v0    # "timePassed":J
    :goto_0
    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_c

    .line 590
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onEmptySpaceClick(F)Z

    move-result v0

    .line 591
    .local v0, "expands":Z
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 591
    .end local v0    # "expands":Z
    goto/16 :goto_4

    .line 533
    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 534
    .local v0, "vel":F
    const/4 v4, 0x0

    .line 535
    .local v4, "vectorVel":F
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v5, :cond_5

    .line 536
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    const/16 v6, 0x3e8

    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->computeCurrentVelocity(I)V

    .line 537
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v0

    .line 538
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    .line 539
    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getXVelocity()F

    move-result v5

    float-to-double v5, v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v7

    float-to-double v7, v7

    .line 538
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v4, v5

    .line 543
    :cond_5
    invoke-virtual {p0, v0, v4, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FFFF)Z

    move-result v5

    if-nez v5, :cond_6

    .line 544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eq v5, v1, :cond_6

    if-eqz p4, :cond_7

    .line 547
    :cond_6
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getFingerprintUnlockControl()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v1

    const/4 v5, 0x5

    if-eq v1, v5, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    .line 549
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v3

    goto :goto_2

    :cond_7
    move v1, v2

    .line 551
    .local v1, "expand":Z
    :goto_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 552
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 553
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v7

    .line 551
    invoke-static {v1, v5, v6, v7}, Lcom/android/systemui/doze/DozeLog;->traceFling(ZZZZ)V

    .line 555
    if-nez v1, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v5

    if-ne v5, v3, :cond_8

    .line 556
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v5

    .line 557
    .local v5, "displayDensity":F
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v6, p3, v6

    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    .line 558
    .local v6, "heightDp":I
    div-float v7, v0, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v7, v7

    .line 559
    .local v7, "velocityDp":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v9, 0xba

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 563
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isSecure()Z

    move-result v8

    if-nez v8, :cond_8

    .line 564
    const-string v8, "lock_unlock_success"

    const-string/jumbo v9, "swipe"

    const-string v10, "1"

    invoke-static {v8, v9, v10}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .end local v5    # "displayDensity":F
    .end local v6    # "heightDp":I
    .end local v7    # "velocityDp":I
    :cond_8
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->isFalseTouch(FF)Z

    move-result v5

    invoke-virtual {p0, v0, v1, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZZ)V

    .line 569
    sget-boolean v5, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_9

    sget-object v5, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isFalseTouch:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->isFalseTouch(FF)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", expand:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 571
    if-eqz v1, :cond_a

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    if-nez v5, :cond_a

    goto :goto_3

    :cond_a
    move v3, v2

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 572
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    if-eqz v3, :cond_b

    .line 573
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    .line 575
    .end local v0    # "vel":F
    .end local v1    # "expand":Z
    .end local v4    # "vectorVel":F
    :cond_b
    nop

    .line 594
    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v0, :cond_d

    .line 595
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    .line 598
    :cond_d
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    .line 599
    return-void
.end method

.method private getFalsingThreshold()I
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 611
    .local v0, "factor":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 753
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerFactory;->obtain(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    .line 754
    return-void
.end method

.method private isDirectionUpwards(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 502
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v0, p1, v0

    .line 503
    .local v0, "xDiff":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v1, p2, v1

    .line 504
    .local v1, "yDiff":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    .line 505
    return v3

    .line 507
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    return v3
.end method

.method private isFalseTouch(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 817
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x42

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 818
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isFalsingThresholdNeeded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 819
    return v2

    .line 821
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    return v0

    .line 824
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    if-nez v1, :cond_2

    .line 825
    return v0

    .line 830
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpwardsWhenTresholdReached:Z

    if-eqz v1, :cond_3

    .line 831
    return v2

    .line 833
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->isDirectionUpwards(FF)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static synthetic lambda$setExpandedHeightInternal$0(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 2

    .line 1001
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    return-void
.end method

.method public static synthetic lambda$startFacelockFailAnimation$3(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1416
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1417
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1418
    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 1419
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1420
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1416
    return-void
.end method

.method public static synthetic lambda$startUnlockHintAnimation$1(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1

    .line 1217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1218
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onUnlockHintFinished()V

    .line 1219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    .line 1220
    return-void
.end method

.method public static synthetic lambda$startUnlockHintAnimationPhase1$2(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1277
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1278
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1279
    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 1280
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1281
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1277
    return-void
.end method

.method private notifyExpandingStarted()V
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 179
    :cond_0
    return-void
.end method

.method private runPeekAnimation(JFZ)V
    .locals 5
    .param p1, "duration"    # J
    .param p3, "peekHeight"    # F
    .param p4, "collapseWhenFinished"    # Z

    .line 190
    iput p3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 193
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 198
    :cond_1
    const-string v0, "expandedHeight"

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 199
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PanelView$1;

    invoke-direct {v2, p0, p4}, Lcom/android/systemui/statusbar/phone/PanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 220
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 221
    return-void
.end method

.method private setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 1287
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1288
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    if-eqz v0, :cond_0

    .line 1289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    .line 1290
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 1292
    :cond_0
    return-void
.end method

.method private shouldHightHintIntercept(FF)Z
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v0

    .line 1474
    .local v0, "header":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1476
    .local v1, "validY":Z
    :goto_0
    const-class v4, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->showOvalLayout()Z

    move-result v4

    if-eqz v4, :cond_8

    const-class v4, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1477
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isLayoutRtl()Z

    move-result v4

    .line 1478
    .local v4, "isRTL":Z
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOrientation:I

    if-ne v5, v3, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    .line 1479
    .local v5, "portrait":Z
    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHighlightHintVisualWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    .line 1480
    .local v6, "enlarge":I
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHighlightHintVisualX:I

    sub-int/2addr v8, v6

    int-to-float v8, v8

    .line 1481
    .local v8, "landStartX":F
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_2

    .line 1482
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v8

    .line 1484
    :cond_2
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHighlightHintVisualX:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHighlightHintVisualWidth:I

    add-int/2addr v9, v10

    add-int/2addr v9, v6

    .line 1485
    .local v9, "landEndX":I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v10

    int-to-float v10, v10

    div-float v7, v10, v7

    .line 1486
    .local v7, "midX":F
    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    move v10, v7

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v10

    goto :goto_2

    :cond_4
    move v10, v8

    .line 1487
    .local v10, "startX":F
    :goto_2
    if-eqz v5, :cond_6

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v11

    int-to-float v11, v11

    goto :goto_3

    :cond_5
    move v11, v7

    goto :goto_3

    :cond_6
    int-to-float v11, v9

    .line 1488
    .local v11, "endX":F
    :goto_3
    cmpl-float v12, p1, v10

    if-ltz v12, :cond_7

    cmpg-float v12, p1, v11

    if-gtz v12, :cond_7

    move v12, v3

    goto :goto_4

    :cond_7
    move v12, v2

    .end local v4    # "isRTL":Z
    .end local v5    # "portrait":Z
    .end local v6    # "enlarge":I
    .end local v7    # "midX":F
    .end local v8    # "landStartX":F
    .end local v9    # "landEndX":I
    .end local v10    # "startX":F
    .end local v11    # "endX":F
    :goto_4
    move v4, v12

    .line 1489
    .local v4, "validX":Z
    goto :goto_5

    .line 1490
    .end local v4    # "validX":Z
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v4

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_9

    move v4, v3

    goto :goto_5

    :cond_9
    move v4, v2

    .line 1493
    .restart local v4    # "validX":Z
    :goto_5
    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    move v2, v3

    nop

    :cond_a
    return v2
.end method

.method private startOpening(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 475
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOpeningHeight()F

    move-result v0

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation(JFZ)V

    .line 477
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 478
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVibrateOnOpening:Z

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayWidth()F

    move-result v0

    .line 486
    .local v0, "width":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayHeight()F

    move-result v1

    .line 487
    .local v1, "height":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getRotation()I

    move-result v2

    .line 489
    .local v2, "rot":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v4, 0x530

    .line 490
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    div-float/2addr v5, v0

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 491
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    div-float/2addr v7, v1

    mul-float/2addr v7, v6

    float-to-int v6, v7

    .line 489
    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->writeAtFractionalPosition(IIII)V

    .line 493
    return-void
.end method

.method private startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .line 1241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1242
    .local v0, "target":F
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1243
    .local v1, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1244
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1245
    new-instance v4, Lcom/android/systemui/statusbar/phone/PanelView$5;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1263
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1264
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 1266
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1267
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1268
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 1269
    .local v4, "viewsToAnimate":[Landroid/view/View;
    array-length v5, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 1270
    .local v7, "v":Landroid/view/View;
    if-nez v7, :cond_0

    .line 1271
    goto :goto_1

    .line 1273
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    neg-float v9, v9

    .line 1274
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1275
    invoke-virtual {v8, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1276
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NxwxpLj3ZElyZw-bMmniBqBlhdY;

    invoke-direct {v9, p0, v7}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NxwxpLj3ZElyZw-bMmniBqBlhdY;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/View;)V

    .line 1277
    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 1282
    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1269
    .end local v7    # "v":Landroid/view/View;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1284
    :cond_1
    return-void
.end method

.method private startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .line 1298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1299
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1300
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1301
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1309
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1310
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 1311
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 269
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 270
    .local v1, "deltaY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 271
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->addMovement(Landroid/view/MotionEvent;)V

    .line 272
    :cond_0
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 273
    return-void
.end method


# virtual methods
.method public canPanelBeCollapsed()Z
    .locals 1

    .line 1105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected cancelHeightAnimator()V
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 739
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    .line 740
    return-void
.end method

.method public cancelPeek()V
    .locals 2

    .line 1117
    const/4 v0, 0x0

    .line 1118
    .local v0, "cancelled":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 1119
    const/4 v0, 0x1

    .line 1120
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1123
    :cond_0
    if-eqz v0, :cond_1

    .line 1126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 1128
    :cond_1
    return-void
.end method

.method public collapse(ZF)V
    .locals 3
    .param p1, "delayed"    # Z
    .param p2, "speedUpFactor"    # F

    .line 1089
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->canPanelBeCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1091
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 1095
    if-eqz p1, :cond_0

    .line 1096
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNextCollapseSpeedUpFactor:F

    .line 1097
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x78

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1099
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    .line 1102
    :cond_1
    :goto_0
    return-void
.end method

.method public collapseWithDuration(I)V
    .locals 2
    .param p1, "animationDuration"    # I

    .line 1404
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFixedDuration:I

    .line 1405
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->collapse(ZF)V

    .line 1406
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFixedDuration:I

    .line 1407
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1365
    const-string v0, "[PanelView(%s): expandedHeight=%f maxPanelHeight=%d closing=%s tracking=%s justPeeked=%s peekAnim=%s%s timeAnim=%s%s touchDisabled=%s]"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    .line 1368
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1371
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v2, :cond_0

    const-string v2, "T"

    goto :goto_0

    :cond_0
    const-string v2, "f"

    :goto_0
    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    .line 1372
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v3, :cond_1

    const-string v3, "T"

    goto :goto_1

    :cond_1
    const-string v3, "f"

    :goto_1
    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 1373
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v3, :cond_2

    const-string v3, "T"

    goto :goto_2

    :cond_2
    const-string v3, "f"

    :goto_2
    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 1374
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, " (started)"

    goto :goto_3

    :cond_3
    const-string v3, ""

    :goto_3
    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 1375
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, " (started)"

    goto :goto_4

    :cond_4
    const-string v3, ""

    :goto_4
    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 1376
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz v3, :cond_5

    const-string v3, "T"

    goto :goto_5

    :cond_5
    const-string v3, "f"

    :goto_5
    aput-object v3, v1, v2

    .line 1365
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1378
    return-void
.end method

.method public expand(ZI)V
    .locals 3
    .param p1, "animate"    # Z
    .param p2, "velocity"    # I

    .line 1133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    return-void

    .line 1136
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expand, velocity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    .line 1139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimateAfterExpanding:Z

    .line 1140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 1141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 1142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1143
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v1, :cond_1

    .line 1144
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 1146
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_2

    .line 1147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1149
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 1153
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$4;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/phone/PanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1179
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestLayout()V

    .line 1180
    return-void
.end method

.method protected fling(FZ)V
    .locals 2
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .line 837
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    .line 838
    return-void
.end method

.method protected fling(FZFZ)V
    .locals 7
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "collapseSpeedUpFactor"    # F
    .param p4, "expandBecauseOfFalsing"    # Z

    .line 846
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 847
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 848
    .local v4, "target":F
    :goto_1
    if-nez p2, :cond_1

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 851
    :cond_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V

    .line 852
    return-void
.end method

.method protected fling(FZZ)V
    .locals 1
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "expandBecauseOfFalsing"    # Z

    .line 841
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZFZ)V

    .line 842
    return-void
.end method

.method protected flingExpands(FFFF)Z
    .locals 5
    .param p1, "vel"    # F
    .param p2, "vectorVel"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 787
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelView;->isFalseTouch(FF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 788
    return v1

    .line 792
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCallIdle:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    cmpl-float v0, p1, v2

    if-lez v0, :cond_4

    .line 793
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flingExpands, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->MinInCallVelocityAdjustment:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 795
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    const v2, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 797
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    const v2, 0x3ecccccd    # 0.4f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    .line 802
    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    .line 803
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    return v1

    .line 805
    :cond_6
    cmpl-float v0, p1, v2

    if-lez v0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    return v1
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 10
    .param p1, "vel"    # F
    .param p2, "expand"    # Z
    .param p3, "target"    # F
    .param p4, "collapseSpeedUpFactor"    # F
    .param p5, "expandBecauseOfFalsing"    # Z

    .line 859
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->fullyExpandedClearAllVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 860
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isClearAllVisible()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 862
    .local v2, "clearAllExpandHack":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 863
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float p3, v3

    .line 865
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v3, p3, v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v3

    const/4 v9, 0x0

    cmpl-float v3, v3, v9

    if-lez v3, :cond_2

    if-eqz p2, :cond_2

    goto/16 :goto_3

    .line 869
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v3

    cmpl-float v3, v3, v9

    if-lez v3, :cond_3

    move v0, v1

    nop

    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    .line 870
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 871
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const/4 v1, -0x1

    if-eqz p2, :cond_5

    .line 872
    if-eqz p5, :cond_4

    cmpg-float v3, p1, v9

    if-gez v3, :cond_4

    .line 873
    const/4 p1, 0x0

    .line 875
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v4

    int-to-float v8, v4

    move-object v4, v0

    move v6, p3

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 876
    cmpl-float v3, p1, v9

    if-nez v3, :cond_9

    .line 877
    const-wide/16 v3, 0x15e

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_2

    .line 880
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldUseDismissingAnimation()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 881
    cmpl-float v3, p1, v9

    if-nez v3, :cond_6

    .line 882
    sget-object v3, Lcom/android/systemui/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 883
    const/high16 v3, 0x43480000    # 200.0f

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-long v3, v3

    .line 884
    .local v3, "duration":J
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 885
    .end local v3    # "duration":J
    goto :goto_1

    .line 886
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsDismissing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 887
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v4

    int-to-float v8, v4

    .line 886
    move-object v4, v0

    move v6, p3

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    goto :goto_1

    .line 890
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtilsClosing:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 891
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v4

    int-to-float v8, v4

    move-object v4, v0

    move v6, p3

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    .line 895
    :goto_1
    cmpl-float v3, p1, v9

    if-nez v3, :cond_8

    .line 896
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, p4

    float-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 898
    :cond_8
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFixedDuration:I

    if-eq v3, v1, :cond_9

    .line 899
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFixedDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 902
    :cond_9
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPerf:Landroid/util/BoostFramework;

    if-eqz v3, :cond_a

    .line 903
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 904
    .local v3, "currentPackage":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPerf:Landroid/util/BoostFramework;

    const/16 v5, 0x1080

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 906
    .end local v3    # "currentPackage":Ljava/lang/String;
    :cond_a
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$2;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/PanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 932
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 933
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 934
    return-void

    .line 866
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 867
    return-void
.end method

.method protected abstract fullyExpandedClearAllVisible()Z
.end method

.method protected abstract getClearAllHeight()I
.end method

.method protected getCurrentExpandVelocity()F
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-nez v0, :cond_0

    .line 603
    const/4 v0, 0x0

    return v0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->computeCurrentVelocity(I)V

    .line 606
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v0

    return v0
.end method

.method public getExpandedFraction()F
    .locals 1

    .line 1064
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method public getExpandedHeight()F
    .locals 1

    .line 1060
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method protected abstract getMaxPanelHeight()I
.end method

.method protected abstract getOpeningHeight()F
.end method

.method protected abstract getOverExpansionAmount()F
.end method

.method protected abstract getOverExpansionPixels()F
.end method

.method protected abstract getPeekHeight()F
.end method

.method protected abstract hasConflictingGestures()Z
.end method

.method public instantCollapse()V
    .locals 3

    .line 1183
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instantCollapse: mExpanding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mInstantExpanding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 1185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 1186
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1189
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-eqz v0, :cond_1

    .line 1190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    .line 1191
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 1193
    :cond_1
    return-void
.end method

.method protected abstract isClearAllVisible()Z
.end method

.method public isCollapsing()Z
    .locals 1

    .line 1076
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLaunchingNotification:Z

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

.method public isFullyCollapsed()Z
    .locals 2

    .line 1072
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFullyExpanded()Z
    .locals 2

    .line 1068
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract isInContentBounds(FF)Z
.end method

.method protected abstract isPanelVisibleBecauseOfHeadsUp()Z
.end method

.method protected isScrolledToBottom()Z
    .locals 1

    .line 757
    const/4 v0, 0x1

    return v0
.end method

.method public isTracking()Z
    .locals 1

    .line 1080
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    return v0
.end method

.method protected abstract isTrackingBlocked()Z
.end method

.method public isUnlockHintRunning()Z
    .locals 1

    .line 1234
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    return v0
.end method

.method protected loadDimens()V
    .locals 4

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 253
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 254
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    .line 255
    const v2, 0x7f070204

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    .line 256
    const v2, 0x7f0706b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    .line 258
    const-class v2, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->showOvalLayout()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    const v2, 0x7f0701fb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0701fd

    .line 260
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHighlightHintVisualWidth:I

    .line 263
    :cond_0
    return-void
.end method

.method protected notifyBarPanelExpansionChanged()V
    .locals 4

    .line 1325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    if-eqz v0, :cond_2

    .line 1326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-nez v2, :cond_1

    .line 1327
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 1326
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(FZ)V

    .line 1330
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListener:Ljava/util/function/BiConsumer;

    if-eqz v0, :cond_3

    .line 1331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListener:Ljava/util/function/BiConsumer;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1333
    :cond_3
    return-void
.end method

.method protected final notifyExpandingFinished()V
    .locals 1

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    .line 183
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    .line 187
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 940
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 941
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    .line 942
    return-void
.end method

.method protected onClosingFinished()V
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 1204
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 772
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 773
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 775
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 776
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOrientation:I

    .line 779
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 947
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 948
    return-void
.end method

.method protected onEmptySpaceClick(F)Z
    .locals 1
    .param p1, "x"    # F

    .line 1347
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 1348
    const/4 v0, 0x1

    return v0

    .line 1350
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onMiddleClicked()Z

    move-result v0

    return v0
.end method

.method protected onExpandingFinished()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 169
    return-void
.end method

.method protected onExpandingStarted()V
    .locals 0

    .line 172
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 766
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 767
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 768
    return-void
.end method

.method protected abstract onHeightUpdated(F)V
.end method

.method public onHightlightHintIntercept(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1426
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1427
    .local v0, "pointerIndex":I
    if-gez v0, :cond_0

    .line 1428
    const/4 v0, 0x0

    .line 1429
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 1431
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1432
    .local v1, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1434
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 1443
    :pswitch_0
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldHightHintIntercept(FF)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1444
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHightHintIntercepting:Z

    goto/16 :goto_1

    .line 1449
    :pswitch_1
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onHightlightHintIntercept / ACTION_UP / x:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", y:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", mHighlightHintVisualWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHighlightHintVisualWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mHighlightHintVisualX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHighlightHintVisualX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mOrientation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHightHintIntercepting:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldHightHintIntercept(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1457
    const-class v3, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1458
    const-class v3, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->launchCarModeAp(Landroid/content/Context;)V

    goto :goto_0

    .line 1460
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->launchHighlightHintAp()V

    .line 1464
    :cond_2
    :goto_0
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHightHintIntercepting:Z

    goto :goto_1

    .line 1436
    :pswitch_3
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldHightHintIntercept(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1437
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHightHintIntercepting:Z

    goto :goto_1

    .line 1439
    :cond_3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHightHintIntercepting:Z

    .line 1441
    nop

    .line 1468
    :cond_4
    :goto_1
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 634
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 648
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 649
    .local v0, "pointerIndex":I
    if-gez v0, :cond_1

    .line 650
    const/4 v0, 0x0

    .line 651
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 653
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 654
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 655
    .local v3, "y":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isScrolledToBottom()Z

    move-result v4

    .line 657
    .local v4, "scrolledToBottom":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 685
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 686
    .local v5, "upPointer":I
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    if-ne v6, v5, :cond_a

    .line 688
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-eq v6, v5, :cond_2

    move v7, v1

    nop

    :cond_2
    move v6, v7

    .line 689
    .local v6, "newIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 690
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 691
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 692
    .end local v6    # "newIndex":I
    goto/16 :goto_1

    .line 695
    .end local v5    # "upPointer":I
    :pswitch_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v5

    if-ne v5, v7, :cond_a

    .line 696
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 697
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v5, :cond_a

    .line 698
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 699
    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    goto/16 :goto_1

    .line 704
    :pswitch_3
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v5, v3, v5

    .line 705
    .local v5, "h":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 706
    if-nez v4, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz v6, :cond_a

    .line 707
    :cond_3
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 708
    .local v6, "hAbs":F
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-ltz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-lez v8, :cond_5

    :cond_4
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v8, v2, v8

    .line 709
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v6, v8

    if-lez v8, :cond_5

    .line 710
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 711
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v2, v3, v7, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    .line 712
    return v7

    .line 714
    .end local v6    # "hAbs":F
    :cond_5
    goto :goto_1

    .line 718
    .end local v5    # "h":F
    :pswitch_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v5, :cond_a

    .line 719
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 720
    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    goto :goto_1

    .line 659
    :pswitch_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    .line 660
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_6

    move v5, v7

    goto :goto_0

    :cond_6
    move v5, v1

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    .line 661
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    .line 662
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    .line 663
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimatingOnDown:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v5, :cond_8

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_9

    .line 665
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 666
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 667
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 668
    return v7

    .line 670
    :cond_9
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 671
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 672
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->isInContentBounds(FF)Z

    move-result v5

    xor-int/2addr v5, v7

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    .line 673
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 674
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 675
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 676
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    .line 677
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    .line 678
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 679
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 680
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 681
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->initVelocityTracker()V

    .line 682
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 683
    nop

    .line 724
    :cond_a
    :goto_1
    return v1

    .line 636
    .end local v0    # "pointerIndex":I
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "scrolledToBottom":Z
    :cond_b
    :goto_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent: mInstantExpanding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mTouchDisabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mMotionAborted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 961
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 962
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onPanelLaidOut()V

    .line 963
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 965
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    if-eqz v1, :cond_0

    .line 966
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 967
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 968
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 970
    :cond_0
    return-void
.end method

.method protected abstract onMiddleClicked()Z
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 296
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    const/4 v1, 0x0

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_23

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_b

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 304
    return v2

    .line 309
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mNotificationsDragEnabled:Z

    if-nez v0, :cond_4

    .line 310
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_3

    .line 312
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 314
    :cond_3
    return v1

    .line 318
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 321
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->expand(ZI)V

    .line 324
    :cond_5
    return v2

    .line 336
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 337
    .local v0, "pointerIndex":I
    if-gez v0, :cond_7

    .line 338
    const/4 v0, 0x0

    .line 339
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 341
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 342
    .local v3, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 344
    .local v4, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_c

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->hasConflictingGestures()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_0

    :cond_8
    move v5, v1

    goto :goto_1

    :cond_9
    :goto_0
    move v5, v2

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->shouldGestureIgnoreXTouchSlop(FF)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_2

    :cond_a
    move v5, v1

    goto :goto_3

    :cond_b
    :goto_2
    move v5, v2

    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIgnoreXTouchSlop:Z

    .line 349
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    .line 386
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 387
    .local v5, "upPointer":I
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    if-ne v6, v5, :cond_20

    .line 389
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-eq v6, v5, :cond_d

    move v6, v1

    goto :goto_4

    :cond_d
    move v6, v2

    .line 390
    .local v6, "newIndex":I
    :goto_4
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 391
    .local v7, "newY":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 392
    .local v8, "newX":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 393
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v8, v7, v2, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    .line 394
    .end local v6    # "newIndex":I
    .end local v7    # "newY":F
    .end local v8    # "newX":F
    goto/16 :goto_8

    .line 397
    .end local v5    # "upPointer":I
    :pswitch_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v5

    if-ne v5, v2, :cond_20

    .line 398
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 399
    invoke-direct {p0, p1, v3, v4, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    .line 400
    return v1

    .line 404
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 405
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v5, v4, v5

    .line 409
    .local v5, "h":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_10

    .line 410
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_e

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIgnoreXTouchSlop:Z

    if-eqz v7, :cond_10

    .line 412
    :cond_e
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 413
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v7, :cond_10

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v7, :cond_10

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    if-nez v7, :cond_10

    .line 414
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-nez v7, :cond_f

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_f

    .line 415
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v3, v4, v1, v7}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    .line 416
    const/4 v5, 0x0

    .line 418
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 419
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 422
    :cond_10
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    add-float/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 423
    .local v6, "newHeight":F
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    cmpl-float v7, v6, v7

    if-lez v7, :cond_12

    .line 424
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v7, :cond_11

    .line 425
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 427
    :cond_11
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    goto :goto_5

    .line 428
    :cond_12
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v7, :cond_13

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v7, :cond_13

    .line 431
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 432
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 433
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    .line 434
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 436
    :cond_13
    :goto_5
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 437
    neg-float v7, v5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFalsingThreshold()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_14

    .line 438
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 439
    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->isDirectionUpwards(FF)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpwardsWhenTresholdReached:Z

    .line 441
    :cond_14
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-nez v7, :cond_20

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v7, :cond_15

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v7, :cond_20

    .line 442
    :cond_15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v7

    if-nez v7, :cond_20

    .line 443
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    goto/16 :goto_8

    .line 449
    .end local v5    # "h":F
    .end local v6    # "newHeight":F
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 456
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/plugin/LSState;->getFingerprintUnlockControl()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_17

    .line 457
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 458
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 459
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v5, :cond_16

    .line 460
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 461
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    .line 463
    :cond_16
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    .line 464
    goto/16 :goto_8

    .line 468
    :cond_17
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    goto/16 :goto_8

    .line 351
    :pswitch_5
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v3, v4, v1, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    .line 352
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 353
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMinExpandHeight:F

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    .line 355
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 356
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 357
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMotionAborted:Z

    .line 358
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    .line 359
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDownTime:J

    .line 360
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 361
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 362
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v5

    if-eqz v5, :cond_18

    move v5, v2

    goto :goto_6

    :cond_18
    move v5, v1

    :goto_6
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapsedAndHeadsUpOnDown:Z

    .line 363
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-nez v5, :cond_19

    .line 364
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->initVelocityTracker()V

    .line 366
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 367
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_1a

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v5, :cond_1b

    :cond_1a
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_1f

    .line 369
    :cond_1b
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_1c

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v5, :cond_1d

    :cond_1c
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_1e

    :cond_1d
    move v5, v2

    goto :goto_7

    :cond_1e
    move v5, v1

    :goto_7
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 375
    :cond_1f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v5

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->hasPinnedHeadsUp()Z

    move-result v5

    if-nez v5, :cond_20

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 376
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v5

    if-nez v5, :cond_20

    const-class v5, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    .line 378
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v5

    if-nez v5, :cond_20

    const-class v5, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    .line 379
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result v5

    if-nez v5, :cond_20

    .line 381
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startOpening(Landroid/view/MotionEvent;)V

    .line 471
    :cond_20
    :goto_8
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    if-eqz v5, :cond_22

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v5, :cond_21

    goto :goto_9

    :cond_21
    goto :goto_a

    :cond_22
    :goto_9
    move v1, v2

    :goto_a
    return v1

    .line 299
    .end local v0    # "pointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_23
    :goto_b
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onTrackingStarted()V
    .locals 1

    .line 625
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 627
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted()V

    .line 628
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 629
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 630
    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .line 619
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 620
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Z)V

    .line 621
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 622
    return-void
.end method

.method protected onUnlockHintFinished()V
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onHintFinished()V

    .line 1227
    return-void
.end method

.method protected onUnlockHintStarted()V
    .locals 1

    .line 1230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onUnlockHintStarted()V

    .line 1231
    return-void
.end method

.method protected requestPanelHeightUpdate()V
    .locals 2

    .line 973
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    .line 975
    .local v0, "currentMaxPanelHeight":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    return-void

    .line 979
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 980
    return-void

    .line 983
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 987
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 988
    return-void

    .line 991
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    .line 992
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelUpdateWhenAnimatorEnds:Z

    .line 993
    return-void

    .line 996
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 997
    return-void

    .line 984
    :cond_5
    :goto_0
    return-void
.end method

.method public abstract resetViews()V
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .param p1, "panelBar"    # Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 1084
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 1085
    return-void
.end method

.method public setCallStateIdle(Z)V
    .locals 3
    .param p1, "idle"    # Z

    .line 1507
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCallIdle:Z

    .line 1508
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallStateIdle, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCallIdle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_0
    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 1
    .param p1, "frac"    # F

    .line 1056
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 1057
    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .line 956
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 957
    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 5
    .param p1, "h"    # F

    .line 1000
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    cmpl-float v0, p1, v2

    if-eqz v0, :cond_0

    .line 1001
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NcQsgCLFImw9_GKeELFJ1HpKiII;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$NcQsgCLFImw9_GKeELFJ1HpKiII;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 1003
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    .line 1005
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v3

    sub-float/2addr v0, v3

    .line 1006
    .local v0, "fhWithoutOverExpansion":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_2

    .line 1007
    sub-float v1, p1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1008
    .local v1, "overExpansionPixels":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v3

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v3, :cond_1

    .line 1009
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    .line 1011
    :cond_1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 1012
    .end local v1    # "overExpansionPixels":F
    goto :goto_0

    .line 1013
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 1014
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    if-eqz v3, :cond_3

    .line 1015
    sub-float v3, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    .line 1021
    :cond_3
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v1, :cond_4

    .line 1022
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 1023
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    .line 1024
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 1027
    :cond_4
    nop

    .line 1028
    cmpl-float v1, v0, v2

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    div-float v2, v1, v0

    .line 1027
    :goto_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 1029
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->onHeightUpdated(F)V

    .line 1030
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 1031
    return-void
.end method

.method public setExpansionListener(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1336
    .local p1, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Float;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpansionListener:Ljava/util/function/BiConsumer;

    .line 1337
    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0
    .param p1, "headsUpManager"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1396
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 1397
    return-void
.end method

.method public setLaunchingNotification(Z)V
    .locals 0
    .param p1, "launchingNotification"    # Z

    .line 1400
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLaunchingNotification:Z

    .line 1401
    return-void
.end method

.method protected abstract setOverExpansion(FZ)V
.end method

.method public setTouchDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .line 276
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    .line 277
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 284
    :cond_1
    return-void
.end method

.method protected abstract setUpHighlightHintInfo()V
.end method

.method protected abstract shouldGestureIgnoreXTouchSlop(FF)Z
.end method

.method protected abstract shouldUseDismissingAnimation()Z
.end method

.method public startExpandLatencyTracking()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandLatencyTracking:Z

    .line 292
    :cond_0
    return-void
.end method

.method protected startExpandMotion(FFZF)V
    .locals 1
    .param p1, "newX"    # F
    .param p2, "newY"    # F
    .param p3, "startTracking"    # Z
    .param p4, "expandedHeight"    # F

    .line 516
    iput p4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 517
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 518
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 519
    if-eqz p3, :cond_0

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 521
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 522
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 524
    :cond_0
    return-void
.end method

.method protected startExpandingFromPeek()V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handlePeekToExpandTransistion()V

    .line 512
    return-void
.end method

.method public startFacelockFailAnimation()V
    .locals 4

    .line 1411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v0

    .line 1412
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    neg-float v2, v2

    .line 1413
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1414
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1415
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$jWFNN90uJ0ICe_HyxtLkafzNh5s;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$jWFNN90uJ0ICe_HyxtLkafzNh5s;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/View;)V

    .line 1416
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1421
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1422
    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .line 1211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1214
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1216
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$tAljekoGx9mlKIleW6Fmi59MCOs;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$tAljekoGx9mlKIleW6Fmi59MCOs;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V

    .line 1221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onUnlockHintStarted()V

    .line 1222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    .line 1223
    return-void

    .line 1212
    :cond_1
    :goto_0
    return-void
.end method
