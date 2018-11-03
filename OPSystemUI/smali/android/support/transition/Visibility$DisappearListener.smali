.class Landroid/support/transition/Visibility$DisappearListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Landroid/support/transition/AnimatorUtils$AnimatorPauseListenerCompat;
.implements Landroid/support/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisappearListener"
.end annotation


# instance fields
.field mCanceled:Z

.field private final mFinalVisibility:I

.field private mLayoutSuppressed:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private final mSuppressLayout:Z

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IZ)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "finalVisibility"    # I
    .param p3, "suppressLayout"    # Z

    .line 485
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 486
    iput-object p1, p0, Landroid/support/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    .line 487
    iput p2, p0, Landroid/support/transition/Visibility$DisappearListener;->mFinalVisibility:I

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    .line 489
    iput-boolean p3, p0, Landroid/support/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    .line 491
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 492
    return-void
.end method

.method private hideViewWhenNotCanceled()V
    .locals 2

    .line 556
    iget-boolean v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-static {v0, v1}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 559
    iget-object v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 564
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 565
    return-void
.end method

.method private suppressLayout(Z)V
    .locals 1
    .param p1, "suppress"    # Z

    .line 568
    iget-boolean v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 569
    iput-boolean p1, p0, Landroid/support/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    .line 570
    iget-object v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mParent:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Landroid/support/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 572
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 515
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 527
    invoke-direct {p0}, Landroid/support/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 528
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 498
    iget-boolean v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    .line 499
    iget-object v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-static {v0, v1}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 501
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 519
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 507
    iget-boolean v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Landroid/support/transition/Visibility$DisappearListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 510
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 523
    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/Transition;

    .line 537
    invoke-direct {p0}, Landroid/support/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 538
    invoke-virtual {p1, p0}, Landroid/support/transition/Transition;->removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 539
    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/support/transition/Transition;

    .line 547
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 548
    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/support/transition/Transition;

    .line 552
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 553
    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/Transition;

    .line 533
    return-void
.end method
