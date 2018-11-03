.class public Lcom/android/systemui/recents/views/TaskStackView;
.super Landroid/widget/FrameLayout;
.source "TaskStackView.java"

# interfaces
.implements Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
.implements Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
.implements Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;
.implements Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;",
        "Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;",
        "Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;",
        "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer<",
        "Lcom/android/systemui/recents/views/TaskView;",
        "Lcom/android/systemui/shared/recents/model/Task;",
        ">;",
        "Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;"
    }
.end annotation


# instance fields
.field private mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

.field private mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

.field private mDisplayOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisplayRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDividerSize:I

.field private mEnterAnimationComplete:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private final mFastFlingVelocity:F

.field private mFinishedLayoutAfterStackReload:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "focused_task_"
    .end annotation
.end field

.field private mIgnoreTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field

.field private mInMeasureLayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mLastHeight:I

.field private mLastScrollPPercent:F

.field private mLastWidth:I

.field private mLaunchNextAfterFirstMeasure:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation
.end field

.field private mPrefetchingTask:Lcom/android/systemui/shared/recents/model/Task;

.field private mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mResetToInitialStateWhenResized:Z

.field mScreenPinningEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

.field private mStableStackBounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStableWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

.field private mStackActionButtonVisible:Z

.field private mStackBounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mStackReloaded:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "scroller_"
    .end annotation
.end field

.field private mStartTimerIndicatorDuration:I

.field private mTaskCornerRadiusPx:I

.field private mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

.field private mTaskViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskViewsClipDirty:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTmpIntPair:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpTaskViewMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTaskViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mTouchExplorationEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "touch_"
    .end annotation
.end field

.field private mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "doze_"
    .end annotation
.end field

.field private mViewPool:Lcom/android/systemui/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 249
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v0, Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-direct {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 166
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackReloaded:Z

    .line 170
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFinishedLayoutAfterStackReload:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLaunchNextAfterFirstMeasure:Z

    .line 174
    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 177
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 185
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    .line 188
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    .line 191
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    .line 194
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    .line 197
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    .line 200
    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    .line 203
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 204
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    .line 205
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    .line 206
    new-instance v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 207
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpIntPair:[I

    .line 214
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastScrollPPercent:F

    .line 224
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$1;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 235
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$2;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 250
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 251
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 254
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v5, p0}, Lcom/android/systemui/shared/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/shared/recents/model/TaskStack$TaskStackCallbacks;)V

    .line 255
    new-instance v5, Lcom/android/systemui/recents/views/ViewPool;

    invoke-direct {v5, p1, p0}, Lcom/android/systemui/recents/views/ViewPool;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;)V

    iput-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    .line 256
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    .line 257
    new-instance v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v5, p1, p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V

    iput-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 258
    new-instance v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v5, p1, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V

    iput-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 259
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v0, p1, p0, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 260
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-direct {v0, p1, p0, v5}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    .line 261
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    .line 262
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v0, :cond_0

    .line 263
    const v0, 0x7f0705d3

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 264
    :cond_0
    const v0, 0x7f0705f7

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskCornerRadiusPx:I

    .line 265
    const v0, 0x7f0705c8

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFastFlingVelocity:F

    .line 266
    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDividerSize:I

    .line 267
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    .line 268
    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    .line 269
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackActionButtonVisible:Z

    .line 272
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v0, :cond_1

    .line 273
    new-instance v0, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    invoke-direct {v0, v2, p0, v5}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    .line 275
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->addView(Landroid/view/View;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0086

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 281
    .local v0, "taskBarDismissDozeDelaySeconds":I
    new-instance v2, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v5, Lcom/android/systemui/recents/views/TaskStackView$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/views/TaskStackView$3;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-direct {v2, v0, v5}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 293
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setImportantForAccessibility(I)V

    .line 294
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/TaskStackView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/TaskStackView;

    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/recents/views/TaskStackView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p1, "x1"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/TaskStackView;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/TaskStackView;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/TaskStackView;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    return-object v0
.end method

.method private bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 3
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 1564
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->onTaskBound(Lcom/android/systemui/shared/recents/model/Task;ZILandroid/graphics/Rect;)V

    .line 1567
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1568
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v0, :cond_1

    .line 1569
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 1572
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrefetchingTask:Lcom/android/systemui/shared/recents/model/Task;

    if-ne p2, v0, :cond_2

    .line 1573
    iget-object v0, p2, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v1, p2, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/shared/recents/model/Task;->notifyTaskDataLoaded(Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1576
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1578
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->onTaskVisible(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1579
    return-void
.end method

.method private clearPrefetchingTask()V
    .locals 2

    .line 1610
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrefetchingTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    .line 1611
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrefetchingTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1613
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrefetchingTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 1614
    return-void
.end method

.method private clipTaskViews()V
    .locals 13

    .line 765
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v0, :cond_0

    .line 766
    return-void

    .line 770
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 771
    .local v0, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v1, 0x0

    .line 772
    .local v1, "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v2, 0x0

    .line 773
    .local v2, "prevVisibleTv":Lcom/android/systemui/recents/views/TaskView;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 774
    .local v3, "taskViewCount":I
    const/4 v4, 0x0

    move-object v5, v2

    move-object v2, v1

    move v1, v4

    .local v1, "i":I
    .local v2, "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    .local v5, "prevVisibleTv":Lcom/android/systemui/recents/views/TaskView;
    :goto_0
    if-ge v1, v3, :cond_5

    .line 775
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskView;

    .line 776
    .local v6, "tv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v7, 0x0

    .line 777
    .local v7, "frontTv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v8, 0x0

    .line 779
    .local v8, "clipBottom":I
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 782
    if-eqz v5, :cond_1

    .line 783
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v9

    .line 784
    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v10

    const v11, 0x3dcccccd    # 0.1f

    add-float/2addr v10, v11

    .line 783
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 788
    :cond_1
    add-int/lit8 v9, v3, -0x1

    if-ge v1, v9, :cond_4

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 790
    add-int/lit8 v9, v1, 0x1

    .local v9, "j":I
    :goto_1
    if-ge v9, v3, :cond_3

    .line 791
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 793
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 794
    move-object v7, v2

    .line 795
    goto :goto_2

    .line 790
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 802
    .end local v9    # "j":I
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    .line 803
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v9

    int-to-float v9, v9

    .line 804
    .local v9, "taskBottom":F
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v10

    int-to-float v10, v10

    .line 805
    .local v10, "frontTaskTop":F
    cmpg-float v11, v10, v9

    if-gez v11, :cond_4

    .line 807
    sub-float v11, v9, v10

    float-to-int v11, v11

    iget v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskCornerRadiusPx:I

    sub-int v8, v11, v12

    .line 811
    .end local v9    # "taskBottom":F
    .end local v10    # "frontTaskTop":F
    :cond_4
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->setClipBottom(I)V

    .line 812
    iget-object v9, v6, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getPaddingBottom()I

    move-result v10

    sub-int v10, v8, v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailVisibility(I)V

    .line 813
    move-object v5, v6

    .line 774
    .end local v6    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v7    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v8    # "clipBottom":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 815
    .end local v1    # "i":I
    :cond_5
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 816
    return-void
.end method

.method private findTaskViewInsertIndex(Lcom/android/systemui/shared/recents/model/Task;I)I
    .locals 7
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "taskIndex"    # I

    .line 2133
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 2134
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 2135
    .local v1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v2, 0x0

    .line 2136
    .local v2, "foundTaskView":Z
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 2137
    .local v3, "taskViewCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 2138
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    .line 2139
    .local v5, "tvTask":Lcom/android/systemui/shared/recents/model/Task;
    if-ne v5, p1, :cond_0

    .line 2140
    const/4 v2, 0x1

    goto :goto_1

    .line 2141
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v6, v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v6

    if-ge p2, v6, :cond_2

    .line 2142
    if-eqz v2, :cond_1

    .line 2143
    add-int/lit8 v0, v4, -0x1

    return v0

    .line 2145
    :cond_1
    return v4

    .line 2137
    .end local v5    # "tvTask":Lcom/android/systemui/shared/recents/model/Task;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2150
    .end local v1    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v2    # "foundTaskView":Z
    .end local v3    # "taskViewCount":I
    .end local v4    # "i":I
    :cond_3
    return v0
.end method

.method private getFrontMostTaskView()Lcom/android/systemui/recents/views/TaskView;
    .locals 2

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 392
    .local v0, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const/4 v1, 0x0

    return-object v1

    .line 395
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    return-object v1
.end method

.method private getInitialFocusTaskIndex(Lcom/android/systemui/recents/RecentsActivityLaunchState;IZ)I
    .locals 2
    .param p1, "launchState"    # Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .param p2, "numTasks"    # I
    .param p3, "useGridLayout"    # Z

    .line 2215
    iget-boolean v0, p1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v0, :cond_1

    .line 2216
    if-eqz p3, :cond_0

    .line 2218
    add-int/lit8 v0, p2, -0x1

    return v0

    .line 2222
    :cond_0
    const/4 v0, 0x0

    add-int/lit8 v1, p2, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 2225
    :cond_1
    add-int/lit8 v0, p2, -0x1

    return v0
.end method

.method public static synthetic lambda$onBusEvent$0(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0
    .param p1, "launchTask"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 1742
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->launchTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1743
    return-void
.end method

.method public static synthetic lambda$tryStartEnterAnimation$1(Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 5

    .line 1998
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 2004
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    .line 2005
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 2006
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 2007
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v2

    const/4 v3, 0x0

    iget-boolean v4, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    .line 2009
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .line 2010
    .local v2, "focusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 2011
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->requestAccessibilityFocus()Z

    .line 2014
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .end local v2    # "focusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method private launchTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 8
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 2155
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelAllTaskViewAnimations()V

    .line 2157
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    .line 2158
    .local v0, "curScroll":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTaskAtInitialOffset(Lcom/android/systemui/shared/recents/model/Task;)F

    move-result v1

    .line 2159
    .local v1, "targetScroll":F
    sub-float v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 2160
    .local v2, "absScrollDiff":F
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    if-eqz v3, :cond_1

    const v3, 0x3eb33333    # 0.35f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    goto :goto_0

    .line 2173
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, p1, v6, v7}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;Z)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    .line 2161
    :cond_1
    :goto_0
    const/high16 v3, 0x43580000    # 216.0f

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 2163
    .local v3, "duration":I
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    new-instance v5, Lcom/android/systemui/recents/views/TaskStackView$7;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/recents/views/TaskStackView$7;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v4, v1, v3, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    .line 2172
    .end local v3    # "duration":I
    nop

    .line 2176
    :goto_1
    return-void
.end method

.method private layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .line 1307
    if-eqz p1, :cond_1

    .line 1308
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1309
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1310
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1312
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1313
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1314
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 1315
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->layout(IIII)V

    .line 1317
    .end local v0    # "padding":Landroid/graphics/Rect;
    goto :goto_0

    .line 1319
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskView;->layout(IIII)V

    .line 1321
    :goto_0
    return-void
.end method

.method private matchTaskListSize(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .line 2234
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/shared/recents/model/Task;>;"
    .local p2, "transforms":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2235
    .local v0, "taskTransformCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2236
    .local v1, "taskCount":I
    if-ge v0, v1, :cond_0

    .line 2238
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2239
    new-instance v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2241
    .end local v2    # "i":I
    :cond_0
    if-le v0, v1, :cond_1

    .line 2243
    invoke-interface {p2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2245
    :cond_1
    return-void
.end method

.method private measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 5
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .line 1254
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1255
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1256
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1258
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1259
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1260
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 1261
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 1263
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1260
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->measure(II)V

    .line 1265
    return-void
.end method

.method private readSystemFlags()V
    .locals 2

    .line 2189
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 2190
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    .line 2191
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2192
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isLockToAppActive()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    .line 2193
    return-void
.end method

.method private relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;Landroid/util/ArrayMap;Z)V
    .locals 8
    .param p1, "animation"    # Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    .param p3, "ignoreTaskOverrides"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/utilities/AnimationProps;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Lcom/android/systemui/shared/recents/utilities/AnimationProps;",
            ">;Z)V"
        }
    .end annotation

    .line 653
    .local p2, "animationOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 656
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 659
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 660
    .local v0, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 661
    .local v1, "taskViewCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 662
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 663
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    .line 665
    .local v4, "task":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v6, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 666
    goto :goto_1

    .line 669
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v5, v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v5

    .line 670
    .local v5, "taskIndex":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 671
    .local v6, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz p2, :cond_1

    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 672
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object p1, v7

    check-cast p1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 675
    :cond_1
    invoke-virtual {p0, v3, v6, p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 661
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v4    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v5    # "taskIndex":I
    .end local v6    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 677
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private tryStartEnterAnimation()V
    .locals 2

    .line 1986
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackReloaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFinishedLayoutAfterStackReload:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1990
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1992
    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    .line 1993
    .local v0, "trigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startEnterAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1996
    new-instance v1, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackView$W6l3huwmJgGI98GCJCCawhoJNm0;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackView$W6l3huwmJgGI98GCJCCawhoJNm0;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 2018
    .end local v0    # "trigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackReloaded:Z

    .line 2019
    return-void

    .line 1987
    :cond_2
    :goto_0
    return-void
.end method

.method private unbindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 1582
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrefetchingTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eq p2, v0, :cond_0

    .line 1584
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1586
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->onTaskInvisible(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1587
    return-void
.end method

.method private updateLayoutToStableBounds()V
    .locals 4

    .line 839
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 840
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 841
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 842
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 843
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 844
    return-void
.end method

.method private updatePrefetchingTask(Ljava/util/ArrayList;II)V
    .locals 5
    .param p2, "frontIndex"    # I
    .param p3, "backIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;II)V"
        }
    .end annotation

    .line 1590
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    const/4 v0, 0x0

    .line 1591
    .local v0, "t":Lcom/android/systemui/shared/recents/model/Task;
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p2, v1, :cond_0

    if-eq p3, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1592
    .local v1, "somethingVisible":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge p2, v3, :cond_1

    .line 1593
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    .line 1595
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrefetchingTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eq v2, v0, :cond_4

    .line 1596
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrefetchingTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_3

    .line 1597
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrefetchingTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1598
    .local v2, "index":I
    if-lt v2, p3, :cond_2

    if-le v2, p2, :cond_3

    .line 1599
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrefetchingTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1602
    .end local v2    # "index":I
    :cond_3
    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrefetchingTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 1603
    if-eqz v0, :cond_4

    .line 1604
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1607
    :cond_4
    return-void
.end method

.method private updateStackActionButtonVisibility()V
    .locals 3

    .line 2196
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v0, :cond_0

    .line 2197
    return-void

    .line 2201
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 2202
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    const v1, 0x3e99999a    # 0.3f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    .line 2203
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 2206
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    .line 2204
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2208
    :goto_1
    return-void
.end method


# virtual methods
.method addIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 434
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 435
    return-void
.end method

.method bindVisibleTaskViews(F)V
    .locals 1
    .param p1, "targetStackScroll"    # F

    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 526
    return-void
.end method

.method bindVisibleTaskViews(FZ)V
    .locals 15
    .param p1, "targetStackScroll"    # F
    .param p2, "ignoreTaskOverrides"    # Z

    move-object v7, p0

    .line 543
    iget-object v0, v7, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 544
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    iget-object v1, v7, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 545
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    iget-object v5, v7, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    .line 544
    move-object v0, v7

    move-object v2, v8

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackView;->computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FFLandroid/util/ArraySet;Z)[I

    move-result-object v0

    .line 549
    .local v0, "visibleTaskRange":[I
    iget-object v1, v7, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 550
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 551
    .local v1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v2, -0x1

    .line 552
    .local v2, "lastFocusedTaskIndex":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 553
    .local v3, "taskViewCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, -0x1

    if-ltz v4, :cond_4

    .line 554
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskView;

    .line 555
    .local v6, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v9

    .line 558
    .local v9, "task":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v10, v7, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v11, v9, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 559
    goto :goto_1

    .line 565
    :cond_0
    iget-object v10, v7, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v10, v9}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v10

    .line 566
    .local v10, "taskIndex":I
    const/4 v11, 0x0

    .line 567
    .local v11, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eq v10, v5, :cond_1

    .line 568
    iget-object v5, v7, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 571
    :cond_1
    if-eqz v11, :cond_2

    iget-boolean v5, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v5, :cond_2

    .line 572
    iget-object v5, v7, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    iget-object v12, v9, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v5, v12, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 574
    :cond_2
    iget-boolean v5, v7, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-eqz v5, :cond_3

    invoke-static {v6}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 575
    move v2, v10

    .line 576
    invoke-virtual {v7, v9}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 578
    :cond_3
    iget-object v5, v7, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 553
    .end local v6    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v9    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v10    # "taskIndex":I
    .end local v11    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 583
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    .restart local v4    # "i":I
    :goto_2
    if-ltz v4, :cond_a

    .line 584
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/shared/recents/model/Task;

    .line 585
    .restart local v9    # "task":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v10, v7, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 588
    .local v10, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v11, v7, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v12, v9, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 589
    goto :goto_3

    .line 593
    :cond_5
    iget-boolean v11, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-nez v11, :cond_6

    .line 594
    goto :goto_3

    .line 597
    :cond_6
    iget-object v11, v7, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    iget-object v12, v9, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/views/TaskView;

    .line 598
    .local v11, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-nez v11, :cond_8

    .line 599
    iget-object v12, v7, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v12, v9, v9}, Lcom/android/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Lcom/android/systemui/recents/views/TaskView;

    .line 600
    iget-object v12, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    iget-object v13, v7, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v13, v13, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_7

    .line 601
    iget-object v12, v7, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v12}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getBackOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {v7, v11, v12, v13}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    goto :goto_3

    .line 604
    :cond_7
    iget-object v12, v7, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v12}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {v7, v11, v12, v13}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    goto :goto_3

    .line 609
    :cond_8
    iget-object v12, v7, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v12, v9}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v12

    .line 610
    .local v12, "taskIndex":I
    invoke-direct {v7, v9, v12}, Lcom/android/systemui/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/shared/recents/model/Task;I)I

    move-result v13

    .line 611
    .local v13, "insertIndex":I
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    if-eq v13, v14, :cond_9

    .line 612
    invoke-virtual {v7, v11}, Lcom/android/systemui/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    .line 613
    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    invoke-virtual {v7, v11, v13, v14}, Lcom/android/systemui/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 614
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    .line 583
    .end local v9    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v10    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v11    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v12    # "taskIndex":I
    .end local v13    # "insertIndex":I
    :cond_9
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 619
    .end local v4    # "i":I
    :cond_a
    const/4 v4, 0x0

    aget v9, v0, v4

    aget v10, v0, v6

    invoke-direct {v7, v8, v9, v10}, Lcom/android/systemui/recents/views/TaskStackView;->updatePrefetchingTask(Ljava/util/ArrayList;II)V

    .line 622
    if-eq v2, v5, :cond_c

    .line 623
    aget v5, v0, v6

    if-ge v2, v5, :cond_b

    .line 624
    aget v5, v0, v6

    goto :goto_4

    .line 625
    :cond_b
    aget v5, v0, v4

    .line 626
    .local v5, "newFocusedTaskIndex":I
    :goto_4
    invoke-virtual {v7, v5, v4, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    .line 628
    iget-object v4, v7, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v7, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    .line 629
    .local v4, "focusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v4, :cond_c

    .line 630
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->requestAccessibilityFocus()Z

    .line 633
    .end local v4    # "focusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v5    # "newFocusedTaskIndex":I
    :cond_c
    return-void
.end method

.method cancelAllTaskViewAnimations()V
    .locals 5

    .line 751
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 752
    .local v0, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 753
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 754
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 755
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 752
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 758
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method cancelDeferredTaskViewLayoutAnimation()V
    .locals 1

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 745
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->computeScroll()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1144
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->sendAccessibilityEvent(I)V

    .line 1145
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 1146
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getScrollVelocity()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFastFlingVelocity:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1145
    move v2, v1

    goto :goto_0

    .line 1146
    :cond_0
    const/4 v2, 0x0

    .line 1145
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->setFlingingFast(Z)V

    .line 1148
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    if-eqz v0, :cond_2

    .line 1149
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1150
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 1151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 1153
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-eqz v0, :cond_3

    .line 1154
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 1156
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->unmapRange(FFF)F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastScrollPPercent:F

    .line 1158
    return-void
.end method

.method public computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 2

    .line 1165
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v0

    return-object v0
.end method

.method computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FFLandroid/util/ArraySet;Z)[I
    .locals 20
    .param p3, "curStackScroll"    # F
    .param p4, "targetStackScroll"    # F
    .param p6, "ignoreTaskOverrides"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;FF",
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;Z)[I"
        }
    .end annotation

    .local p1, "taskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    .local p5, "ignoreTasksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/shared/recents/model/Task$TaskKey;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 472
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 473
    .local v3, "taskCount":I
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpIntPair:[I

    .line 474
    .local v4, "visibleTaskRange":[I
    const/4 v5, -0x1

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 475
    const/4 v7, 0x1

    aput v5, v4, v7

    .line 476
    invoke-static/range {p3 .. p4}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 479
    .local v5, "useTargetStackScroll":Z
    :goto_0
    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recents/views/TaskStackView;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 482
    const/4 v8, 0x0

    .line 483
    .local v8, "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v9, 0x0

    .line 484
    .local v9, "frontTransformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v10, 0x0

    .line 485
    .local v10, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v11, 0x0

    .line 486
    .local v11, "transformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    add-int/lit8 v12, v3, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_6

    .line 487
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Lcom/android/systemui/shared/recents/model/Task;

    .line 490
    .local v15, "task":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 491
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v16, v14

    check-cast v16, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 490
    move-object v14, v15

    move-object v7, v15

    move/from16 v15, p3

    .end local v15    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .local v7, "task":Lcom/android/systemui/shared/recents/model/Task;
    move-object/from16 v17, v8

    move/from16 v18, p6

    invoke-virtual/range {v13 .. v18}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v10

    .line 492
    if-eqz v5, :cond_1

    iget-boolean v13, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-nez v13, :cond_1

    .line 496
    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    new-instance v14, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v14}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    move/from16 v15, p4

    invoke-virtual {v13, v7, v15, v14, v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v11

    .line 498
    iget-boolean v13, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v13, :cond_2

    .line 499
    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    goto :goto_2

    .line 505
    :cond_1
    move/from16 v15, p4

    :cond_2
    :goto_2
    iget-object v13, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-object/from16 v14, p5

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 506
    nop

    .line 486
    .end local v7    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_3
    const/4 v13, 0x1

    goto :goto_3

    .line 509
    .restart local v7    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_4
    move-object v8, v10

    .line 510
    move-object v9, v11

    .line 511
    iget-boolean v13, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v13, :cond_3

    .line 512
    aget v13, v4, v6

    if-gez v13, :cond_5

    .line 513
    aput v12, v4, v6

    .line 515
    :cond_5
    const/4 v13, 0x1

    aput v12, v4, v13

    .line 486
    .end local v7    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :goto_3
    add-int/lit8 v12, v12, -0x1

    move v7, v13

    goto :goto_1

    .line 518
    .end local v12    # "i":I
    :cond_6
    move/from16 v15, p4

    move-object/from16 v14, p5

    return-object v4
.end method

.method public createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1477
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d01ab

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/grid/GridTaskView;

    return-object v0

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d01b1

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    return-object v0
.end method

.method public bridge synthetic createView(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object p1

    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2249
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 2251
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "TaskStackView"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2252
    const-string v2, " hasDefRelayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2253
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    if-eqz v2, :cond_0

    const-string v2, "Y"

    goto :goto_0

    :cond_0
    const-string v2, "N"

    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2254
    const-string v2, " clipDirty="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-eqz v2, :cond_1

    const-string v2, "Y"

    goto :goto_1

    :cond_1
    const-string v2, "N"

    :goto_1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2255
    const-string v2, " awaitingStackReload="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFinishedLayoutAfterStackReload:Z

    if-eqz v2, :cond_2

    const-string v2, "Y"

    goto :goto_2

    :cond_2
    const-string v2, "N"

    :goto_2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2256
    const-string v2, " initialState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2257
    const-string v2, " inMeasureLayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    if-eqz v2, :cond_3

    const-string v2, "Y"

    goto :goto_3

    :cond_3
    const-string v2, "N"

    :goto_3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2258
    const-string v2, " enterAnimCompleted="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v2, :cond_4

    const-string v2, "Y"

    goto :goto_4

    :cond_4
    const-string v2, "N"

    :goto_4
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2259
    const-string v2, " touchExplorationOn="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-eqz v2, :cond_5

    const-string v2, "Y"

    goto :goto_5

    :cond_5
    const-string v2, "N"

    :goto_5
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2260
    const-string v2, " screenPinningOn="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v2, :cond_6

    const-string v2, "Y"

    goto :goto_6

    :cond_6
    const-string v2, "N"

    :goto_6
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2261
    const-string v2, " numIgnoreTasks="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2262
    const-string v2, " numViewPool="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2263
    const-string v2, " stableStackBounds="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2264
    const-string v2, " stackBounds="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2265
    const-string v2, " stableWindow="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2266
    const-string v2, " window="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2267
    const-string v2, " display="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/utilities/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2268
    const-string v2, " orientation="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2269
    const-string v2, " [0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2272
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_7

    .line 2273
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2274
    const-string v2, "Focused task: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2275
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    const-string v3, ""

    invoke-virtual {v2, v3, p2}, Lcom/android/systemui/shared/recents/model/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2278
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2279
    .local v2, "numTaskViews":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v2, :cond_8

    .line 2280
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4, v0, p2}, Lcom/android/systemui/recents/views/TaskView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2279
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 2283
    .end local v3    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3, v0, p2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2284
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3, v0, p2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2285
    return-void
.end method

.method public findAnchorTask(Ljava/util/List;Landroid/util/MutableBoolean;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 4
    .param p2, "isFrontMostTask"    # Landroid/util/MutableBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Landroid/util/MutableBoolean;",
            ")",
            "Lcom/android/systemui/shared/recents/model/Task;"
        }
    .end annotation

    .line 1359
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/shared/recents/model/Task;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1360
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task;

    .line 1363
    .local v2, "task":Lcom/android/systemui/shared/recents/model/Task;
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1364
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_0

    .line 1365
    iput-boolean v1, p2, Landroid/util/MutableBoolean;->value:Z

    .line 1359
    .end local v2    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1369
    .restart local v2    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_1
    return-object v2

    .line 1371
    .end local v0    # "i":I
    .end local v2    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1098
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 5

    .line 1043
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 1044
    .local v0, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1045
    .local v1, "taskViewCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1046
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 1047
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-static {v3}, Lcom/android/systemui/shared/recents/utilities/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1048
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    return-object v4

    .line 1045
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1051
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFrontMostTaskView()Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .line 1052
    .local v2, "frontTv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v2, :cond_2

    .line 1053
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    return-object v3

    .line 1055
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;
    .locals 5
    .param p1, "t"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 402
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 403
    .local v0, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 404
    .local v1, "taskViewCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 405
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 406
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 407
    return-object v3

    .line 404
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    .local p2, "transformsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    move-object/from16 v0, p0

    .line 707
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 708
    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v1

    .line 709
    .local v1, "focusState":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    .local v2, "i":I
    :goto_0
    move v11, v2

    .end local v2    # "i":I
    .local v11, "i":I
    if-ltz v11, :cond_1

    .line 710
    move-object/from16 v12, p1

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/systemui/shared/recents/model/Task;

    .line 711
    .local v13, "task":Lcom/android/systemui/shared/recents/model/Task;
    move-object/from16 v14, p2

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 712
    .local v15, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v9

    .line 713
    .local v9, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v9, :cond_0

    .line 714
    invoke-virtual {v15, v9}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 720
    move-object/from16 v17, v9

    goto :goto_1

    .line 716
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v16, 0x0

    move-object v3, v13

    move v5, v1

    move-object v6, v15

    move-object/from16 v17, v9

    move/from16 v9, v16

    .end local v9    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .local v17, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 720
    :goto_1
    iput-boolean v10, v15, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 709
    .end local v13    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v15    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v17    # "tv":Lcom/android/systemui/recents/views/TaskView;
    add-int/lit8 v2, v11, -0x1

    .end local v11    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 722
    .end local v2    # "i":I
    :cond_1
    move-object/from16 v12, p1

    move-object/from16 v14, p2

    return-void
.end method

.method public getFocusedTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object v0
.end method

.method public getGridAlgorithm()Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    return-object v0
.end method

.method public getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 15
    .param p1, "stackScroll"    # F
    .param p2, "focusState"    # I
    .param p4, "ignoreTaskOverrides"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .local p3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    .local p5, "transformsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    move-object v0, p0

    move-object/from16 v1, p3

    .line 730
    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 731
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 732
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task;

    .line 733
    .local v5, "task":Lcom/android/systemui/shared/recents/model/Task;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 734
    .local v14, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v5

    move/from16 v8, p1

    move/from16 v9, p2

    move-object v10, v14

    move/from16 v13, p4

    invoke-virtual/range {v6 .. v13}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 736
    iput-boolean v4, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 731
    .end local v5    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v14    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 738
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-object v0
.end method

.method public getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    return-object v0
.end method

.method getTaskViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTouchHandler()Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    return-object v0
.end method

.method public hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "preferredData"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 1559
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 107
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result p1

    return p1
.end method

.method isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 448
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTouchPointInView(FFLcom/android/systemui/recents/views/TaskView;)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .line 1349
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v2

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v3

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1350
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 298
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 299
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->readSystemFlags()V

    .line 301
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .line 2045
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_0

    .line 2046
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    .line 2047
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    .line 2051
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 2053
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange()V

    .line 2056
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromMultiWindow:Z

    if-nez v0, :cond_1

    .line 2057
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2058
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2059
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2060
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2061
    .local v0, "taskViewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2062
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->onConfigurationChanged()V

    .line 2061
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2067
    .end local v0    # "taskViewCount":I
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateStackActionButtonVisibility()V

    .line 2073
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromMultiWindow:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    if-nez v0, :cond_2

    .line 2074
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 2075
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    goto :goto_1

    .line 2076
    :cond_2
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_3

    .line 2077
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 2078
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 2080
    :cond_3
    :goto_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .line 1758
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->cancelNonDismissTaskAnimations()V

    .line 1759
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1760
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 1761
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 1764
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->animated:Z

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startExitToHomeAnimation(ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1767
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->moveGridTaskViewFocus(Landroid/view/View;)V

    .line 1770
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    .line 1981
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    .line 1982
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->tryStartEnterAnimation()V

    .line 1983
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    .line 1709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackActionButtonVisible:Z

    .line 1710
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchMostRecentTaskRequestEvent;

    .line 1698
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 1700
    .local v0, "mostRecentTask":Lcom/android/systemui/shared/recents/model/Task;
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->launchTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1702
    .end local v0    # "mostRecentTask":Lcom/android/systemui/shared/recents/model/Task;
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    .line 1713
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFinishedLayoutAfterStackReload:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1714
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLaunchNextAfterFirstMeasure:Z

    .line 1715
    return-void

    .line 1718
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    const/16 v2, 0x13e

    if-nez v0, :cond_2

    .line 1719
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->getLastPipTime()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 1720
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/ExpandPipEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/component/ExpandPipEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1721
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pip"

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 1725
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1727
    :goto_0
    return-void

    .line 1730
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    .line 1731
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->getLastPipTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->isNextLaunchTargetPip(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1733
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/ExpandPipEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/component/ExpandPipEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1734
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pip"

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1

    .line 1736
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getNextLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 1737
    .local v0, "launchTask":Lcom/android/systemui/shared/recents/model/Task;
    if-eqz v0, :cond_4

    .line 1740
    new-instance v1, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;-><init>()V

    .line 1741
    .local v1, "hideMenuEvent":Lcom/android/systemui/recents/events/component/HidePipMenuEvent;
    new-instance v3, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackView$eeuGItB18dVOcE3IB2KYHvY1WRM;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackView$eeuGItB18dVOcE3IB2KYHvY1WRM;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 1744
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1745
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 1746
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1745
    invoke-static {v3, v2, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 1749
    .end local v0    # "launchTask":Lcom/android/systemui/shared/recents/model/Task;
    .end local v1    # "hideMenuEvent":Lcom/android/systemui/recents/events/component/HidePipMenuEvent;
    :cond_4
    :goto_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .line 1694
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 1695
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;

    .line 1752
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->screenPinningRequested:Z

    .line 1753
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    .line 1752
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1754
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .line 2022
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->showDeferredAnimation:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2026
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 2027
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->reset()V

    .line 2031
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 2032
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskStackView$6;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->post(Ljava/lang/Runnable;)Z

    .end local v0    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    goto :goto_1

    .line 2023
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/shared/recents/model/TaskStack;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    .line 2042
    :goto_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    .line 1672
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->computeComponentsRemoved(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1676
    .local v0, "removedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 1677
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1678
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/recents/model/Task;

    .line 1679
    .local v3, "t":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v4, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1680
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    .line 1681
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v4, :cond_0

    .line 1683
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    goto :goto_1

    .line 1686
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    sget-object v6, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V

    .line 1677
    .end local v3    # "t":Lcom/android/systemui/shared/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1690
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    .line 1705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackActionButtonVisible:Z

    .line 1706
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;

    .line 2108
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget v1, p1, Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 2109
    .local v0, "removeTask":Lcom/android/systemui/shared/recents/model/Task;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2112
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    sget-object v3, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {v2, v0, v3, v1, v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;ZZ)V

    .line 2115
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 2116
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 2117
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    .line 2087
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    if-nez v0, :cond_2

    .line 2088
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    if-eqz v0, :cond_0

    .line 2089
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->moveGridTaskViewFocus(Landroid/view/View;)V

    .line 2092
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2093
    .local v0, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2094
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 2093
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2096
    .end local v2    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->clearPrefetchingTask()V

    .line 2101
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    .line 2103
    .end local v0    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_2
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    .line 1793
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1794
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    .line 1795
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v4

    .line 1794
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startDeleteAllTasksAnimation(Ljava/util/List;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1796
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/views/TaskStackView$4;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 1813
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;

    .line 1787
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 1788
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    .line 1787
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1789
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;

    .line 2083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    .line 2084
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;

    .line 1817
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1100ee

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1820
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->animation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->animation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskStackView$5;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 1832
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->animation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->removeTask(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V

    .line 1833
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1834
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v0, :cond_1

    .line 1835
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1838
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x121

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 1839
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1838
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 1840
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/UserInteractionEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    .line 1879
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1881
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    .line 1882
    .local v0, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_0

    .line 1883
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 1884
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v1, :cond_0

    .line 1885
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->cancelFocusTimerIndicator()V

    .line 1888
    .end local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;)V
    .locals 18
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    move-object/from16 v0, p0

    .line 1906
    move-object/from16 v1, p1

    new-instance v2, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v4, 0xfa

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 1908
    .local v2, "animation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    const/4 v3, 0x0

    .line 1909
    .local v3, "ignoreTaskOverrides":Z
    iget-object v4, v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v4, v4, Lcom/android/systemui/recents/views/DockState;

    if-eqz v4, :cond_0

    .line 1912
    iget-object v4, v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v4, Lcom/android/systemui/recents/views/DockState;

    .line 1913
    .local v4, "dockState":Lcom/android/systemui/recents/views/DockState;
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v14, v5

    .line 1917
    .local v14, "systemInsets":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v5

    .line 1918
    .local v5, "height":I
    iget v6, v14, Landroid/graphics/Rect;->bottom:I

    sub-int v15, v5, v6

    .line 1919
    .end local v5    # "height":I
    .local v15, "height":I
    const/4 v5, 0x0

    iput v5, v14, Landroid/graphics/Rect;->bottom:I

    .line 1920
    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v7

    iget v9, v0, Lcom/android/systemui/recents/views/TaskStackView;->mDividerSize:I

    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 1922
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    .line 1920
    move-object v5, v4

    move v8, v15

    move-object/from16 v16, v10

    move-object v10, v14

    move/from16 v17, v3

    move-object v3, v13

    move-object/from16 v13, v16

    .end local v3    # "ignoreTaskOverrides":Z
    .local v17, "ignoreTaskOverrides":Z
    invoke-virtual/range {v5 .. v13}, Lcom/android/systemui/recents/views/DockState;->getDockedTaskStackBounds(Landroid/graphics/Rect;IIILandroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Landroid/content/res/Resources;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1923
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3, v14}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 1924
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1925
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1926
    const/4 v3, 0x1

    .line 1927
    .end local v4    # "dockState":Lcom/android/systemui/recents/views/DockState;
    .end local v14    # "systemInsets":Landroid/graphics/Rect;
    .end local v15    # "height":I
    .end local v17    # "ignoreTaskOverrides":Z
    .restart local v3    # "ignoreTaskOverrides":Z
    goto :goto_0

    .line 1930
    :cond_0
    move/from16 v17, v3

    .end local v3    # "ignoreTaskOverrides":Z
    .restart local v17    # "ignoreTaskOverrides":Z
    iget-object v3, v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1931
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutToStableBounds()V

    .line 1932
    iget-object v3, v1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1934
    move/from16 v3, v17

    .end local v17    # "ignoreTaskOverrides":Z
    .restart local v3    # "ignoreTaskOverrides":Z
    :goto_0
    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v3}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;Landroid/util/ArrayMap;Z)V

    .line 1935
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .line 1964
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1965
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutToStableBounds()V

    .line 1968
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    .line 1971
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1972
    .local v0, "animationOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;>;"
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v2, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1974
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    const/16 v5, 0xfa

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 1972
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    new-instance v1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v5, v2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1977
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 1978
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .line 1939
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/views/DockState;

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    .line 1943
    return-void

    .line 1947
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1950
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    .line 1953
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1954
    .local v0, "animationOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;>;"
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v2, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1956
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    const/16 v5, 0xfa

    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 1954
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    new-instance v1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v5, v2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1959
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 1960
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    .line 1892
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1895
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v0

    const v1, 0x3f866666    # 1.05f

    mul-float/2addr v0, v1

    .line 1896
    .local v0, "finalScale":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1898
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 1899
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 1900
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 1901
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v3, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v5, 0xaf

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1903
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    .line 1773
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_2

    .line 1774
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->moveGridTaskViewFocus(Landroid/view/View;)V

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1778
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_1

    .line 1779
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 1781
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1783
    .end local v0    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    .line 1844
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1845
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 1847
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZZI)V

    .line 1848
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    .line 1852
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1853
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 1855
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    .line 1856
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;

    .line 1859
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1860
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    .line 1861
    .local v0, "taskCount":I
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v1

    .line 1862
    .local v1, "currentIndex":I
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskGridLayoutAlgorithm:Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;->direction:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/systemui/recents/views/grid/TaskGridLayoutAlgorithm;->navigateFocus(IILcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;)I

    move-result v2

    .line 1864
    .local v2, "nextIndex":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    .line 1865
    .end local v0    # "taskCount":I
    .end local v1    # "currentIndex":I
    .end local v2    # "nextIndex":I
    goto :goto_0

    .line 1866
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/views/TaskStackView$8;->$SwitchMap$com$android$systemui$recents$events$ui$focus$NavigateTaskViewEvent$Direction:[I

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;->direction:Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    invoke-virtual {v1}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1871
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 1868
    :pswitch_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1869
    nop

    .line 1875
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 305
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 306
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method onFirstLayout()V
    .locals 6

    .line 1326
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->prepareForEnterAnimation()V

    .line 1330
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 1331
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 1336
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 1337
    .local v2, "setFocusOnFirstLayout":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 1338
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    .line 1339
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v5

    .line 1338
    invoke-direct {p0, v1, v4, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getInitialFocusTaskIndex(Lcom/android/systemui/recents/RecentsActivityLaunchState;IZ)I

    move-result v4

    .line 1340
    .local v4, "focusedTaskIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 1341
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    .line 1345
    .end local v4    # "focusedTaskIndex":I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateStackActionButtonVisibility()V

    .line 1346
    return-void
.end method

.method public onFocusStateChanged(II)V
    .locals 1
    .param p1, "prevFocusState"    # I
    .param p2, "curFocusState"    # I

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    if-nez v0, :cond_0

    .line 1631
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1632
    sget-object v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViewsOnNextFrame(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1634
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1137
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1060
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 1062
    .local v0, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1063
    .local v1, "taskViewCount":I
    if-lez v1, :cond_0

    .line 1064
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 1065
    .local v2, "backMostTask":Lcom/android/systemui/recents/views/TaskView;
    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 1066
    .local v3, "frontMostTask":Lcom/android/systemui/recents/views/TaskView;
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1067
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1068
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1070
    .end local v2    # "backMostTask":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "frontMostTask":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1072
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1073
    .local v2, "stackHeight":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1074
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    int-to-float v4, v2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1075
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1079
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1080
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    .line 1081
    .local v0, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1082
    .local v1, "taskViewCount":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1084
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getAccessibilityFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    .line 1085
    .local v3, "focusedTask":Lcom/android/systemui/shared/recents/model/Task;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1086
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v4, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v4

    .line 1087
    .local v4, "focusedTaskIndex":I
    if-gtz v4, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackActionButtonVisible:Z

    if-nez v5, :cond_1

    .line 1088
    :cond_0
    const/16 v5, 0x2000

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1090
    :cond_1
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v4, v5, :cond_2

    .line 1091
    const/16 v2, 0x1000

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1094
    .end local v3    # "focusedTask":Lcom/android/systemui/shared/recents/model/Task;
    .end local v4    # "focusedTaskIndex":I
    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1127
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1270
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1271
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1272
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1273
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1274
    .local v0, "taskViewCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1275
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V

    .line 1274
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1277
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    if-eqz v2, :cond_1

    .line 1278
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->layout()V

    .line 1281
    :cond_1
    if-eqz p1, :cond_2

    .line 1282
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1283
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 1288
    :cond_2
    sget-object v2, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1289
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 1291
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFinishedLayoutAfterStackReload:Z

    if-nez v2, :cond_3

    .line 1293
    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 1294
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->onFirstLayout()V

    .line 1296
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackReloaded:Z

    if-eqz v1, :cond_3

    .line 1297
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFinishedLayoutAfterStackReload:Z

    .line 1298
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->tryStartEnterAnimation()V

    .line 1301
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 1187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1188
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1193
    .local v2, "height":I
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v5, v10, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v7, v7, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v8, v8, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    .line 1196
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1197
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1198
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1199
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v10, v10, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1200
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v10, v10, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1204
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1205
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1206
    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1210
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastWidth:I

    if-ne v1, v3, :cond_1

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastHeight:I

    if-eq v2, v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v10

    .line 1212
    .local v0, "resetToInitialState":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFinishedLayoutAfterStackReload:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    if-nez v3, :cond_3

    if-eqz v0, :cond_6

    .line 1214
    :cond_3
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    if-eqz v0, :cond_5

    .line 1215
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 1216
    iput-boolean v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    .line 1218
    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFinishedLayoutAfterStackReload:Z

    if-eqz v3, :cond_6

    .line 1219
    iput v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 1224
    :cond_6
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLaunchNextAfterFirstMeasure:Z

    if-eqz v3, :cond_7

    .line 1225
    iput-boolean v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLaunchNextAfterFirstMeasure:Z

    .line 1226
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1230
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    invoke-virtual {p0, v3, v10}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 1233
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1234
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1235
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1236
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1237
    .local v3, "taskViewCount":I
    move v4, v10

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_8

    .line 1238
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V

    .line 1237
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1240
    .end local v4    # "i":I
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    if-eqz v4, :cond_9

    .line 1241
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->measure()V

    .line 1244
    :cond_9
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->setMeasuredDimension(II)V

    .line 1245
    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastWidth:I

    .line 1246
    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastHeight:I

    .line 1247
    iput-boolean v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 1248
    return-void
.end method

.method public onPickUpViewFromPool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Z)V
    .locals 5
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p3, "isNewView"    # Z

    .line 1509
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v0

    .line 1510
    .local v0, "taskIndex":I
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/shared/recents/model/Task;I)I

    move-result v1

    .line 1513
    .local v1, "insertIndex":I
    const/4 v2, 0x1

    if-eqz p3, :cond_2

    .line 1514
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    if-eqz v3, :cond_0

    .line 1517
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 1521
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1522
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_1

    .line 1523
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 1525
    :cond_1
    invoke-virtual {p0, p1, v1, v3, v2}, Lcom/android/systemui/recents/views/TaskStackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1526
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V

    .line 1527
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/recents/views/TaskStackView;->layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V

    .line 1528
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0

    .line 1530
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1533
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    .line 1536
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1539
    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/views/TaskView;->setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V

    .line 1540
    invoke-virtual {p1, v2}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 1541
    invoke-virtual {p1, v2}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1542
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v4, 0x0

    if-ne v3, p2, :cond_3

    .line 1543
    invoke-virtual {p1, v2, v4}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 1544
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    if-lez v2, :cond_3

    .line 1546
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->startFocusTimerIndicator(I)V

    .line 1547
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    .line 1552
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 1553
    invoke-virtual {p1, v4, v4}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    .line 1555
    :cond_4
    return-void
.end method

.method public bridge synthetic onPickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 107
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->onPickUpViewFromPool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Z)V

    return-void
.end method

.method onReload(Z)V
    .locals 4
    .param p1, "isResumingFromVisible"    # Z

    .line 313
    if-nez p1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 319
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v0, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 321
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 322
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 323
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskView;->onReload(Z)V

    .line 322
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 327
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->readSystemFlags()V

    .line 328
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 329
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 330
    if-nez p1, :cond_2

    .line 331
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->reset()V

    .line 332
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    .line 333
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    .line 334
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastScrollPPercent:F

    .line 339
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackReloaded:Z

    .line 340
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFinishedLayoutAfterStackReload:Z

    .line 341
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLaunchNextAfterFirstMeasure:Z

    .line 342
    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 344
    return-void
.end method

.method public onReturnViewToPool(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 3
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .line 1486
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 1489
    .local v0, "task":Lcom/android/systemui/shared/recents/model/Task;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->unbindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1492
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    .line 1493
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    .line 1494
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 1495
    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1496
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v2, :cond_0

    .line 1497
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v1, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V

    .line 1501
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    .line 1503
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    .line 1504
    return-void
.end method

.method public bridge synthetic onReturnViewToPool(Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->onReturnViewToPool(Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method

.method public onStackScrollChanged(FFLcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 3
    .param p1, "prevScroll"    # F
    .param p2, "curScroll"    # F
    .param p3, "animation"    # Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 1640
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1641
    if-eqz p3, :cond_0

    .line 1642
    invoke-virtual {p0, p3}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViewsOnNextFrame(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1646
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1647
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1649
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackActionButtonVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->mIsScrolling:Z

    if-eqz v0, :cond_1

    sub-float v0, p2, p1

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 1652
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    invoke-direct {v2, v1}, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1655
    :cond_1
    return-void

    .line 1657
    :cond_2
    const v0, 0x3e99999a    # 0.3f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_3

    cmpg-float v2, p2, v0

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    .line 1659
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 1660
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    invoke-direct {v2, v1}, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 1661
    :cond_3
    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_4

    .line 1663
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1666
    :cond_4
    :goto_0
    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p2, "newTask"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 1379
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1382
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFinishedLayoutAfterStackReload:Z

    if-nez v0, :cond_0

    .line 1383
    sget-object v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    goto :goto_0

    .line 1384
    :cond_0
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    const/16 v1, 0xc8

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 1382
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1385
    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/utilities/AnimationProps;ZZ)V
    .locals 4
    .param p1, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p2, "removedTask"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p3, "newFrontMostTask"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p4, "animation"    # Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    .param p5, "fromDockGesture"    # Z
    .param p6, "dismissRecentsIfAllRemoved"    # Z

    .line 1393
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    if-ne v0, p2, :cond_0

    .line 1394
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1399
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1400
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_1

    .line 1401
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 1405
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1408
    const/4 v1, 0x1

    if-eqz p4, :cond_2

    .line 1409
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1410
    invoke-virtual {p0, p4}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1414
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v2, :cond_3

    if-eqz p3, :cond_3

    .line 1415
    invoke-virtual {p0, p3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .line 1416
    .local v2, "frontTv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v2, :cond_3

    .line 1417
    const/16 v3, 0xc8

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    .line 1422
    .end local v2    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 1423
    if-eqz p6, :cond_5

    .line 1424
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    if-eqz p5, :cond_4

    .line 1425
    const v3, 0x7f110559

    goto :goto_0

    .line 1426
    :cond_4
    const v3, 0x7f11055a

    :goto_0
    invoke-direct {v2, v3}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(I)V

    .line 1424
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    .line 1428
    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/ShowEmptyViewEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/ShowEmptyViewEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1431
    :cond_6
    :goto_1
    return-void
.end method

.method public onStackTasksRemoved(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 4
    .param p1, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;

    .line 1436
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    .local v0, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1441
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1442
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 1441
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1446
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1449
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    const v3, 0x7f11055a

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1451
    return-void
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/shared/recents/model/TaskStack;)V
    .locals 5
    .param p1, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;

    .line 1455
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFinishedLayoutAfterStackReload:Z

    if-nez v0, :cond_0

    .line 1456
    return-void

    .line 1460
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1461
    sget-object v1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 1465
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 1466
    .local v1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1467
    .local v2, "taskViewCount":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1468
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 1469
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1467
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1471
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .line 1620
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-nez v0, :cond_0

    .line 1621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 1622
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 1624
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1132
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1103
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1104
    return v1

    .line 1106
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getAccessibilityFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 1107
    .local v0, "focusedTask":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v2

    .line 1108
    .local v2, "taskIndex":I
    const/4 v3, 0x0

    if-ltz v2, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1109
    const/16 v4, 0x1000

    if-eq p1, v4, :cond_2

    const/16 v4, 0x2000

    if-eq p1, v4, :cond_1

    goto :goto_0

    .line 1116
    :cond_1
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4, v1, v1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    .line 1118
    return v1

    .line 1111
    :cond_2
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4, v1, v1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    .line 1113
    return v1

    .line 1122
    :cond_3
    :goto_0
    return v3
.end method

.method public relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 2
    .param p1, "animation"    # Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 639
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/shared/recents/utilities/AnimationProps;Landroid/util/ArrayMap;Z)V

    .line 641
    return-void
.end method

.method relayoutTaskViewsOnNextFrame(Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 0
    .param p1, "animation"    # Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 683
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 684
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 685
    return-void
.end method

.method public reloadOnConfigurationChange()V
    .locals 2

    .line 2120
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 2121
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 2122
    return-void
.end method

.method removeIgnoreTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 441
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 442
    return-void
.end method

.method public resetFocusedTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 1020
    if-eqz p1, :cond_0

    .line 1021
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1022
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_0

    .line 1023
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 1026
    .end local v0    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->moveGridTaskViewFocus(Landroid/view/View;)V

    .line 1029
    :cond_1
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 1030
    return-void
.end method

.method public setFocusedTask(IZZ)Z
    .locals 1
    .param p1, "taskIndex"    # I
    .param p2, "scrollToTask"    # Z
    .param p3, "requestViewFocus"    # Z

    .line 858
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    move-result v0

    return v0
.end method

.method public setFocusedTask(IZZI)Z
    .locals 6
    .param p1, "focusTaskIndex"    # I
    .param p2, "scrollToTask"    # Z
    .param p3, "requestViewFocus"    # Z
    .param p4, "timerIndicatorDuration"    # I

    .line 869
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-lez v0, :cond_0

    .line 870
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {p1, v0, v3}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(III)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 871
    .local v0, "newFocusedTaskIndex":I
    :goto_0
    if-eq v0, v1, :cond_1

    .line 872
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 875
    .local v1, "newFocusedTask":Lcom/android/systemui/shared/recents/model/Task;
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v3, :cond_3

    .line 877
    if-lez p4, :cond_2

    .line 878
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    .line 879
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v3, :cond_2

    .line 880
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->cancelFocusTimerIndicator()V

    .line 884
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 887
    :cond_3
    const/4 v3, 0x0

    .line 888
    .local v3, "willScroll":Z
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 890
    if-eqz v1, :cond_a

    .line 892
    if-lez p4, :cond_5

    .line 893
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    .line 894
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v4, :cond_4

    .line 895
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/android/systemui/recents/views/TaskViewHeader;->startFocusTimerIndicator(I)V

    goto :goto_2

    .line 898
    :cond_4
    iput p4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    .line 902
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_5
    :goto_2
    if-eqz p2, :cond_8

    .line 904
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-nez v2, :cond_6

    .line 905
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelAllTaskViewAnimations()V

    .line 908
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    .line 909
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {v2, v1, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startScrollToFocusedTaskAnimation(Lcom/android/systemui/shared/recents/model/Task;Z)Z

    move-result v2

    .line 911
    .end local v3    # "willScroll":Z
    .local v2, "willScroll":Z
    if-eqz v2, :cond_7

    .line 912
    const/16 v3, 0x1000

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->sendAccessibilityEvent(I)V

    .line 922
    :cond_7
    move v3, v2

    goto :goto_3

    .line 916
    .end local v2    # "willScroll":Z
    .restart local v3    # "willScroll":Z
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    .line 917
    .local v4, "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v4, :cond_9

    .line 918
    invoke-virtual {v4, v2, p3}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 922
    .end local v4    # "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    if-eqz v2, :cond_a

    .line 923
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewFocusFrame:Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/grid/TaskViewFocusFrame;->moveGridTaskViewFocus(Landroid/view/View;)V

    .line 926
    :cond_a
    return v3
.end method

.method public setRelativeFocusedTask(ZZZ)V
    .locals 6
    .param p1, "forward"    # Z
    .param p2, "stackTasksOnly"    # Z
    .param p3, "animated"    # Z

    .line 940
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZZI)V

    .line 941
    return-void
.end method

.method public setRelativeFocusedTask(ZZZZI)V
    .locals 9
    .param p1, "forward"    # Z
    .param p2, "stackTasksOnly"    # Z
    .param p3, "animated"    # Z
    .param p4, "cancelWindowAnimations"    # Z
    .param p5, "timerIndicatorDuration"    # I

    .line 958
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 959
    .local v0, "focusedTask":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v1

    .line 960
    .local v1, "newIndex":I
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 961
    if-eqz p2, :cond_2

    .line 962
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 964
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/shared/recents/model/Task;>;"
    if-eqz p1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    add-int/2addr v5, v1

    .line 965
    .local v5, "tmpNewIndex":I
    if-ltz v5, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 966
    move v1, v5

    .line 968
    .end local v4    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/shared/recents/model/Task;>;"
    .end local v5    # "tmpNewIndex":I
    :cond_1
    goto :goto_4

    .line 971
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    .line 972
    .local v4, "taskCount":I
    if-eqz p1, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    add-int/2addr v5, v1

    add-int/2addr v5, v4

    rem-int v1, v5, v4

    .line 973
    .end local v4    # "taskCount":I
    goto :goto_4

    .line 976
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    .line 977
    .local v4, "stackScroll":F
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 978
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 979
    .local v6, "taskCount":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->useGridLayout()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 982
    add-int/lit8 v1, v6, -0x1

    goto :goto_4

    .line 986
    :cond_5
    if-eqz p1, :cond_7

    .line 988
    add-int/lit8 v1, v6, -0x1

    :goto_2
    if-ltz v1, :cond_9

    .line 989
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/shared/recents/model/Task;)F

    move-result v7

    .line 990
    .local v7, "taskP":F
    invoke-static {v7, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-gtz v8, :cond_6

    .line 991
    goto :goto_4

    .line 988
    .end local v7    # "taskP":F
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 996
    :cond_7
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_9

    .line 997
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/shared/recents/model/Task;)F

    move-result v7

    .line 998
    .restart local v7    # "taskP":F
    invoke-static {v7, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-ltz v8, :cond_8

    .line 999
    goto :goto_4

    .line 996
    .end local v7    # "taskP":F
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1005
    .end local v4    # "stackScroll":F
    .end local v5    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    .end local v6    # "taskCount":I
    :cond_9
    :goto_4
    if-eq v1, v2, :cond_a

    .line 1006
    invoke-virtual {p0, v1, v3, v3, p5}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    move-result v2

    .line 1008
    .local v2, "willScroll":Z
    if-eqz v2, :cond_a

    if-eqz p4, :cond_a

    .line 1011
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1014
    .end local v2    # "willScroll":Z
    :cond_a
    return-void
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "systemInsets"    # Landroid/graphics/Rect;

    .line 1172
    const/4 v0, 0x0

    .line 1173
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1174
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1175
    if-eqz v0, :cond_0

    .line 1176
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 1178
    :cond_0
    return-void
.end method

.method public setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V
    .locals 3
    .param p1, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p2, "allowNotifyStackChanges"    # Z

    .line 350
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInitialized()Z

    move-result v0

    .line 354
    .local v0, "isInitialized":Z
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    .line 355
    return-void
.end method

.method public updateLayoutAlgorithm(Z)V
    .locals 1
    .param p1, "boundScrollToNewMinMax"    # Z

    .line 819
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(ZLcom/android/systemui/recents/RecentsActivityLaunchState;)V

    .line 820
    return-void
.end method

.method public updateLayoutAlgorithm(ZLcom/android/systemui/recents/RecentsActivityLaunchState;)V
    .locals 4
    .param p1, "boundScrollToNewMinMax"    # Z
    .param p2, "launchState"    # Lcom/android/systemui/recents/RecentsActivityLaunchState;

    .line 828
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastScrollPPercent:F

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->update(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/util/ArraySet;Lcom/android/systemui/recents/RecentsActivityLaunchState;F)V

    .line 830
    if-eqz p1, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 833
    :cond_0
    return-void
.end method

.method public updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 1
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p3, "animation"    # Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 693
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/views/TaskView;->isAnimatingTo(Lcom/android/systemui/recents/views/TaskViewTransform;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    return-void

    .line 696
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 697
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 699
    return-void
.end method

.method updateTaskViewsList()V
    .locals 5

    .line 372
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 373
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 374
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 375
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 376
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/recents/views/TaskView;

    if-eqz v3, :cond_0

    .line 377
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public updateToInitialState()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    .line 367
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setTaskOverridesForInitialState(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    .line 368
    return-void
.end method

.method public useGridLayout()Z
    .locals 1

    .line 2182
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->useGridLayout()Z

    move-result v0

    return v0
.end method
