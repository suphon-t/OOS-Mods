.class public Lcom/android/systemui/qs/QSFragment;
.super Landroid/app/Fragment;
.source "QSFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainer:Lcom/android/systemui/qs/QSContainerImpl;

.field private mDelay:J

.field private mFooter:Lcom/android/systemui/qs/QSFooter;

.field protected mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mHeaderAnimating:Z

.field private mKeyguardShowing:Z

.field private mLastQSExpansion:F

.field private mLayoutDirection:I

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field private mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQsBounds:Landroid/graphics/Rect;

.field private mQsDisabled:Z

.field private mQsExpanded:Z

.field private mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    .line 77
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 80
    const-class v0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 81
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 482
    new-instance v0, Lcom/android/systemui/qs/QSFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 499
    new-instance v0, Lcom/android/systemui/qs/QSFragment$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$3;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QSFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFragment;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFragment;

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSFragment;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFragment;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFragment;

    .line 53
    iget-wide v0, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    return-wide v0
.end method

.method private updateQsState()V
    .locals 6

    .line 218
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 220
    .local v0, "expandVisually":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 221
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    .line 222
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const/4 v5, 0x4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v4, :cond_2

    goto :goto_2

    .line 224
    :cond_2
    nop

    .line 222
    move v4, v5

    goto :goto_3

    .line 223
    :cond_3
    :goto_2
    nop

    .line 222
    move v4, v2

    :goto_3
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setVisibility(I)V

    .line 225
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v4, :cond_5

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v4, :cond_6

    :cond_5
    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v2

    :goto_4
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpanded(Z)V

    .line 227
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 228
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v4, :cond_8

    .line 229
    :cond_7
    nop

    .line 227
    move v4, v2

    goto :goto_5

    .line 230
    :cond_8
    nop

    .line 227
    move v4, v5

    :goto_5
    invoke-interface {v3, v4}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    .line 231
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v4, :cond_a

    :cond_9
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v4, :cond_b

    :cond_a
    goto :goto_6

    :cond_b
    move v1, v2

    :goto_6
    invoke-interface {v3, v1}, Lcom/android/systemui/qs/QSFooter;->setExpanded(Z)V

    .line 233
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez v3, :cond_c

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    move v2, v5

    :goto_7
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 234
    return-void
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .locals 2
    .param p1, "delay"    # J

    .line 393
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v0, :cond_0

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 395
    iput-wide p1, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 398
    :cond_0
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .locals 3

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 405
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 406
    const-wide/16 v1, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 407
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSFragment$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 408
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 421
    return-void
.end method

.method public closeDetail()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    .line 431
    return-void
.end method

.method public disable(IIZ)V
    .locals 2
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->adjustDisableFlags(I)I

    move-result p2

    .line 208
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 209
    .local v0, "disabled":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 210
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    .line 211
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/qs/QSContainerImpl;->disable(IIZ)V

    .line 212
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->disable(IIZ)V

    .line 213
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/systemui/qs/QSFooter;->disable(IIZ)V

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 215
    return-void
.end method

.method public getCustomizer()Lcom/android/systemui/qs/customize/QSCustomizer;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    return-object v0
.end method

.method public getDesiredHeight()I
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 456
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 457
    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 458
    .local v1, "panelHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object v0
.end method

.method public getQsMinExpansionHeight()I
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v0

    return v0
.end method

.method public getQsPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method public hideImmediately()V
    .locals 2

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 480
    return-void
.end method

.method public isCustomizing()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v0

    return v0
.end method

.method isExpanded()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    return v0
.end method

.method isListening()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v0

    return v0
.end method

.method public notifyCustomizeChanged()V
    .locals 4

    .line 435
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v1

    if-nez v1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-interface {v0, v2}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS$HeightListener;->onQsHeightChanged()V

    .line 441
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 171
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 172
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    .line 175
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator;->onRtlChanged()V

    .line 179
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 86
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120546

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 87
    const v0, 0x7f0d018a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListeningBrightness(Z)V

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 135
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 122
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 123
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isCustomizing()Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 139
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 140
    const-string v0, "expanded"

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 141
    const-string v0, "listening"

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->saveInstanceState(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 92
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f0a0332

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 94
    const v0, 0x7f0a0322

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDetail;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    .line 95
    const v0, 0x7f0a017f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 96
    const v0, 0x7f0a0326

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSFooter;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 97
    const v0, 0x7f0a0330

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSContainerImpl;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QuickStatusBarHeader;Landroid/view/View;)V

    .line 100
    new-instance v0, Lcom/android/systemui/qs/QSAnimator;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 101
    const v2, 0x7f0a032d

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSAnimator;-><init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    .line 103
    const v0, 0x7f0a0321

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    .line 105
    if-eqz p2, :cond_0

    .line 106
    const-string v0, "expanded"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setExpanded(Z)V

    .line 107
    const-string v0, "listening"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 108
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 109
    .local v1, "loc":[I
    const v2, 0x1020003

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, "edit":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 111
    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    .line 112
    .local v3, "x":I
    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v4, v5

    .line 113
    .local v4, "y":I
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/qs/customize/QSCustomizer;->setEditLocation(II)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/customize/QSCustomizer;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 116
    .end local v1    # "loc":[I
    .end local v2    # "edit":Landroid/view/View;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 117
    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 183
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    .line 186
    :cond_0
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 425
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    return-void
.end method

.method public setExpanded(Z)V
    .locals 4
    .param p1, "expanded"    # Z

    .line 265
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 266
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 270
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 272
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result v1

    .line 274
    .local v1, "needToListen":Z
    if-eqz v1, :cond_2

    .line 275
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setQSExpanded(Z)V

    goto :goto_1

    .line 278
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setQSExpanded(Z)V

    goto :goto_1

    .line 281
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setQSExpanded(Z)V

    .line 285
    .end local v0    # "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    .end local v1    # "needToListen":Z
    :cond_3
    :goto_1
    return-void
.end method

.method public setHasNotifications(Z)V
    .locals 0
    .param p1, "hasNotifications"    # Z

    .line 162
    return-void
.end method

.method public setHeaderClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .line 260
    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .line 339
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    .line 341
    return-void
.end method

.method public setHeightOverride(I)V
    .locals 1
    .param p1, "desiredHeight"    # I

    .line 468
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setHeightOverride(I)V

    .line 469
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2
    .param p1, "qsh"    # Lcom/android/systemui/qs/QSTileHost;

    .line 194
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSFooter;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetail;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 202
    :cond_0
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 4
    .param p1, "keyguardShowing"    # Z

    .line 290
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    .line 291
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 293
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setOnKeyguard(Z)V

    .line 298
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 300
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result v1

    .line 302
    .local v1, "needToListen":Z
    if-eqz v1, :cond_2

    .line 303
    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSPanel;->setListeningBrightness(Z)V

    .line 305
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 306
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setQSExpanded(Z)V

    goto :goto_0

    .line 308
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setQSExpanded(Z)V

    goto :goto_0

    .line 311
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setQSExpanded(Z)V

    .line 317
    .end local v0    # "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    .end local v1    # "needToListen":Z
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setKeyguardShowing(Z)V

    .line 318
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 319
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 331
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 332
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 335
    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0
    .param p1, "stackScrollerOverscrolling"    # Z

    .line 324
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    .line 325
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 326
    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0
    .param p1, "panelView"    # Lcom/android/systemui/plugins/qs/QS$HeightListener;

    .line 166
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    .line 167
    return-void
.end method

.method public setQsExpansion(FF)V
    .locals 7
    .param p1, "expansion"    # F
    .param p2, "headerTranslation"    # F

    .line 346
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setExpansion(F)V

    .line 347
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    .line 348
    .local v1, "translationScaleY":F
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v2, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 350
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    goto :goto_0

    .line 352
    :cond_0
    nop

    .line 349
    move v3, p2

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 354
    :cond_1
    iget v2, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    .line 355
    return-void

    .line 357
    :cond_2
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 359
    cmpl-float v2, p1, v0

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 360
    .local v2, "fullyExpanded":Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 361
    invoke-interface {v4}, Lcom/android/systemui/qs/QSFooter;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 362
    .local v3, "heightDiff":I
    int-to-float v4, v3

    mul-float/2addr v4, v1

    .line 365
    .local v4, "panelTranslationY":F
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v6, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    invoke-virtual {v5, v6, p1, v4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpansion(ZFF)V

    .line 366
    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-boolean v6, p0, Lcom/android/systemui/qs/QSFragment;->mKeyguardShowing:Z

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    move v0, p1

    :goto_2
    invoke-interface {v5, v0}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getQsTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileRevealController;->setExpansion(F)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setExpansion(F)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    int-to-float v5, v3

    mul-float/2addr v5, v1

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/QSPanel;->setTranslationY(F)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    .line 372
    if-eqz v2, :cond_5

    .line 374
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/QSPanel;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 377
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getTranslationY()F

    move-result v5

    neg-float v5, v5

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 378
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 379
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 380
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/QSPanel;->setClipBounds(Landroid/graphics/Rect;)V

    .line 383
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_6

    .line 384
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    .line 386
    :cond_6
    return-void
.end method
