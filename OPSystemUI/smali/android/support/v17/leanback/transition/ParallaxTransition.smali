.class public Landroid/support/v17/leanback/transition/ParallaxTransition;
.super Landroid/transition/Visibility;
.source "ParallaxTransition.java"


# static fields
.field static sInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/ParallaxTransition;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method


# virtual methods
.method createAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 59
    sget v0, Landroid/support/v17/leanback/R$id;->lb_parallax_source:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/Parallax;

    .line 60
    .local v0, "source":Landroid/support/v17/leanback/widget/Parallax;
    if-nez v0, :cond_0

    .line 61
    const/4 v1, 0x0

    return-object v1

    .line 63
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 64
    .local v1, "animator":Landroid/animation/ValueAnimator;
    sget-object v2, Landroid/support/v17/leanback/transition/ParallaxTransition;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    new-instance v2, Landroid/support/v17/leanback/transition/ParallaxTransition$1;

    invoke-direct {v2, p0, v0}, Landroid/support/v17/leanback/transition/ParallaxTransition$1;-><init>(Landroid/support/v17/leanback/transition/ParallaxTransition;Landroid/support/v17/leanback/widget/Parallax;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 71
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 77
    if-nez p4, :cond_0

    .line 78
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/transition/ParallaxTransition;->createAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 86
    if-nez p3, :cond_0

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/transition/ParallaxTransition;->createAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
