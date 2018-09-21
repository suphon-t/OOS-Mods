.class public Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
.super Ljava/lang/Object;
.source "TaskStackAnimationHelper.java"


# static fields
.field private static final DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mEnterAndExitFromHomeTranslationOffset:I

.field private mStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field private mTmpCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpFinalTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 94
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 97
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 102
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v3, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 105
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 107
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v3, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 109
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 112
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    .line 123
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 124
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isGridEnabled:Z

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    :goto_0
    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mEnterAndExitFromHomeTranslationOffset:I

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;)Lcom/android/systemui/recents/views/TaskStackView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    return-object v0
.end method

.method static synthetic access$100()Landroid/view/animation/Interpolator;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private calculateStaggeredAnimDuration(I)I
    .locals 2
    .param p1, "i"    # I

    .line 639
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x32

    const/16 v1, 0x64

    add-int/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$startEnterAnimation$0()V
    .locals 3

    .line 247
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;-><init>(Z)V

    .line 248
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 247
    return-void
.end method

.method public static synthetic lambda$startTaskGridDeleteTaskAnimation$1(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 1
    .param p1, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;

    .line 646
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchHandler()Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onChildDismissed(Landroid/view/View;)V

    .line 647
    return-void
.end method

.method static synthetic lambda$startTaskStackDeleteTaskAnimation$2(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p0, "touchHandler"    # Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .param p1, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;

    .line 663
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onChildDismissed(Landroid/view/View;)V

    .line 664
    return-void
.end method

.method static synthetic lambda$startTaskStackDeleteTaskAnimation$3(Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p0, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p1, "dismissSize"    # F
    .param p2, "touchHandler"    # Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .param p3, "animation"    # Landroid/animation/ValueAnimator;

    .line 670
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 671
    .local v0, "progress":F
    mul-float v1, v0, p1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 672
    const/4 v1, 0x1

    invoke-virtual {p2, p0, v1, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->updateSwipeProgress(Landroid/view/View;ZF)Z

    .line 673
    return-void
.end method

.method private startTaskGridDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 3
    .param p1, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 644
    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 645
    new-instance v0, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$8-n9X8WiqU8WjSQafJipbVZD-LA;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$8-n9X8WiqU8WjSQafJipbVZD-LA;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 648
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 654
    return-void
.end method

.method private startTaskStackDeleteAllTasksAnimation(Ljava/util/List;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 11
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;",
            "Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;",
            ")V"
        }
    .end annotation

    .line 685
    .local p1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 687
    .local v0, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 689
    .local v1, "offscreenXOffset":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 690
    .local v2, "taskViewCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 691
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 692
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    sub-int v5, v2, v3

    add-int/lit8 v5, v5, -0x1

    .line 693
    .local v5, "taskIndexFromFront":I
    mul-int/lit8 v6, v5, 0x21

    .line 696
    .local v6, "startDelay":I
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 699
    new-instance v7, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    const/16 v8, 0xc8

    sget-object v9, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v10, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;

    invoke-direct {v10, p0, p2, v4}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-direct {v7, v6, v8, v9, v10}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 710
    .local v7, "taskAnimation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 712
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v8, v4}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 713
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v8, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    int-to-float v9, v1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 714
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v8, v4, v9, v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 690
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v5    # "taskIndexFromFront":I
    .end local v6    # "startDelay":I
    .end local v7    # "taskAnimation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 716
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method private startTaskStackDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 5
    .param p1, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 658
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchHandler()Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    move-result-object v0

    .line 659
    .local v0, "touchHandler":Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onBeginManualDrag(Lcom/android/systemui/recents/views/TaskView;)V

    .line 661
    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 662
    new-instance v1, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$ax6dOg8GHbAwig9kBnwP5_DTcLA;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$ax6dOg8GHbAwig9kBnwP5_DTcLA;-><init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 666
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->getScaledDismissSize()F

    move-result v1

    .line 667
    .local v1, "dismissSize":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 668
    .local v2, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 669
    new-instance v3, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$DBVHlVbyKhFHpm00avfl8nT1DCw;

    invoke-direct {v3, p1, v1, v0}, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$DBVHlVbyKhFHpm00avfl8nT1DCw;-><init>(Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 674
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$5;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$5;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 680
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 681
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public prepareForEnterAnimation()V
    .locals 24

    .line 133
    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    .line 134
    .local v1, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    .line 135
    .local v2, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 136
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 138
    .local v4, "appResources":Landroid/content/res/Resources;
    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v5

    .line 139
    .local v5, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v6

    .line 140
    .local v6, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v7

    .line 141
    .local v7, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v8

    .line 144
    .local v8, "launchTargetTask":Lcom/android/systemui/shared/recents/model/Task;
    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 145
    return-void

    .line 148
    :cond_0
    iget-object v9, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 149
    .local v9, "offscreenYOffset":I
    const v10, 0x7f0705ad

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 151
    .local v10, "taskViewAffiliateGroupEnterOffset":I
    const v11, 0x7f0705ae

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 153
    .local v11, "launchedWhileDockingOffset":I
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    .line 156
    .local v12, "isLandscape":Z
    :goto_0
    const/4 v13, 0x0

    .line 157
    .local v13, "top":F
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v15

    iget-boolean v15, v15, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    .line 158
    .local v15, "isLowRamDevice":Z
    if-eqz v15, :cond_2

    iget-boolean v14, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v14, :cond_2

    iget-boolean v14, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v14, :cond_2

    .line 159
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v14

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .end local v1    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .local v16, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    move-object/from16 v17, v3

    const/4 v3, 0x0

    invoke-virtual {v5, v8, v14, v1, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 161
    .end local v3    # "res":Landroid/content/res/Resources;
    .local v17, "res":Landroid/content/res/Resources;
    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v13, v1, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 165
    .end local v16    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v17    # "res":Landroid/content/res/Resources;
    .restart local v1    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v16, v1

    move-object/from16 v17, v3

    .end local v1    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v3    # "res":Landroid/content/res/Resources;
    .restart local v16    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v17    # "res":Landroid/content/res/Resources;
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 166
    .local v1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v14, 0x1

    sub-int/2addr v3, v14

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_a

    .line 167
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/views/TaskView;

    .line 168
    .local v14, "tv":Lcom/android/systemui/recents/views/TaskView;
    move-object/from16 v18, v4

    invoke-virtual {v14}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    .line 171
    .local v4, "task":Lcom/android/systemui/shared/recents/model/Task;
    .local v18, "appResources":Landroid/content/res/Resources;
    move-object/from16 v19, v7

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v7

    .end local v7    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .local v19, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    move-object/from16 v20, v8

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .end local v8    # "launchTargetTask":Lcom/android/systemui/shared/recents/model/Task;
    .local v20, "launchTargetTask":Lcom/android/systemui/shared/recents/model/Task;
    move/from16 v21, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v7, v8, v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 174
    .end local v10    # "taskViewAffiliateGroupEnterOffset":I
    .local v21, "taskViewAffiliateGroupEnterOffset":I
    iget-boolean v7, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v7, :cond_5

    iget-boolean v7, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v7, :cond_5

    .line 175
    iget-boolean v7, v4, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    if-eqz v7, :cond_3

    .line 176
    invoke-virtual {v14}, Lcom/android/systemui/recents/views/TaskView;->onPrepareLaunchTargetForEnterAnimation()V

    .line 166
    move-object/from16 v22, v1

    goto/16 :goto_5

    .line 177
    :cond_3
    if-eqz v15, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0xa

    if-lt v3, v7, :cond_4

    .line 182
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v7

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v7, v10, v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 184
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v7, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    neg-float v8, v13

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 185
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput v10, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 186
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    sget-object v10, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {v7, v14, v8, v10}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 188
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v7, v8, v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 190
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 193
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v10, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-object/from16 v22, v1

    const/16 v1, 0x150

    .end local v1    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .local v22, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    move-object/from16 v23, v4

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .end local v4    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .local v23, "task":Lcom/android/systemui/shared/recents/model/Task;
    invoke-direct {v10, v1, v4}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {v7, v14, v8, v10}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    goto :goto_5

    .line 166
    .end local v14    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v22    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v23    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .restart local v1    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_4
    move-object/from16 v22, v1

    .end local v1    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .restart local v22    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    goto :goto_5

    .line 196
    .end local v22    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .restart local v1    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .restart local v4    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .restart local v14    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_5
    move-object/from16 v22, v1

    move-object/from16 v23, v4

    .end local v1    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v4    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .restart local v22    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .restart local v23    # "task":Lcom/android/systemui/shared/recents/model/Task;
    iget-boolean v1, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v1, :cond_7

    .line 197
    if-eqz v15, :cond_6

    .line 198
    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_3

    .line 201
    :cond_6
    const/4 v7, 0x0

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    int-to-float v4, v9

    invoke-virtual {v1, v7, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 203
    :goto_3
    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput v7, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 204
    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    sget-object v7, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {v1, v14, v4, v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    goto :goto_5

    .line 205
    :cond_7
    iget-boolean v1, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v1, :cond_9

    .line 206
    if-eqz v12, :cond_8

    .line 207
    nop

    .line 208
    move v1, v11

    goto :goto_4

    :cond_8
    int-to-float v1, v9

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 209
    .local v1, "offset":I
    :goto_4
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    int-to-float v7, v1

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 210
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput v8, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 211
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    sget-object v8, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-virtual {v4, v14, v7, v8}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 166
    .end local v1    # "offset":I
    .end local v14    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v23    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_9
    :goto_5
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v10, v21

    move-object/from16 v1, v22

    goto/16 :goto_2

    .line 214
    .end local v3    # "i":I
    .end local v18    # "appResources":Landroid/content/res/Resources;
    .end local v19    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .end local v20    # "launchTargetTask":Lcom/android/systemui/shared/recents/model/Task;
    .end local v21    # "taskViewAffiliateGroupEnterOffset":I
    .end local v22    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .local v1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .local v4, "appResources":Landroid/content/res/Resources;
    .restart local v7    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .restart local v8    # "launchTargetTask":Lcom/android/systemui/shared/recents/model/Task;
    .restart local v10    # "taskViewAffiliateGroupEnterOffset":I
    :cond_a
    move-object/from16 v22, v1

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v10

    .end local v1    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v4    # "appResources":Landroid/content/res/Resources;
    .end local v7    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .end local v8    # "launchTargetTask":Lcom/android/systemui/shared/recents/model/Task;
    .end local v10    # "taskViewAffiliateGroupEnterOffset":I
    .restart local v18    # "appResources":Landroid/content/res/Resources;
    .restart local v19    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .restart local v20    # "launchTargetTask":Lcom/android/systemui/shared/recents/model/Task;
    .restart local v21    # "taskViewAffiliateGroupEnterOffset":I
    .restart local v22    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    return-void
.end method

.method public startDeleteAllTasksAnimation(Ljava/util/List;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 2
    .param p2, "gridLayout"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;Z",
            "Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;",
            ")V"
        }
    .end annotation

    .line 436
    .local p1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    if-eqz p2, :cond_0

    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 438
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v1, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startTaskGridDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startTaskStackDeleteAllTasksAnimation(Ljava/util/List;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 443
    :cond_1
    return-void
.end method

.method public startDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 0
    .param p1, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "gridLayout"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 424
    if-eqz p2, :cond_0

    .line 425
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startTaskGridDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    goto :goto_0

    .line 427
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startTaskStackDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 429
    :goto_0
    return-void
.end method

.method public startEnterAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 34
    .param p1, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v0, p0

    .line 221
    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    .line 222
    .local v2, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    .line 223
    .local v3, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 224
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 226
    .local v5, "appRes":Landroid/content/res/Resources;
    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v6

    .line 227
    .local v6, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v7

    .line 228
    .local v7, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v8

    .line 229
    .local v8, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v9

    .line 232
    .local v9, "launchTargetTask":Lcom/android/systemui/shared/recents/model/Task;
    invoke-virtual {v8}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v10

    if-nez v10, :cond_0

    .line 233
    return-void

    .line 236
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    .line 237
    .local v10, "isLowRamDevice":Z
    const v11, 0x7f0b0084

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 239
    .local v11, "taskViewEnterFromAppDuration":I
    const v12, 0x7f0b0083

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 241
    .local v12, "taskViewEnterFromAffiliatedAppDuration":I
    const v13, 0x7f0b0055

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 246
    .local v13, "dockGestureAnimDuration":I
    iget-boolean v14, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v14, :cond_1

    iget-boolean v14, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v14, :cond_1

    if-eqz v10, :cond_1

    .line 247
    sget-object v14, Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$Z1ye5IT0uybrzSDdzPdGEoeTWaY;->INSTANCE:Lcom/android/systemui/recents/views/-$$Lambda$TaskStackAnimationHelper$Z1ye5IT0uybrzSDdzPdGEoeTWaY;

    invoke-virtual {v1, v14}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 252
    :cond_1
    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v14}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v14

    .line 253
    .local v14, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 254
    .local v15, "taskViewCount":I
    add-int/lit8 v16, v15, -0x1

    .local v16, "i":I
    :goto_0
    move/from16 v17, v16

    .end local v16    # "i":I
    .local v17, "i":I
    move-object/from16 v18, v2

    move/from16 v2, v17

    if-ltz v2, :cond_8

    .line 255
    .end local v17    # "i":I
    .local v2, "i":I
    .local v18, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    sub-int v16, v15, v2

    move-object/from16 v19, v4

    add-int/lit8 v4, v16, -0x1

    .line 256
    .local v4, "taskIndexFromFront":I
    .local v19, "res":Landroid/content/res/Resources;
    move/from16 v16, v2

    .line 257
    .local v16, "taskIndexFromBack":I
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v20, v5

    move-object/from16 v5, v17

    check-cast v5, Lcom/android/systemui/recents/views/TaskView;

    .line 258
    .local v5, "tv":Lcom/android/systemui/recents/views/TaskView;
    .local v20, "appRes":Landroid/content/res/Resources;
    move-object/from16 v21, v8

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v8

    .line 262
    .local v8, "task":Lcom/android/systemui/shared/recents/model/Task;
    .local v21, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    move-object/from16 v22, v9

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    .end local v9    # "launchTargetTask":Lcom/android/systemui/shared/recents/model/Task;
    .local v22, "launchTargetTask":Lcom/android/systemui/shared/recents/model/Task;
    move-object/from16 v23, v7

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .end local v7    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .local v23, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    move/from16 v24, v12

    const/4 v12, 0x0

    .end local v12    # "taskViewEnterFromAffiliatedAppDuration":I
    .local v24, "taskViewEnterFromAffiliatedAppDuration":I
    invoke-virtual {v6, v8, v9, v7, v12}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/shared/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 265
    iget-boolean v7, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v7, :cond_3

    iget-boolean v7, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-nez v7, :cond_3

    .line 266
    iget-boolean v7, v8, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    if-eqz v7, :cond_2

    .line 267
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v9, v9, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    invoke-virtual {v5, v7, v11, v9, v1}, Lcom/android/systemui/recents/views/TaskView;->onStartLaunchTargetEnterAnimation(Lcom/android/systemui/recents/views/TaskViewTransform;IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 254
    .end local v4    # "taskIndexFromFront":I
    .end local v5    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v6    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v8    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v16    # "taskIndexFromBack":I
    .local v32, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    :cond_2
    move-object/from16 v32, v6

    goto/16 :goto_2

    .line 272
    .end local v32    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v4    # "taskIndexFromFront":I
    .restart local v5    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v6    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v8    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .restart local v16    # "taskIndexFromBack":I
    :cond_3
    iget-boolean v7, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v7, :cond_6

    .line 275
    const/4 v7, 0x5

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v12, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mEnterAndExitFromHomeTranslationOffset:I

    mul-int/2addr v7, v12

    int-to-float v7, v7

    const/high16 v12, 0x43480000    # 200.0f

    div-float/2addr v7, v12

    .line 278
    .local v7, "startOffsetFraction":F
    new-instance v12, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-direct {v12}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>()V

    sget-object v9, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 279
    move/from16 v31, v4

    const/4 v4, 0x4

    .end local v4    # "taskIndexFromFront":I
    .local v31, "taskIndexFromFront":I
    invoke-virtual {v12, v4, v9}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v9

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v9

    .line 281
    .local v9, "taskAnimation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    if-eqz v10, :cond_4

    .line 282
    sget-object v12, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/4 v4, 0x6

    invoke-virtual {v9, v4, v12}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v12

    .line 284
    move-object/from16 v32, v6

    const/16 v6, 0x96

    .end local v6    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v32    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual {v12, v4, v6}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setDuration(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v4

    .line 285
    const/4 v12, 0x4

    invoke-virtual {v4, v12, v6}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setDuration(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    goto :goto_1

    .line 287
    .end local v32    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v6    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    :cond_4
    move v12, v4

    move-object/from16 v32, v6

    .end local v6    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v32    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    const/4 v4, 0x0

    invoke-virtual {v9, v12, v4}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setStartDelay(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v6

    new-instance v12, Lcom/android/systemui/recents/views/RecentsEntrancePathInterpolator;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x3e4ccccd    # 0.2f

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v25, v12

    move/from16 v30, v7

    invoke-direct/range {v25 .. v30}, Lcom/android/systemui/recents/views/RecentsEntrancePathInterpolator;-><init>(FFFFF)V

    .line 293
    const/4 v4, 0x6

    invoke-virtual {v6, v4, v12}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v6

    const/16 v12, 0xc8

    .line 296
    invoke-virtual {v6, v4, v12}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setDuration(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v4

    .line 297
    const/4 v6, 0x4

    const/4 v12, 0x0

    invoke-virtual {v4, v6, v12}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setDuration(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 299
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 300
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v4, v5, v6, v9}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 301
    add-int/lit8 v4, v15, -0x1

    if-ne v2, v4, :cond_5

    .line 302
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v4, v4, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/views/TaskView;->onStartFrontTaskEnterAnimation(Z)V

    .line 304
    .end local v7    # "startOffsetFraction":F
    .end local v9    # "taskAnimation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    :cond_5
    goto :goto_2

    .end local v31    # "taskIndexFromFront":I
    .end local v32    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v4    # "taskIndexFromFront":I
    .restart local v6    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    :cond_6
    move/from16 v31, v4

    move-object/from16 v32, v6

    .end local v4    # "taskIndexFromFront":I
    .end local v6    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v31    # "taskIndexFromFront":I
    .restart local v32    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-boolean v4, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v4, :cond_7

    .line 306
    new-instance v4, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-direct {v4}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>()V

    mul-int/lit8 v6, v16, 0x21

    add-int/2addr v6, v13

    .line 307
    const/4 v7, 0x6

    invoke-virtual {v4, v7, v6}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setDuration(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v4

    sget-object v6, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 309
    invoke-virtual {v4, v7, v6}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v4

    const/16 v6, 0x30

    .line 311
    invoke-virtual {v4, v7, v6}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setStartDelay(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v4

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v4

    .line 313
    .local v4, "taskAnimation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 314
    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v6, v5, v7, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 254
    .end local v4    # "taskAnimation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    .end local v5    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v8    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v16    # "taskIndexFromBack":I
    .end local v31    # "taskIndexFromFront":I
    :cond_7
    :goto_2
    add-int/lit8 v16, v2, -0x1

    .end local v2    # "i":I
    .local v16, "i":I
    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v7, v23

    move/from16 v12, v24

    move-object/from16 v6, v32

    goto/16 :goto_0

    .line 317
    .end local v16    # "i":I
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "appRes":Landroid/content/res/Resources;
    .end local v21    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .end local v22    # "launchTargetTask":Lcom/android/systemui/shared/recents/model/Task;
    .end local v23    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v24    # "taskViewEnterFromAffiliatedAppDuration":I
    .end local v32    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .local v4, "res":Landroid/content/res/Resources;
    .local v5, "appRes":Landroid/content/res/Resources;
    .restart local v6    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .local v7, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .local v8, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .local v9, "launchTargetTask":Lcom/android/systemui/shared/recents/model/Task;
    .restart local v12    # "taskViewEnterFromAffiliatedAppDuration":I
    :cond_8
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v32, v6

    move-object/from16 v23, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move/from16 v24, v12

    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "appRes":Landroid/content/res/Resources;
    .end local v6    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v7    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v8    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .end local v9    # "launchTargetTask":Lcom/android/systemui/shared/recents/model/Task;
    .end local v12    # "taskViewEnterFromAffiliatedAppDuration":I
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "appRes":Landroid/content/res/Resources;
    .restart local v21    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .restart local v22    # "launchTargetTask":Lcom/android/systemui/shared/recents/model/Task;
    .restart local v23    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .restart local v24    # "taskViewEnterFromAffiliatedAppDuration":I
    .restart local v32    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    return-void
.end method

.method public startExitToHomeAnimation(ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 16
    .param p1, "animated"    # Z
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v0, p0

    .line 324
    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v1

    .line 325
    .local v1, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    .line 328
    .local v2, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 329
    return-void

    .line 332
    :cond_0
    iget-object v3, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 335
    .local v3, "offscreenYOffset":I
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    .line 336
    .local v4, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 337
    .local v5, "taskViewCount":I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_5

    .line 338
    sub-int v8, v5, v7

    add-int/lit8 v8, v8, -0x1

    .line 339
    .local v8, "taskIndexFromFront":I
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskView;

    .line 340
    .local v9, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v10

    .line 342
    .local v10, "task":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11, v10}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 343
    goto/16 :goto_4

    .line 348
    :cond_1
    const/16 v11, 0xc8

    if-eqz p1, :cond_3

    .line 349
    const/4 v12, 0x5

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mEnterAndExitFromHomeTranslationOffset:I

    mul-int/2addr v12, v13

    .line 351
    .local v12, "delay":I
    new-instance v13, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-direct {v13}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>()V

    .line 352
    const/4 v14, 0x6

    invoke-virtual {v13, v14, v11}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setDuration(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v13

    .line 353
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v11

    .line 354
    .local v11, "taskAnimation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v13, :cond_2

    .line 355
    sget-object v13, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v14, v13}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    goto :goto_1

    .line 360
    :cond_2
    invoke-virtual {v11, v14, v6}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setStartDelay(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v13

    sget-object v6, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 362
    invoke-virtual {v13, v14, v6}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 365
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 366
    .end local v12    # "delay":I
    goto :goto_2

    .line 367
    .end local v11    # "taskAnimation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    :cond_3
    sget-object v11, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .restart local v11    # "taskAnimation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    :goto_2
    move-object v6, v11

    .line 370
    .end local v11    # "taskAnimation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    .local v6, "taskAnimation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v11, v9}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 371
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    const/4 v12, 0x0

    if-eqz v11, :cond_4

    .line 372
    sget-object v11, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v13, 0x4

    invoke-virtual {v6, v13, v11}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v11

    .line 374
    const/16 v14, 0xc8

    invoke-virtual {v11, v13, v14}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setDuration(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 375
    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v14, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskStackLowRamLayoutAlgorithm:Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;

    .line 376
    invoke-virtual {v14}, Lcom/android/systemui/recents/views/lowram/TaskStackLowRamLayoutAlgorithm;->getTaskRect()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/2addr v14, v13

    int-to-float v13, v14

    .line 375
    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 377
    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput v12, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto :goto_3

    .line 379
    :cond_4
    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    int-to-float v13, v3

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 381
    :goto_3
    iget-object v11, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v11, v9, v12, v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 337
    .end local v6    # "taskAnimation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    .end local v8    # "taskIndexFromFront":I
    .end local v9    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v10    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 383
    .end local v7    # "i":I
    :cond_5
    return-void
.end method

.method public startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 11
    .param p1, "launchingTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "screenPinningRequested"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 391
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 393
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 395
    .local v1, "taskViewExitToAppDuration":I
    const v2, 0x7f0705ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 398
    .local v2, "taskViewAffiliateGroupEnterOffset":I
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    .line 399
    .local v3, "launchingTask":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    .line 400
    .local v4, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 401
    .local v5, "taskViewCount":I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_1

    .line 402
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    .line 403
    .local v8, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v9

    .line 405
    .local v9, "task":Lcom/android/systemui/shared/recents/model/Task;
    if-ne v8, p1, :cond_0

    .line 406
    invoke-virtual {v8, v6}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 407
    new-instance v10, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;

    invoke-direct {v10, p0, v8}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p3, v10}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 413
    invoke-virtual {v8, v1, p2, p3}, Lcom/android/systemui/recents/views/TaskView;->onStartLaunchTargetLaunchAnimation(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 401
    .end local v8    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v9    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 417
    .end local v7    # "i":I
    :cond_1
    return-void
.end method

.method public startNewStackScrollAnimation(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 21
    .param p1, "newStack"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p2, "animationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 552
    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v2

    .line 553
    .local v2, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    .line 556
    .local v3, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v10

    .line 557
    .local v10, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v4, v10, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 560
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v11, 0x0

    invoke-virtual {v4, v1, v11}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    .line 561
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4, v11}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 564
    iget v12, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    .line 565
    .local v12, "newScroll":F
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 568
    invoke-virtual {v2, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 569
    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setTaskOverridesForInitialState(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    .line 570
    invoke-virtual {v3, v12}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 571
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 574
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v6

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move v5, v12

    move-object v7, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    .line 578
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    .line 579
    .local v4, "frontMostTask":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v5

    .line 580
    .local v5, "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    .line 581
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 580
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 582
    .local v6, "frontMostTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz v5, :cond_0

    .line 583
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 584
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .line 583
    invoke-virtual {v7, v5, v8, v9}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 589
    :cond_0
    new-instance v7, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;

    invoke-direct {v7, v0, v12, v5, v6}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;FLcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)V

    move-object/from16 v8, p2

    invoke-virtual {v8, v7}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 602
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v7

    .line 603
    .local v7, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 604
    .local v9, "taskViewCount":I
    nop

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_3

    .line 605
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/views/TaskView;

    .line 606
    .local v13, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v14

    .line 608
    .local v14, "task":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v15, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 609
    nop

    .line 604
    .end local v2    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v3    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v4    # "frontMostTask":Lcom/android/systemui/shared/recents/model/Task;
    .end local v5    # "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v13    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v14    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .local v16, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .local v17, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .local v18, "frontMostTask":Lcom/android/systemui/shared/recents/model/Task;
    .local v20, "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    :goto_1
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    goto :goto_2

    .line 611
    .end local v16    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v17    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v18    # "frontMostTask":Lcom/android/systemui/shared/recents/model/Task;
    .end local v20    # "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    .restart local v2    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v3    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .restart local v4    # "frontMostTask":Lcom/android/systemui/shared/recents/model/Task;
    .restart local v5    # "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    .restart local v13    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v14    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_1
    if-ne v14, v4, :cond_2

    if-eqz v5, :cond_2

    .line 612
    goto :goto_1

    .line 615
    :cond_2
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 616
    .local v15, "taskIndex":I
    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 617
    .local v1, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    .end local v2    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v16    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 620
    .local v2, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .end local v3    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .restart local v17    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    move-object/from16 v18, v4

    sget-object v4, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .end local v4    # "frontMostTask":Lcom/android/systemui/shared/recents/model/Task;
    .restart local v18    # "frontMostTask":Lcom/android/systemui/shared/recents/model/Task;
    invoke-virtual {v3, v13, v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 622
    invoke-direct {v0, v11}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->calculateStaggeredAnimDuration(I)I

    move-result v3

    .line 623
    .local v3, "duration":I
    sget-object v4, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 625
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v19, v1

    new-instance v1, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .end local v1    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .local v19, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-direct {v1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>()V

    .line 626
    move-object/from16 v20, v5

    const/4 v5, 0x6

    .end local v5    # "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    .restart local v20    # "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setDuration(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v1

    .line 627
    invoke-virtual {v1, v5, v4}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v1

    .line 628
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v1

    .line 629
    .local v1, "anim":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 630
    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5, v13, v2, v1}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 604
    .end local v1    # "anim":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    .end local v2    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v3    # "duration":I
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v13    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v14    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v15    # "taskIndex":I
    .end local v19    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_2
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    move-object/from16 v1, p1

    goto :goto_0

    .line 632
    .end local v11    # "i":I
    .end local v16    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v17    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v18    # "frontMostTask":Lcom/android/systemui/shared/recents/model/Task;
    .end local v20    # "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    .local v2, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .local v3, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .local v4, "frontMostTask":Lcom/android/systemui/shared/recents/model/Task;
    .restart local v5    # "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    .end local v2    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v3    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v4    # "frontMostTask":Lcom/android/systemui/shared/recents/model/Task;
    .end local v5    # "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    .restart local v16    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v17    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .restart local v18    # "frontMostTask":Lcom/android/systemui/shared/recents/model/Task;
    .restart local v20    # "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    return-void
.end method

.method public startScrollToFocusedTaskAnimation(Lcom/android/systemui/shared/recents/model/Task;Z)Z
    .locals 28
    .param p1, "newFocusedTask"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "requestViewFocus"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 452
    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v2

    .line 453
    .local v2, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    .line 454
    .local v3, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v4

    .line 456
    .local v4, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    .line 457
    .local v5, "curScroll":F
    nop

    .line 458
    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/shared/recents/model/Task;)F

    move-result v6

    .line 457
    invoke-virtual {v3, v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v6

    .line 459
    .local v6, "newScroll":F
    cmpl-float v7, v6, v5

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-lez v7, :cond_0

    move v7, v14

    goto :goto_0

    :cond_0
    move v7, v13

    :goto_0
    move v15, v7

    .line 460
    .local v15, "willScrollToFront":Z
    invoke-static {v6, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_1

    move v7, v14

    goto :goto_1

    :cond_1
    move v7, v13

    :goto_1
    move/from16 v16, v7

    .line 463
    .local v16, "willScroll":Z
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    .line 464
    .local v12, "taskViewCount":I
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v11

    .line 465
    .local v11, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v7, v11, v8}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 468
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7, v6}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 471
    invoke-virtual {v2, v14}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 472
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 473
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 476
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v9

    const/16 v17, 0x1

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    move v8, v6

    move-object/from16 v18, v10

    move-object v10, v11

    move-object/from16 v19, v11

    move/from16 v11, v17

    .end local v11    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    .local v19, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    move v14, v12

    move-object/from16 v12, v18

    .end local v12    # "taskViewCount":I
    .local v14, "taskViewCount":I
    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    .line 480
    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v7, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v7

    .line 481
    .local v7, "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    if-nez v7, :cond_2

    .line 483
    const-string v8, "TaskStackAnimationHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "b/27389156 null-task-view prebind:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " postbind:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 484
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " prescroll:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " postscroll: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 483
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return v13

    .line 488
    :cond_2
    move/from16 v8, p2

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 492
    new-instance v9, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct {v9}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    .line 493
    .local v9, "postAnimTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    new-instance v10, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;

    invoke-direct {v10, v0, v6}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;F)V

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 500
    iget-object v10, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v10

    .line 501
    .local v10, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 502
    .end local v14    # "taskViewCount":I
    .local v11, "taskViewCount":I
    invoke-interface {v10, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 503
    .local v12, "newFocusTaskViewIndex":I
    nop

    .local v13, "i":I
    :goto_2
    if-ge v13, v11, :cond_7

    .line 504
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/views/TaskView;

    .line 505
    .local v14, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v14}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    .line 507
    .local v1, "task":Lcom/android/systemui/shared/recents/model/Task;
    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .end local v2    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .local v20, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 508
    nop

    .line 503
    move-object/from16 v21, v3

    move-object/from16 v25, v4

    move/from16 v27, v5

    move-object/from16 v23, v19

    const/16 v17, 0x1

    goto/16 :goto_4

    .line 511
    :cond_3
    move-object/from16 v21, v3

    move-object/from16 v2, v19

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 512
    .end local v19    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    .local v2, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    .local v3, "taskIndex":I
    .local v21, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    .end local v1    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .local v22, "task":Lcom/android/systemui/shared/recents/model/Task;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 513
    .local v1, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    .end local v2    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    .local v23, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 516
    .local v2, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move/from16 v24, v3

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .end local v3    # "taskIndex":I
    .local v24, "taskIndex":I
    move-object/from16 v25, v4

    sget-object v4, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->IMMEDIATE:Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    .end local v4    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .local v25, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    invoke-virtual {v3, v14, v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 520
    if-eqz v15, :cond_4

    .line 521
    invoke-direct {v0, v13}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->calculateStaggeredAnimDuration(I)I

    move-result v3

    .line 522
    .local v3, "duration":I
    sget-object v4, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 532
    .local v4, "interpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v26, v1

    const/16 v17, 0x1

    goto :goto_3

    .line 524
    .end local v3    # "duration":I
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_4
    const/16 v3, 0x96

    if-ge v13, v12, :cond_5

    .line 525
    sub-int v4, v12, v13

    const/16 v17, 0x1

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x32

    add-int/2addr v3, v4

    .line 526
    .restart local v3    # "duration":I
    sget-object v4, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 532
    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    move-object/from16 v26, v1

    goto :goto_3

    .line 527
    .end local v3    # "duration":I
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_5
    const/16 v17, 0x1

    if-le v13, v12, :cond_6

    .line 528
    const/16 v4, 0x64

    sub-int v18, v13, v12

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v26, v1

    mul-int/lit8 v1, v18, 0x32

    .end local v1    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .local v26, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    sub-int/2addr v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 529
    .restart local v3    # "duration":I
    sget-object v4, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_3

    .line 531
    .end local v3    # "duration":I
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v26    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v1    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_6
    move-object/from16 v26, v1

    .end local v1    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v26    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/16 v3, 0xc8

    .line 532
    .restart local v3    # "duration":I
    sget-object v4, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v4    # "interpolator":Landroid/view/animation/Interpolator;
    :goto_3
    move-object v1, v4

    .line 536
    .end local v4    # "interpolator":Landroid/view/animation/Interpolator;
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v4, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    invoke-direct {v4}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>()V

    .line 537
    move/from16 v27, v5

    const/4 v5, 0x6

    .end local v5    # "curScroll":F
    .local v27, "curScroll":F
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setDuration(II)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v4

    .line 538
    invoke-virtual {v4, v5, v1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v4

    .line 539
    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    move-result-object v4

    .line 540
    .local v4, "anim":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    invoke-virtual {v9}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 541
    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v5, v14, v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 503
    .end local v1    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v2    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v3    # "duration":I
    .end local v4    # "anim":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    .end local v14    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v22    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v24    # "taskIndex":I
    .end local v26    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v19, v23

    move-object/from16 v4, v25

    move/from16 v5, v27

    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 543
    .end local v13    # "i":I
    .end local v20    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v21    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v23    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    .end local v25    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .end local v27    # "curScroll":F
    .local v2, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .local v3, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .local v4, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .restart local v5    # "curScroll":F
    .restart local v19    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    :cond_7
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v25, v4

    move/from16 v27, v5

    move-object/from16 v23, v19

    .end local v2    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v3    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v4    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .end local v5    # "curScroll":F
    .end local v19    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    .restart local v20    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v21    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .restart local v23    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    .restart local v25    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .restart local v27    # "curScroll":F
    return v16
.end method
