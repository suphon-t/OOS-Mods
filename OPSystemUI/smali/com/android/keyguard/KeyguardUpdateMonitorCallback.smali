.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticateChanged(ZIII)V
    .locals 0
    .param p1, "authenticating"    # Z
    .param p2, "type"    # I
    .param p3, "result"    # I
    .param p4, "reserved"    # I

    .line 332
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .line 150
    return-void
.end method

.method public onClearFailedFacelockAttempts()V
    .locals 0

    .line 318
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .line 97
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .line 108
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .line 102
    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 0
    .param p1, "dreaming"    # Z

    .line 284
    return-void
.end method

.method public onEmergencyCallAction()V
    .locals 0

    .line 155
    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .locals 0
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .line 262
    return-void
.end method

.method public onFacelockStateChanged(I)V
    .locals 0
    .param p1, "type"    # I

    .line 316
    return-void
.end method

.method public onFingerprintAcquired(I)V
    .locals 0
    .param p1, "acquireInfo"    # I

    .line 230
    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 0

    .line 236
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 242
    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .line 257
    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .line 249
    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .line 267
    return-void
.end method

.method public onFingerprintTimeout()V
    .locals 0

    .line 308
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    return-void
.end method

.method public onHasLockscreenWallpaperChanged(Z)V
    .locals 0
    .param p1, "hasLockscreenWallpaper"    # Z

    .line 278
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .line 91
    return-void
.end method

.method public onKeyguardReset()V
    .locals 0

    .line 324
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .line 76
    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 80
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 81
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 83
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    .line 84
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    .line 85
    return-void
.end method

.method public onLogoutEnabledChanged()V
    .locals 0

    .line 301
    return-void
.end method

.method public onPasswordLockout()V
    .locals 0

    .line 321
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .param p1, "phoneState"    # I

    .line 70
    return-void
.end method

.method public onPreventModeChanged(Z)V
    .locals 0
    .param p1, "prevent"    # Z

    .line 328
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 45
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 0

    .line 55
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 62
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    .line 336
    return-void
.end method

.method public onServiceStateChanged(ILandroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "state"    # Landroid/telephony/ServiceState;

    .line 132
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 125
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 273
    return-void
.end method

.method public onSystemReady()V
    .locals 0

    .line 312
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .line 50
    return-void
.end method

.method public onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 295
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 211
    return-void
.end method

.method public onTrustGrantedWithFlags(II)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .line 221
    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 216
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 137
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 118
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 113
    return-void
.end method

.method public onUserUnlocked()V
    .locals 0

    .line 142
    return-void
.end method
