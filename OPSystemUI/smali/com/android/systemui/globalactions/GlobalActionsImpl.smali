.class public Lcom/android/systemui/globalactions/GlobalActionsImpl;
.super Ljava/lang/Object;
.source "GlobalActionsImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/GlobalActions;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabled:Z

.field private mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    .line 68
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 69
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 70
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 71
    return-void
.end method

.method private hasCustomizedShutdownAnim()Z
    .locals 4

    .line 181
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    .line 182
    .local v0, "hasShutdownAnim":Z
    const-string v1, "GlobalActionsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasCusShutdownAnim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 76
    return-void
.end method

.method public disable(IIZ)V
    .locals 2
    .param p1, "state1"    # I
    .param p2, "state2"    # I
    .param p3, "animate"    # Z

    .line 172
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 173
    .local v0, "disabled":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 174
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    .line 175
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->dismissDialog()V

    .line 178
    :cond_2
    return-void
.end method

.method public showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 88
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v2

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showDialog(ZZ)V

    .line 89
    return-void
.end method

.method public showShutdownUi(ZLjava/lang/String;)V
    .locals 10
    .param p1, "isReboot"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyShutDownOrReboot()V

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsImpl;->hasCustomizedShutdownAnim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    return-void

    .line 111
    :cond_0
    new-instance v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, "background":Lcom/android/internal/colorextraction/drawable/GradientDrawable;
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setAlpha(I)V

    .line 114
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f12042a

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 117
    .local v1, "d":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 118
    .local v2, "window":Landroid/view/Window;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 119
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v5, v5, 0x700

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 123
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 124
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/4 v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 125
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 126
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 127
    const/16 v3, 0x7e4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 128
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 129
    const v3, 0x10d0120

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 136
    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    const v3, 0x1030004

    invoke-virtual {v2, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 139
    const v3, 0x10900f0

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 140
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 143
    const/4 v4, -0x1

    .line 146
    .local v4, "color":I
    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/KeyguardManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 147
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    .line 149
    .local v5, "onKeyguard":Z
    const v6, 0x102000d

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 150
    .local v6, "bar":Landroid/widget/ProgressBar;
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 151
    const v7, 0x1020014

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 152
    .local v7, "message":Landroid/widget/TextView;
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    if-eqz p1, :cond_1

    const v8, 0x1040595

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 155
    :cond_1
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 156
    .local v8, "displaySize":Landroid/graphics/Point;
    iget-object v9, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 163
    const/high16 v9, -0x1000000

    invoke-virtual {v0, v9, v9, v3}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V

    .line 165
    iget v3, v8, Landroid/graphics/Point;->x:I

    iget v9, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v9}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setScreenSize(II)V

    .line 167
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 168
    return-void
.end method
