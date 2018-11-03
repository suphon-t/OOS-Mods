.class Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslationAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TranslationAnimationCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionPositionListener"
.end annotation


# instance fields
.field private final mMovingView:Landroid/view/View;

.field private mPausedX:F

.field private mPausedY:F

.field private final mStartX:I

.field private final mStartY:I

.field private final mTerminalX:F

.field private final mTerminalY:F

.field private mTransitionPosition:[I

.field private final mViewInHierarchy:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 3
    .param p1, "movingView"    # Landroid/view/View;
    .param p2, "viewInHierarchy"    # Landroid/view/View;
    .param p3, "startX"    # I
    .param p4, "startY"    # I
    .param p5, "terminalX"    # F
    .param p6, "terminalY"    # F

    .line 92
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 94
    iput-object p2, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    .line 95
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p3, v0

    iput v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    .line 96
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p4, v0

    iput v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    .line 97
    iput p5, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    .line 98
    iput p6, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    .line 99
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->transition_position:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 100
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->transition_position:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 103
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/support/transition/TranslationAnimationCreator$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # F
    .param p6, "x5"    # F
    .param p7, "x6"    # Landroid/support/transition/TranslationAnimationCreator$1;

    .line 79
    invoke-direct/range {p0 .. p6}, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 107
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    .line 111
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    .line 112
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    sget v1, Landroid/support/transition/R$id;->transition_position:I

    iget-object v2, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 117
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 118
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 119
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 123
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    .line 124
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    .line 125
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 126
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 127
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 131
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 132
    iget-object v0, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 133
    return-void
.end method
