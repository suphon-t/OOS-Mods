.class public Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FingerprintUnlockController.java"


# static fields
.field private static FP_FAILED_ATTEMPTS_TO_WAKEUP:I

.field private static FP_FAILED_ATTEMPTS_TO_WAKEUP_IN_DOZE:I


# instance fields
.field private mApplySpeedUpPolicy:Z

.field private final mContext:Landroid/content/Context;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mForceShowBouncer:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasScreenTurnedOnSinceAuthenticating:Z

.field private mIsFingerprintAuthenticating:Z

.field private mIsScreenOffUnlock:Z

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mMode:I

.field private mNoBouncerAnim:Z

.field private mPendingAuthenticatedUserId:I

.field private mPendingShowBouncer:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP:I

    .line 142
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP_IN_DOZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dozeScrimController"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .param p3, "keyguardViewMediator"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p4, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p5, "statusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p6, "unlockMethodCache"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 154
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mForceShowBouncer:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mNoBouncerAnim:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsFingerprintAuthenticating:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mApplySpeedUpPolicy:Z

    .line 174
    new-instance v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    .line 701
    new-instance v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$4;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 711
    new-instance v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$5;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    .line 155
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    .line 156
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    .line 157
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 159
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 160
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 161
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 162
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 163
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 164
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 165
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 166
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 54
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingShowBouncer:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->showBouncer()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHasScreenTurnedOnSinceAuthenticating:Z

    return p1
.end method

.method private calculateMode()I
    .locals 7

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 595
    .local v0, "unlockingAllowed":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v1

    .line 599
    .local v1, "deviceDreaming":Z
    const-string v2, "FingerprintController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsScreenOffUnlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isDeviceInteractive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", deviceDreaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_7

    .line 602
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_7

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 604
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 623
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 624
    const/4 v2, 0x7

    return v2

    .line 626
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 627
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 628
    const/4 v2, 0x6

    return v2

    .line 629
    :cond_4
    if-eqz v0, :cond_5

    .line 630
    const/4 v2, 0x5

    return v2

    .line 631
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    if-nez v2, :cond_6

    .line 632
    return v3

    .line 635
    :cond_6
    const/4 v2, 0x0

    return v2

    .line 609
    :cond_7
    :goto_0
    const-string v2, "FingerprintController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockingAllowed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mUnlockMethodCache.isMethodSecure() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-nez v2, :cond_8

    .line 612
    const/4 v2, 0x4

    return v2

    .line 617
    :cond_8
    if-nez v0, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    .line 620
    :cond_9
    return v3

    .line 618
    :cond_a
    :goto_1
    return v4
.end method

.method private changePanelVisibilityByAlpha(IZ)V
    .locals 2
    .param p1, "alpha"    # I
    .param p2, "reset"    # Z

    .line 788
    if-eqz p2, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->changePanelAlpha(II)V

    goto :goto_0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->changePanelAlpha(II)V

    .line 793
    :goto_0
    return-void
.end method

.method private cleanup()V
    .locals 1

    .line 665
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    .line 669
    return-void
.end method

.method private isLauncherOnTop()Z
    .locals 6

    .line 802
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v1

    .line 803
    .local v1, "activityType":I
    const-string v3, "FingerprintController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLauncherOnTop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 805
    return v2

    .line 809
    .end local v1    # "activityType":I
    :cond_0
    goto :goto_0

    .line 807
    :catch_0
    move-exception v1

    .line 808
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FingerprintController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private onFingerprintUnlockCancel(I)V
    .locals 7
    .param p1, "cancelReason"    # I

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 233
    .local v0, "skip":Z
    sget v1, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP:I

    .line 234
    .local v1, "wakeUpThreshold":I
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    sget v1, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->FP_FAILED_ATTEMPTS_TO_WAKEUP_IN_DOZE:I

    .line 243
    :cond_0
    const-string v2, "FingerprintController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFingerprintUnlockCancel: Reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", OffUnlock:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", attemps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 244
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Authenticating:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isFingerprintAuthenticating()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", prevent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", skip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", ScreenOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", interactive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", bouncer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", threshold:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isFingerprintAuthenticating()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 247
    const/4 v2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->changePanelVisibilityByAlpha(IZ)V

    .line 249
    if-nez p1, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 250
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v4

    if-lt v4, v1, :cond_4

    .line 252
    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeActive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 254
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 255
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mForceShowBouncer:Z

    .line 256
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingShowBouncer:Z

    goto :goto_0

    .line 260
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 261
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const v4, 0x3f8ccccd    # 1.1f

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    .line 267
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string v6, "com.android.systemui:FailedAttempts"

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-nez v2, :cond_3

    .line 270
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    if-eqz v2, :cond_5

    .line 271
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLockAfterScreenOn()V

    goto :goto_1

    .line 275
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    if-nez v2, :cond_5

    .line 276
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLockAfterScreenOn()V

    goto :goto_1

    .line 281
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    if-eqz v2, :cond_5

    .line 282
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/16 v6, 0xb

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 284
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->onPreStartedGoingToSleep()V

    .line 289
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->onFingerprintStartedGoingToSleep()V

    .line 293
    :cond_5
    :goto_1
    const/4 v2, 0x5

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->setFingerprintState(ZI)V

    .line 294
    return-void
.end method

.method private onFingerprintUnlockStart()V
    .locals 10

    .line 197
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->isFinishedScreenTuredOn()Z

    move-result v0

    .line 198
    .local v0, "screenOn":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    .line 199
    .local v1, "pulsing":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper(Z)Z

    move-result v2

    .line 200
    .local v2, "isShowingLiveWallpaper":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v4

    .line 201
    .local v4, "dream":Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    .line 203
    .local v5, "interactive":Z
    const-string v6, "FingerprintController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFingerprintUnlockStart, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " , dream:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " , live:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", interactive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v6, 0x0

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 207
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v7}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 208
    invoke-direct {p0, v6, v6}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->changePanelVisibilityByAlpha(IZ)V

    .line 211
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-string v9, "com.android.systemui:UnlockStart"

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 213
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    goto :goto_0

    .line 215
    :cond_1
    if-eqz v0, :cond_2

    if-nez v5, :cond_2

    .line 217
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    if-nez v2, :cond_2

    .line 220
    invoke-direct {p0, v6, v6}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->changePanelVisibilityByAlpha(IZ)V

    .line 225
    :cond_2
    :goto_0
    return-void
.end method

.method private pulsingOrAod()Z
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    .line 360
    .local v0, "scrimState":Lcom/android/systemui/statusbar/phone/ScrimState;
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private releaseFingerprintWakeLock()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    const-string v0, "FingerprintController"

    const-string v1, "releasing fp wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 193
    :cond_0
    return-void
.end method

.method private setFingerprintState(ZI)V
    .locals 3
    .param p1, "authenticating"    # Z
    .param p2, "result"    # I

    .line 777
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsFingerprintAuthenticating:Z

    if-eq v0, p1, :cond_0

    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFingerprintState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsFingerprintAuthenticating:Z

    .line 779
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsFingerprintAuthenticating:Z

    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    .line 780
    return-void
.end method

.method private showBouncer()V
    .locals 3

    .line 522
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mNoBouncerAnim:Z

    .line 523
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mForceShowBouncer:Z

    if-eqz v1, :cond_0

    .line 524
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mNoBouncerAnim:Z

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->calculateMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mForceShowBouncer:Z

    if-eqz v1, :cond_2

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 535
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 537
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mNoBouncerAnim:Z

    if-eqz v2, :cond_3

    const v2, 0x4479c000    # 999.0f

    goto :goto_0

    :cond_3
    const v2, 0x3f8ccccd    # 1.1f

    .line 535
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    .line 538
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mNoBouncerAnim:Z

    .line 541
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingShowBouncer:Z

    .line 543
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mForceShowBouncer:Z

    .line 545
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 724
    const-string v0, " FingerprintUnlockController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    const-string v0, "   mMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 726
    const-string v0, "   mWakeLock="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 727
    return-void
.end method

.method public finishKeyguardFadingAway()V
    .locals 0

    .line 683
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->resetMode()V

    .line 684
    return-void
.end method

.method public getMode()I
    .locals 1

    .line 590
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    return v0
.end method

.method public hasPendingAuthentication()Z
    .locals 2

    .line 584
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 585
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 586
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 584
    :goto_0
    return v0
.end method

.method public isBouncerAnimNeeded()Z
    .locals 1

    .line 549
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mNoBouncerAnim:Z

    return v0
.end method

.method public isFingerprintAuthenticating()Z
    .locals 1

    .line 783
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsFingerprintAuthenticating:Z

    return v0
.end method

.method public isFingerprintUnlock()Z
    .locals 2

    .line 742
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isWakeAndUnlock()Z
    .locals 3

    .line 733
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public onFingerprintAcquired(I)V
    .locals 5
    .param p1, "acquireInfo"    # I

    .line 301
    const-string v0, "FingerprintUnlockController#onFingerprintAcquired"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 302
    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintAcquired: accquireInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isPulsing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    .line 307
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->isFinishedScreenTuredOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    const-string v0, "FingerprintController"

    const-string v1, "don\'t deal with event if screen does not turne on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    const-string v0, "FingerprintController"

    const-string v1, "not allow unlock with fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "com.android.systemui:onAcquired"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 320
    return-void

    .line 324
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.oneplus.aod.doze.pulse"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 332
    :cond_3
    :goto_0
    invoke-direct {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->setFingerprintState(ZI)V

    .line 333
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintUnlockStart()V

    .line 334
    return-void

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_6

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 344
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "wake-and-unlock wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 346
    const-string v0, "acquiring wake-and-unlock"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 348
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 350
    const-string v0, "FingerprintController"

    const-string v1, "fingerprint acquired, grabbing fp wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 355
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 356
    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 3

    .line 641
    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintAuthFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isFingerprintAuthenticating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->isFinishedScreenTuredOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v0, "lock_unlock_failed"

    const-string v1, "finger"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintUnlockCancel(I)V

    .line 651
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    .line 652
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 366
    const-string v0, "FingerprintUnlockController#onFingerprintAuthenticated"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->setFingerprintState(ZI)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iput p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 374
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 375
    return-void

    .line 377
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->calculateMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->startWakeAndUnlock(I)V

    .line 378
    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .line 657
    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintUnlockCancel(I)V

    .line 661
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    .line 662
    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .line 748
    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintHelp: msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", helpString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 750
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintUnlockCancel(I)V

    .line 752
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    .line 753
    return-void
.end method

.method public onFingerprintTimeout()V
    .locals 1

    .line 757
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintUnlockCancel(I)V

    .line 758
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    .line 759
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .line 568
    const-string v0, "FingerprintUnlockController#onFinishedGoingToSleep"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 569
    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 579
    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 580
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 581
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .line 763
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-nez v0, :cond_0

    return-void

    .line 765
    :cond_0
    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsFingerprintAuthenticating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsFingerprintAuthenticating:Z

    if-eqz v0, :cond_1

    .line 768
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->changePanelVisibilityByAlpha(IZ)V

    goto :goto_0

    .line 771
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->changePanelVisibilityByAlpha(IZ)V

    .line 774
    :goto_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .line 556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    .line 557
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .line 562
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->resetMode()V

    .line 563
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    .line 564
    return-void
.end method

.method public resetMode()V
    .locals 2

    .line 689
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    .line 690
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    .line 691
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    .line 697
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->changePanelVisibilityByAlpha(IZ)V

    .line 699
    return-void
.end method

.method public resetSpeedUpPolicy()V
    .locals 1

    .line 815
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mApplySpeedUpPolicy:Z

    .line 816
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p1, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 171
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 172
    return-void
.end method

.method public shouldApplySpeedUpPolicy()Z
    .locals 2

    .line 797
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper(Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public startKeyguardFadingAway()V
    .locals 4

    .line 674
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$3;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    const-wide/16 v2, 0x60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 680
    return-void
.end method

.method public startWakeAndUnlock(I)V
    .locals 9
    .param p1, "mode"    # I

    .line 416
    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWakeAndUnlock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 418
    .local v0, "wasDeviceInteractive":Z
    iput p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    .line 419
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHasScreenTurnedOnSinceAuthenticating:Z

    .line 420
    iget v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->pulsingOrAod()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    .line 429
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper(Z)Z

    move-result v2

    xor-int/2addr v2, v4

    .line 430
    .local v2, "hasLockWallpaper":Z
    const-string v5, "FingerprintController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "has wallpaper="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-nez v0, :cond_2

    .line 435
    const-string v5, "FingerprintController"

    const-string v6, "fp wakelock: Authenticated, waking up..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v5, "android.policy:FINGERPRINT"

    .line 439
    .local v5, "wakeUpReason":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    const-string v7, ""

    goto :goto_0

    :cond_1
    const-string v7, "_WALLPAPER"

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 440
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8, v5}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 443
    .end local v5    # "wakeUpReason":Ljava/lang/String;
    :cond_2
    const-string v5, "release wake-and-unlock"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 444
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    .line 446
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    .line 449
    const-string v5, "FingerprintController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFingerprintAuthenticated: mMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget v5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-eq v5, v3, :cond_3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-eq v5, v4, :cond_3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v7, 0x7

    if-ne v5, v7, :cond_4

    .line 452
    :cond_3
    const-string v5, "lock_unlock_success"

    const-string v7, "finger"

    const-string v8, "1"

    invoke-static {v5, v7, v8}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 457
    iget v5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 459
    :pswitch_1
    const-string v3, "MODE_DISMISS"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 460
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 462
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 463
    goto/16 :goto_3

    .line 466
    :pswitch_2
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->shouldApplySpeedUpPolicy()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking(Z)V

    .line 468
    goto/16 :goto_3

    .line 472
    :cond_5
    :pswitch_3
    const-string v1, "MODE_UNLOCK or MODE_SHOW_BOUNCER"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 473
    if-nez v0, :cond_6

    .line 474
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 475
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingShowBouncer:Z

    goto :goto_1

    .line 478
    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-ne v1, v6, :cond_7

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 479
    const-string v1, "FingerprintController"

    const-string v3, "MODE_UNLOCK, and keyguard is occluded. Direct unlock without animation."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    goto :goto_1

    .line 483
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->showBouncer()V

    .line 486
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 487
    goto :goto_3

    .line 492
    :pswitch_4
    iget v5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-ne v5, v3, :cond_8

    .line 493
    const-string v3, "MODE_WAKE_AND_UNLOCK_PULSING"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 494
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    goto :goto_2

    .line 496
    :cond_8
    iget v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-ne v3, v4, :cond_9

    .line 497
    const-string v3, "MODE_WAKE_AND_UNLOCK"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_2

    .line 499
    :cond_9
    const-string v3, "MODE_WAKE_AND_UNLOCK_FROM_DREAM"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 500
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->awakenFromDream()V

    .line 503
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 505
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->shouldApplySpeedUpPolicy()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking(Z)V

    .line 507
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 508
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 510
    :cond_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 511
    nop

    .line 516
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    .line 517
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 518
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public startWakeAndUnlockForFace(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 383
    .local v0, "wasDeviceInteractive":Z
    const-string v1, "FingerprintController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startWakeAndUnlockForFace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 386
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 387
    goto :goto_0

    .line 389
    :pswitch_1
    if-nez v0, :cond_0

    .line 390
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    .line 391
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingShowBouncer:Z

    goto :goto_0

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->showBouncer()V

    .line 395
    goto :goto_0

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 400
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isLauncherOnTop()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking(Z)V

    .line 404
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 405
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    .line 407
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 410
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    .line 411
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
