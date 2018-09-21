.class public Lcom/android/systemui/pip/phone/PipTouchHandler;
.super Ljava/lang/Object;
.source "PipTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultMovementGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

.field private mDeferResizeToNormalBoundsUntilRotation:I

.field private final mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

.field private mDisplayRotation:I

.field private mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedMovementBounds:Landroid/graphics/Rect;

.field private mExpandedShortestEdgeSize:I

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

.field private mHandler:Landroid/os/Handler;

.field private mImeHeight:I

.field private mImeOffset:I

.field private mInsetBounds:Landroid/graphics/Rect;

.field private mIsImeShowing:Z

.field private mIsMinimized:Z

.field private mIsShelfShowing:Z

.field private final mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private final mMenuListener:Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

.field private mMenuState:I

.field private final mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private mMovementBounds:Landroid/graphics/Rect;

.field private mMovementWithinDismiss:Z

.field private mMovementWithinMinimize:Z

.field private mNormalBounds:Landroid/graphics/Rect;

.field private mNormalMovementBounds:Landroid/graphics/Rect;

.field private mPinnedStackController:Landroid/view/IPinnedStackController;

.field private mSavedSnapFraction:F

.field private mSendingHoverAccessibilityEvents:Z

.field private mShelfHeight:I

.field private mShowDismissAffordance:Ljava/lang/Runnable;

.field private mShowPipMenuOnAnimationEnd:Z

.field private final mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

.field private mUpdateScrimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/shared/system/InputConsumerController;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "menuController"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p4, "inputConsumerController"    # Lcom/android/systemui/shared/system/InputConsumerController;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;Lcom/android/systemui/pip/phone/PipTouchHandler$1;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuListener:Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    .line 84
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    .line 89
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    .line 90
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 91
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    .line 92
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    .line 97
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    .line 100
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v1, Lcom/android/systemui/pip/phone/PipTouchHandler$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$1;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowDismissAffordance:Ljava/lang/Runnable;

    .line 109
    new-instance v1, Lcom/android/systemui/pip/phone/PipTouchHandler$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$2;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mUpdateScrimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 118
    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    .line 125
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 137
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    .line 576
    new-instance v1, Lcom/android/systemui/pip/phone/PipTouchHandler$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$3;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDefaultMovementGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

    .line 180
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mActivityManager:Landroid/app/IActivityManager;

    .line 182
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 183
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 184
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 185
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuListener:Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->addListener(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V

    .line 186
    new-instance v1, Lcom/android/systemui/pip/phone/PipDismissViewController;

    invoke-direct {v1, p1}, Lcom/android/systemui/pip/phone/PipDismissViewController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

    .line 187
    new-instance v1, Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/policy/PipSnapAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    .line 188
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 189
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/systemui/pip/phone/PipTouchGesture;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDefaultMovementGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    .line 192
    new-instance v0, Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/pip/phone/PipMotionHelper;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/internal/policy/PipSnapAlgorithm;Lcom/android/systemui/statusbar/FlingAnimationUtils;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 194
    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchState;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mViewConfig:Landroid/view/ViewConfiguration;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$Uq5M9Md512Sfgd22VAeFpot25E0;

    invoke-direct {v3, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$Uq5M9Md512Sfgd22VAeFpot25E0;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/pip/phone/PipTouchState;-><init>(Landroid/view/ViewConfiguration;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 199
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070507

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    .line 201
    const v1, 0x7f070508

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeOffset:I

    .line 204
    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$6VeR24MB4-xnOTUaDMT0CXNQVjE;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$6VeR24MB4-xnOTUaDMT0CXNQVjE;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    invoke-virtual {p4, v1}, Lcom/android/systemui/shared/system/InputConsumerController;->setTouchListener(Lcom/android/systemui/shared/system/InputConsumerController$TouchListener;)V

    .line 205
    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$NVpciZTELe-GnxXPZeY5rYMmqJQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$NVpciZTELe-GnxXPZeY5rYMmqJQ;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    invoke-virtual {p4, v1}, Lcom/android/systemui/shared/system/InputConsumerController;->setRegistrationListener(Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;)V

    .line 206
    invoke-virtual {p4}, Lcom/android/systemui/shared/system/InputConsumerController;->isRegistered()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    .line 207
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipDismissViewController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinMinimize:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinMinimize:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;
    .param p1, "x1"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/pip/phone/PipTouchHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowDismissAffordance:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/pip/phone/PipTouchHandler;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;
    .param p1, "x1"    # F

    .line 58
    iput p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUpDismissTarget()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateDismissFraction()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/statusbar/FlingAnimationUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mUpdateScrimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/phone/PipTouchHandler;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setMenuState(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;
    .param p1, "x1"    # Z

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setMinimizedStateInternal(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/app/IActivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method private animateToOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "animatingBounds"    # Landroid/graphics/Rect;
    .param p2, "toAdjustedBounds"    # Landroid/graphics/Rect;

    .line 342
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 343
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 346
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 347
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToOffset(Landroid/graphics/Rect;)V

    .line 348
    return-void
.end method

.method private cleanUp()V
    .locals 1

    .line 804
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    if-eqz v0, :cond_0

    .line 805
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setMinimizedStateInternal(Z)V

    .line 807
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUpDismissTarget()V

    .line 808
    return-void
.end method

.method private cleanUpDismissTarget()V
    .locals 2

    .line 796
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowDismissAffordance:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 797
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipDismissViewController;->destroyDismissTarget()V

    .line 798
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 369
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 370
    return v1

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 376
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, -0x3

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 425
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    if-eqz v0, :cond_6

    .line 426
    const/16 v0, 0x100

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 428
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setImportantForAccessibility(Z)V

    .line 429
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    invoke-virtual {v0, v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setSourceNodeId(J)V

    .line 430
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 432
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 433
    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    goto/16 :goto_5

    .line 412
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    if-nez v0, :cond_6

    .line 413
    const/16 v0, 0x80

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 415
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setImportantForAccessibility(Z)V

    .line 416
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    invoke-virtual {v0, v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->setSourceNodeId(J)V

    .line 417
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 419
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 420
    iput-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    .line 421
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_5

    .line 386
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    array-length v2, v0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 387
    .local v5, "gesture":Lcom/android/systemui/pip/phone/PipTouchGesture;
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v5, v6}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onMove(Lcom/android/systemui/pip/phone/PipTouchState;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 388
    goto :goto_1

    .line 386
    .end local v5    # "gesture":Lcom/android/systemui/pip/phone/PipTouchGesture;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 391
    :cond_2
    :goto_1
    goto :goto_5

    .line 396
    :pswitch_4
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds(I)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    array-length v2, v0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    .line 399
    .restart local v5    # "gesture":Lcom/android/systemui/pip/phone/PipTouchGesture;
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v5, v6}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onUp(Lcom/android/systemui/pip/phone/PipTouchState;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 400
    goto :goto_3

    .line 398
    .end local v5    # "gesture":Lcom/android/systemui/pip/phone/PipTouchGesture;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 407
    :cond_4
    :goto_3
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->reset()V

    .line 408
    goto :goto_5

    .line 378
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    array-length v2, v0

    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    .line 381
    .restart local v5    # "gesture":Lcom/android/systemui/pip/phone/PipTouchGesture;
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v5, v6}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onDown(Lcom/android/systemui/pip/phone/PipTouchState;)V

    .line 380
    .end local v5    # "gesture":Lcom/android/systemui/pip/phone/PipTouchGesture;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 383
    :cond_5
    nop

    .line 438
    :cond_6
    :goto_5
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    move v1, v3

    :goto_6
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic lambda$1nY3kLe318Fm3UtIAbDmSK80h7w(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onAccessibilityShowMenu()V

    return-void
.end method

.method public static synthetic lambda$6VeR24MB4-xnOTUaDMT0CXNQVjE(Lcom/android/systemui/pip/phone/PipTouchHandler;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$NVpciZTELe-GnxXPZeY5rYMmqJQ(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 6

    .line 195
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v5

    .line 195
    const/4 v1, 0x2

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method private onAccessibilityShowMenu()V
    .locals 6

    .line 363
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 364
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v5

    .line 363
    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 365
    return-void
.end method

.method private onRegistrationChanged(Z)V
    .locals 5
    .param p1, "isRegistered"    # Z

    .line 351
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    .line 352
    new-instance v1, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    new-instance v3, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$1nY3kLe318Fm3UtIAbDmSK80h7w;

    invoke-direct {v3, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$1nY3kLe318Fm3UtIAbDmSK80h7w;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;Landroid/os/Handler;)V

    goto :goto_0

    .line 353
    :cond_0
    const/4 v1, 0x0

    .line 351
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    .line 355
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUpDismissTarget()V

    .line 360
    :cond_1
    return-void
.end method

.method private setMenuState(IZ)V
    .locals 12
    .param p1, "menuState"    # I
    .param p2, "resize"    # Z

    .line 513
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 517
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 518
    .local v2, "expandedBounds":Landroid/graphics/Rect;
    if-eqz p2, :cond_0

    .line 519
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToExpandedState(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 522
    .end local v2    # "expandedBounds":Landroid/graphics/Rect;
    :cond_0
    goto :goto_1

    :cond_1
    if-nez p1, :cond_5

    .line 525
    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p2, :cond_4

    .line 526
    iget v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 536
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    invoke-interface {v3}, Landroid/view/IPinnedStackController;->getDisplayRotation()I

    move-result v3

    .line 537
    .local v3, "displayRotation":I
    iget v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDisplayRotation:I

    if-eq v5, v3, :cond_2

    .line 538
    iput v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    .end local v3    # "displayRotation":I
    :cond_2
    goto :goto_0

    .line 540
    :catch_0
    move-exception v3

    .line 541
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "PipTouchHandler"

    const-string v6, "Could not get display rotation from controller"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    iget v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    if-ne v3, v4, :cond_5

    .line 546
    new-instance v6, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 547
    .local v6, "normalBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget-boolean v10, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 550
    iput v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 551
    .end local v6    # "normalBounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 555
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    .line 556
    iput v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 559
    :cond_5
    :goto_1
    iput p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    .line 560
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds(I)V

    .line 561
    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    .line 562
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    if-ne p1, v1, :cond_6

    move v0, v2

    nop

    :cond_6
    invoke-static {v3, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureMenuVisible(Landroid/content/Context;Z)V

    .line 564
    :cond_7
    return-void
.end method

.method private setMinimizedStateInternal(Z)V
    .locals 0
    .param p1, "isMinimized"    # Z

    .line 475
    return-void
.end method

.method private updateDismissFraction()V
    .locals 6

    .line 448
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-nez v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 450
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    .line 451
    .local v1, "target":F
    const/4 v2, 0x0

    .line 452
    .local v2, "fraction":F
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    .line 453
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    .line 454
    .local v3, "distance":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 456
    .end local v3    # "distance":F
    :cond_0
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isMenuActivityVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 458
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v3, v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setDismissFraction(F)V

    .line 461
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "target":F
    .end local v2    # "fraction":F
    :cond_2
    return-void
.end method

.method private updateMovementBounds(I)V
    .locals 4
    .param p1, "menuState"    # I

    .line 781
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 782
    .local v1, "isMenuExpanded":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 783
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    goto :goto_1

    .line 784
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    :goto_1
    iput-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 786
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    nop

    :cond_2
    invoke-interface {v2, v0}, Landroid/view/IPinnedStackController;->setMinEdgeSize(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    goto :goto_2

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PipTouchHandler"

    const-string v3, "Could not set minimized state"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 790
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private willResizeMenu()Z
    .locals 2

    .line 814
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    .line 815
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 814
    :goto_1
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PipTouchHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mMovementBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mNormalBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mNormalMovementBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mExpandedBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mExpandedMovementBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mMenuState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mIsMinimized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mIsImeShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mImeHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mIsShelfShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsShelfShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mShelfHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShelfHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSavedSnapFraction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mEnableDragToEdgeDismiss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mEnableMinimize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 836
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/pip/phone/PipTouchState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 837
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method public getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-object v0
.end method

.method public onActivityPinned()V
    .locals 1

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUp()V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    .line 224
    return-void
.end method

.method public onActivityUnpinned(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "topPipActivity"    # Landroid/content/ComponentName;

    .line 227
    if-nez p1, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUp()V

    .line 231
    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->onConfigurationChanged()V

    .line 246
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 247
    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 0
    .param p1, "imeVisible"    # Z
    .param p2, "imeHeight"    # I

    .line 250
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    .line 251
    iput p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    .line 252
    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    .locals 20
    .param p1, "insetBounds"    # Landroid/graphics/Rect;
    .param p2, "normalBounds"    # Landroid/graphics/Rect;
    .param p3, "animatingBounds"    # Landroid/graphics/Rect;
    .param p4, "fromImeAdjustment"    # Z
    .param p5, "fromShelfAdjustment"    # Z
    .param p6, "displayRotation"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 261
    move/from16 v4, p6

    iget-boolean v5, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget v5, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    goto :goto_0

    :cond_0
    move v5, v6

    .line 264
    .local v5, "bottomOffset":I
    :goto_0
    move-object/from16 v14, p2

    iput-object v14, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    .line 265
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object v15, v7

    .line 266
    .local v15, "normalMovementBounds":Landroid/graphics/Rect;
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v1, v15, v5}, Lcom/android/internal/policy/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v13, v7, v8

    .line 271
    .local v13, "aspectRatio":F
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    move-object v12, v7

    .line 272
    .local v12, "displaySize":Landroid/graphics/Point;
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 273
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    int-to-float v8, v8

    iget v9, v12, Landroid/graphics/Point;->x:I

    iget v10, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v13, v8, v9, v10}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSizeForAspectRatio(FFII)Landroid/util/Size;

    move-result-object v11

    .line 275
    .local v11, "expandedSize":Landroid/util/Size;
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-virtual {v7, v6, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 276
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v7

    .line 277
    .local v10, "expandedMovementBounds":Landroid/graphics/Rect;
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8, v1, v10, v5}, Lcom/android/internal/policy/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 282
    if-nez p4, :cond_2

    if-eqz p5, :cond_1

    goto :goto_2

    .line 325
    :cond_1
    :goto_1
    move/from16 v16, v5

    goto/16 :goto_7

    .line 283
    :cond_2
    :goto_2
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v7}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 287
    :cond_3
    iget-boolean v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    iget v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeOffset:I

    add-int/2addr v7, v8

    goto :goto_3

    .line 288
    :cond_4
    move v7, v6

    :goto_3
    iget-boolean v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsShelfShowing:Z

    if-eqz v8, :cond_5

    iget v6, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShelfHeight:I

    nop

    .line 287
    :cond_5
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 289
    .local v6, "adjustedOffset":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 290
    .local v7, "normalAdjustedBounds":Landroid/graphics/Rect;
    iget-object v8, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v9, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v1, v7, v6}, Lcom/android/internal/policy/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 292
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 293
    .local v8, "expandedAdjustedBounds":Landroid/graphics/Rect;
    iget-object v9, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    move/from16 v16, v5

    iget-object v5, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    .end local v5    # "bottomOffset":I
    .local v16, "bottomOffset":I
    invoke-virtual {v9, v5, v1, v8, v6}, Lcom/android/internal/policy/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 295
    iget v5, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    const/4 v9, 0x2

    if-ne v5, v9, :cond_6

    .line 296
    nop

    .line 297
    move-object v5, v8

    goto :goto_4

    :cond_6
    move-object v5, v7

    .line 298
    .local v5, "toAdjustedBounds":Landroid/graphics/Rect;
    :goto_4
    move/from16 v17, v6

    iget v6, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    .end local v6    # "adjustedOffset":I
    .local v17, "adjustedOffset":I
    if-ne v6, v9, :cond_7

    .line 299
    nop

    .line 300
    move-object v6, v10

    goto :goto_5

    :cond_7
    move-object v6, v15

    .line 304
    .local v6, "toMovementBounds":Landroid/graphics/Rect;
    :goto_5
    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v18, v7

    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .end local v7    # "normalAdjustedBounds":Landroid/graphics/Rect;
    .local v18, "normalAdjustedBounds":Landroid/graphics/Rect;
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v7, :cond_8

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v9, :cond_8

    .line 306
    return-void

    .line 311
    :cond_8
    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v9, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v9

    .line 312
    .local v7, "movementBoundsAdjustment":I
    if-eqz p4, :cond_9

    iget v9, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeOffset:I

    goto :goto_6

    :cond_9
    iget v9, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShelfHeight:I

    .line 313
    .local v9, "offsetAdjustment":I
    :goto_6
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v19, v6

    iget-object v6, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .end local v6    # "toMovementBounds":Landroid/graphics/Rect;
    .local v19, "toMovementBounds":Landroid/graphics/Rect;
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v6, :cond_a

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int/2addr v6, v9

    if-ge v3, v6, :cond_a

    .line 316
    return-void

    .line 319
    :cond_a
    invoke-direct {v0, v2, v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->animateToOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 325
    .end local v5    # "toAdjustedBounds":Landroid/graphics/Rect;
    .end local v7    # "movementBoundsAdjustment":I
    .end local v8    # "expandedAdjustedBounds":Landroid/graphics/Rect;
    .end local v9    # "offsetAdjustment":I
    .end local v17    # "adjustedOffset":I
    .end local v18    # "normalAdjustedBounds":Landroid/graphics/Rect;
    .end local v19    # "toMovementBounds":Landroid/graphics/Rect;
    :goto_7
    iput-object v15, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 326
    iput-object v10, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    .line 327
    iput v4, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDisplayRotation:I

    .line 328
    iget-object v3, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 329
    iget v3, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    invoke-direct {v0, v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds(I)V

    .line 332
    iget v3, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    if-ne v3, v4, :cond_b

    .line 333
    iget-object v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget v9, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    iget-object v3, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget-boolean v6, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    const/16 v17, 0x1

    move-object v8, v14

    move-object/from16 v18, v10

    move-object v10, v3

    .end local v10    # "expandedMovementBounds":Landroid/graphics/Rect;
    .local v18, "expandedMovementBounds":Landroid/graphics/Rect;
    move-object v3, v11

    move-object v11, v5

    .end local v11    # "expandedSize":Landroid/util/Size;
    .local v3, "expandedSize":Landroid/util/Size;
    move-object v5, v12

    move v12, v6

    .end local v12    # "displaySize":Landroid/graphics/Point;
    .local v5, "displaySize":Landroid/graphics/Point;
    move v6, v13

    move/from16 v13, v17

    .end local v13    # "aspectRatio":F
    .local v6, "aspectRatio":F
    invoke-virtual/range {v7 .. v13}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 336
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 337
    const/4 v7, -0x1

    iput v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    goto :goto_8

    .line 339
    .end local v3    # "expandedSize":Landroid/util/Size;
    .end local v5    # "displaySize":Landroid/graphics/Point;
    .end local v6    # "aspectRatio":F
    .end local v18    # "expandedMovementBounds":Landroid/graphics/Rect;
    .restart local v10    # "expandedMovementBounds":Landroid/graphics/Rect;
    .restart local v11    # "expandedSize":Landroid/util/Size;
    .restart local v12    # "displaySize":Landroid/graphics/Point;
    .restart local v13    # "aspectRatio":F
    :cond_b
    move-object/from16 v18, v10

    move-object v3, v11

    move-object v5, v12

    move v6, v13

    .end local v10    # "expandedMovementBounds":Landroid/graphics/Rect;
    .end local v11    # "expandedSize":Landroid/util/Size;
    .end local v12    # "displaySize":Landroid/graphics/Point;
    .end local v13    # "aspectRatio":F
    .restart local v3    # "expandedSize":Landroid/util/Size;
    .restart local v5    # "displaySize":Landroid/graphics/Point;
    .restart local v6    # "aspectRatio":F
    .restart local v18    # "expandedMovementBounds":Landroid/graphics/Rect;
    :goto_8
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 7

    .line 235
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    .line 242
    :cond_0
    return-void
.end method

.method public onShelfVisibilityChanged(ZI)V
    .locals 0
    .param p1, "shelfVisible"    # Z
    .param p2, "shelfHeight"    # I

    .line 255
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsShelfShowing:Z

    .line 256
    iput p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShelfHeight:I

    .line 257
    return-void
.end method

.method setMinimizedState(ZZ)V
    .locals 0
    .param p1, "isMinimized"    # Z
    .param p2, "fromController"    # Z

    .line 485
    return-void
.end method

.method setPinnedStackController(Landroid/view/IPinnedStackController;)V
    .locals 0
    .param p1, "controller"    # Landroid/view/IPinnedStackController;

    .line 467
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    .line 468
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 210
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->setAllowTouches(Z)V

    .line 211
    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 7

    .line 215
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v6

    .line 216
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 219
    :cond_0
    return-void
.end method
