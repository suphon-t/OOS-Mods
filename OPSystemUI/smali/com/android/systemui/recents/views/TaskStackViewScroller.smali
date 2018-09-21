.class public Lcom/android/systemui/recents/views/TaskStackViewScroller;
.super Ljava/lang/Object;
.source "TaskStackViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
    }
.end annotation


# static fields
.field private static final STACK_SCROLL:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/recents/views/TaskStackViewScroller;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

.field mContext:Landroid/content/Context;

.field mFinalAnimatedScroll:F

.field final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field mFlingDownScrollP:F

.field mFlingDownY:I

.field mLastDeltaP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

.field mScrollAnimator:Landroid/animation/ObjectAnimator;

.field mScroller:Landroid/widget/OverScroller;

.field mStackScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewScroller$1;

    const-string v1, "stackScroll"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->STACK_SCROLL:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
    .param p3, "layoutAlgorithm"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    .line 89
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    .line 91
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    .line 92
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    const v1, 0x3d75c28f    # 0.06f

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 95
    :cond_0
    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 97
    return-void
.end method

.method private animateScroll(FLandroid/animation/ObjectAnimator;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "newScroll"    # F
    .param p2, "animator"    # Landroid/animation/ObjectAnimator;
    .param p3, "postRunnable"    # Ljava/lang/Runnable;

    .line 279
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 286
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFinalAnimatedScroll:F

    .line 288
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    .line 289
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackViewScroller$2;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recents/views/TaskStackViewScroller$2;-><init>(Lcom/android/systemui/recents/views/TaskStackViewScroller;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 300
    :cond_1
    if-eqz p3, :cond_2

    .line 301
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 304
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method animateBoundScroll()Landroid/animation/ObjectAnimator;
    .locals 3

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    .line 246
    .local v0, "curScroll":F
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    .line 247
    .local v1, "newScroll":F
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FLjava/lang/Runnable;)V

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    return-object v2
.end method

.method animateScroll(FILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "newScroll"    # F
    .param p2, "duration"    # I
    .param p3, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p4, "postRunnable"    # Ljava/lang/Runnable;

    .line 269
    sget-object v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->STACK_SCROLL:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 270
    .local v0, "an":Landroid/animation/ObjectAnimator;
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 271
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    invoke-direct {p0, p1, v0, p4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FLandroid/animation/ObjectAnimator;Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method animateScroll(FILjava/lang/Runnable;)V
    .locals 1
    .param p1, "newScroll"    # F
    .param p2, "duration"    # I
    .param p3, "postRunnable"    # Ljava/lang/Runnable;

    .line 263
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method

.method animateScroll(FLjava/lang/Runnable;)V
    .locals 2
    .param p1, "newScroll"    # F
    .param p2, "postRunnable"    # Ljava/lang/Runnable;

    .line 256
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 258
    .local v0, "duration":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method public boundScroll()Z
    .locals 3

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    .line 173
    .local v0, "curScroll":F
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    .line 174
    .local v1, "newScroll":F
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 176
    const/4 v2, 0x1

    return v2

    .line 178
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method computeScroll()Z
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownY:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDeltaPForY(II)F

    move-result v0

    .line 317
    .local v0, "deltaP":F
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownScrollP:F

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownScrollP:F

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setDeltaStackScroll(FF)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownScrollP:F

    .line 321
    const/4 v1, 0x1

    return v1

    .line 323
    .end local v0    # "deltaP":F
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 343
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "TaskStackViewScroller"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    const-string v0, " stackScroll:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 345
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 346
    return-void
.end method

.method public fling(FIIIIII)V
    .locals 14
    .param p1, "downScrollP"    # F
    .param p2, "downY"    # I
    .param p3, "y"    # I
    .param p4, "velY"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I
    .param p7, "overscroll"    # I

    move-object v0, p0

    .line 165
    move v1, p1

    iput v1, v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownScrollP:F

    .line 166
    move/from16 v2, p2

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingDownY:I

    .line 167
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move/from16 v5, p3

    move/from16 v7, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v13, p7

    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 168
    return-void
.end method

.method getBoundedStackScroll(F)F
    .locals 2
    .param p1, "scroll"    # F

    .line 183
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {p1, v0, v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method getScrollAmountOutOfBounds(F)F
    .locals 1
    .param p1, "scroll"    # F

    .line 188
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0

    .line 193
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getScrollVelocity()F
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method

.method public getStackScroll()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    return v0
.end method

.method isScrollOutOfBounds()Z
    .locals 2

    .line 198
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getScrollAmountOutOfBounds(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()V
    .locals 1

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 102
    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    .line 103
    return-void
.end method

.method resetDeltaScroll()V
    .locals 1

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    .line 107
    return-void
.end method

.method scrollToClosestTask(I)V
    .locals 14
    .param p1, "velocity"    # I

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    .line 209
    .local v0, "stackScroll":F
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto/16 :goto_1

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    .line 215
    .local v1, "algorithm":Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    .line 216
    .local v2, "flingThreshold":F
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, v2

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 217
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result v3

    .line 218
    .local v3, "minY":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result v13

    .line 223
    .local v13, "maxY":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result v8

    neg-int v9, p1

    const/4 v12, 0x0

    move-object v5, p0

    move v10, v3

    move v11, v13

    invoke-virtual/range {v5 .. v12}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->fling(FIIIIII)V

    .line 225
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->scrollToPercentage(I)F

    move-result v5

    .line 227
    .local v5, "pos":F
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {v1, v5, v6, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getClosestTaskP(FII)F

    move-result v6

    .line 229
    .local v6, "newScrollP":F
    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v0, v7, v8

    const/4 v8, 0x1

    aput v6, v7, v8

    invoke-static {v7}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 230
    .local v7, "animator":Landroid/animation/ValueAnimator;
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result v9

    int-to-float v9, v9

    .line 231
    invoke-virtual {v1, v6}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->percentageToScroll(F)I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, p1

    .line 230
    invoke-virtual {v8, v7, v9, v10, v11}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 232
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v9

    invoke-virtual {p0, v6, v8, v9, v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V

    .line 234
    .end local v3    # "minY":I
    .end local v5    # "pos":F
    .end local v6    # "newScrollP":F
    .end local v7    # "animator":Landroid/animation/ValueAnimator;
    .end local v13    # "maxY":I
    goto :goto_0

    .line 235
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {v1, v0, v3, p1}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getClosestTaskP(FII)F

    move-result v3

    .line 237
    .local v3, "newScrollP":F
    const/16 v5, 0x12c

    sget-object v6, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v3, v5, v6, v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V

    .line 240
    .end local v3    # "newScrollP":F
    :goto_0
    return-void

    .line 211
    .end local v1    # "algorithm":Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;
    .end local v2    # "flingThreshold":F
    :cond_2
    :goto_1
    return-void
.end method

.method public setDeltaStackScroll(FF)F
    .locals 4
    .param p1, "downP"    # F
    .param p2, "deltaP"    # F

    .line 126
    add-float v0, p1, p2

    .line 127
    .local v0, "targetScroll":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFocusStateOnScroll(FFF)F

    move-result v1

    .line 129
    .local v1, "newScroll":F
    sget-object v2, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 130
    iput p2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLastDeltaP:F

    .line 131
    sub-float v2, v1, v0

    return v2
.end method

.method public setStackScroll(F)V
    .locals 1
    .param p1, "s"    # F

    .line 118
    sget-object v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 119
    return-void
.end method

.method public setStackScroll(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V
    .locals 3
    .param p1, "newScroll"    # F
    .param p2, "animation"    # Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 139
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 140
    .local v0, "prevScroll":F
    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 141
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-interface {v1, v0, v2, p2}, Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;->onStackScrollChanged(FFLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 144
    :cond_0
    return-void
.end method

.method public setStackScrollToInitialState()Z
    .locals 2

    .line 151
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    .line 152
    .local v0, "prevScroll":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 153
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method stopBoundScrollAnimation()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 309
    return-void
.end method

.method stopScroller()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 340
    :cond_0
    return-void
.end method
