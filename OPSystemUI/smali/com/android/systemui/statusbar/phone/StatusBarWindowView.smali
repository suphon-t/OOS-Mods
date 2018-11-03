.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.super Landroid/widget/FrameLayout;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;
    }
.end annotation


# instance fields
.field private mBrightnessMirror:Landroid/view/View;

.field private mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

.field private mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field private mExpandAnimationPending:Z

.field private mExpandAnimationRunning:Z

.field private mFakeWindow:Landroid/view/Window;

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mLeftInset:I

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mRightInset:I

.field private mService:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mTouchActive:Z

.field private mTouchCancelled:Z

.field private final mTransparentSrcPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    .line 90
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    .line 93
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    .line 618
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFakeWindow:Landroid/view/Window;

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setMotionEventSplittingEnabled(Z)V

    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 112
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 113
    new-instance v0, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    sget-object v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowView$54_FzTc3fT8lNrZW41sYOtiGEgM;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowView$54_FzTc3fT8lNrZW41sYOtiGEgM;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowView$BAuOQoqmlMZAVWY0NirR_GReGxs;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowView$BAuOQoqmlMZAVWY0NirR_GReGxs;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method private applyMargins()V
    .locals 6

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getChildCount()I

    move-result v0

    .line 158
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 159
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 160
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    if-eqz v3, :cond_1

    .line 161
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    .line 162
    .local v3, "lp":Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->ignoreRightInset:Z

    if-nez v4, :cond_1

    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->rightMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-ne v4, v5, :cond_0

    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->leftMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eq v4, v5, :cond_1

    .line 164
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    iput v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->rightMargin:I

    .line 165
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    iput v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->leftMargin:I

    .line 166
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 158
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 552
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 557
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 558
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 560
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 562
    :cond_2
    return-void
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback2;

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 526
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cleanupFloatingActionModeViews()V

    .line 527
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFakeWindow:Landroid/view/Window;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 528
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar;)V

    .line 530
    .local v0, "mode":Lcom/android/internal/view/FloatingActionMode;
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 531
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 539
    return-object v0
.end method

.method static synthetic lambda$new$0(Z)V
    .locals 0
    .param p0, "active"    # Z

    .line 113
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;)V

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 543
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 546
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 547
    return-void
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 3
    .param p1, "originatingView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 566
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ActionMode$Callback;)V

    .line 567
    .local v0, "wrappedCallback":Landroid/view/ActionMode$Callback2;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object v1

    .line 568
    .local v1, "mode":Landroid/view/ActionMode;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    goto :goto_0

    .line 571
    :cond_0
    const/4 v1, 0x0

    .line 573
    :goto_0
    return-object v1
.end method


# virtual methods
.method public cancelCurrentTouch()V
    .locals 11

    .line 468
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    if-eqz v0, :cond_0

    .line 469
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 470
    .local v9, "now":J
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 472
    .local v0, "event":Landroid/view/MotionEvent;
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 473
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 474
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 475
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    .line 477
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v9    # "now":J
    :cond_0
    return-void
.end method

.method public cancelExpandHelper()V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelExpandHelper()V

    .line 465
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 232
    .local v0, "interceptMediaKey":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 233
    sget-boolean v2, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    const-string v2, "StatusBarWindowView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intercept MediaKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    return v1

    .line 237
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 238
    .local v2, "dispatch":Z
    if-eqz v2, :cond_3

    .line 239
    sget-boolean v3, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_2

    const-string v3, "StatusBarWindowView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intercept KeyEvent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_2
    return v1

    .line 243
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_0

    :cond_4
    move v3, v4

    .line 244
    .local v3, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_9

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_7

    const/16 v6, 0x52

    if-eq v5, v6, :cond_6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 262
    :pswitch_0
    sget-boolean v5, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_5

    const-string v5, "StatusBarWindowView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " dispatchKeyEvent getKeyCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " isDozing:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 265
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v4

    const/high16 v5, -0x80000000

    invoke-virtual {v4, p1, v5, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 267
    return v1

    .line 251
    :cond_6
    if-nez v3, :cond_7

    .line 252
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onMenuPressed()Z

    move-result v1

    return v1

    .line 255
    :cond_7
    if-nez v3, :cond_8

    .line 256
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onSpacePressed()Z

    move-result v1

    return v1

    .line 271
    :cond_8
    :goto_1
    return v4

    .line 246
    :cond_9
    if-nez v3, :cond_a

    .line 247
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBackPressed()Z

    .line 249
    :cond_a
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 281
    .local v0, "isDown":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 282
    .local v3, "isCancel":Z
    :goto_1
    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldIgnoreTouch()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 283
    return v2

    .line 285
    :cond_2
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 286
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startExpandLatencyTracking()V

    .line 288
    :cond_3
    if-eqz v0, :cond_4

    .line 289
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setTouchActive(Z)V

    .line 290
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    goto :goto_2

    .line 291
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eq v5, v1, :cond_5

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v4, :cond_6

    .line 293
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setTouchActive(Z)V

    .line 297
    :cond_6
    :goto_2
    sget-boolean v4, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_7

    const-string v4, "StatusBarWindowView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchTouchEvent / isDown:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isCancel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mTouchCancelled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mExpandAnimationRunning:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationRunning:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mExpandAnimationPending:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationPending:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isHighLightHintShow():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    .line 302
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isCarModeHighlightHintSHow():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    .line 303
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 297
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_7
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    if-nez v4, :cond_10

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationRunning:Z

    if-nez v4, :cond_10

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationPending:Z

    if-eqz v4, :cond_8

    goto/16 :goto_3

    .line 310
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/systemui/classifier/FalsingManager;->onTouchEvent(Landroid/view/MotionEvent;II)V

    .line 311
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_9

    .line 316
    return v2

    .line 319
    :cond_9
    if-eqz v0, :cond_a

    .line 320
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    .line 322
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 323
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->extendPulse()V

    .line 328
    :cond_b
    const-class v4, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result v4

    if-nez v4, :cond_c

    const-class v4, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    .line 329
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isCarModeHighlightHintSHow()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 330
    :cond_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onHightlightHintIntercept(Landroid/view/MotionEvent;)Z

    .line 335
    :cond_d
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_f

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v1, :cond_f

    .line 337
    :cond_e
    const-string v1, "StatusBarWindowView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchTouchEvent ev:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_f
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "StatusBarWindowView"

    const-string v5, "exception caught in dispatchTouchEvent. skip."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    return v2

    .line 308
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_3
    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 488
    const-string v0, "  mExpandAnimationPending="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationPending:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 489
    const-string v0, "  mExpandAnimationRunning="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationRunning:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 490
    const-string v0, "  mTouchCancelled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 491
    const-string v0, "  mTouchActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 492
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getFitsSystemWindows()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 122
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v3

    if-ne v0, v3, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    nop

    :cond_1
    :goto_0
    move v0, v1

    .line 126
    .local v0, "paddingChanged":Z
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eq v1, v3, :cond_3

    .line 127
    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    .line 128
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->applyMargins()V

    .line 132
    :cond_3
    if-eqz v0, :cond_4

    .line 133
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setPadding(IIII)V

    .line 135
    :cond_4
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 136
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 137
    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 138
    .end local v0    # "paddingChanged":Z
    goto :goto_2

    .line 139
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eqz v0, :cond_7

    .line 140
    :cond_6
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    .line 141
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    .line 142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->applyMargins()V

    .line 144
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v0

    if-nez v0, :cond_9

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v0

    if-nez v0, :cond_9

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    if-nez v0, :cond_9

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    move v1, v2

    nop

    :cond_9
    :goto_1
    move v0, v1

    .line 148
    .local v0, "changed":Z
    if-eqz v0, :cond_a

    .line 149
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setPadding(IIII)V

    .line 151
    :cond_a
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 153
    .end local v0    # "changed":Z
    :goto_2
    return v2
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 179
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 174
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 211
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScrimSrcModeEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 218
    .local v0, "windowToken":Landroid/os/IBinder;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 219
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object v0, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 220
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 222
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setWillNotDraw(Z)V

    .line 223
    .end local v0    # "windowToken":Landroid/os/IBinder;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setWillNotDraw(Z)V

    .line 226
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 431
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isScrimSrcModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 436
    .local v0, "paddedBottom":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 437
    .local v1, "paddedRight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v2

    int-to-float v7, v2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    const/4 v4, 0x0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v2

    int-to-float v7, v2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 443
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v2

    if-eqz v2, :cond_2

    .line 444
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v2

    int-to-float v6, v2

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 447
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v2

    if-eqz v2, :cond_3

    .line 448
    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v2

    int-to-float v6, v2

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 459
    .end local v0    # "paddedBottom":I
    .end local v1    # "paddedRight":I
    :cond_3
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 184
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 185
    const v0, 0x7f0a02b4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 187
    const v0, 0x7f0a02ae

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 188
    const v0, 0x7f0a0090

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    .line 189
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->hasPulsingNotifications()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    return v1

    .line 360
    :cond_0
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/plugin/PreventModeCtrl;->disPatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 362
    return v1

    .line 364
    :cond_1
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isLighModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    return v1

    .line 366
    :cond_2
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getFingerprintUnlockControl()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    .line 367
    return v1

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 370
    return v1

    .line 374
    :cond_4
    const-class v0, Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationController;->isAnimationStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 375
    return v1

    .line 379
    :cond_5
    const/4 v0, 0x0

    .line 380
    .local v0, "intercept":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 381
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 382
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v2

    if-ne v2, v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 383
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 384
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 385
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 387
    :cond_6
    if-nez v0, :cond_7

    .line 388
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 390
    :cond_7
    if-eqz v0, :cond_8

    .line 391
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 392
    .local v1, "cancellation":Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 393
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 394
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 395
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 397
    .end local v1    # "cancellation":Landroid/view/MotionEvent;
    :cond_8
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 404
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isLighModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->disPatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 409
    :cond_0
    const/4 v0, 0x0

    .line 410
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDoubleTapHelper:Lcom/android/systemui/statusbar/phone/DoubleTapHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/DoubleTapHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 412
    const/4 v0, 0x1

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 415
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 417
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/DragDownHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 419
    :cond_4
    if-nez v0, :cond_5

    .line 420
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 422
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 423
    .local v1, "action":I
    if-nez v0, :cond_7

    if-eq v1, v2, :cond_6

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7

    .line 424
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    .line 426
    :cond_7
    return v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 193
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0090

    if-ne v0, v1, :cond_0

    .line 195
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    .line 197
    :cond_0
    return-void
.end method

.method setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V
    .locals 0
    .param p1, "dragDownHelper"    # Lcom/android/systemui/statusbar/DragDownHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 207
    return-void
.end method

.method public setExpandAnimationPending(Z)V
    .locals 0
    .param p1, "pending"    # Z

    .line 484
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationPending:Z

    .line 485
    return-void
.end method

.method public setExpandAnimationRunning(Z)V
    .locals 0
    .param p1, "expandAnimationRunning"    # Z

    .line 480
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationRunning:Z

    .line 481
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 4
    .param p1, "service"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 200
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 201
    new-instance v0, Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/systemui/statusbar/DragDownHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V

    .line 202
    return-void
.end method

.method public setTouchActive(Z)V
    .locals 0
    .param p1, "touchActive"    # Z

    .line 275
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    .line 276
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 515
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 516
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 518
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
