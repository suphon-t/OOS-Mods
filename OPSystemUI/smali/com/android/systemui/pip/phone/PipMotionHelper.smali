.class public Lcom/android/systemui/pip/phone/PipMotionHelper;
.super Ljava/lang/Object;
.source "PipMotionHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAnimationHandler:Landroid/animation/AnimationHandler;

.field private final mBounds:Landroid/graphics/Rect;

.field private mBoundsAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHandler:Landroid/os/Handler;

.field private mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

.field private final mStableInsets:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/systemui/pip/phone/PipMotionHelper;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/internal/policy/PipSnapAlgorithm;Lcom/android/systemui/statusbar/FlingAnimationUtils;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "menuController"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p4, "snapAlgorithm"    # Lcom/android/internal/policy/PipSnapAlgorithm;
    .param p5, "flingAnimationUtils"    # Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ForegroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    .line 101
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 102
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 103
    iput-object p4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    .line 104
    iput-object p5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 105
    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimationHandler:Landroid/animation/AnimationHandler;

    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->onConfigurationChanged()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipMotionHelper;)Landroid/animation/AnimationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method private createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "fromBounds"    # Landroid/graphics/Rect;
    .param p2, "toBounds"    # Landroid/graphics/Rect;
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 408
    new-instance v0, Lcom/android/systemui/pip/phone/PipMotionHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMotionHelper$2;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    .line 414
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 415
    sget-object v1, Lcom/android/systemui/pip/phone/PipMotionHelper;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 416
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 417
    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 418
    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$UijvXdqv_A_f2ZSKr4tqG6uf9mk;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$UijvXdqv_A_f2ZSKr4tqG6uf9mk;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 421
    return-object v0
.end method

.method private distanceBetweenRectOffsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 3
    .param p1, "r1"    # Landroid/graphics/Rect;
    .param p2, "r2"    # Landroid/graphics/Rect;

    .line 503
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    return v0
.end method

.method private getDismissEndPoint(Landroid/graphics/Rect;FFZ)Landroid/graphics/Point;
    .locals 8
    .param p1, "pipBounds"    # Landroid/graphics/Rect;
    .param p2, "velX"    # F
    .param p3, "velY"    # F
    .param p4, "isFling"    # Z

    .line 460
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 461
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 462
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 463
    .local v1, "bottomBound":F
    if-eqz p4, :cond_0

    const/4 v2, 0x0

    cmpl-float v3, p2, v2

    if-eqz v3, :cond_0

    cmpl-float v2, p3, v2

    if-eqz v2, :cond_0

    .line 466
    div-float v2, p3, p2

    .line 468
    .local v2, "slope":F
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    .line 470
    .local v3, "yIntercept":F
    sub-float v4, v1, v3

    div-float/2addr v4, v2

    .line 471
    .local v4, "x":F
    new-instance v5, Landroid/graphics/Point;

    float-to-int v6, v4

    float-to-int v7, v1

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    .line 475
    .end local v2    # "slope":F
    .end local v3    # "yIntercept":F
    .end local v4    # "x":F
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    float-to-int v4, v1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public static synthetic lambda$createAnimationToBounds$2(Lcom/android/systemui/pip/phone/PipMotionHelper;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 419
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizePipUnchecked(Landroid/graphics/Rect;)V

    .line 420
    return-void
.end method

.method public static synthetic lambda$dismissPip$1(Lcom/android/systemui/pip/phone/PipMotionHelper;)V
    .locals 4

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->removeStacksInWindowingModes([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PipMotionHelper"

    const-string v2, "Failed to remove PiP"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$expandPip$0(Lcom/android/systemui/pip/phone/PipMotionHelper;Z)V
    .locals 3
    .param p1, "skipAnimation"    # Z

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    xor-int/lit8 v1, p1, 0x1

    const/16 v2, 0x12c

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->dismissPip(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PipMotionHelper"

    const-string v2, "Error expanding PiP activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "toBounds"    # Landroid/graphics/Rect;
    .param p2, "duration"    # I

    .line 447
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 449
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 450
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 451
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 453
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    return-void
.end method

.method private resizePipUnchecked(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "toBounds"    # Landroid/graphics/Rect;

    .line 432
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 434
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 435
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 437
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    return-void
.end method


# virtual methods
.method animateDismiss(Landroid/graphics/Rect;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "pipBounds"    # Landroid/graphics/Rect;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 369
    invoke-static {p2, p3}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    .line 370
    .local v0, "velocity":F
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 371
    .local v1, "isFling":Z
    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getDismissEndPoint(Landroid/graphics/Rect;FFZ)Landroid/graphics/Point;

    move-result-object v2

    .line 372
    .local v2, "p":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 373
    .local v3, "toBounds":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 374
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    const/16 v5, 0xaf

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 376
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/pip/phone/PipMotionHelper$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/pip/phone/PipMotionHelper$1;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 382
    if-eqz v1, :cond_1

    .line 383
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 384
    invoke-direct {p0, v7, v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->distanceBetweenRectOffsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v7

    .line 383
    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 386
    :cond_1
    if-eqz p4, :cond_2

    .line 387
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 389
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 390
    return-object v3
.end method

.method animateToClosestMinimizedState(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "movementBounds"    # Landroid/graphics/Rect;
    .param p2, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getClosestMinimizedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 265
    .local v0, "toBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    const/16 v2, 0xc8

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 268
    if-eqz p2, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 273
    :cond_1
    return-object v0
.end method

.method animateToClosestSnapTarget(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "movementBounds"    # Landroid/graphics/Rect;
    .param p2, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p3, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 308
    .local v0, "toBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    const/16 v2, 0xe1

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 311
    if-eqz p2, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    :cond_0
    if-eqz p3, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 319
    :cond_2
    return-object v0
.end method

.method animateToExpandedState(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 3
    .param p1, "expandedBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;
    .param p3, "expandedMovementBounds"    # Landroid/graphics/Rect;

    .line 327
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    .line 328
    .local v0, "savedSnapFraction":F
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v1, p1, p3, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 329
    const/16 v1, 0xfa

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V

    .line 330
    return v0
.end method

.method animateToOffset(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "toBounds"    # Landroid/graphics/Rect;

    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 360
    const/16 v0, 0x12c

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V

    .line 361
    return-void
.end method

.method animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 3
    .param p1, "normalBounds"    # Landroid/graphics/Rect;
    .param p2, "savedSnapFraction"    # F
    .param p3, "normalMovementBounds"    # Landroid/graphics/Rect;
    .param p4, "currentMovementBounds"    # Landroid/graphics/Rect;
    .param p5, "minimized"    # Z
    .param p6, "immediate"    # Z

    .line 339
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1, p4}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p2

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 345
    if-eqz p5, :cond_1

    .line 346
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getClosestMinimizedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 348
    :cond_1
    if-eqz p6, :cond_2

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 351
    :cond_2
    const/16 v0, 0xfa

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V

    .line 353
    :goto_0
    return-void
.end method

.method cancelAnimations()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 401
    :cond_0
    return-void
.end method

.method dismissPip()V
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenuWithoutResize()V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$ExBmB11pCWcEFXztVKlantVNH0o;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$ExBmB11pCWcEFXztVKlantVNH0o;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PipMotionHelper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mStableInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method expandPip()V
    .locals 1

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip(Z)V

    .line 148
    return-void
.end method

.method expandPip(Z)V
    .locals 2
    .param p1, "skipAnimation"    # Z

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenuWithoutResize()V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$sKxCzHQTJVfrtc--kVVtTIgcND4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$sKxCzHQTJVfrtc--kVVtTIgcND4;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method flingToSnapTarget(FFFLandroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;Landroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "velocity"    # F
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "movementBounds"    # Landroid/graphics/Rect;
    .param p5, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p6, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .param p7, "startPosition"    # Landroid/graphics/Point;

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    move-object v1, p4

    move v3, p2

    move v4, p3

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v0

    .line 285
    .local v0, "toBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 286
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 287
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 288
    invoke-direct {p0, v4, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->distanceBetweenRectOffsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v4

    .line 287
    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 290
    if-eqz p5, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 293
    :cond_0
    if-eqz p6, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 298
    :cond_2
    return-object v0
.end method

.method getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getClosestMinimizedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;

    .line 198
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 199
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 200
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v1, p2, p1}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 201
    .local v1, "toBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p2, v0, v3}, Lcom/android/internal/policy/PipSnapAlgorithm;->applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 202
    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 510
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 547
    return v1

    .line 524
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 525
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    .line 526
    .local v3, "toBounds":Landroid/graphics/Rect;
    iget v10, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 528
    .local v10, "duration":I
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v5, 0x2

    invoke-interface {v4, v5, v1}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 530
    .local v1, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-nez v1, :cond_0

    .line 533
    return v2

    .line 536
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    iget v5, v1, Landroid/app/ActivityManager$StackInfo;->stackId:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v6, v3

    invoke-interface/range {v4 .. v10}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 539
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    .end local v1    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    goto :goto_0

    .line 540
    :catch_0
    move-exception v1

    .line 541
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "PipMotionHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not animate resize pinned stack to bounds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v2

    .line 512
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "toBounds":Landroid/graphics/Rect;
    .end local v10    # "duration":I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 513
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    .line 515
    .local v1, "toBounds":Landroid/graphics/Rect;
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/app/IActivityManager;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 516
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 519
    goto :goto_1

    .line 517
    :catch_1
    move-exception v3

    .line 518
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "PipMotionHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not resize pinned stack to bounds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method movePip(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "toBounds"    # Landroid/graphics/Rect;

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 139
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizePipUnchecked(Landroid/graphics/Rect;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 141
    return-void
.end method

.method onConfigurationChanged()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->onConfigurationChanged()V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 116
    return-void
.end method

.method shouldDismissPip()Z
    .locals 5

    .line 227
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 228
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 229
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 230
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    if-le v2, v1, :cond_1

    .line 231
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 232
    .local v2, "offscreenFraction":F
    const v4, 0x3e99999a    # 0.3f

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    return v3

    .line 234
    .end local v2    # "offscreenFraction":F
    :cond_1
    return v3
.end method

.method synchronizePinnedStackBounds()V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 125
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 126
    .local v0, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_0
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PipMotionHelper"

    const-string v2, "Failed to get pinned stack bounds"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
