.class public Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;
.super Ljava/lang/Object;
.source "FullscreenUserSwitcher.java"


# instance fields
.field private final mContainer:Landroid/view/View;

.field private mCurrentForegroundUserId:I

.field private final mParent:Landroid/view/View;

.field private final mShortAnimDuration:I

.field private mShowing:Z

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mUserGridView:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

.field private final mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewStub;Landroid/content/Context;)V
    .locals 3
    .param p1, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "containerStub"    # Landroid/view/ViewStub;
    .param p3, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 48
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    const v1, 0x7f0a00cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    const v1, 0x7f0a0448

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    .line 51
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 52
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {v0, p3, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 53
    .local v0, "layoutManager":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->buildAdapter()V

    .line 55
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserGridView:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    new-instance v2, Lcom/android/systemui/statusbar/car/-$$Lambda$FullscreenUserSwitcher$aJmHs-UVhjESZPP4fORPpYI740g;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/car/-$$Lambda$FullscreenUserSwitcher$aJmHs-UVhjESZPP4fORPpYI740g;-><init>(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->setUserSelectionListener(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserSelectionListener;)V

    .line 57
    new-instance v1, Lcom/android/settingslib/users/UserManagerHelper;

    invoke-direct {v1, p3}, Lcom/android/settingslib/users/UserManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->updateCurrentForegroundUser()V

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 61
    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShortAnimDuration:I

    .line 62
    return-void
.end method

.method private dismissKeyguard()V
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 113
    return-void
.end method

.method private fadeIn(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 137
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShortAnimDuration:I

    int-to-long v1, v1

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$2;-><init>(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;Landroid/view/View;)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 146
    return-void
.end method

.method private fadeOut(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShortAnimDuration:I

    int-to-long v1, v1

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher$1;-><init>(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;Landroid/view/View;)V

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 133
    return-void
.end method

.method private foregroundUserChanged()Z
    .locals 2

    .line 94
    iget v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mCurrentForegroundUserId:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-virtual {v1}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$IK7lNRNVhlYLd9PajOKix9WDNFg(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->dismissKeyguard()V

    return-void
.end method

.method public static synthetic lambda$aJmHs-UVhjESZPP4fORPpYI740g(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->onUserSelected(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;)V

    return-void
.end method

.method private onUserSelected(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;

    .line 102
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->dismissKeyguard()V

    .line 104
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->toggleSwitchInProgress(Z)V

    .line 107
    return-void
.end method

.method private toggleSwitchInProgress(Z)V
    .locals 1
    .param p1, "inProgress"    # Z

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->fadeOut(Landroid/view/View;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mContainer:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->fadeIn(Landroid/view/View;)V

    .line 121
    :goto_0
    return-void
.end method

.method private updateCurrentForegroundUser()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mCurrentForegroundUserId:I

    .line 99
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShowing:Z

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->foregroundUserChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->toggleSwitchInProgress(Z)V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->updateCurrentForegroundUser()V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/car/-$$Lambda$FullscreenUserSwitcher$IK7lNRNVhlYLd9PajOKix9WDNFg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/car/-$$Lambda$FullscreenUserSwitcher$IK7lNRNVhlYLd9PajOKix9WDNFg;-><init>(Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 91
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/users/UserManagerHelper;->isHeadlessSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mUserManagerHelper:Lcom/android/settingslib/users/UserManagerHelper;

    .line 67
    invoke-virtual {v1}, Lcom/android/settingslib/users/UserManagerHelper;->getForegroundUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/users/UserManagerHelper;->userIsSystemUser(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShowing:Z

    if-eqz v0, :cond_1

    .line 71
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mShowing:Z

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->mParent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    return-void
.end method
