.class public abstract Landroid/support/design/transformation/ExpandableTransformationBehavior;
.super Landroid/support/design/transformation/ExpandableBehavior;
.source "ExpandableTransformationBehavior.java"


# instance fields
.field private currentAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/support/design/transformation/ExpandableBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/ExpandableBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method static synthetic access$002(Landroid/support/design/transformation/ExpandableTransformationBehavior;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Landroid/support/design/transformation/ExpandableTransformationBehavior;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .line 38
    iput-object p1, p0, Landroid/support/design/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method


# virtual methods
.method protected abstract onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end method

.method protected onExpandedStateChange(Landroid/view/View;Landroid/view/View;ZZ)Z
    .locals 4
    .param p1, "dependency"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "expanded"    # Z
    .param p4, "animated"    # Z

    .line 70
    iget-object v0, p0, Landroid/support/design/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 71
    .local v0, "currentlyAnimating":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 72
    iget-object v2, p0, Landroid/support/design/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 75
    :cond_1
    nop

    .line 76
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/transformation/ExpandableTransformationBehavior;->onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 77
    iget-object v2, p0, Landroid/support/design/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/support/design/transformation/ExpandableTransformationBehavior$1;

    invoke-direct {v3, p0}, Landroid/support/design/transformation/ExpandableTransformationBehavior$1;-><init>(Landroid/support/design/transformation/ExpandableTransformationBehavior;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    iget-object v2, p0, Landroid/support/design/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 86
    if-nez p4, :cond_2

    .line 89
    iget-object v2, p0, Landroid/support/design/transformation/ExpandableTransformationBehavior;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 92
    :cond_2
    return v1
.end method
