.class public abstract Lcom/android/systemui/statusbar/StackScrollerDecorView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "StackScrollerDecorView.java"


# instance fields
.field protected mContent:Landroid/view/View;

.field private mContentAnimating:Z

.field private final mContentVisibilityEndRunnable:Ljava/lang/Runnable;

.field private mContentVisible:Z

.field private mDuration:I

.field private mIsSecondaryVisible:Z

.field private mIsVisible:Z

.field protected mSecondaryView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentVisible:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsSecondaryVisible:Z

    .line 39
    const/16 v0, 0x104

    iput v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mDuration:I

    .line 41
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$StackScrollerDecorView$Z-vSQgmaL3Ks4ALN1cxIjM1burs;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/-$$Lambda$StackScrollerDecorView$Z-vSQgmaL3Ks4ALN1cxIjM1burs;-><init>(Lcom/android/systemui/statusbar/StackScrollerDecorView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentVisibilityEndRunnable:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/StackScrollerDecorView;)V
    .locals 3

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentAnimating:Z

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setVisibility(I)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setWillBeGone(Z)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->notifyHeightChanged(Z)V

    .line 48
    :cond_0
    return-void
.end method

.method private setContentVisible(ZZ)V
    .locals 2
    .param p1, "contentVisible"    # Z
    .param p2, "animate"    # Z

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentVisible:Z

    if-eq v0, p1, :cond_0

    .line 89
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentAnimating:Z

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentVisibilityEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setViewVisible(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 91
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentVisible:Z

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentAnimating:Z

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentVisibilityEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 95
    :cond_1
    return-void
.end method

.method private setViewVisible(Landroid/view/View;ZZLjava/lang/Runnable;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "nowVisible"    # Z
    .param p3, "animate"    # Z
    .param p4, "endRunnable"    # Ljava/lang/Runnable;

    .line 169
    if-nez p1, :cond_0

    .line 170
    return-void

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 174
    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 175
    .local v0, "endValue":F
    :goto_0
    if-nez p3, :cond_3

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 177
    if-eqz p4, :cond_2

    .line 178
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 180
    :cond_2
    return-void

    .line 184
    :cond_3
    if-eqz p2, :cond_4

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 185
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 186
    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 187
    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mDuration:I

    int-to-long v3, v3

    .line 188
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 189
    invoke-virtual {v2, p4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 190
    return-void
.end method


# virtual methods
.method protected abstract findContentView()Landroid/view/View;
.end method

.method protected abstract findSecondaryView()Landroid/view/View;
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public isContentVisible()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContentVisible:Z

    return v0
.end method

.method isSecondaryVisible()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 145
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsSecondaryVisible:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableView;->onFinishInflate()V

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->findContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContent:Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->findSecondaryView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setVisible(ZZ)V

    .line 60
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setSecondaryVisible(ZZ)V

    .line 61
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 65
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableView;->onLayout(ZIIII)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 67
    return-void
.end method

.method public performAddAnimation(JJZ)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "duration"    # J
    .param p5, "isHeadsUpAppear"    # Z

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setContentVisible(Z)V

    .line 205
    return-void
.end method

.method public performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "delay"    # J
    .param p5, "translationDirection"    # F
    .param p6, "isHeadsUpAnimation"    # Z
    .param p7, "endLocation"    # F
    .param p8, "onFinishedRunnable"    # Ljava/lang/Runnable;
    .param p9, "animationListener"    # Landroid/animation/AnimatorListenerAdapter;

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setContentVisible(Z)V

    .line 199
    return-void
.end method

.method public setContentVisible(Z)V
    .locals 1
    .param p1, "contentVisible"    # Z

    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setContentVisible(ZZ)V

    .line 81
    return-void
.end method

.method public setSecondaryVisible(ZZ)V
    .locals 2
    .param p1, "nowVisible"    # Z
    .param p2, "animate"    # Z

    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsSecondaryVisible:Z

    if-eq v0, p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setViewVisible(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsSecondaryVisible:Z

    .line 141
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)V
    .locals 2
    .param p1, "nowVisible"    # Z
    .param p2, "animate"    # Z

    .line 110
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    if-eq v0, p1, :cond_3

    .line 111
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    .line 112
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 113
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setVisibility(I)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setWillBeGone(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->notifyHeightChanged(Z)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setWillBeGone(Z)V

    .line 120
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setContentVisible(ZZ)V

    goto :goto_2

    .line 122
    :cond_1
    if-eqz p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setVisibility(I)V

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setContentVisible(ZZ)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setWillBeGone(Z)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->notifyHeightChanged(Z)V

    .line 128
    :cond_3
    :goto_2
    return-void
.end method
