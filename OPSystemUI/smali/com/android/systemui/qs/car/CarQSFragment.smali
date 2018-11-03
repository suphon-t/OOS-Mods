.class public Lcom/android/systemui/qs/car/CarQSFragment;
.super Landroid/app/Fragment;
.source "CarQSFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;
    }
.end annotation


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFooter:Lcom/android/systemui/qs/car/CarQSFooter;

.field private mFooterExpandIcon:Landroid/view/View;

.field private mFooterUserName:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private mUserGridView:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

.field private mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

.field private mUserSwitcherContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/car/CarQSFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/car/CarQSFragment;
    .param p1, "x1"    # Z

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/car/CarQSFragment;->animateHeightChange(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/car/CarQSFragment;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/car/CarQSFragment;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .line 46
    iput-object p1, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private animateHeightChange(Z)V
    .locals 6
    .param p1, "opening"    # Z

    .line 225
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 229
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v0, "allAnimators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarQSFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 231
    if-eqz p1, :cond_1

    const v2, 0x7f010015

    goto :goto_0

    .line 232
    :cond_1
    const v2, 0x7f010010

    .line 230
    :goto_0
    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 233
    .local v1, "heightAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/systemui/qs/car/-$$Lambda$CarQSFragment$F8Wi9wqWb5vO5dq5W60LmH4nDcg;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/car/-$$Lambda$CarQSFragment$F8Wi9wqWb5vO5dq5W60LmH4nDcg;-><init>(Lcom/android/systemui/qs/car/CarQSFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarQSFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 239
    if-eqz p1, :cond_2

    const v3, 0x7f010017

    goto :goto_1

    .line 240
    :cond_2
    const v3, 0x7f010012

    .line 238
    :goto_1
    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 241
    .local v2, "nameAnimator":Landroid/animation/Animator;
    iget-object v3, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooterUserName:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 242
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarQSFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 245
    if-eqz p1, :cond_3

    const v4, 0x7f010016

    goto :goto_2

    .line 246
    :cond_3
    const v4, 0x7f010011

    .line 244
    :goto_2
    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    .line 247
    .local v3, "iconAnimator":Landroid/animation/Animator;
    iget-object v4, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooterExpandIcon:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 248
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 251
    iget-object v4, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/systemui/qs/car/CarQSFragment$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/car/CarQSFragment$1;-><init>(Lcom/android/systemui/qs/car/CarQSFragment;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    iget-object v4, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/animation/Animator;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/animation/Animator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 261
    iget-object v4, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0, v4}, Lcom/android/systemui/qs/car/CarQSFragment;->setupInitialValues(Landroid/animation/Animator;)V

    .line 263
    iget-object v4, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 264
    return-void
.end method

.method public static synthetic lambda$animateHeightChange$0(Lcom/android/systemui/qs/car/CarQSFragment;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 234
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/car/CarQSFragment;->updateUserSwitcherHeight(I)V

    .line 235
    return-void
.end method

.method private setupInitialValues(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 267
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 268
    move-object v0, p1

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 269
    .local v1, "a":Landroid/animation/Animator;
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/car/CarQSFragment;->setupInitialValues(Landroid/animation/Animator;)V

    .line 270
    .end local v1    # "a":Landroid/animation/Animator;
    goto :goto_0

    .line 271
    :cond_0
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 272
    move-object v0, p1

    check-cast v0, Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    .line 274
    :cond_1
    return-void
.end method

.method private updateUserSwitcherHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .line 218
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mUserSwitcherContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 219
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 220
    iget-object v1, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mUserSwitcherContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 221
    return-void
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .locals 0
    .param p1, "delay"    # J

    .line 177
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .locals 0

    .line 182
    return-void
.end method

.method public closeDetail()V
    .locals 0

    .line 167
    return-void
.end method

.method public getDesiredHeight()I
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarQSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method getFooter()Lcom/android/systemui/qs/QSFooter;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooter:Lcom/android/systemui/qs/car/CarQSFooter;

    return-object v0
.end method

.method public getHeader()Landroid/view/View;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method public getQsMinExpansionHeight()I
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarQSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public hideImmediately()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarQSFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    return-void
.end method

.method public isCustomizing()Z
    .locals 1

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCustomizeChanged()V
    .locals 0

    .line 187
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    const v0, 0x7f0d004a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f0a018e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mHeader:Landroid/view/View;

    .line 66
    const v0, 0x7f0a0341

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/car/CarQSFooter;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooter:Lcom/android/systemui/qs/car/CarQSFooter;

    .line 67
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooter:Lcom/android/systemui/qs/car/CarQSFooter;

    const v1, 0x7f0a047e

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/car/CarQSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooterUserName:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooter:Lcom/android/systemui/qs/car/CarQSFooter;

    const v1, 0x7f0a0480

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/car/CarQSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooterExpandIcon:Landroid/view/View;

    .line 70
    const v0, 0x7f0a0481

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mUserSwitcherContainer:Landroid/view/View;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/car/CarQSFragment;->updateUserSwitcherHeight(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarQSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mUserSwitcherContainer:Landroid/view/View;

    const v2, 0x7f0a047d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    iput-object v1, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    .line 76
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 78
    .local v1, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v2, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 79
    iget-object v2, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->buildAdapter()V

    .line 81
    new-instance v2, Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;-><init>(Lcom/android/systemui/qs/car/CarQSFragment;)V

    iput-object v2, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

    .line 82
    iget-object v2, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooter:Lcom/android/systemui/qs/car/CarQSFooter;

    iget-object v3, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/car/CarQSFooter;->setUserSwitchCallback(Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;)V

    .line 83
    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 192
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 197
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "qsExpanded"    # Z

    .line 156
    return-void
.end method

.method public setHeaderClickable(Z)V
    .locals 0
    .param p1, "qsExpansionEnabled"    # Z

    .line 140
    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooter:Lcom/android/systemui/qs/car/CarQSFooter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/car/CarQSFooter;->setListening(Z)V

    .line 109
    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0
    .param p1, "desiredHeight"    # I

    .line 134
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0
    .param p1, "keyguardShowing"    # Z

    .line 172
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFragment;->mFooter:Lcom/android/systemui/qs/car/CarQSFooter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/car/CarQSFooter;->setListening(Z)V

    .line 114
    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0
    .param p1, "overscrolling"    # Z

    .line 151
    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0
    .param p1, "notificationPanelView"    # Lcom/android/systemui/plugins/qs/QS$HeightListener;

    .line 129
    return-void
.end method

.method public setQsExpansion(FF)V
    .locals 2
    .param p1, "qsExpansionFraction"    # F
    .param p2, "headerTranslation"    # F

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/qs/car/CarQSFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    return-void
.end method
