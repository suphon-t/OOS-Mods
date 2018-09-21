.class public Landroid/support/design/widget/HideBottomViewOnScrollBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "HideBottomViewOnScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private height:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    .local p0, "this":Landroid/support/design/widget/HideBottomViewOnScrollBehavior;, "Landroid/support/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/HideBottomViewOnScrollBehavior;->height:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 47
    .local p0, "this":Landroid/support/design/widget/HideBottomViewOnScrollBehavior;, "Landroid/support/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/HideBottomViewOnScrollBehavior;->height:I

    .line 48
    return-void
.end method

.method private slideDown(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Landroid/support/design/widget/HideBottomViewOnScrollBehavior;, "Landroid/support/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 93
    nop

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/HideBottomViewOnScrollBehavior;->height:I

    int-to-float v1, v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 97
    const-wide/16 v1, 0xaf

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 98
    return-void
.end method

.method private slideUp(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Landroid/support/design/widget/HideBottomViewOnScrollBehavior;, "Landroid/support/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 84
    nop

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroid/support/design/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 88
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 89
    return-void
.end method


# virtual methods
.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 52
    .local p0, "this":Landroid/support/design/widget/HideBottomViewOnScrollBehavior;, "Landroid/support/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/HideBottomViewOnScrollBehavior;->height:I

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIII)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Landroid/support/design/widget/HideBottomViewOnScrollBehavior;, "Landroid/support/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    if-lez p5, :cond_0

    .line 76
    invoke-direct {p0, p2}, Landroid/support/design/widget/HideBottomViewOnScrollBehavior;->slideDown(Landroid/view/View;)V

    goto :goto_0

    .line 77
    :cond_0
    if-gez p5, :cond_1

    .line 78
    invoke-direct {p0, p2}, Landroid/support/design/widget/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;)V

    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .line 63
    .local p0, "this":Landroid/support/design/widget/HideBottomViewOnScrollBehavior;, "Landroid/support/design/widget/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
