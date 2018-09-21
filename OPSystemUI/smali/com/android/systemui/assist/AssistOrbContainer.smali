.class public Lcom/android/systemui/assist/AssistOrbContainer;
.super Landroid/widget/FrameLayout;
.source "AssistOrbContainer.java"


# instance fields
.field private mAnimatingOut:Z

.field private mNavbarScrim:Landroid/view/View;

.field private mOrb:Lcom/android/systemui/assist/AssistOrbView;

.field private mScrim:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/assist/AssistOrbContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/assist/AssistOrbContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/assist/AssistOrbContainer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/assist/AssistOrbContainer;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistOrbContainer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/assist/AssistOrbContainer;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/assist/AssistOrbContainer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/assist/AssistOrbContainer;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    return-object v0
.end method

.method private reset()V
    .locals 2

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    .line 85
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbView;->reset()V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 88
    return-void
.end method

.method private startEnterAnimation()V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    if-eqz v0, :cond_0

    .line 92
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistOrbView;->startEnterAnimation()V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 97
    new-instance v0, Lcom/android/systemui/assist/AssistOrbContainer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistOrbContainer$2;-><init>(Lcom/android/systemui/assist/AssistOrbContainer;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method private startExitAnimation(Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "endRunnable"    # Ljava/lang/Runnable;

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    if-eqz v0, :cond_1

    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 119
    :cond_0
    return-void

    .line 121
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    .line 122
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/assist/AssistOrbView;->startExitAnimation(J)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 124
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 125
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 127
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 134
    return-void
.end method


# virtual methods
.method public getOrb()Lcom/android/systemui/assist/AssistOrbView;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistOrbContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mAnimatingOut:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f0a0066

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mScrim:Landroid/view/View;

    .line 54
    const v0, 0x7f0a0065

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mNavbarScrim:Landroid/view/View;

    .line 55
    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistOrbView;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer;->mOrb:Lcom/android/systemui/assist/AssistOrbView;

    .line 56
    return-void
.end method

.method public show(ZZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "animate"    # Z

    .line 59
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistOrbContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->setVisibility(I)V

    .line 62
    if-eqz p2, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbContainer;->startEnterAnimation()V

    goto :goto_0

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistOrbContainer;->reset()V

    goto :goto_0

    .line 69
    :cond_1
    if-eqz p2, :cond_2

    .line 70
    new-instance v0, Lcom/android/systemui/assist/AssistOrbContainer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistOrbContainer$1;-><init>(Lcom/android/systemui/assist/AssistOrbContainer;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->startExitAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 78
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistOrbContainer;->setVisibility(I)V

    .line 81
    :cond_3
    :goto_0
    return-void
.end method
