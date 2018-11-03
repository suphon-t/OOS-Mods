.class public Lcom/android/systemui/pip/tv/PipMenuActivity;
.super Landroid/app/Activity;
.source "PipMenuActivity.java"

# interfaces
.implements Lcom/android/systemui/pip/tv/PipManager$Listener;


# instance fields
.field private mFadeInAnimation:Landroid/animation/Animator;

.field private mFadeOutAnimation:Landroid/animation/Animator;

.field private mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

.field private final mPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private mRestorePipSizeWhenClose:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    invoke-static {}, Lcom/android/systemui/pip/tv/PipManager;->getInstance()Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    return-void
.end method

.method private restorePipAndFinish()V
    .locals 2

    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    .line 79
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->restorePipAndFinish()V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->isPipShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    .line 51
    :cond_0
    const v0, 0x7f0d01ed

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->setContentView(I)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/tv/PipManager;->addListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    .line 55
    const v0, 0x7f0a030e

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlsView;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    .line 56
    const v0, 0x7f010100

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 59
    const v0, 0x7f010101

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "custom_actions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/pip/tv/PipManager;->removeListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->resumePipResizing(I)V

    .line 100
    return-void
.end method

.method public onMoveToFullscreen()V
    .locals 1

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mRestorePipSizeWhenClose:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    .line 130
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "custom_actions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V

    .line 71
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeOutAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->restorePipAndFinish()V

    .line 92
    return-void
.end method

.method public onPipActivityClosed()V
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    .line 113
    return-void
.end method

.method public onPipEntered()V
    .locals 0

    .line 108
    return-void
.end method

.method public onPipMenuActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    .locals 3
    .param p1, "actions"    # Landroid/content/pm/ParceledListSlice;

    .line 117
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 118
    .local v0, "hasCustomActions":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipControlsView:Lcom/android/systemui/pip/tv/PipControlsView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/pip/tv/PipControlsView;->setActions(Ljava/util/List;)V

    .line 119
    return-void
.end method

.method public onPipResizeAboutToStart()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipMenuActivity;->finish()V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->suspendPipResizing(I)V

    .line 137
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipMenuActivity;->mFadeInAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 85
    return-void
.end method

.method public onShowPipMenu()V
    .locals 0

    .line 122
    return-void
.end method
