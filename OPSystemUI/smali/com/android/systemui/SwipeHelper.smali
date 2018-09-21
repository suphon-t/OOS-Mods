.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDisableHwLayers:Z

.field private final mDismissPendingMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDragging:Z

.field private final mFadeDependingOnAmountSwiped:Z

.field private final mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private final mFalsingThreshold:I

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressSent:Z

.field private final mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMenuRowIntercepting:Z

.field private mMinSwipeProgress:F

.field private mPagingTouchSlop:F

.field private mPerpendicularInitialTouchPos:F

.field private mSnappingChild:Z

.field private final mSwipeDirection:I

.field private final mTmpPos:[I

.field private mTouchAboveFalsingThreshold:Z

.field private mTranslation:F

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 4
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/SwipeHelper$Callback;
    .param p3, "context"    # Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    .line 66
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    .line 83
    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    .line 97
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    .line 100
    iput-object p3, p0, Lcom/android/systemui/SwipeHelper;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    .line 103
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    .line 104
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 105
    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 108
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    .line 110
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 112
    const v1, 0x7f07061c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    .line 113
    const v1, 0x7f050019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mFadeDependingOnAmountSwiped:Z

    .line 114
    invoke-static {p3}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 115
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getMaxEscapeAnimDuration()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-direct {v1, p3, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SwipeHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/SwipeHelper;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/SwipeHelper;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/SwipeHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;

    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/SwipeHelper;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    return p1
.end method

.method private getFalsingThreshold()I
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    .line 642
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getMaxVelocity()F
    .locals 2

    .line 646
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    const/high16 v1, 0x457a0000    # 4000.0f

    mul-float/2addr v1, v0

    return v1
.end method

.method private getPerpendicularPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 135
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 131
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_0
    return v0
.end method

.method private getSwipeAlpha(F)F
    .locals 3
    .param p1, "progress"    # F

    .line 197
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mFadeDependingOnAmountSwiped:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 199
    sub-float/2addr v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    .line 202
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    div-float v0, p1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr v2, v0

    return v2
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;F)F
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "translation"    # F

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v0

    .line 192
    .local v0, "viewSize":F
    div-float v1, p2, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 193
    .local v1, "result":F
    iget v2, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .line 143
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 143
    :goto_0
    return v0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 229
    new-instance v0, Landroid/graphics/RectF;

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 229
    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 232
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .line 240
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object p0, v0

    check-cast p0, Landroid/view/View;

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 243
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 244
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 245
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v3

    .line 246
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 243
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 254
    :cond_0
    return-void
.end method

.method private snapChildInstantly(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 530
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    .line 531
    .local v0, "canAnimViewBeDismissed":Z
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 532
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    .line 533
    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 1
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    .line 207
    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;ZF)V
    .locals 3
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "translation"    # F

    .line 211
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;F)F

    move-result v0

    .line 212
    .local v0, "swipeProgress":F
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/systemui/SwipeHelper$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 213
    if-eqz p2, :cond_2

    .line 214
    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    if-nez v1, :cond_1

    .line 215
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 216
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 218
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 221
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/SwipeHelper;->getSwipeAlpha(F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 224
    :cond_2
    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 225
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 261
    :cond_0
    return-void
.end method

.method protected createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .line 148
    nop

    .line 149
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 148
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 150
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V
    .locals 23
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "endAction"    # Ljava/lang/Runnable;
    .param p4, "delay"    # J
    .param p6, "useAccelerateInterpolator"    # Z
    .param p7, "fixedDuration"    # J
    .param p9, "isDismissAll"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v8, p4

    .line 366
    iget-object v2, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v2, v1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v10

    .line 368
    .local v10, "canBeDismissed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v11, v2

    .line 371
    .local v11, "isLayoutRtl":Z
    const/4 v2, 0x0

    cmpl-float v5, p2, v2

    if-nez v5, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_1

    if-eqz p9, :cond_2

    :cond_1
    iget v5, v0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-ne v5, v4, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    move v12, v5

    .line 374
    .local v12, "animateUpForMenu":Z
    cmpl-float v5, p2, v2

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_3

    if-eqz p9, :cond_4

    :cond_3
    if-eqz v11, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    move v13, v5

    .line 376
    .local v13, "animateLeftForRtl":Z
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    cmpg-float v5, p2, v2

    if-ltz v5, :cond_6

    .line 377
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_7

    if-nez p9, :cond_7

    :cond_6
    goto :goto_3

    :cond_7
    move v4, v3

    :goto_3
    move v14, v4

    .line 378
    .local v14, "animateLeft":Z
    if-nez v14, :cond_9

    if-nez v13, :cond_9

    if-eqz v12, :cond_8

    goto :goto_4

    .line 381
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    goto :goto_5

    .line 379
    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    neg-float v3, v3

    .line 381
    .local v3, "newPos":F
    :goto_5
    move v7, v3

    .line 384
    .end local v3    # "newPos":F
    .local v7, "newPos":F
    const-wide/16 v15, 0x0

    cmp-long v3, p7, v15

    if-nez v3, :cond_b

    .line 385
    const-wide/16 v3, 0x190

    .line 386
    .local v3, "duration":J
    cmpl-float v2, p2, v2

    if-eqz v2, :cond_a

    .line 387
    nop

    .line 388
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    sub-float v2, v7, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v5

    .line 389
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    int-to-long v5, v2

    .line 387
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .end local v3    # "duration":J
    .local v2, "duration":J
    :goto_6
    goto :goto_7

    .line 392
    .end local v2    # "duration":J
    .restart local v3    # "duration":J
    :cond_a
    const-wide/16 v2, 0xc8

    goto :goto_6

    .line 395
    .end local v3    # "duration":J
    :cond_b
    move-wide/from16 v2, p7

    .restart local v2    # "duration":J
    :goto_7
    move-wide v5, v2

    .line 398
    .end local v2    # "duration":J
    .local v5, "duration":J
    iget-boolean v2, v0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    if-nez v2, :cond_c

    .line 399
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 401
    :cond_c
    new-instance v2, Lcom/android/systemui/SwipeHelper$2;

    invoke-direct {v2, v0, v1, v10}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    move-object v4, v2

    .line 408
    .local v4, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {v0, v1, v7, v4}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v3

    .line 409
    .local v3, "anim":Landroid/animation/Animator;
    if-nez v3, :cond_d

    .line 410
    return-void

    .line 412
    :cond_d
    if-eqz p6, :cond_e

    .line 413
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 414
    invoke-virtual {v3, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 419
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-wide/from16 v21, v5

    move/from16 v17, v7

    goto :goto_8

    .line 416
    :cond_e
    iget-object v2, v0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v17

    .line 417
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v18

    .line 416
    move-object/from16 v19, v3

    .end local v3    # "anim":Landroid/animation/Animator;
    .local v19, "anim":Landroid/animation/Animator;
    move-object/from16 v20, v4

    move/from16 v4, v17

    .end local v4    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .local v20, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-wide/from16 v21, v5

    move v5, v7

    .end local v5    # "duration":J
    .local v21, "duration":J
    move/from16 v6, p2

    move/from16 v17, v7

    move/from16 v7, v18

    .end local v7    # "newPos":F
    .local v17, "newPos":F
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 419
    :goto_8
    cmp-long v2, v8, v15

    if-lez v2, :cond_f

    .line 420
    move-object/from16 v2, v19

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_9

    .line 422
    :cond_f
    move-object/from16 v2, v19

    .end local v19    # "anim":Landroid/animation/Animator;
    .local v2, "anim":Landroid/animation/Animator;
    :goto_9
    new-instance v3, Lcom/android/systemui/SwipeHelper$3;

    move-object/from16 v4, p3

    invoke-direct {v3, v0, v1, v10, v4}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 451
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 452
    iget-object v3, v0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 454
    return-void
.end method

.method public dismissChild(Landroid/view/View;FZ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F
    .param p3, "useAccelerateInterpolator"    # Z

    .line 351
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    .line 353
    return-void
.end method

.method protected getEscapeVelocity()F
    .locals 2

    .line 650
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getUnscaledEscapeVelocity()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getMaxEscapeAnimDuration()J
    .locals 2

    .line 658
    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method protected getSize(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 179
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :goto_1
    return v0
.end method

.method protected getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 139
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    :goto_0
    return v0
.end method

.method protected getUnscaledEscapeVelocity()F
    .locals 1

    .line 654
    const/high16 v0, 0x43fa0000    # 500.0f

    return v0
.end method

.method protected getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # F
    .param p3, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 161
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    if-eqz p3, :cond_0

    .line 162
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 164
    :cond_0
    return-object v0
.end method

.method protected handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "animView"    # Landroid/view/View;
    .param p3, "velocity"    # F
    .param p4, "translation"    # F

    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public isDismissGesture(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 668
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 669
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isFalseGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFarEnough()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 670
    invoke-interface {v0, v2}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 668
    :goto_0
    return v1
.end method

.method public isFalseGesture(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 674
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v0

    .line 675
    .local v0, "falsingDetected":Z
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 676
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    nop

    :cond_0
    move v0, v2

    goto :goto_0

    .line 678
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    if-nez v1, :cond_2

    move v2, v3

    nop

    :cond_2
    move v0, v2

    .line 680
    :goto_0
    return v0
.end method

.method public onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "currView"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 512
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 265
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v0

    .line 267
    .local v0, "nmr":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->onInterceptTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    .line 269
    .end local v0    # "nmr":Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 271
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 312
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v3, :cond_6

    .line 313
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 314
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    .line 315
    .local v3, "pos":F
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v4

    .line 316
    .local v4, "perpendicularPos":F
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v5, v3, v5

    .line 317
    .local v5, "delta":F
    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    sub-float v6, v4, v6

    .line 318
    .local v6, "deltaPerpendicular":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 319
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 320
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDragged(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 321
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 322
    iput-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 323
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 324
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    .line 328
    .end local v3    # "pos":F
    .end local v4    # "perpendicularPos":F
    .end local v5    # "delta":F
    .end local v6    # "deltaPerpendicular":F
    :cond_2
    goto/16 :goto_2

    .line 333
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v1

    .line 334
    .local v3, "captured":Z
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 335
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 336
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 337
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    .line 338
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    .line 339
    if-eqz v3, :cond_6

    return v1

    .line 273
    .end local v3    # "captured":Z
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 274
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 275
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 276
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    .line 277
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 278
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 280
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 281
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/SwipeHelper;->onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 282
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 283
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    .line 285
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    .line 286
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    .line 287
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v3, :cond_5

    .line 288
    new-instance v3, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v3, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 307
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 342
    :cond_6
    :goto_2
    iget-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    nop

    :cond_8
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "totalTranslation"    # F
    .param p4, "delta"    # F

    .line 519
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 566
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-nez v0, :cond_0

    .line 567
    return v1

    .line 570
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mMenuRowIntercepting:Z

    if-nez v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 576
    return v1

    .line 581
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->cancelLongPress()V

    .line 582
    return v2

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 588
    .local v0, "action":I
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 591
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 592
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float/2addr v2, v4

    .line 593
    .local v2, "delta":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 594
    .local v4, "absDelta":F
    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->getFalsingThreshold()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_3

    .line 595
    iput-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    .line 599
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v6}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 600
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v5

    .line 601
    .local v5, "size":F
    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v5

    .line 602
    .local v6, "maxScrollDistance":F
    cmpl-float v7, v4, v5

    if-ltz v7, :cond_5

    .line 603
    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    move v3, v6

    goto :goto_0

    :cond_4
    neg-float v3, v6

    :goto_0
    move v2, v3

    goto :goto_1

    .line 605
    :cond_5
    div-float v3, v2, v5

    float-to-double v7, v3

    const-wide v9, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v3, v7

    mul-float v2, v6, v3

    .line 609
    .end local v5    # "size":F
    .end local v6    # "maxScrollDistance":F
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    add-float/2addr v5, v2

    invoke-virtual {p0, v3, v5}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 610
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    invoke-direct {p0, v3, v5}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    .line 611
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    add-float/2addr v5, v2

    invoke-virtual {p0, v3, p1, v5, v2}, Lcom/android/systemui/SwipeHelper;->onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    .line 612
    .end local v2    # "delta":F
    .end local v4    # "absDelta":F
    goto :goto_3

    .line 616
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-nez v4, :cond_7

    .line 617
    goto :goto_3

    .line 619
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->getMaxVelocity()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 620
    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v4}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v4

    .line 622
    .local v4, "velocity":F
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    invoke-virtual {p0, p1, v5, v4, v6}, Lcom/android/systemui/SwipeHelper;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z

    move-result v5

    if-nez v5, :cond_9

    .line 623
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 625
    iget-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 626
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result v5

    .line 625
    xor-int/2addr v5, v1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    goto :goto_2

    .line 629
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v6}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 630
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    .line 632
    :goto_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 634
    :cond_9
    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    .line 637
    .end local v4    # "velocity":F
    :cond_a
    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTranslationUpdate(Landroid/view/View;FZ)V
    .locals 0
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "value"    # F
    .param p3, "canBeDismissed"    # Z

    .line 526
    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    .line 527
    return-void
.end method

.method protected prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .line 461
    return-void
.end method

.method protected prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim"    # Landroid/animation/Animator;

    .line 505
    return-void
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .line 119
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    .line 120
    return-void
.end method

.method public setDisableHardwareLayers(Z)V
    .locals 0
    .param p1, "disableHwLayers"    # Z

    .line 127
    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    .line 128
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .param p1, "pagingTouchSlop"    # F

    .line 123
    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    .line 124
    return-void
.end method

.method protected setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .line 168
    if-nez p1, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_1

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 176
    :goto_0
    return-void
.end method

.method public snapChild(Landroid/view/View;FF)V
    .locals 6
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "targetLeft"    # F
    .param p3, "velocity"    # F

    .line 464
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    .line 465
    .local v0, "canBeDismissed":Z
    new-instance v1, Lcom/android/systemui/SwipeHelper$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/SwipeHelper$4;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    .line 472
    .local v1, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v2

    .line 473
    .local v2, "anim":Landroid/animation/Animator;
    if-nez v2, :cond_0

    .line 474
    return-void

    .line 476
    :cond_0
    const/16 v3, 0x96

    .line 477
    .local v3, "duration":I
    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 478
    new-instance v4, Lcom/android/systemui/SwipeHelper$5;

    invoke-direct {v4, p0, p1, v0, p2}, Lcom/android/systemui/SwipeHelper$5;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZF)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 495
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/SwipeHelper;->prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    .line 496
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    .line 497
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 498
    return-void
.end method

.method public snapChildIfNeeded(Landroid/view/View;ZF)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z
    .param p3, "targetLeft"    # F

    .line 544
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    if-eqz v0, :cond_2

    .line 545
    :cond_1
    return-void

    .line 547
    :cond_2
    const/4 v0, 0x0

    .line 548
    .local v0, "needToSnap":Z
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 549
    .local v1, "dismissPendingAnim":Landroid/animation/Animator;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 550
    const/4 v0, 0x1

    .line 551
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 552
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_4

    .line 553
    const/4 v0, 0x1

    .line 555
    :cond_4
    :goto_0
    if-eqz v0, :cond_6

    .line 556
    if-eqz p2, :cond_5

    .line 557
    invoke-virtual {p0, p1, p3, v2}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    goto :goto_1

    .line 559
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->snapChildInstantly(Landroid/view/View;)V

    .line 562
    :cond_6
    :goto_1
    return-void
.end method

.method protected swipedFarEnough()Z
    .locals 4

    .line 662
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    .line 663
    .local v0, "translation":F
    nop

    .line 664
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v2

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 663
    :goto_0
    return v1
.end method

.method protected swipedFastEnough()Z
    .locals 6

    .line 684
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v0}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v0

    .line 685
    .local v0, "velocity":F
    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 686
    .local v1, "translation":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v5, v0, v2

    if-lez v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-ne v5, v2, :cond_2

    move v3, v4

    nop

    :cond_2
    move v2, v3

    .line 688
    .local v2, "ret":Z
    return v2
.end method
