.class public Lcom/android/systemui/statusbar/phone/QuickStepController;
.super Ljava/lang/Object;
.source "QuickStepController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;


# instance fields
.field private mAllowGestureDetection:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentNavigationBarView:Landroid/view/View;

.field private mDarkIntensity:F

.field private mDarkTrackColor:I

.field private mDragPositive:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

.field private mIsRTL:Z

.field private mIsVertical:Z

.field private mLightTrackColor:I

.field private final mNavBarAlphaProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/phone/QuickStepController;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private final mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

.field private mQuickScrubActive:Z

.field private mQuickScrubEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mQuickStepStarted:Z

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mTrackAlpha:F

.field private final mTrackAlphaProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/phone/QuickStepController;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackAnimator:Landroid/animation/AnimatorSet;

.field private final mTrackColorEvaluator:Landroid/animation/ArgbEvaluator;

.field private final mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackEndPadding:I

.field private final mTrackRect:Landroid/graphics/Rect;

.field private mTrackScale:F

.field private final mTrackScaleProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/phone/QuickStepController;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackThickness:I

.field private final mTransformGlobalMatrix:Landroid/graphics/Matrix;

.field private final mTransformLocalMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScale:F

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHandler:Landroid/os/Handler;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    .line 96
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    .line 97
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackColorEvaluator:Landroid/animation/ArgbEvaluator;

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStepController$1;

    const-string v1, "TrackAlpha"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStepController$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickStepController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlphaProperty:Landroid/util/FloatProperty;

    .line 113
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStepController$2;

    const-string v1, "TrackScale"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStepController$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickStepController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScaleProperty:Landroid/util/FloatProperty;

    .line 127
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStepController$3;

    const-string v1, "NavBarAlpha"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStepController$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickStepController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavBarAlphaProperty:Landroid/util/FloatProperty;

    .line 145
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStepController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickStepController$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickStepController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 154
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mContext:Landroid/content/Context;

    .line 155
    const-class v1, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/OverviewProxyService;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    .line 156
    const v1, 0x7f070370

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    .line 157
    const v1, 0x7f07036f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    .line 158
    const v1, 0x7f08054b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickStepController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;

    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlpha:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/QuickStepController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;
    .param p1, "x1"    # F

    .line 62
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlpha:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickStepController;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QuickStepController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;

    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScale:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/QuickStepController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;
    .param p1, "x1"    # F

    .line 62
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScale:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QuickStepController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mCurrentNavigationBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QuickStepController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/QuickStepController;

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->resetQuickScrub()V

    return-void
.end method

.method private animateEnd()V
    .locals 7

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 468
    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlphaProperty:Landroid/util/FloatProperty;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 469
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScaleProperty:Landroid/util/FloatProperty;

    new-array v4, v3, [F

    const v5, 0x3f733333    # 0.95f

    aput v5, v4, v6

    .line 470
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    .line 468
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 471
    .local v1, "trackAnimator":Landroid/animation/ObjectAnimator;
    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 472
    const-wide/16 v4, 0x86

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 473
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavBarAlphaProperty:Landroid/util/FloatProperty;

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 474
    .local v2, "navBarAnimator":Landroid/animation/ObjectAnimator;
    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 475
    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 476
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    .line 477
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v1, v0, v6

    aput-object v2, v0, v3

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 478
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 480
    return-void
.end method

.method private endQuickScrub(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 444
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-eqz v0, :cond_1

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->animateEnd()V

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onQuickScrubEnd()V

    .line 448
    sget-boolean v0, Lcom/android/systemui/OverviewProxyService;->DEBUG_OVERVIEW_PROXY:Z

    if-eqz v0, :cond_0

    .line 449
    const-string v0, "OverviewProxyService"

    const-string v1, "Quick Scrub End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :cond_0
    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QuickStepController"

    const-string v2, "Failed to send end of quick scrub."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    .line 461
    :cond_2
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v1, p0

    .line 187
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickScrubEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 188
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_f

    .line 191
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->requestUnbufferedDispatch(Landroid/view/MotionEvent;)V

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 194
    .local v4, "action":I
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_a

    .line 222
    :pswitch_0
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickStepStarted:Z

    if-nez v0, :cond_12

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    if-nez v0, :cond_1

    .line 223
    goto/16 :goto_a

    .line 225
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v6, v0

    .line 226
    .local v6, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v7, v0

    .line 227
    .local v7, "y":I
    iget v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownX:I

    sub-int v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 228
    .local v8, "xDiff":I
    iget v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownY:I

    sub-int v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 233
    .local v9, "yDiff":I
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    if-eqz v0, :cond_4

    .line 234
    nop

    .line 235
    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickScrubTouchSlopPx()I

    move-result v0

    if-le v9, v0, :cond_2

    if-le v9, v8, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 236
    .local v0, "exceededScrubTouchSlop":Z
    :goto_0
    nop

    .line 237
    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickStepTouchSlopPx()I

    move-result v10

    if-le v8, v10, :cond_3

    if-le v8, v9, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    .line 238
    .local v10, "exceededSwipeUpTouchSlop":Z
    :goto_1
    move v11, v7

    .line 239
    .local v11, "pos":I
    iget v12, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownY:I

    .line 240
    .local v12, "touchDown":I
    iget-object v13, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int v13, v11, v13

    .line 241
    .local v13, "offset":I
    iget-object v14, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 250
    .local v0, "offset":I
    .local v11, "exceededScrubTouchSlop":Z
    .local v12, "pos":I
    .local v13, "touchDown":I
    .local v14, "trackSize":I
    :goto_2
    move/from16 v19, v11

    move v11, v0

    move v0, v13

    move v13, v12

    move/from16 v12, v19

    goto :goto_5

    .line 243
    .end local v0    # "offset":I
    .end local v10    # "exceededSwipeUpTouchSlop":Z
    .end local v11    # "exceededScrubTouchSlop":Z
    .end local v12    # "pos":I
    .end local v13    # "touchDown":I
    .end local v14    # "trackSize":I
    :cond_4
    nop

    .line 244
    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickScrubTouchSlopPx()I

    move-result v0

    if-le v8, v0, :cond_5

    if-le v8, v9, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 245
    .local v0, "exceededScrubTouchSlop":Z
    :goto_3
    nop

    .line 246
    invoke-static {}, Lcom/android/systemui/shared/system/NavigationBarCompat;->getQuickStepTouchSlopPx()I

    move-result v10

    if-le v9, v10, :cond_6

    if-le v9, v8, :cond_6

    const/4 v10, 0x1

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    .line 247
    .restart local v10    # "exceededSwipeUpTouchSlop":Z
    :goto_4
    move v11, v6

    .line 248
    .local v11, "pos":I
    iget v12, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownX:I

    .line 249
    .local v12, "touchDown":I
    iget-object v13, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int v13, v11, v13

    .line 250
    .local v13, "offset":I
    iget-object v14, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    goto :goto_2

    .line 254
    .local v0, "offset":I
    .local v11, "exceededScrubTouchSlop":Z
    .local v12, "pos":I
    .local v13, "touchDown":I
    .restart local v14    # "trackSize":I
    :goto_5
    iget-boolean v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v15, :cond_7

    if-eqz v10, :cond_7

    .line 255
    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickStepSwipeUpEnabled()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 256
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->startQuickStep(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    .line 262
    :cond_7
    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickScrubEnabled()Z

    move-result v15

    if-nez v15, :cond_8

    .line 263
    goto/16 :goto_a

    .line 266
    :cond_8
    iget-boolean v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    if-nez v15, :cond_a

    .line 267
    iget-boolean v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    if-eqz v15, :cond_9

    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    goto :goto_6

    :cond_9
    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    :goto_6
    sub-int/2addr v0, v15

    .line 270
    .end local v0    # "offset":I
    .local v15, "offset":I
    :cond_a
    move v15, v0

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    if-nez v0, :cond_c

    .line 271
    if-gez v15, :cond_b

    if-ge v12, v13, :cond_b

    :goto_7
    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    :cond_c
    if-ltz v15, :cond_b

    if-le v12, v13, :cond_b

    goto :goto_7

    :goto_8
    move/from16 v16, v0

    .line 272
    .local v16, "allowDrag":Z
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float v5, v14

    div-float/2addr v0, v5

    const/4 v5, 0x0

    invoke-static {v0, v5, v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v2

    .line 273
    .local v2, "scrubFraction":F
    if-eqz v16, :cond_d

    .line 275
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v0, :cond_d

    if-eqz v11, :cond_d

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->startQuickScrub()V

    .line 280
    :cond_d
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    if-eqz v0, :cond_e

    if-gez v15, :cond_f

    :cond_e
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    if-nez v0, :cond_12

    if-gtz v15, :cond_12

    .line 283
    :cond_f
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onQuickScrubProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "QuickStepController"

    move/from16 v18, v2

    const-string v2, "Failed to send progress of quick scrub."

    .end local v2    # "scrubFraction":F
    .local v18, "scrubFraction":F
    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "x":I
    .end local v7    # "y":I
    .end local v8    # "xDiff":I
    .end local v9    # "yDiff":I
    .end local v10    # "exceededSwipeUpTouchSlop":Z
    .end local v11    # "exceededScrubTouchSlop":Z
    .end local v12    # "pos":I
    .end local v13    # "touchDown":I
    .end local v14    # "trackSize":I
    .end local v15    # "offset":I
    .end local v16    # "allowDrag":Z
    .end local v18    # "scrubFraction":F
    :goto_9
    goto :goto_a

    .line 295
    :pswitch_1
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickStepController;->endQuickScrub(Z)V

    goto :goto_a

    .line 196
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 197
    .local v0, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 200
    .local v2, "y":I
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_10

    .line 201
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    .line 202
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    .line 205
    :cond_10
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mCurrentNavigationBarView:Landroid/view/View;

    .line 206
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getButtonAtPosition(II)Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    .line 207
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    if-eqz v5, :cond_11

    .line 209
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setDelayTouchFeedback(Z)V

    .line 211
    :cond_11
    iput v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownX:I

    .line 212
    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTouchDownY:I

    .line 213
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    sget-object v6, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 214
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    sget-object v6, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 215
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 216
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 217
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickStepStarted:Z

    .line 218
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    .line 219
    nop

    .line 301
    .end local v0    # "x":I
    .end local v2    # "y":I
    :cond_12
    :goto_a
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v0, :cond_14

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    if-nez v0, :cond_13

    const/4 v0, 0x3

    if-eq v4, v0, :cond_13

    const/4 v2, 0x1

    if-ne v4, v2, :cond_15

    goto :goto_b

    .line 303
    :cond_13
    const/4 v2, 0x1

    :goto_b
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->proxyMotionEvents(Landroid/view/MotionEvent;)Z

    goto :goto_c

    .line 305
    :cond_14
    const/4 v2, 0x1

    :cond_15
    :goto_c
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v0, :cond_17

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickStepStarted:Z

    if-eqz v0, :cond_16

    goto :goto_d

    :cond_16
    const/16 v17, 0x0

    goto :goto_e

    :cond_17
    :goto_d
    move/from16 v17, v2

    :goto_e
    return v17

    .line 189
    .end local v4    # "action":I
    :cond_18
    :goto_f
    move-object/from16 v3, p1

    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private proxyMotionEvents(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    .line 490
    .local v0, "overviewProxy":Lcom/android/systemui/shared/recents/IOverviewProxy;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 492
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDownHitTarget()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onPreMotionEvent(I)V

    .line 495
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onMotionEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    const/4 v1, 0x1

    .line 503
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 499
    return v1

    .line 503
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 500
    :catch_0
    move-exception v1

    .line 501
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "QuickStepController"

    const-string v3, "Callback failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    .end local v1    # "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 504
    nop

    .line 505
    const/4 v1, 0x0

    return v1

    .line 503
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    throw v1
.end method

.method private resetQuickScrub()V
    .locals 1

    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    .line 484
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mCurrentNavigationBarView:Landroid/view/View;

    .line 486
    return-void
.end method

.method private startQuickScrub()V
    .locals 7

    .line 410
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-nez v0, :cond_1

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    .line 412
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mContext:Landroid/content/Context;

    const v2, 0x7f0603fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mLightTrackColor:I

    .line 413
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mContext:Landroid/content/Context;

    const v2, 0x7f0603fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDarkTrackColor:I

    .line 415
    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlphaProperty:Landroid/util/FloatProperty;

    new-array v4, v0, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 416
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScaleProperty:Landroid/util/FloatProperty;

    new-array v4, v0, [F

    aput v5, v4, v6

    .line 417
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v0

    .line 415
    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 418
    .local v2, "trackAnimator":Landroid/animation/ObjectAnimator;
    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 419
    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 420
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavBarAlphaProperty:Landroid/util/FloatProperty;

    new-array v4, v0, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 421
    .local v3, "navBarAnimator":Landroid/animation/ObjectAnimator;
    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 422
    const-wide/16 v4, 0x86

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 423
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    .line 424
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v6

    aput-object v3, v1, v0

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onQuickScrubStart()V

    .line 429
    sget-boolean v0, Lcom/android/systemui/OverviewProxyService;->DEBUG_OVERVIEW_PROXY:Z

    if-eqz v0, :cond_0

    .line 430
    const-string v0, "OverviewProxyService"

    const-string v1, "Quick Scrub Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :cond_0
    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "QuickStepController"

    const-string v4, "Failed to send start of quick scrub."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->notifyQuickScrubStarted()V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V

    .line 441
    .end local v2    # "trackAnimator":Landroid/animation/ObjectAnimator;
    .end local v3    # "navBarAnimator":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method private startQuickStep(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickStepStarted:Z

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformGlobalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onQuickStep(Landroid/view/MotionEvent;)V

    .line 389
    sget-boolean v0, Lcom/android/systemui/OverviewProxyService;->DEBUG_OVERVIEW_PROXY:Z

    if-eqz v0, :cond_0

    .line 390
    const-string v0, "OverviewProxyService"

    const-string v1, "Quick Step Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "QuickStepController"

    const-string v2, "Failed to send quick step started."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 396
    nop

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->notifyQuickStepStarted()V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHitTarget:Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V

    .line 404
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mQuickScrubActive:Z

    if-eqz v0, :cond_2

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStepController;->animateEnd()V

    .line 407
    :cond_2
    return-void

    .line 395
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTransformLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    throw v0
.end method


# virtual methods
.method public onDarkIntensityChange(F)V
    .locals 1
    .param p1, "intensity"    # F

    .line 354
    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDarkIntensity:F

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->invalidate()V

    .line 356
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isQuickScrubEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackColorEvaluator:Landroid/animation/ArgbEvaluator;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDarkIntensity:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mLightTrackColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDarkTrackColor:I

    .line 314
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 313
    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 315
    .local v0, "color":I
    nop

    .line 316
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 315
    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 317
    .local v1, "colorAlpha":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 320
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 321
    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackScale:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getScaleX()F

    move-result v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 322
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getScaleY()F

    move-result v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    .line 323
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    .line 321
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 324
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 325
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 326
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 171
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object v0, p0

    .line 330
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingLeft()I

    move-result v1

    .line 331
    .local v1, "paddingLeft":I
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingTop()I

    move-result v2

    .line 332
    .local v2, "paddingTop":I
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingRight()I

    move-result v3

    .line 333
    .local v3, "paddingRight":I
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingBottom()I

    move-result v4

    .line 334
    .local v4, "paddingBottom":I
    sub-int v5, p4, p2

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    .line 335
    .local v5, "width":I
    sub-int v6, p5, p3

    sub-int/2addr v6, v4

    sub-int/2addr v6, v2

    .line 337
    .local v6, "height":I
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    const/4 v8, 0x2

    if-eqz v7, :cond_0

    .line 338
    iget v7, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    sub-int v7, v5, v7

    div-int/2addr v7, v8

    add-int/2addr v7, v1

    .line 339
    .local v7, "x1":I
    iget v9, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    add-int/2addr v9, v7

    .line 340
    .local v9, "x2":I
    iget v10, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    add-int/2addr v10, v2

    .line 341
    .local v10, "y1":I
    add-int v11, v10, v6

    move v12, v1

    iget v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    .end local v1    # "paddingLeft":I
    .local v12, "paddingLeft":I
    mul-int/2addr v8, v1

    sub-int/2addr v11, v8

    .local v11, "y2":I
    goto :goto_0

    .line 343
    .end local v7    # "x1":I
    .end local v9    # "x2":I
    .end local v10    # "y1":I
    .end local v11    # "y2":I
    .end local v12    # "paddingLeft":I
    .restart local v1    # "paddingLeft":I
    :cond_0
    move v12, v1

    .end local v1    # "paddingLeft":I
    .restart local v12    # "paddingLeft":I
    iget v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    sub-int v1, v6, v1

    div-int/2addr v1, v8

    add-int v10, v1, v2

    .line 344
    .restart local v10    # "y1":I
    iget v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackThickness:I

    add-int v11, v10, v1

    .line 345
    .restart local v11    # "y2":I
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getPaddingStart()I

    move-result v1

    iget v7, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    add-int/2addr v7, v1

    .line 346
    .restart local v7    # "x1":I
    add-int v1, v7, v5

    iget v9, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackEndPadding:I

    mul-int/2addr v8, v9

    sub-int v9, v1, v8

    .restart local v9    # "x2":I
    :goto_0
    move v1, v9

    .line 348
    .end local v9    # "x2":I
    .local v1, "x2":I
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v7, v10, v1, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 349
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mTrackRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 350
    return-void
.end method

.method public onNavigationButtonLongPress(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mAllowGestureDetection:Z

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mOverviewEventSender:Lcom/android/systemui/OverviewProxyService;

    .line 182
    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 183
    .local v0, "ignoreProxyDownEvent":Z
    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    return v1
.end method

.method public setBarState(ZZ)V
    .locals 5
    .param p1, "isVertical"    # Z
    .param p2, "isRTL"    # Z

    .line 360
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsRTL:Z

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 361
    .local v0, "changed":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 363
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->endQuickScrub(Z)V

    .line 365
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsVertical:Z

    .line 366
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mIsRTL:Z

    .line 368
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/IWindowManager;->getNavBarPosition()I

    move-result v3

    .line 369
    .local v3, "navbarPos":I
    if-eq v3, v2, :cond_4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    .line 370
    if-eqz p2, :cond_5

    .line 371
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mDragPositive:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v3    # "navbarPos":I
    :cond_5
    goto :goto_4

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "QuickStepController"

    const-string v3, "Failed to get nav bar position."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4
    return-void
.end method

.method public setComponents(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0
    .param p1, "navigationBarView"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 162
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStepController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 163
    return-void
.end method
