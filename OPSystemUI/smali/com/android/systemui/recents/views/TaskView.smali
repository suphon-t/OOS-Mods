.class public Lcom/android/systemui/recents/views/TaskView;
.super Lcom/android/systemui/recents/views/FixedSizeFrameLayout;
.source "TaskView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
    }
.end annotation


# static fields
.field public static final DIM_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIEW_OUTLINE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionButtonTranslationZ:F

.field private mActionButtonView:Landroid/view/View;

.field private mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

.field private mClipViewInStack:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDimAnimator:Landroid/animation/ObjectAnimator;

.field private mDisabledAppToast:Landroid/widget/Toast;

.field private mDownTouchPos:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "header_"
    .end annotation
.end field

.field private mIncompatibleAppToastView:Landroid/view/View;

.field private mIsDisabledInSafeMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mOutlineAnimator:Landroid/animation/ObjectAnimator;

.field private final mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mTask:Lcom/android/systemui/shared/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "task_"
    .end annotation
.end field

.field private mTaskBound:Z

.field protected mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "thumbnail_"
    .end annotation
.end field

.field private mTmpAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTransformAnimation:Landroid/animation/AnimatorSet;

.field private mViewBounds:Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "view_bounds_"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$1;

    const-string v1, "dimAlphaWithoutHeader"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;

    .line 99
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$2;

    const-string v1, "dimAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    .line 116
    new-instance v0, Lcom/android/systemui/recents/views/TaskView$3;

    const-string/jumbo v1, "viewOutlineAlpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskView$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/TaskView;->VIEW_OUTLINE_ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 148
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    .line 178
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 179
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 180
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->createOutlineProvider()Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;

    .line 181
    iget-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    if-eqz v2, :cond_0

    .line 182
    new-instance v2, Lcom/android/systemui/recents/views/FakeShadowDrawable;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/recents/RecentsConfiguration;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 185
    invoke-virtual {p0, p0}, Lcom/android/systemui/recents/views/TaskView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    new-instance v2, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/TaskViewAccessibilityDelegate;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/TaskView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/TaskView;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/TaskView;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/TaskView;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object v0
.end method

.method private cancelDimAnimationIfExists()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 372
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onBusEvent$0(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 1

    .line 716
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 717
    return-void
.end method

.method public static synthetic lambda$onBusEvent$1(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 1

    .line 725
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 726
    return-void
.end method


# virtual methods
.method public cancelTransformAnimation()V
    .locals 1

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelDimAnimationIfExists()V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 366
    return-void
.end method

.method protected createOutlineProvider()Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;
    .locals 3

    .line 211
    new-instance v0, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;-><init>(Landroid/view/View;I)V

    return-object v0
.end method

.method dismissTask()V
    .locals 3

    .line 397
    move-object v0, p0

    .line 398
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    new-instance v1, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;

    invoke-direct {v1, v0}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    .line 399
    .local v1, "dismissEvent":Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;
    new-instance v2, Lcom/android/systemui/recents/views/TaskView$5;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/recents/views/TaskView$5;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 407
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 408
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "TaskView"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 733
    const-string v1, " mTask="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 734
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 736
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v1, v0, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 737
    return-void
.end method

.method public getDimAlpha()F
    .locals 1

    .line 456
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    return v0
.end method

.method public getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    return-object v0
.end method

.method public getTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object v0
.end method

.method getViewBounds()Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V
    .locals 3
    .param p1, "fadeOut"    # Z
    .param p2, "fadeOutDuration"    # I
    .param p3, "scaleDown"    # Z
    .param p4, "animListener"    # Landroid/animation/Animator$AnimatorListener;

    .line 506
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 507
    if-eqz p3, :cond_0

    .line 508
    const v1, 0x3f666666    # 0.9f

    .line 509
    .local v1, "toScale":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 510
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 511
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 513
    .end local v1    # "toScale":F
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 514
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    .line 515
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 516
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$6;

    invoke-direct {v1, p0, p4}, Lcom/android/systemui/recents/views/TaskView$6;-><init>(Lcom/android/systemui/recents/views/TaskView;Landroid/animation/Animator$AnimatorListener;)V

    .line 517
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 528
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 529
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 530
    if-eqz p4, :cond_2

    .line 531
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 534
    :cond_2
    :goto_0
    return-void
.end method

.method isAnimatingTo(Lcom/android/systemui/recents/views/TaskViewTransform;)Z
    .locals 1
    .param p1, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 355
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 356
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->isSame(Lcom/android/systemui/recents/views/TaskViewTransform;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 355
    :goto_0
    return v0
.end method

.method protected measureContents(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 273
    iget v0, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 274
    .local v0, "widthWithoutPadding":I
    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingTop:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    .line 275
    .local v1, "heightWithoutPadding":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 276
    .local v3, "widthSpec":I
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 279
    .local v2, "heightSpec":I
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/recents/views/TaskView;->measureChildren(II)V

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskView;->setMeasuredDimension(II)V

    .line 282
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .line 724
    new-instance v0, Lcom/android/systemui/recents/views/-$$Lambda$TaskView$5tk674oyueWivSnbNCm15r4dSjc;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/-$$Lambda$TaskView$5tk674oyueWivSnbNCm15r4dSjc;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 727
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .line 713
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/views/DockState;

    if-nez v0, :cond_0

    .line 714
    new-instance v0, Lcom/android/systemui/recents/views/-$$Lambda$TaskView$-pg3FhkTHYE_OFyYVD2c3tjmUu4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/-$$Lambda$TaskView$-pg3FhkTHYE_OFyYVD2c3tjmUu4;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 719
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 720
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 655
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    if-eqz v0, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 657
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f11053f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    .line 659
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 661
    :cond_0
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    .line 662
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mDisabledAppToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 663
    return-void

    .line 666
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 667
    .local v0, "screenPinningRequested":Z
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 669
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationZ(F)V

    .line 670
    const/4 v0, 0x1

    .line 672
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 674
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x115

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 675
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    .line 674
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 676
    return-void
.end method

.method protected onConfigurationChanged()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    .line 244
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 223
    const v0, 0x7f0a03e7

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 224
    const v0, 0x7f0a03e8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 225
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateClipToTaskBar(Landroid/view/View;)V

    .line 226
    const v0, 0x7f0a021c

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    .line 227
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recents/views/TaskView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskView$4;-><init>(Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    .line 237
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 268
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 682
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->dragToSplitEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 683
    return v1

    .line 685
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 686
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/4 v2, 0x0

    .line 687
    .local v2, "inBounds":Z
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 688
    .local v3, "clipBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 690
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 691
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    goto :goto_1

    .line 694
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v6

    if-gt v4, v6, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v6

    if-gt v4, v6, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    move v2, v4

    .line 696
    :goto_1
    if-ne p1, p0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v4

    if-nez v4, :cond_3

    .line 698
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 700
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 701
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v6

    sub-float/2addr v7, v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v7, v6

    div-float/2addr v7, v8

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 703
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, p0, v4}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 704
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mDownTouchPos:Landroid/graphics/Point;

    invoke-direct {v4, v6, p0, v7}, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Point;)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 705
    return v5

    .line 707
    :cond_3
    return v1
.end method

.method public onPrepareLaunchTargetForEnterAnimation()V
    .locals 2

    .line 541
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDimAlphaWithoutHeader(F)V

    .line 542
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 543
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    .line 544
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 547
    :cond_0
    return-void
.end method

.method onReload(Z)V
    .locals 0
    .param p1, "isResumingFromVisible"    # Z

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->resetNoUserInteractionState()V

    .line 199
    if-nez p1, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    .line 202
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 248
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/FixedSizeFrameLayout;->onSizeChanged(IIII)V

    .line 249
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v1

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 256
    :cond_0
    return-void
.end method

.method public onStartFrontTaskEnterAnimation(Z)V
    .locals 1
    .param p1, "screenPinningEnabled"    # Z

    .line 595
    if-eqz p1, :cond_0

    .line 596
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    .line 598
    :cond_0
    return-void
.end method

.method public onStartLaunchTargetEnterAnimation(Lcom/android/systemui/recents/views/TaskViewTransform;IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 5
    .param p1, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "duration"    # I
    .param p3, "screenPinningEnabled"    # Z
    .param p4, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 552
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelDimAnimationIfExists()V

    .line 555
    invoke-virtual {p4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 556
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p2, v1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 557
    .local v0, "animation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    sget-object v1, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA_WITHOUT_HEADER:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 558
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 557
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    .line 559
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 560
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 562
    if-eqz p3, :cond_0

    .line 563
    invoke-virtual {p0, v4, p2}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    .line 567
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 569
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    .line 570
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 571
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 572
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 574
    :cond_1
    return-void
.end method

.method public onStartLaunchTargetLaunchAnimation(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 5
    .param p1, "duration"    # I
    .param p2, "screenPinningRequested"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 579
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 582
    new-instance v0, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 583
    .local v0, "animation":Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    sget-object v1, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 584
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 583
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    .line 585
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 587
    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 588
    nop

    .line 590
    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    .line 588
    invoke-virtual {p0, v3, p1, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V

    .line 591
    return-void
.end method

.method public onTaskBound(Lcom/android/systemui/shared/recents/model/Task;ZILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "t"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "touchExplorationEnabled"    # Z
    .param p3, "displayOrientation"    # I
    .param p4, "displayRect"    # Landroid/graphics/Rect;

    .line 604
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 605
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iput-boolean p2, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    .line 606
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 607
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskBound:Z

    .line 608
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, p0}, Lcom/android/systemui/shared/recents/model/Task;->addCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V

    .line 609
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/Task;->isSystemApp:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    .line 610
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v1, v2, v4, p3, p4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZILandroid/graphics/Rect;)V

    .line 611
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskView;->mIsDisabledInSafeMode:Z

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/shared/recents/model/Task;ZZ)V

    .line 613
    iget-boolean v1, p1, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 614
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 615
    const v1, 0x7f0a01a3

    invoke-static {p0, v1}, Lcom/android/systemui/shared/recents/utilities/Utilities;->findViewStubById(Landroid/view/View;I)Landroid/view/ViewStub;

    move-result-object v1

    .line 616
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    .line 617
    const v1, 0x102000b

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 618
    .local v1, "msg":Landroid/widget/TextView;
    const v2, 0x7f11024b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 620
    .end local v1    # "msg":Landroid/widget/TextView;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 621
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 622
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 624
    :cond_3
    :goto_1
    return-void
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 1
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "thumbnailData"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 628
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskBound:Z

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 631
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    .line 633
    :cond_0
    return-void
.end method

.method public onTaskDataUnloaded()V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/recents/model/Task;->removeCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V

    .line 639
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 640
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->unbindFromTask(Z)V

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTaskBound:Z

    .line 642
    return-void
.end method

.method resetNoUserInteractionState()V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->resetNoUserInteractionState()V

    .line 392
    return-void
.end method

.method resetViewProperties()V
    .locals 3

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setDimAlpha(F)V

    .line 335
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->reset()V

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->reset()V

    .line 338
    invoke-static {p0}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset(Lcom/android/systemui/recents/views/TaskView;)V

    .line 340
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 341
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 342
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 343
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 344
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mIncompatibleAppToastView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :cond_0
    return-void
.end method

.method setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .line 191
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    .line 192
    return-void
.end method

.method setClipViewInStack(Z)V
    .locals 1
    .param p1, "clip"    # Z

    .line 423
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    if-eq p1, v0, :cond_0

    .line 424
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    .line 425
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V

    .line 429
    :cond_0
    return-void
.end method

.method public setDimAlpha(F)V
    .locals 1
    .param p1, "dimAlpha"    # F

    .line 439
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    .line 440
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    .line 442
    return-void
.end method

.method public setDimAlphaWithoutHeader(F)V
    .locals 1
    .param p1, "dimAlpha"    # F

    .line 448
    iput p1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAlpha:F

    .line 449
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    .line 450
    return-void
.end method

.method public setFocusedState(ZZ)V
    .locals 1
    .param p1, "isFocused"    # Z
    .param p2, "requestViewFocus"    # Z

    .line 463
    if-eqz p1, :cond_0

    .line 464
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->requestFocus()Z

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mTouchExplorationEnabled:Z

    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    .line 472
    :cond_1
    :goto_0
    return-void
.end method

.method setNoUserInteractionState()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setNoUserInteractionState()V

    .line 387
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 376
    if-eqz p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    return-void
.end method

.method shouldClipViewInStack()Z
    .locals 1

    .line 415
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskView;->mClipViewInStack:Z

    return v0

    .line 416
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public showActionButton(ZI)V
    .locals 3
    .param p1, "fadeIn"    # Z
    .param p2, "fadeInDuration"    # I

    .line 481
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 483
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 485
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 486
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 487
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    .line 488
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 489
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 493
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 494
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonTranslationZ:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 497
    :goto_0
    return-void
.end method

.method public startNoUserInteractionAnimation()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->startNoUserInteractionAnimation()V

    .line 382
    return-void
.end method

.method updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 8
    .param p1, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "toAnimation"    # Lcom/android/systemui/shared/recents/utilities/AnimationProps;
    .param p3, "updateCallback"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 286
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 287
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 290
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 291
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->fakeShadows:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {p1, p0, v1, p2, v2}, Lcom/android/systemui/recents/views/TaskViewTransform;->applyToTaskView(Lcom/android/systemui/recents/views/TaskView;Ljava/util/ArrayList;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V

    .line 292
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->isImmediate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v1

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setDimAlpha(F)V

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->getAlpha()F

    move-result v1

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->setAlpha(F)V

    .line 300
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 301
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->getListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 303
    :cond_2
    if-eqz p3, :cond_7

    .line 304
    invoke-interface {p3, v2}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_0

    .line 308
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v1

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x2

    if-eqz v1, :cond_4

    .line 309
    sget-object v1, Lcom/android/systemui/recents/views/TaskView;->DIM_ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getDimAlpha()F

    move-result v7

    aput v7, v6, v2

    iget v7, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    aput v7, v6, v3

    invoke-static {p0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    .line 311
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v4, v6}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->getAlpha()F

    move-result v1

    iget v6, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    invoke-static {v1, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    .line 314
    sget-object v1, Lcom/android/systemui/recents/views/TaskView;->VIEW_OUTLINE_ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskView;->mViewBounds:Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;

    .line 315
    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/view/AnimateableViewBounds;->getAlpha()F

    move-result v7

    aput v7, v6, v2

    iget v2, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    aput v2, v6, v3

    .line 314
    invoke-static {p0, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    .line 316
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mOutlineAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v4, v2}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_5
    if-eqz p3, :cond_6

    .line 319
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 320
    .local v1, "updateCallbackAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 321
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {p2, v4, v1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v1    # "updateCallbackAnim":Landroid/animation/ValueAnimator;
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTmpAnimators:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->createAnimator(Ljava/util/List;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    .line 326
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTransformAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 327
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView;->mTargetAnimationTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    .line 329
    :cond_7
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method
