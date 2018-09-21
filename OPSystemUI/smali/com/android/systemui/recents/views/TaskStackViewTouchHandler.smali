.class Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
.super Ljava/lang/Object;
.source "TaskStackViewTouchHandler.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;


# static fields
.field private static final OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;


# instance fields
.field mActivePointerId:I

.field mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

.field mContext:Landroid/content/Context;

.field private mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mDownScrollP:F

.field mDownX:I

.field mDownY:I

.field private mFinalTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field mFlingAnimUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field mInterceptedBySwipeHelper:Z

.field mIsScrolling:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mLastY:I

.field mMaximumVelocity:I

.field mMinimumVelocity:I

.field mOverscrollSize:I

.field mScrollFlingAnimator:Landroid/animation/ValueAnimator;

.field mScrollTouchSlop:I

.field mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

.field private final mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

.field mSv:Lcom/android/systemui/recents/views/TaskStackView;

.field mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field private mSwipeHelperAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetStackScroll:F

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field final mWindowTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 68
    .local v0, "OVERSCROLL_PATH":Landroid/graphics/Path;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 69
    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3e333333    # 0.175f

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3e99999a    # 0.3f

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 70
    new-instance v1, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-direct {v1, v0}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v1, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;

    .line 71
    .end local v0    # "OVERSCROLL_PATH":Landroid/graphics/Path;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sv"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "scroller"    # Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 96
    new-instance v0, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    .line 103
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 113
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    .line 115
    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 116
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    .line 117
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    .line 118
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    .line 119
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    .line 120
    new-instance v2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFlingAnimUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 121
    const v2, 0x7f070587

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    .line 122
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler$1;-><init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 149
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/SwipeHelper;->setDisableHardwareLayers(Z)V

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 679
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 680
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/shared/recents/model/Task;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 681
    .local v1, "taskCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 682
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    .line 683
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 684
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/systemui/recents/views/TaskStackView;->isTouchPointInView(FFLcom/android/systemui/recents/views/TaskView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 685
    return-object v3

    .line 681
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 689
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 218
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 219
    return v3

    .line 222
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 223
    .local v2, "layoutAlgorithm":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 224
    .local v4, "action":I
    and-int/lit16 v5, v4, 0xff

    const/4 v6, -0x1

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 318
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 319
    .local v5, "pointerIndex":I
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 320
    .local v6, "pointerId":I
    iget v8, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    if-ne v6, v8, :cond_2

    .line 322
    if-nez v5, :cond_1

    move v3, v7

    nop

    .line 323
    .local v3, "newPointerIndex":I
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 324
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    .line 325
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    .line 326
    iget v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    iput v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 327
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v7

    iput v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 329
    .end local v3    # "newPointerIndex":I
    :cond_2
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 330
    goto/16 :goto_4

    .line 247
    .end local v5    # "pointerIndex":I
    .end local v6    # "pointerId":I
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 248
    .local v3, "index":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 249
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    .line 250
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    .line 251
    iget v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    iput v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 252
    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    iput v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 253
    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->resetDeltaScroll()V

    .line 254
    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 255
    goto/16 :goto_4

    .line 372
    .end local v3    # "index":I
    :pswitch_3
    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 373
    iput-boolean v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    goto/16 :goto_4

    .line 258
    :pswitch_4
    iget v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 259
    .local v5, "activePointerIndex":I
    if-ne v5, v6, :cond_3

    .line 260
    goto/16 :goto_4

    .line 262
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 263
    .local v6, "y":I
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v8, v8

    .line 264
    .local v8, "x":I
    iget-boolean v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-nez v9, :cond_6

    .line 265
    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 266
    .local v9, "yDiff":I
    iget v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    sub-int v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 267
    .local v10, "xDiff":I
    iget v11, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int v11, v6, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v11, v12, :cond_6

    if-le v9, v10, :cond_6

    .line 268
    iput-boolean v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 269
    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v11

    .line 270
    .local v11, "stackScroll":F
    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v12}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v12

    .line 271
    .local v12, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v7

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_4

    .line 272
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v14}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v14

    invoke-virtual {v2, v14, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->addUnfocusedTaskOverride(Lcom/android/systemui/shared/recents/model/Task;F)V

    .line 271
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 275
    .end local v13    # "i":I
    :cond_4
    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 278
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 279
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_5

    .line 280
    invoke-interface {v3, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 283
    :cond_5
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v13, 0x11f

    invoke-static {v7, v13}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 284
    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 287
    .end local v3    # "parent":Landroid/view/ViewParent;
    .end local v9    # "yDiff":I
    .end local v10    # "xDiff":I
    .end local v11    # "stackScroll":F
    .end local v12    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_6
    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v3, :cond_a

    .line 290
    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    invoke-virtual {v2, v3, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForY(II)F

    move-result v3

    .line 293
    .local v3, "deltaP":F
    iget v7, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 294
    .local v7, "minScrollP":F
    iget v9, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 295
    .local v9, "maxScrollP":F
    iget v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    add-float/2addr v10, v3

    .line 296
    .local v10, "curScrollP":F
    cmpg-float v11, v10, v7

    if-ltz v11, :cond_7

    cmpl-float v11, v10, v9

    if-lez v11, :cond_9

    .line 297
    :cond_7
    invoke-static {v10, v7, v9}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v11

    .line 298
    .local v11, "clampedScrollP":F
    sub-float v12, v10, v11

    .line 299
    .local v12, "overscrollP":F
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v13, :cond_8

    .line 300
    iget-object v13, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getMaxOverscroll()F

    move-result v13

    goto :goto_1

    .line 301
    :cond_8
    const v13, 0x40155555

    .line 302
    .local v13, "maxOverscroll":F
    :goto_1
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v14

    div-float/2addr v14, v13

    .line 303
    .local v14, "overscrollX":F
    sget-object v15, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->OVERSCROLL_INTERP:Landroid/view/animation/Interpolator;

    invoke-interface {v15, v14}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v15

    .line 304
    .local v15, "interpX":F
    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v16

    mul-float v17, v15, v13

    mul-float v16, v16, v17

    add-float v10, v11, v16

    .line 307
    .end local v11    # "clampedScrollP":F
    .end local v12    # "overscrollP":F
    .end local v13    # "maxOverscroll":F
    .end local v14    # "overscrollX":F
    .end local v15    # "interpX":F
    :cond_9
    iget v11, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget v13, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget v14, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    sub-float v14, v10, v14

    invoke-virtual {v12, v13, v14}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setDeltaStackScroll(FF)F

    move-result v12

    add-float/2addr v11, v12

    iput v11, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 309
    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    iget v12, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    sub-int v12, v6, v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;->updateY(I)V

    .line 310
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mStackViewScrolledEvent:Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 313
    .end local v3    # "deltaP":F
    .end local v7    # "minScrollP":F
    .end local v9    # "maxScrollP":F
    .end local v10    # "curScrollP":F
    :cond_a
    iput v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 314
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 315
    goto/16 :goto_4

    .line 333
    .end local v5    # "activePointerIndex":I
    .end local v6    # "y":I
    .end local v8    # "x":I
    :pswitch_5
    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 334
    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    iget v8, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 335
    iget v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 336
    .restart local v5    # "activePointerIndex":I
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    .line 337
    .local v7, "y":I
    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v8

    float-to-int v15, v8

    .line 338
    .local v15, "velocity":I
    iget-boolean v8, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v8, :cond_e

    .line 339
    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 340
    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateBoundScroll()Landroid/animation/ObjectAnimator;

    .line 354
    move v6, v15

    goto :goto_2

    .line 341
    :cond_b
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mMinimumVelocity:I

    if-le v8, v9, :cond_c

    .line 342
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-nez v8, :cond_c

    .line 343
    iget v8, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget v10, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v2, v9, v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v14, v8

    .line 345
    .local v14, "minY":F
    iget v8, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget v10, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {v2, v9, v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v13, v8

    .line 347
    .local v13, "maxY":F
    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    iget v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    float-to-int v12, v14

    float-to-int v11, v13

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mOverscrollSize:I

    move/from16 v16, v11

    move v11, v7

    move/from16 v17, v12

    move v12, v15

    move/from16 v18, v13

    move/from16 v13, v17

    .end local v13    # "maxY":F
    .local v18, "maxY":F
    move/from16 v17, v14

    move/from16 v14, v16

    .end local v14    # "minY":F
    .local v17, "minY":F
    move v6, v15

    move v15, v3

    .end local v15    # "velocity":I
    .local v6, "velocity":I
    invoke-virtual/range {v8 .. v15}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->fling(FIIIIII)V

    .line 349
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .end local v17    # "minY":F
    .end local v18    # "maxY":F
    goto :goto_2

    .line 354
    .end local v6    # "velocity":I
    .restart local v15    # "velocity":I
    :cond_c
    move v6, v15

    .end local v15    # "velocity":I
    .restart local v6    # "velocity":I
    :goto_2
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-nez v3, :cond_f

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v3

    if-nez v3, :cond_f

    .line 355
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v3, :cond_d

    .line 356
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->scrollToClosestTask(I)V

    goto :goto_3

    .line 358
    :cond_d
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/shared/recents/model/Task;)V

    goto :goto_3

    .line 361
    .end local v6    # "velocity":I
    .restart local v15    # "velocity":I
    :cond_e
    move v6, v15

    .end local v15    # "velocity":I
    .restart local v6    # "velocity":I
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-nez v3, :cond_f

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0, v3, v8}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->maybeHideRecentsFromBackgroundTap(II)V

    .line 366
    :cond_f
    :goto_3
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 367
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->recycleVelocityTracker()V

    .line 369
    goto :goto_4

    .line 227
    .end local v5    # "activePointerIndex":I
    .end local v6    # "velocity":I
    .end local v7    # "y":I
    :pswitch_6
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 228
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 229
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->resetDeltaScroll()V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->cancelNonDismissTaskAnimations()V

    .line 231
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    .line 236
    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    iput v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mLastY:I

    .line 237
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownScrollP:F

    .line 238
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActivePointerId:I

    .line 239
    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    iget v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    invoke-direct {v0, v3, v5}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->initOrResetVelocityTracker()V

    .line 243
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 244
    nop

    .line 378
    :goto_4
    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private isSwipingEnabled()Z
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private updateTaskViewTransforms(F)V
    .locals 12
    .param p1, "dismissFraction"    # F

    .line 641
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 642
    .local v0, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 643
    .local v1, "taskViewCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 644
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 645
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    .line 647
    .local v4, "task":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 648
    goto :goto_1

    .line 651
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 652
    .local v5, "taskIndex":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 655
    goto :goto_1

    .line 658
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 659
    .local v6, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 661
    .local v7, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v8, v6}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    .line 663
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v8, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    sget-object v9, Lcom/android/systemui/shared/recents/utilities/Utilities;->RECTF_EVALUATOR:Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;

    iget-object v10, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v11, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9, p1, v10, v11}, Lcom/android/systemui/shared/recents/utilities/RectFEvaluator;->evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 665
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget v10, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    iget v11, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 667
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget v10, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    iget v11, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 670
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v9, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget v10, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    iget v11, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, p1

    add-float/2addr v9, v10

    iput v9, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 673
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    sget-object v10, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {v8, v3, v9, v10}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 643
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v4    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v5    # "taskIndex":I
    .end local v6    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v7    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 675
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 449
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 450
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    .line 451
    .local v1, "task":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    .line 452
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 451
    :goto_0
    return v2
.end method

.method public cancelNonDismissTaskAnimations()V
    .locals 6

    .line 193
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollFlingAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 198
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 200
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    goto :goto_1

    .line 204
    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 205
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->addUnfocusedTaskOverride(Lcom/android/systemui/recents/views/TaskView;F)V

    .line 197
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 207
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 209
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 211
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 213
    .end local v0    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 214
    return-void
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 440
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    return-object v0

    .line 443
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public getScaledDismissSize()F
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v0

    return v1
.end method

.method initOrResetVelocityTracker()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 159
    :goto_0
    return-void
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    .line 629
    const/4 v0, 0x0

    return v0
.end method

.method maybeHideRecentsFromBackgroundTap(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 385
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownX:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 386
    .local v0, "dx":I
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mDownY:I

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 387
    .local v1, "dy":I
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-gt v0, v2, :cond_4

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mScrollTouchSlop:I

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    move v2, p1

    .line 394
    .local v2, "shiftedX":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    if-le p1, v3, :cond_1

    .line 395
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 397
    :cond_1
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    .line 399
    :goto_0
    invoke-direct {p0, v2, p2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->findViewAtPoint(II)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 400
    return-void

    .line 404
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le p1, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge p1, v3, :cond_3

    .line 405
    return-void

    .line 410
    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 411
    return-void

    .line 388
    .end local v2    # "shiftedX":I
    :cond_4
    :goto_1
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    move-object/from16 v0, p0

    .line 466
    move-object/from16 v1, p1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 469
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 471
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 473
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 474
    .local v3, "parent":Landroid/view/ViewParent;
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 475
    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 479
    :cond_0
    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 482
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    .line 483
    new-instance v5, Landroid/util/MutableBoolean;

    invoke-direct {v5, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 484
    .local v5, "isFrontMostTask":Landroid/util/MutableBoolean;
    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v5}, Lcom/android/systemui/recents/views/TaskStackView;->findAnchorTask(Ljava/util/List;Landroid/util/MutableBoolean;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    .line 485
    .local v6, "anchorTask":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v7

    .line 486
    .local v7, "layoutAlgorithm":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v8

    .line 487
    .local v8, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    if-eqz v6, :cond_8

    .line 489
    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 493
    const/4 v9, 0x0

    .line 494
    .local v9, "prevAnchorTaskScroll":F
    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    move v10, v4

    goto :goto_0

    :cond_1
    move v10, v2

    .line 495
    .local v10, "pullStackForward":Z
    :goto_0
    if-eqz v10, :cond_3

    .line 496
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v11, :cond_2

    .line 497
    invoke-virtual {v7, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/shared/recents/model/Task;)F

    move-result v11

    .line 498
    .local v11, "index":F
    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v12}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v12

    iget-object v12, v12, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    float-to-int v13, v11

    .line 499
    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getScrollPForTask(I)F

    move-result v9

    .line 500
    .end local v11    # "index":F
    goto :goto_1

    .line 501
    :cond_2
    invoke-virtual {v7, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/shared/recents/model/Task;)F

    move-result v9

    .line 506
    :cond_3
    :goto_1
    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11, v2}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 508
    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    .line 509
    .local v2, "newStackScroll":F
    iget-boolean v11, v5, Landroid/util/MutableBoolean;->value:Z

    if-eqz v11, :cond_4

    .line 511
    invoke-virtual {v8, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v2

    goto :goto_2

    .line 512
    :cond_4
    if-eqz v10, :cond_7

    .line 514
    nop

    .line 515
    invoke-virtual {v7, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTaskIgnoreOverrides(Lcom/android/systemui/shared/recents/model/Task;)F

    move-result v11

    .line 516
    .local v11, "anchorTaskScroll":F
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v12, :cond_5

    .line 517
    invoke-virtual {v7, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/shared/recents/model/Task;)F

    move-result v12

    .line 518
    .local v12, "index":F
    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v13

    iget-object v13, v13, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    float-to-int v14, v12

    .line 519
    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getScrollPForTask(I)F

    move-result v11

    .line 521
    .end local v12    # "index":F
    :cond_5
    sub-float v12, v11, v9

    .line 522
    .local v12, "stackScrollOffset":F
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v13

    if-eq v13, v4, :cond_6

    .line 523
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-nez v13, :cond_6

    .line 526
    const/high16 v13, 0x3f400000    # 0.75f

    mul-float/2addr v12, v13

    .line 528
    :cond_6
    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v13

    add-float/2addr v13, v12

    invoke-virtual {v8, v13}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v2

    .line 533
    .end local v11    # "anchorTaskScroll":F
    .end local v12    # "stackScrollOffset":F
    :cond_7
    :goto_2
    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11, v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 536
    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mCurrentTasks:Ljava/util/ArrayList;

    const/4 v15, 0x1

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mFinalTaskTransforms:Ljava/util/ArrayList;

    move v12, v2

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    .line 540
    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    .line 550
    .end local v2    # "newStackScroll":F
    .end local v9    # "prevAnchorTaskScroll":F
    .end local v10    # "pullStackForward":Z
    :cond_8
    return-void
.end method

.method public onBeginManualDrag(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 2
    .param p1, "v"    # Lcom/android/systemui/recents/views/TaskView;

    .line 459
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    .line 460
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onBeginDrag(Landroid/view/View;)V

    .line 462
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 569
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 572
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 574
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 576
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 577
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mTargetStackScroll:F

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 581
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    .line 582
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 583
    new-instance v3, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    const/16 v6, 0xc8

    sget-object v7, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {v3, v6, v7}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    nop

    .line 585
    :cond_1
    invoke-direct {v4, v5, v0, v3}, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 581
    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 588
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 590
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 591
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    .line 593
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "overview_task_dismissed_source"

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 598
    return-void
.end method

.method public onChildSnappedBack(Landroid/view/View;F)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "targetLeft"    # F

    .line 606
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 609
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 611
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 616
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 617
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 618
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    sget-object v2, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 619
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 625
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 418
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    .end local v0    # "action":I
    goto :goto_1

    .line 421
    .restart local v0    # "action":I
    :cond_0
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 422
    .local v1, "vScroll":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    .line 423
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, v4, v4, v2}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    goto :goto_0

    .line 426
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSv:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, v2, v4, v2}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    .line 429
    :goto_0
    return v4

    .line 432
    .end local v0    # "action":I
    .end local v1    # "vScroll":F
    :cond_2
    :goto_1
    return v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->isSwipingEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    .line 171
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    if-eqz v0, :cond_1

    .line 172
    return v1

    .line 175
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mInterceptedBySwipeHelper:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    return v1

    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 186
    return v1
.end method

.method recycleVelocityTracker()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 165
    :cond_0
    return-void
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dismissable"    # Z
    .param p3, "swipeProgress"    # F

    .line 556
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mActiveTaskView:Lcom/android/systemui/recents/views/TaskView;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mSwipeHelperAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-nez v0, :cond_1

    .line 558
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 559
    invoke-interface {v0, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 558
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->updateTaskViewTransforms(F)V

    .line 561
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
