.class Lcom/android/systemui/statusbar/car/CarNavigationBarView;
.super Landroid/widget/LinearLayout;
.source "CarNavigationBarView.java"


# instance fields
.field private mCarStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

.field private mContext:Landroid/content/Context;

.field private mLockScreenButtons:Landroid/view/View;

.field private mNavButtons:Landroid/view/View;

.field private mNotificationsButton:Lcom/android/keyguard/AlphaOptimizedImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public hideKeyguardButtons()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mLockScreenButtons:Landroid/view/View;

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mNavButtons:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mLockScreenButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .line 52
    const v0, 0x7f0a0277

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mNavButtons:Landroid/view/View;

    .line 53
    const v0, 0x7f0a021e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mLockScreenButtons:Landroid/view/View;

    .line 55
    const v0, 0x7f0a02a5

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/AlphaOptimizedImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mNotificationsButton:Lcom/android/keyguard/AlphaOptimizedImageButton;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mNotificationsButton:Lcom/android/keyguard/AlphaOptimizedImageButton;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mNotificationsButton:Lcom/android/keyguard/AlphaOptimizedImageButton;

    new-instance v1, Lcom/android/systemui/statusbar/car/-$$Lambda$Y4nI6w7N50JXOiy6kyuMQKNxBt8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/car/-$$Lambda$Y4nI6w7N50JXOiy6kyuMQKNxBt8;-><init>(Lcom/android/systemui/statusbar/car/CarNavigationBarView;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_0
    const v0, 0x7f0a03cc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "mStatusIcons":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 63
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    .line 65
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v3, "statusbar"

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    move-object v0, v2

    .line 69
    .local v0, "mDarkIconManager":Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->setShouldLog(Z)V

    .line 70
    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 73
    .end local v0    # "mDarkIconManager":Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;
    :cond_1
    return-void
.end method

.method protected onNotificationsClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mCarStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->togglePanel()V

    .line 81
    return-void
.end method

.method setStatusBar(Lcom/android/systemui/statusbar/car/CarStatusBar;)V
    .locals 0
    .param p1, "carStatusBar"    # Lcom/android/systemui/statusbar/car/CarStatusBar;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mCarStatusBar:Lcom/android/systemui/statusbar/car/CarStatusBar;

    .line 77
    return-void
.end method

.method public showKeyguardButtons()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mLockScreenButtons:Landroid/view/View;

    if-nez v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mLockScreenButtons:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->mNavButtons:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    return-void
.end method
