.class public Lcom/android/systemui/statusbar/OperatorNameView;
.super Landroid/widget/TextView;
.source "OperatorNameView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mDemoMode:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/OperatorNameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/OperatorNameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/OperatorNameView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/OperatorNameView$1;-><init>(Lcom/android/systemui/statusbar/OperatorNameView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/OperatorNameView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/OperatorNameView;

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/OperatorNameView;->updateText()V

    return-void
.end method

.method private update()V
    .locals 5

    .line 118
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "show_operator_name"

    .line 119
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    .line 120
    .local v0, "showOperatorName":Z
    const/16 v2, 0x8

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/OperatorNameView;->setVisibility(I)V

    .line 122
    iget-object v3, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    .line 123
    invoke-virtual {v3, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    .line 124
    .local v1, "hasMobile":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    .line 125
    .local v3, "airplaneMode":Z
    if-eqz v1, :cond_4

    if-eqz v3, :cond_2

    goto :goto_2

    .line 131
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mDemoMode:Z

    if-nez v2, :cond_3

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/statusbar/OperatorNameView;->updateText()V

    .line 134
    :cond_3
    return-void

    .line 126
    :cond_4
    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/OperatorNameView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/OperatorNameView;->setVisibility(I)V

    .line 128
    return-void
.end method

.method private updateText()V
    .locals 9

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "displayText":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    .line 139
    .local v1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 140
    .local v3, "N":I
    nop

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 141
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 142
    .local v4, "subId":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v5

    .line 143
    .local v5, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v6

    .line 144
    .local v6, "carrierName":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v5, v7, :cond_0

    .line 145
    iget-object v7, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v7

    .line 146
    .local v7, "ss":Landroid/telephony/ServiceState;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_0

    .line 147
    move-object v0, v6

    .line 148
    goto :goto_1

    .line 140
    .end local v4    # "subId":I
    .end local v5    # "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    .end local v6    # "carrierName":Ljava/lang/CharSequence;
    .end local v7    # "ss":Landroid/telephony/ServiceState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/OperatorNameView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mDemoMode:Z

    if-nez v0, :cond_0

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mDemoMode:Z

    goto :goto_0

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mDemoMode:Z

    if-eqz v0, :cond_1

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mDemoMode:Z

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/OperatorNameView;->update()V

    goto :goto_0

    .line 112
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mDemoMode:Z

    if-eqz v0, :cond_2

    const-string v0, "operator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/OperatorNameView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_2
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 76
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 77
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 78
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "show_operator_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "darkIntensity"    # F
    .param p3, "tint"    # I

    .line 92
    invoke-static {p1, p0, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/OperatorNameView;->setTextColor(I)V

    .line 93
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 83
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/OperatorNameView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 85
    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;)V

    .line 86
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 87
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 88
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/OperatorNameView;->update()V

    .line 103
    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/OperatorNameView;->update()V

    .line 98
    return-void
.end method
