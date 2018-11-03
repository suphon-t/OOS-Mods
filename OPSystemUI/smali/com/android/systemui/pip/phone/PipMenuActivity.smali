.class public Lcom/android/systemui/pip/phone/PipMenuActivity;
.super Landroid/app/Activity;
.source "PipMenuActivity.java"


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mActionsGroup:Landroid/widget/LinearLayout;

.field private mAllowMenuTimeout:Z

.field private mAllowTouches:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBetweenActionPaddingLand:I

.field private mDismissButton:Landroid/view/View;

.field private mDownDelta:Landroid/graphics/PointF;

.field private mDownPosition:Landroid/graphics/PointF;

.field private mExpandButton:Landroid/widget/ImageView;

.field private final mFinishRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mMenuContainer:Landroid/view/View;

.field private mMenuContainerAnimator:Landroid/animation/AnimatorSet;

.field private mMenuState:I

.field private mMessenger:Landroid/os/Messenger;

.field private mSettingsButton:Landroid/view/View;

.field private mToControllerMessenger:Landroid/os/Messenger;

.field private mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

.field private mViewConfig:Landroid/view/ViewConfiguration;

.field private mViewRoot:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    .line 122
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$1;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 132
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    .line 133
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/systemui/pip/phone/PipMenuActivity$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$2;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMessenger:Landroid/os/Messenger;

    .line 176
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivity$3;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipMenuActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivity;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipMenuActivity;ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Rect;
    .param p3, "x3"    # Landroid/graphics/Rect;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .line 85
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivity;

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivity;

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Ljava/util/List;

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setActions(Landroid/graphics/Rect;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/phone/PipMenuActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "x1"    # F

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateDismissFraction(F)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/pip/phone/PipMenuActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "x1"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/phone/PipMenuActivity;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivity;
    .param p1, "x1"    # J

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(J)V

    return-void
.end method

.method private cancelDelayedFinish()V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 655
    return-void
.end method

.method private dismissPip()V
    .locals 3

    .line 604
    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$weQyiNuJwLOKUWjUW7mpOSx5zcU;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$weQyiNuJwLOKUWjUW7mpOSx5zcU;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;ZZ)V

    .line 608
    return-void
.end method

.method private expandPip()V
    .locals 2

    .line 590
    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$sQIS0_EJLF5pKWoVedM1LEW2Sl8;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$sQIS0_EJLF5pKWoVedM1LEW2Sl8;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;ZZ)V

    .line 594
    return-void
.end method

.method private hideMenu()V
    .locals 3

    .line 399
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;ZZ)V

    .line 401
    return-void
.end method

.method private hideMenu(Ljava/lang/Runnable;ZZ)V
    .locals 10
    .param p1, "animationFinishedRunnable"    # Ljava/lang/Runnable;
    .param p2, "notifyMenuVisibility"    # Z
    .param p3, "isDismissing"    # Z

    .line 405
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz v0, :cond_1

    .line 406
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    .line 407
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 408
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyMenuStateChange(I)V

    .line 410
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 411
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    .line 412
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v4, v6

    .line 411
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 413
    .local v1, "menuAnim":Landroid/animation/ObjectAnimator;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 414
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v3, [F

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    .line 415
    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v7, v0

    aput v5, v7, v6

    .line 414
    invoke-static {v2, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 416
    .local v2, "settingsAnim":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v3, [F

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    .line 417
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v9

    aput v9, v8, v0

    aput v5, v8, v6

    .line 416
    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 418
    .local v4, "dismissAnim":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v1, v7, v0

    aput-object v2, v7, v6

    aput-object v4, v7, v3

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 419
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v5, 0x7d

    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 421
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/pip/phone/PipMenuActivity$5;

    invoke-direct {v3, p0, p1, p3}, Lcom/android/systemui/pip/phone/PipMenuActivity$5;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;Ljava/lang/Runnable;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 435
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 436
    .end local v1    # "menuAnim":Landroid/animation/ObjectAnimator;
    .end local v2    # "settingsAnim":Landroid/animation/ObjectAnimator;
    .end local v4    # "dismissAnim":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    .line 440
    :goto_0
    return-void
.end method

.method public static synthetic lambda$dismissPip$10(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 2

    .line 605
    const-string v0, "Could not notify controller to dismiss PIP"

    const/16 v1, 0x67

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendEmptyMessage(ILjava/lang/String;)V

    .line 607
    return-void
.end method

.method public static synthetic lambda$expandPip$9(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 2

    .line 591
    const-string v0, "Could not notify controller to expand PIP"

    const/16 v1, 0x65

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendEmptyMessage(ILjava/lang/String;)V

    .line 593
    return-void
.end method

.method static synthetic lambda$onBusEvent$4(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 1
    .param p0, "event"    # Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 344
    return-void
.end method

.method public static synthetic lambda$onBusEvent$5(Lcom/android/systemui/pip/phone/PipMenuActivity;Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    .line 342
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$idKF4VdYnYDo8ZJQTwZmzYn4EG8;

    invoke-direct {v1, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$idKF4VdYnYDo8ZJQTwZmzYn4EG8;-><init>(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/android/systemui/pip/phone/PipMenuActivity;)V
    .locals 2

    .line 189
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showPipMenu()V

    goto :goto_0

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->expandPip()V

    .line 194
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 207
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0, p2}, Lcom/android/systemui/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 208
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isDoubleTap()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isWaitingForDoubleTap()Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-ne v0, v1, :cond_4

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showPipMenu()V

    goto :goto_1

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->scheduleDoubleTapTimeoutCallback()V

    goto :goto_1

    .line 212
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->expandPip()V

    .line 227
    :cond_4
    :goto_1
    return v1
.end method

.method public static synthetic lambda$onCreate$2(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showSettings()V

    .line 233
    return-void
.end method

.method public static synthetic lambda$onCreate$3(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->dismissPip()V

    .line 238
    return-void
.end method

.method static synthetic lambda$updateActionViews$6(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 481
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$updateActionViews$7(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "actionView"    # Landroid/widget/ImageView;
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 513
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 514
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 515
    return-void
.end method

.method static synthetic lambda$updateActionViews$8(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 3
    .param p0, "action"    # Landroid/app/RemoteAction;
    .param p1, "v"    # Landroid/view/View;

    .line 520
    :try_start_0
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "PipMenuActivity"

    const-string v2, "Failed to send action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method

.method private notifyActivityCallback(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "callback"    # Landroid/os/Messenger;

    .line 630
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 631
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 632
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 633
    const-string v1, "Could not notify controller of activity finished"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method private notifyMenuStateChange(I)V
    .locals 2
    .param p1, "menuState"    # I

    .line 580
    iput p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    .line 581
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 582
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 583
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 584
    const-string v1, "Could not notify controller of PIP menu visibility"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method private notifyRegisterInputConsumer()V
    .locals 2

    .line 568
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 569
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 570
    const-string v1, "Could not notify controller to register input consumer"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method private notifyUnregisterInputConsumer()V
    .locals 2

    .line 574
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 575
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 576
    const-string v1, "Could not notify controller to unregister input consumer"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method private repostDelayedFinish(J)V
    .locals 2
    .param p1, "delay"    # J

    .line 658
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 659
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 660
    return-void
.end method

.method private sendEmptyMessage(ILjava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 637
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 638
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 639
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method private sendMessage(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 643
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 644
    return-void

    .line 647
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PipMenuActivity"

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private setActions(Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 1
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 471
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 472
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 473
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateActionViews(Landroid/graphics/Rect;)V

    .line 474
    return-void
.end method

.method private showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 15
    .param p1, "menuState"    # I
    .param p2, "stackBounds"    # Landroid/graphics/Rect;
    .param p3, "movementBounds"    # Landroid/graphics/Rect;
    .param p4, "allowMenuTimeout"    # Z
    .param p5, "resizeMenuOnShow"    # Z

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    .line 351
    iput-boolean v2, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    .line 352
    iget v3, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eq v3, v1, :cond_6

    .line 355
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz p5, :cond_1

    iget v6, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eq v6, v5, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v3

    .line 357
    .local v6, "disallowTouchesUntilAnimationEnd":Z
    :goto_0
    if-nez v6, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_1
    iput-boolean v7, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    .line 358
    invoke-direct {v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    .line 359
    move-object/from16 v7, p2

    invoke-direct {v0, v7}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateActionViews(Landroid/graphics/Rect;)V

    .line 360
    iget-object v8, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_3

    .line 361
    iget-object v8, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 363
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyMenuStateChange(I)V

    .line 364
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    .line 365
    iget-object v8, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v5, [F

    iget-object v11, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    .line 366
    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v11

    aput v11, v10, v3

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v10, v4

    .line 365
    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 367
    .local v8, "menuAnim":Landroid/animation/ObjectAnimator;
    iget-object v9, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuBgUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    iget-object v9, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v5, [F

    iget-object v13, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    .line 369
    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v12, v3

    aput v11, v12, v4

    .line 368
    invoke-static {v9, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 370
    .local v9, "settingsAnim":Landroid/animation/ObjectAnimator;
    iget-object v10, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v13, v5, [F

    iget-object v14, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    .line 371
    invoke-virtual {v14}, Landroid/view/View;->getAlpha()F

    move-result v14

    aput v14, v13, v3

    aput v11, v13, v4

    .line 370
    invoke-static {v10, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 372
    .local v10, "dismissAnim":Landroid/animation/ObjectAnimator;
    if-ne v1, v5, :cond_4

    .line 373
    iget-object v11, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const/4 v12, 0x3

    new-array v12, v12, [Landroid/animation/Animator;

    aput-object v8, v12, v3

    aput-object v9, v12, v4

    aput-object v10, v12, v5

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    .line 375
    :cond_4
    iget-object v5, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v10, v4, v3

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 377
    :goto_2
    iget-object v3, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    sget-object v4, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 378
    iget-object v3, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 379
    if-eqz v2, :cond_5

    .line 380
    iget-object v3, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/systemui/pip/phone/PipMenuActivity$4;

    invoke-direct {v4, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity$4;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 387
    :cond_5
    iget-object v3, v0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainerAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 388
    .end local v6    # "disallowTouchesUntilAnimationEnd":Z
    .end local v8    # "menuAnim":Landroid/animation/ObjectAnimator;
    .end local v9    # "settingsAnim":Landroid/animation/ObjectAnimator;
    .end local v10    # "dismissAnim":Landroid/animation/ObjectAnimator;
    goto :goto_3

    .line 391
    :cond_6
    move-object/from16 v7, p2

    if-eqz v2, :cond_7

    .line 392
    const-wide/16 v3, 0x7d0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(J)V

    .line 394
    :cond_7
    invoke-direct {v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyUnregisterInputConsumer()V

    .line 396
    :goto_3
    return-void
.end method

.method private showPipMenu()V
    .locals 2

    .line 611
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 612
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 613
    const-string v1, "Could not notify controller to show PIP menu"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->sendMessage(Landroid/os/Message;Ljava/lang/String;)V

    .line 614
    return-void
.end method

.method private showSettings()V
    .locals 7

    .line 617
    nop

    .line 618
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;

    move-result-object v0

    .line 619
    .local v0, "topPipActivityInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 620
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 621
    .local v1, "user":Landroid/os/UserHandle;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    const-string v4, "package"

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/content/ComponentName;

    .line 622
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 623
    .local v2, "settingsIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 624
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 625
    invoke-virtual {p0, v2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 627
    .end local v1    # "user":Landroid/os/UserHandle;
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateActionViews(Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .line 477
    const v0, 0x7f0a0147

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 478
    .local v0, "expandContainer":Landroid/view/ViewGroup;
    const v1, 0x7f0a003c

    invoke-virtual {p0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 479
    .local v1, "actionsContainer":Landroid/view/ViewGroup;
    sget-object v2, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$prlS0AxFAmEMc0_yZo5E_c39l7w;->INSTANCE:Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$prlS0AxFAmEMc0_yZo5E_c39l7w;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 484
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto/16 :goto_7

    .line 487
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 488
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_8

    .line 490
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 491
    .local v4, "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 492
    const v5, 0x7f0d0164

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 494
    .local v5, "actionView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    .end local v5    # "actionView":Landroid/widget/ImageView;
    goto :goto_0

    .line 498
    :cond_1
    move v5, v2

    .local v5, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 499
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 500
    nop

    .line 499
    move v7, v2

    goto :goto_2

    .line 501
    :cond_2
    const/16 v7, 0x8

    .line 499
    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 498
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 505
    .end local v5    # "i":I
    :cond_3
    if-eqz p1, :cond_4

    .line 506
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    .line 507
    .local v3, "isLandscapePip":Z
    :goto_3
    move v5, v2

    .restart local v5    # "i":I
    :goto_4
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 508
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/RemoteAction;

    .line 509
    .local v6, "action":Landroid/app/RemoteAction;
    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 512
    .local v7, "actionView":Landroid/widget/ImageView;
    invoke-virtual {v6}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$fxW-izLakccq2_j5U2b3Qo5rIPg;

    invoke-direct {v9, v7}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$fxW-izLakccq2_j5U2b3Qo5rIPg;-><init>(Landroid/widget/ImageView;)V

    iget-object v10, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, p0, v9, v10}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 516
    invoke-virtual {v6}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 517
    invoke-virtual {v6}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 518
    new-instance v8, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$WLjMA-hQU0B__oeUYPVbjNEvoE4;

    invoke-direct {v8, v6}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$WLjMA-hQU0B__oeUYPVbjNEvoE4;-><init>(Landroid/app/RemoteAction;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    :cond_5
    invoke-virtual {v6}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 527
    invoke-virtual {v6}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    const v8, 0x3f0a3d71    # 0.54f

    :goto_5
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 530
    nop

    .line 531
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 532
    .local v8, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_7

    if-lez v5, :cond_7

    iget v9, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBetweenActionPaddingLand:I

    goto :goto_6

    :cond_7
    move v9, v2

    :goto_6
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 507
    .end local v6    # "action":Landroid/app/RemoteAction;
    .end local v7    # "actionView":Landroid/widget/ImageView;
    .end local v8    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 538
    .end local v3    # "isLandscapePip":Z
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "i":I
    :cond_8
    nop

    .line 539
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 540
    .local v2, "expandedLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070541

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 542
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070546

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 544
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .end local v2    # "expandedLp":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_8

    .line 485
    :cond_9
    :goto_7
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 546
    :goto_8
    return-void
.end method

.method private updateDismissFraction(F)V
    .locals 5
    .param p1, "fraction"    # F

    .line 550
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 551
    .local v0, "menuAlpha":F
    iget v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/high16 v2, 0x437f0000    # 255.0f

    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 553
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 554
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 555
    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v0

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    .line 557
    .local v1, "interpolatedAlpha":F
    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 558
    .local v1, "alpha":I
    goto :goto_0

    .line 559
    .end local v1    # "alpha":I
    :cond_0
    iget v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 560
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 562
    :cond_1
    mul-float/2addr v3, p1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 564
    .restart local v1    # "alpha":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 565
    return-void
.end method

.method private updateFromIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .line 443
    const-string v0, "messenger"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    .line 444
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mToControllerMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 445
    const-string v0, "PipMenuActivity"

    const-string v1, "Controller messenger is null. Stopping."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    .line 447
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMessenger:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    .line 452
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 454
    const-string v0, "actions"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 455
    .local v0, "actions":Landroid/content/pm/ParceledListSlice;
    if-eqz v0, :cond_1

    .line 456
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 457
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActions:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 460
    :cond_1
    const-string v1, "menu_state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 461
    .local v1, "menuState":I
    if-eqz v1, :cond_2

    .line 462
    const-string/jumbo v3, "stack_bounds"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/graphics/Rect;

    .line 463
    .local v9, "stackBounds":Landroid/graphics/Rect;
    const-string v3, "movement_bounds"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/graphics/Rect;

    .line 464
    .local v10, "movementBounds":Landroid/graphics/Rect;
    const-string v3, "allow_timeout"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 465
    .local v11, "allowMenuTimeout":Z
    const-string v3, "resize_menu_on_show"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 466
    .local v2, "willResizeMenu":Z
    move-object v3, p0

    move v4, v1

    move-object v5, v9

    move-object v6, v10

    move v7, v11

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/pip/phone/PipMenuActivity;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 468
    .end local v2    # "willResizeMenu":Z
    .end local v9    # "stackBounds":Landroid/graphics/Rect;
    .end local v10    # "movementBounds":Landroid/graphics/Rect;
    .end local v11    # "allowMenuTimeout":Z
    :cond_2
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 297
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowTouches:Z

    if-nez v0, :cond_0

    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 302
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 304
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    .line 305
    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz v0, :cond_4

    .line 315
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyRegisterInputConsumer()V

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    goto :goto_0

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDownDelta:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 309
    nop

    .line 320
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1

    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    .line 326
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->overridePendingTransition(II)V

    .line 329
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    .line 337
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuState:I

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 341
    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$OClXKrB04C_HJML8JetH5RxAXJQ;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$OClXKrB04C_HJML8JetH5RxAXJQ;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu(Ljava/lang/Runnable;ZZ)V

    .line 347
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 187
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 188
    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchState;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewConfig:Landroid/view/ViewConfiguration;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$sJi0SxOuGngGF8xURDQ1Bnt0G_E;

    invoke-direct {v3, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$sJi0SxOuGngGF8xURDQ1Bnt0G_E;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/pip/phone/PipTouchState;-><init>(Landroid/view/ViewConfiguration;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20040000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    const v0, 0x7f0d0165

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setContentView(I)V

    .line 200
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 202
    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewRoot:Landroid/view/View;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mViewRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 204
    const v0, 0x7f0a024a

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mMenuContainer:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$WvtwNwFY4S4VeIJ5ZxsSTL51DAs;

    invoke-direct {v2, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$WvtwNwFY4S4VeIJ5ZxsSTL51DAs;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 229
    const v0, 0x7f0a03bf

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mSettingsButton:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$70yHDyzrwE1GNEVEQrmSEL7H6fY;

    invoke-direct {v2, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$70yHDyzrwE1GNEVEQrmSEL7H6fY;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v0, 0x7f0a011b

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    .line 235
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mDismissButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$XrbqAt128TykA2bnzcA2djOz8lo;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivity$XrbqAt128TykA2bnzcA2djOz8lo;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    const v0, 0x7f0a003d

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mActionsGroup:Landroid/widget/LinearLayout;

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070543

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mBetweenActionPaddingLand:I

    .line 242
    const v0, 0x7f0a0146

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mExpandButton:Landroid/widget/ImageView;

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateFromIntent(Landroid/content/Intent;)V

    .line 245
    const v0, 0x7f110485

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setTitle(I)V

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->setDisablePreviewScreenshots(Z)V

    .line 247
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->notifyActivityCallback(Landroid/os/Messenger;)V

    .line 286
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->updateFromIntent(Landroid/content/Intent;)V

    .line 253
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0
    .param p1, "isInPictureInPictureMode"    # Z

    .line 290
    if-nez p1, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->finish()V

    .line 293
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->cancelDelayedFinish()V

    .line 276
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity;->mAllowMenuTimeout:Z

    if-eqz v0, :cond_0

    .line 258
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->repostDelayedFinish(J)V

    .line 260
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->hideMenu()V

    .line 269
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 334
    return-void
.end method
