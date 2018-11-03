.class public final Landroid/support/design/circularreveal/CircularRevealCompat;
.super Ljava/lang/Object;
.source "CircularRevealCompat.java"


# direct methods
.method public static createCircularReveal(Landroid/support/design/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;
    .locals 8
    .param p0, "view"    # Landroid/support/design/circularreveal/CircularRevealWidget;
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "endRadius"    # F

    .line 55
    sget-object v0, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealProperty;->CIRCULAR_REVEAL:Landroid/util/Property;

    sget-object v1, Landroid/support/design/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    new-instance v4, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v4, p1, p2, p3}, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 56
    invoke-static {p0, v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 61
    .local v0, "revealInfoAnimator":Landroid/animation/Animator;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    .line 64
    invoke-interface {p0}, Landroid/support/design/circularreveal/CircularRevealWidget;->getRevealInfo()Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v1

    .line 65
    .local v1, "revealInfo":Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    if-eqz v1, :cond_0

    .line 69
    iget v3, v1, Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 70
    .local v3, "startRadius":F
    move-object v4, p0

    check-cast v4, Landroid/view/View;

    float-to-int v6, p1

    float-to-int v7, p2

    .line 71
    invoke-static {v4, v6, v7, v3, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v4

    .line 73
    .local v4, "circularRevealAnimator":Landroid/animation/Animator;
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 74
    .local v6, "set":Landroid/animation/AnimatorSet;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v5

    aput-object v4, v7, v2

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 75
    return-object v6

    .line 66
    .end local v3    # "startRadius":F
    .end local v4    # "circularRevealAnimator":Landroid/animation/Animator;
    .end local v6    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Caller must set a non-null RevealInfo before calling this."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    .end local v1    # "revealInfo":Landroid/support/design/circularreveal/CircularRevealWidget$RevealInfo;
    :cond_1
    return-object v0
.end method

.method public static createCircularRevealListener(Landroid/support/design/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "view"    # Landroid/support/design/circularreveal/CircularRevealWidget;

    .line 118
    new-instance v0, Landroid/support/design/circularreveal/CircularRevealCompat$1;

    invoke-direct {v0, p0}, Landroid/support/design/circularreveal/CircularRevealCompat$1;-><init>(Landroid/support/design/circularreveal/CircularRevealWidget;)V

    return-object v0
.end method
