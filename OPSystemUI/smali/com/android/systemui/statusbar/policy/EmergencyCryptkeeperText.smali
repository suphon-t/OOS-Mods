.class public Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;
.super Landroid/widget/TextView;
.source "EmergencyCryptkeeperText.java"


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$1;-><init>(Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$2;-><init>(Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->setVisibility(I)V

    .line 68
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 72
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->update()V

    .line 78
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 82
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 87
    return-void
.end method

.method public update()V
    .locals 0

    .line 144
    return-void
.end method
