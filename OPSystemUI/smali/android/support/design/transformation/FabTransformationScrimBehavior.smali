.class public Landroid/support/design/transformation/FabTransformationScrimBehavior;
.super Landroid/support/design/transformation/ExpandableTransformationBehavior;
.source "FabTransformationScrimBehavior.java"


# instance fields
.field private final collapseTiming:Landroid/support/design/animation/MotionTiming;

.field private final expandTiming:Landroid/support/design/animation/MotionTiming;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 51
    invoke-direct {p0}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 48
    new-instance v0, Landroid/support/design/animation/MotionTiming;

    const-wide/16 v1, 0x96

    const-wide/16 v3, 0x4b

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/support/design/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->expandTiming:Landroid/support/design/animation/MotionTiming;

    .line 49
    new-instance v0, Landroid/support/design/animation/MotionTiming;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/support/design/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->collapseTiming:Landroid/support/design/animation/MotionTiming;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Landroid/support/design/animation/MotionTiming;

    const-wide/16 v1, 0x96

    const-wide/16 v3, 0x4b

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/support/design/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->expandTiming:Landroid/support/design/animation/MotionTiming;

    .line 49
    new-instance v0, Landroid/support/design/animation/MotionTiming;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/support/design/animation/MotionTiming;-><init>(JJ)V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->collapseTiming:Landroid/support/design/animation/MotionTiming;

    .line 55
    return-void
.end method

.method private createScrimAnimation(Landroid/view/View;ZZLjava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "expanded"    # Z
    .param p3, "currentlyAnimating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "ZZ",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p4, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    .local p5, "unusedListeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->expandTiming:Landroid/support/design/animation/MotionTiming;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->collapseTiming:Landroid/support/design/animation/MotionTiming;

    .line 107
    .local v0, "timing":Landroid/support/design/animation/MotionTiming;
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 108
    if-nez p3, :cond_1

    .line 109
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 111
    :cond_1
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v1

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "animator":Landroid/animation/Animator;
    goto :goto_1

    .line 113
    .end local v1    # "animator":Landroid/animation/Animator;
    :cond_2
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    aput v3, v2, v1

    invoke-static {p1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 116
    .restart local v1    # "animator":Landroid/animation/Animator;
    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/design/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 117
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method


# virtual methods
.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "dependency"    # Landroid/view/View;

    .line 59
    instance-of v0, p3, Landroid/support/design/widget/FloatingActionButton;

    return v0
.end method

.method protected onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 7
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "isAnimating"    # Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v6, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator$AnimatorListener;>;"
    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/support/design/transformation/FabTransformationScrimBehavior;->createScrimAnimation(Landroid/view/View;ZZLjava/util/List;Ljava/util/List;)V

    .line 77
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 78
    .local v1, "set":Landroid/animation/AnimatorSet;
    invoke-static {v1, v0}, Landroid/support/design/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 79
    new-instance v2, Landroid/support/design/transformation/FabTransformationScrimBehavior$1;

    invoke-direct {v2, p0, p3, p2}, Landroid/support/design/transformation/FabTransformationScrimBehavior$1;-><init>(Landroid/support/design/transformation/FabTransformationScrimBehavior;ZLandroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    return-object v1
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/transformation/ExpandableTransformationBehavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
