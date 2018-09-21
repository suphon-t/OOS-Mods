.class public Lcom/android/systemui/qs/car/CarQSFooter;
.super Landroid/widget/RelativeLayout;
.source "CarQSFooter.java"

# interfaces
.implements Lcom/android/systemui/qs/QSFooter;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# instance fields
.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private mUserName:Landroid/widget/TextView;

.field private mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/systemui/qs/car/CarQSFooter;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "CarQSFooter"

    const-string v1, "CarQSFooter not properly set up; cannot display user switcher."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

    invoke-virtual {v0}, Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

    invoke-virtual {v0}, Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;->show()V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

    invoke-virtual {v0}, Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;->hide()V

    .line 75
    :goto_0
    return-void
.end method

.method static synthetic lambda$onFinishInflate$1()V
    .locals 0

    .line 82
    return-void
.end method

.method static synthetic lambda$onFinishInflate$2(Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .line 78
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 80
    .local v0, "activityStarter":Lcom/android/systemui/plugins/ActivityStarter;
    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    sget-object v1, Lcom/android/systemui/qs/car/-$$Lambda$CarQSFooter$H3UVMkyVF99w6eHnJ5RvLZW_NH8;->INSTANCE:Lcom/android/systemui/qs/car/-$$Lambda$CarQSFooter$H3UVMkyVF99w6eHnJ5RvLZW_NH8;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    .line 83
    return-void

    .line 86
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 88
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 58
    const v0, 0x7f0a026d

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/car/CarQSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v1, 0x7f0a026c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0a0449

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/car/CarQSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserName:Landroid/widget/TextView;

    .line 62
    const-class v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    new-instance v1, Lcom/android/systemui/qs/car/-$$Lambda$CarQSFooter$xoqzki0urKxneglGiL2edvgrN-s;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/car/-$$Lambda$CarQSFooter$xoqzki0urKxneglGiL2edvgrN-s;-><init>(Lcom/android/systemui/qs/car/CarQSFooter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v0, 0x7f0a03a1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/car/CarQSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/qs/car/-$$Lambda$CarQSFooter$C_VT7jTcbPDHJhehIsWtJGKaO0U;->INSTANCE:Lcom/android/systemui/qs/car/-$$Lambda$CarQSFooter$C_VT7jTcbPDHJhehIsWtJGKaO0U;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 120
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .param p1, "expanded"    # Z

    .line 125
    return-void
.end method

.method public setExpansion(F)V
    .locals 0
    .param p1, "expansion"    # F

    .line 130
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0
    .param p1, "keyguardShowing"    # Z

    .line 135
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->removeCallback(Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1
    .param p1, "panel"    # Lcom/android/systemui/qs/QSPanel;

    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setUserSwitchCallback(Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

    .line 105
    iput-object p1, p0, Lcom/android/systemui/qs/car/CarQSFooter;->mUserSwitchCallback:Lcom/android/systemui/qs/car/CarQSFragment$UserSwitchCallback;

    .line 106
    return-void
.end method
