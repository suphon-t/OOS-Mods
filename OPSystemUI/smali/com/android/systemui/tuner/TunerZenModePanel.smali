.class public Lcom/android/systemui/tuner/TunerZenModePanel;
.super Landroid/widget/LinearLayout;
.source "TunerZenModePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mButtons:Landroid/view/View;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mDone:Landroid/view/View;

.field private mDoneListener:Landroid/view/View$OnClickListener;

.field private mEditing:Z

.field private mHeaderSwitch:Landroid/view/View;

.field private mMoreSettings:Landroid/view/View;

.field private final mUpdate:Ljava/lang/Runnable;

.field private mZenMode:I

.field private mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    new-instance v0, Lcom/android/systemui/tuner/TunerZenModePanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerZenModePanel$1;-><init>(Lcom/android/systemui/tuner/TunerZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mUpdate:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/tuner/TunerZenModePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/tuner/TunerZenModePanel;

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->updatePanel()V

    return-void
.end method

.method private postUpdatePanel()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerZenModePanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 127
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mUpdate:Ljava/lang/Runnable;

    const-wide/16 v1, 0x28

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/tuner/TunerZenModePanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void
.end method

.method private updatePanel()V
    .locals 5

    .line 135
    iget v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 136
    .local v0, "zenOn":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    const v3, 0x1020017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 137
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/systemui/volume/ZenModePanel;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    .line 92
    iget v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mContext:Landroid/content/Context;

    const-string v1, "DndFavoriteZen"

    const/4 v3, 0x3

    invoke-static {v0, v1, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    const-string v3, "TunerZenModePanel"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->postUpdatePanel()V

    goto :goto_0

    .line 98
    :cond_0
    iput v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    .line 99
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const-string v3, "TunerZenModePanel"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->postUpdatePanel()V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mMoreSettings:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDone:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 107
    iput-boolean v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    .line 108
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerZenModePanel;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDoneListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 111
    :cond_3
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 79
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    .line 81
    return-void
.end method
