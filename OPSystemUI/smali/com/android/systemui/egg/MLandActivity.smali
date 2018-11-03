.class public Lcom/android/systemui/egg/MLandActivity;
.super Landroid/app/Activity;
.source "MLandActivity.java"


# instance fields
.field mLand:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0d00d9

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f0a04ad

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/egg/MLand;

    iput-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    .line 34
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    const v1, 0x7f0a0386

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->setScoreFieldHolder(Landroid/view/ViewGroup;)V

    .line 35
    const v0, 0x7f0a049d

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "welcome":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v1, v0}, Lcom/android/systemui/egg/MLand;->setSplash(Landroid/view/View;)V

    .line 37
    iget-object v1, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v1}, Lcom/android/systemui/egg/MLand;->getGameControllers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 38
    .local v1, "numControllers":I
    if-lez v1, :cond_0

    .line 39
    iget-object v2, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v2, v1}, Lcom/android/systemui/egg/MLand;->setupPlayers(I)V

    .line 41
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->stop()V

    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 65
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->onAttachedToWindow()V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->showSplash()V

    .line 74
    return-void
.end method

.method public playerMinus(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->removePlayer()V

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    .line 79
    return-void
.end method

.method public playerPlus(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->addPlayer()V

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLandActivity;->updateSplashPlayers()V

    .line 84
    return-void
.end method

.method public startButtonPressed(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 87
    const v0, 0x7f0a031b

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    const v0, 0x7f0a031c

    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/egg/MLand;->start(Z)V

    .line 90
    return-void
.end method

.method public updateSplashPlayers()V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand;->getNumPlayers()I

    move-result v0

    .line 45
    .local v0, "N":I
    const v1, 0x7f0a031b

    invoke-virtual {p0, v1}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "minus":Landroid/view/View;
    const v2, 0x7f0a031c

    invoke-virtual {p0, v2}, Lcom/android/systemui/egg/MLandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, "plus":Landroid/view/View;
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 48
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 49
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 51
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/egg/MLandActivity;->mLand:Lcom/android/systemui/egg/MLand;

    const/4 v5, 0x6

    if-ne v0, v5, :cond_1

    .line 52
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 57
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :goto_0
    return-void
.end method
