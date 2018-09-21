.class public Lcom/android/systemui/statusbar/DragDownHelper;
.super Ljava/lang/Object;
.source "DragDownHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

.field private mDraggedFarEnough:Z

.field private mDraggingDown:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mHost:Landroid/view/View;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLastHeight:F

.field private mMinDragDistance:I

.field private mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

.field private final mTemp2:[I

.field private mTouchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Landroid/view/View;
    .param p3, "callback"    # Lcom/android/systemui/ExpandHelper$Callback;
    .param p4, "dragDownCallback"    # Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070204

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mMinDragDistance:I

    .line 64
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTouchSlop:F

    .line 65
    iput-object p3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 66
    iput-object p4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    .line 67
    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mHost:Landroid/view/View;

    .line 68
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/ExpandHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/DragDownHelper;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/DragDownHelper;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    return-object v0
.end method

.method private cancelExpansion()V
    .locals 3

    .line 206
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 207
    .local v0, "anim":Landroid/animation/ValueAnimator;
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 208
    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 209
    new-instance v1, Lcom/android/systemui/statusbar/DragDownHelper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DragDownHelper$2;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 215
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 216
    return-void
.end method

.method private cancelExpansion(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 4
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 188
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 190
    return-void

    .line 192
    :cond_0
    const-string v0, "actualHeight"

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 193
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v3

    aput v3, v1, v2

    .line 192
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 194
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 195
    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 196
    new-instance v1, Lcom/android/systemui/statusbar/DragDownHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper$1;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 202
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 203
    return-void
.end method

.method private captureStartingChild(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/DragDownHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 166
    :cond_0
    return-void
.end method

.method private findView(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mHost:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method private handleExpansion(FLcom/android/systemui/statusbar/ExpandableView;)V
    .locals 5
    .param p1, "heightDelta"    # F
    .param p2, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 169
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 170
    const/4 p1, 0x0

    .line 172
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->isContentExpandable()Z

    move-result v0

    .line 173
    .local v0, "expandable":Z
    if-eqz v0, :cond_1

    .line 174
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    .line 175
    :cond_1
    const v1, 0x3e19999a    # 0.15f

    .line 176
    .local v1, "rubberbandFactor":F
    :goto_0
    mul-float v2, p1, v1

    .line 177
    .local v2, "rubberband":F
    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 179
    nop

    .line 180
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxContentHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 181
    .local v3, "overshoot":F
    const v4, 0x3f59999a    # 0.85f

    mul-float/2addr v3, v4

    .line 182
    sub-float/2addr v2, v3

    .line 184
    .end local v3    # "overshoot":F
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getCollapsedHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {p2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(I)V

    .line 185
    return-void
.end method

.method private isFalseTouch()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->isFalsingCheckNeeded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 154
    return v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private stopDragging()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onNotificatonStopDraggingDown()V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    goto :goto_0

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion()V

    .line 226
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onDragDownReset()V

    .line 228
    return-void
.end method


# virtual methods
.method public isDraggingDown()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 74
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 76
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    .line 87
    .local v2, "h":F
    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTouchSlop:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 88
    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v3}, Lcom/android/systemui/classifier/FalsingManager;->onNotificatonStartDraggingDown()V

    .line 89
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    .line 90
    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    .line 91
    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    .line 92
    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    .line 93
    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onTouchSlopExceeded()V

    .line 94
    return v3

    .line 78
    .end local v2    # "h":F
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    .line 79
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    .line 80
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    .line 81
    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    .line 82
    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    .line 83
    nop

    .line 98
    :cond_2
    :goto_0
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 104
    return v1

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 107
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 109
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 146
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    .line 147
    return v1

    .line 111
    :pswitch_1
    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float v3, v2, v3

    iput v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    .line 112
    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    .line 113
    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v3, :cond_1

    .line 114
    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/DragDownHelper;->handleExpansion(FLcom/android/systemui/statusbar/ExpandableView;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->setEmptyDragAmount(F)V

    .line 118
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mMinDragDistance:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    const/4 v4, 0x1

    if-lez v3, :cond_2

    .line 119
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-nez v1, :cond_3

    .line 120
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v1, v4}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onCrossedThreshold(Z)V

    goto :goto_1

    .line 124
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-eqz v3, :cond_3

    .line 125
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    .line 126
    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onCrossedThreshold(Z)V

    .line 129
    :cond_3
    :goto_1
    return v4

    .line 131
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->isFalseTouch()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float v5, v2, v5

    float-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onDraggedDown(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 133
    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v3, :cond_4

    .line 134
    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->setEmptyDragAmount(F)V

    goto :goto_2

    .line 136
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v3, v4, v1}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 137
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    .line 139
    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    goto :goto_3

    .line 141
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    .line 142
    return v1

    .line 149
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
