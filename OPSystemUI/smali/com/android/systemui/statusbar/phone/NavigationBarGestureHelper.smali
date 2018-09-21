.class public Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;
.super Ljava/lang/Object;
.source "NavigationBarGestureHelper.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mDockWindowEnabled:Z

.field private mDockWindowTouchSlopExceeded:Z

.field private mDownOnRecents:Z

.field private mDragMode:I

.field private mIsInScreenPinning:Z

.field private mIsVertical:Z

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNotificationsVisibleOnDown:Z

.field private final mQuickStepController:Lcom/android/systemui/statusbar/phone/QuickStepController;

.field private mRecentsComponent:Lcom/android/systemui/RecentsComponent;

.field private final mScrollTouchSlop:I

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mContext:Landroid/content/Context;

    .line 85
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f070379

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mScrollTouchSlop:I

    .line 88
    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mQuickStepController:Lcom/android/systemui/statusbar/phone/QuickStepController;

    .line 89
    const-class v1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    const-string v2, "overview_nav_bar_gesture"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private calculateDragMode()I
    .locals 2

    .line 283
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    return v1

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    return v1

    .line 289
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private canHandleGestures()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsInScreenPinning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mNotificationsVisibleOnDown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private handleDockWindowEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 172
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionMoveEvent(Landroid/view/MotionEvent;)Z

    .line 173
    goto :goto_0

    .line 176
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionUpEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionDownEvent(Landroid/view/MotionEvent;)V

    .line 170
    nop

    .line 179
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleDragActionDownEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 183
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowTouchSlopExceeded:Z

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 191
    .local v1, "recentsButton":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 192
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    .line 193
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    .line 194
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDownOnRecents:Z

    goto :goto_0

    .line 197
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDownOnRecents:Z

    .line 200
    .end local v1    # "recentsButton":Landroid/view/View;
    :cond_2
    :goto_0
    return-void
.end method

.method private handleDragActionMoveEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 205
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 206
    .local v1, "y":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 207
    .local v2, "xDiff":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownY:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 208
    .local v3, "yDiff":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    const/4 v5, 0x0

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    if-nez v4, :cond_0

    goto/16 :goto_9

    .line 211
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowTouchSlopExceeded:Z

    const/4 v6, 0x1

    if-nez v4, :cond_a

    .line 212
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-nez v4, :cond_2

    .line 213
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mScrollTouchSlop:I

    if-le v3, v4, :cond_1

    if-le v3, v2, :cond_1

    .line 214
    :goto_0
    move v4, v6

    goto :goto_2

    .line 213
    :cond_1
    nop

    .line 214
    :goto_1
    move v4, v5

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mScrollTouchSlop:I

    if-le v2, v4, :cond_3

    if-le v2, v3, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    .line 215
    .local v4, "touchSlopExceeded":Z
    :goto_2
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDownOnRecents:Z

    if-eqz v7, :cond_9

    if-eqz v4, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 216
    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/DividerView;->getWindowManagerProxy()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getDockSide()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_9

    .line 217
    const/4 v7, 0x0

    .line 218
    .local v7, "initialBounds":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->calculateDragMode()I

    move-result v8

    .line 219
    .local v8, "dragMode":I
    const/4 v9, 0x0

    .line 220
    .local v9, "createMode":I
    const/4 v10, 0x2

    if-ne v8, v6, :cond_6

    .line 221
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v11

    .line 222
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v12, :cond_4

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    float-to-int v12, v12

    goto :goto_3

    .line 224
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v12, v12

    .line 225
    :goto_3
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v13}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 226
    goto :goto_4

    .line 227
    :cond_5
    nop

    .line 222
    move v10, v6

    :goto_4
    invoke-virtual {v11, v12, v10, v7}, Lcom/android/systemui/stackdivider/DividerView;->calculateBoundsForPosition(IILandroid/graphics/Rect;)V

    goto :goto_5

    .line 229
    :cond_6
    if-nez v8, :cond_7

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mTouchDownX:I

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr v12, v10

    if-ge v11, v12, :cond_7

    .line 231
    const/4 v9, 0x1

    .line 233
    :cond_7
    :goto_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    const/16 v11, 0x110

    invoke-interface {v10, v8, v9, v7, v11}, Lcom/android/systemui/RecentsComponent;->splitPrimaryTask(IILandroid/graphics/Rect;I)Z

    move-result v10

    .line 235
    .local v10, "docked":Z
    if-eqz v10, :cond_9

    .line 236
    iput v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    .line 237
    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    if-ne v11, v6, :cond_8

    .line 238
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v11}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 240
    :cond_8
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowTouchSlopExceeded:Z

    .line 241
    return v6

    .line 244
    .end local v4    # "touchSlopExceeded":Z
    .end local v7    # "initialBounds":Landroid/graphics/Rect;
    .end local v8    # "dragMode":I
    .end local v9    # "createMode":I
    .end local v10    # "docked":Z
    :cond_9
    goto :goto_8

    .line 245
    :cond_a
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    if-ne v4, v6, :cond_c

    .line 246
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-nez v4, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    :goto_6
    float-to-int v4, v4

    goto :goto_7

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    goto :goto_6

    .line 247
    .local v4, "position":I
    :goto_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v6

    const/4 v7, 0x0

    .line 248
    invoke-virtual {v6, v4, v7, v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v6

    .line 249
    .local v6, "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v7}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v7

    iget v8, v6, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-virtual {v7, v4, v8, v6}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    .line 250
    .end local v4    # "position":I
    .end local v6    # "snapTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    goto :goto_8

    :cond_c
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    if-nez v4, :cond_d

    .line 251
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-interface {v4, v6}, Lcom/android/systemui/RecentsComponent;->onDraggingInRecents(F)V

    .line 254
    :cond_d
    :goto_8
    return v5

    .line 209
    :cond_e
    :goto_9
    return v5
.end method

.method private handleDragActionUpEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 260
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowTouchSlopExceeded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_3

    .line 261
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 265
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    if-eqz v3, :cond_1

    .line 266
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    goto :goto_1

    .line 267
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    :goto_1
    const/4 v4, 0x0

    .line 262
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(IFZZ)V

    goto :goto_2

    .line 269
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDragMode:I

    if-nez v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/RecentsComponent;->onDraggingInRecentsEnded(F)V

    .line 273
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 275
    return-void
.end method

.method private interceptDockWindowEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionMoveEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 160
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionUpEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 154
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDragActionDownEvent(Landroid/view/MotionEvent;)V

    .line 155
    nop

    .line 163
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 93
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 94
    return-void
.end method

.method public onDarkIntensityChange(F)V
    .locals 1
    .param p1, "intensity"    # F

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mQuickStepController:Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->onDarkIntensityChange(F)V

    .line 145
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mQuickStepController:Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->onDraw(Landroid/graphics/Canvas;)V

    .line 137
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->inScreenPinning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsInScreenPinning:Z

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPresenterFullyCollapsed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mNotificationsVisibleOnDown:Z

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->canHandleGestures()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    const/4 v0, 0x0

    return v0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mQuickStepController:Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 118
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowEnabled:Z

    if-eqz v1, :cond_2

    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->interceptDockWindowEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 121
    :cond_2
    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mQuickStepController:Lcom/android/systemui/statusbar/phone/QuickStepController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/QuickStepController;->onLayout(ZIIII)V

    .line 141
    return-void
.end method

.method public onNavigationButtonLongPress(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mQuickStepController:Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->onNavigationButtonLongPress(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->canHandleGestures()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mQuickStepController:Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 129
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowEnabled:Z

    if-eqz v1, :cond_1

    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->handleDockWindowEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 132
    :cond_1
    return v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x221c593b

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "overview_nav_bar_gesture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 296
    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    nop

    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDockWindowEnabled:Z

    .line 299
    :goto_2
    return-void
.end method

.method public setBarState(ZZ)V
    .locals 1
    .param p1, "isVertical"    # Z
    .param p2, "isRTL"    # Z

    .line 105
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mIsVertical:Z

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mQuickStepController:Lcom/android/systemui/statusbar/phone/QuickStepController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickStepController;->setBarState(ZZ)V

    .line 107
    return-void
.end method

.method public setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 2
    .param p1, "recentsComponent"    # Lcom/android/systemui/RecentsComponent;
    .param p2, "divider"    # Lcom/android/systemui/stackdivider/Divider;
    .param p3, "navigationBarView"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    .line 99
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 100
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mQuickStepController:Lcom/android/systemui/statusbar/phone/QuickStepController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickStepController;->setComponents(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    .line 102
    return-void
.end method
