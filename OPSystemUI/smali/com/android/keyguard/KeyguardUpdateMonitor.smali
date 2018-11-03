.class public Lcom/android/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;
    }
.end annotation


# static fields
.field public static final CORE_APPS_ONLY:Z

.field private static final FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

.field public static final IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

.field public static final IS_SUPPORT_FACE_UNLOCK:Z

.field private static final IS_SUPPORT_FINGERPRINT_POCKET:Z

.field private static sCurrentUser:I

.field private static sDisableHandlerCheckForTesting:Z

.field private static sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;


# instance fields
.field private mAssistantVisible:Z

.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mAutoFacelockEnabled:Z

.field private mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

.field private mBootCompleted:Z

.field private mBouncer:Z

.field private final mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

.field protected final mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClockCtrl:Lcom/android/keyguard/plugin/ClockCtrl;

.field private final mContext:Landroid/content/Context;

.field private mDeviceInteractive:Z

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mDuringAcquired:Z

.field private mFacelockEnabled:Z

.field private mFacelockLightingEnabled:Z

.field private mFacelockRunningType:I

.field private mFacelockSettingsObserver:Landroid/database/ContentObserver;

.field private mFacelockUnlocking:Z

.field private mFailedAttempts:Landroid/util/SparseIntArray;

.field private mFakeLocking:Z

.field private mFingerprintAlreadyAuthenticated:Z

.field private mFingerprintCancelSignal:Landroid/os/CancellationSignal;

.field private final mFingerprintClientActiveCallback:Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

.field private mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

.field private mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

.field private mFingerprintRunningState:I

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGoingToSleep:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareUnavailableRetryCount:I

.field private mHasLockscreenWallpaper:Z

.field private mImeShow:Z

.field private mIsDreaming:Z

.field private mIsFaceAdded:Z

.field private mIsKeyguardDone:Z

.field private mIsUserUnlocked:Z

.field private mKeyguardGoingAway:Z

.field private mKeyguardIsVisible:Z

.field private mKeyguardOccluded:Z

.field private mLaunchingCamera:Z

.field private mLidOpen:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field private mLockoutState:Z

.field private mLogoutEnabled:Z

.field private mNeedsSlowUnlockTransition:Z

.field private mPendingSubInfoChange:Z

.field private mPhoneState:I

.field mPocketListener:Landroid/hardware/SensorEventListener;

.field private mPocketSensor:Landroid/hardware/Sensor;

.field private mPocketSensorEnabled:Z

.field private mPocketState:I

.field private mPreventModeActive:Z

.field private mQSExpanded:Z

.field private mRetryFingerprintAuthentication:Ljava/lang/Runnable;

.field private mRingMode:I

.field private mScreenOn:Z

.field private mScreenTurningOn:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mServiceStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mShutingDown:Z

.field mSimDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;",
            ">;"
        }
    .end annotation
.end field

.field private mSimUnlockSlot0:Z

.field private mSimUnlockSlot1:Z

.field private mSkipBouncerByFacelock:Z

.field private final mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

.field private mSubscriptionInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitchingUser:Z

.field private final mTaskStackListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

.field private mTimeTickListener:Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mUpdateFingerprintListeningState:Ljava/lang/Runnable;

.field private mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

.field private mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

.field private mUserHasTrust:Landroid/util/SparseBooleanArray;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserTrustIsManaged:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 227
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.FallbackHome"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

    .line 238
    :try_start_0
    const-string v0, "package"

    .line 239
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 238
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->CORE_APPS_ONLY:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    nop

    .line 317
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x27

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

    .line 350
    new-array v1, v0, [I

    const/16 v2, 0x26

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->IS_SUPPORT_FACE_UNLOCK:Z

    .line 381
    new-array v0, v0, [I

    const/16 v1, 0x49

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    .line 194
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 195
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLidOpen:Z

    .line 248
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    .line 249
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    .line 270
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 274
    nop

    .line 275
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 286
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 294
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mImeShow:Z

    .line 297
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mQSExpanded:Z

    .line 300
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 311
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    .line 316
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsUserUnlocked:Z

    .line 323
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutState:Z

    .line 326
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsKeyguardDone:Z

    .line 331
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    .line 337
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketState:I

    .line 346
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDuringAcquired:Z

    .line 352
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 353
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceAdded:Z

    .line 354
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockEnabled:Z

    .line 355
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    .line 357
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    .line 358
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    .line 385
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShutingDown:Z

    .line 402
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 562
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 570
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 571
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    .line 572
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    .line 573
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    .line 576
    new-instance v2, Lcom/android/keyguard/-$$Lambda$rWebVh3ytZ0BAihax8ie2HflMp0;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$$Lambda$rWebVh3ytZ0BAihax8ie2HflMp0;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateFingerprintListeningState:Ljava/lang/Runnable;

    .line 866
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    .line 1118
    invoke-static {}, Lcom/android/keyguard/plugin/ClockCtrl;->getInstance()Lcom/android/keyguard/plugin/ClockCtrl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockCtrl:Lcom/android/keyguard/plugin/ClockCtrl;

    .line 1119
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeTickListener:Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;

    .line 1168
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    invoke-direct {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    .line 1170
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1266
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$7;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$7;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    .line 1298
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$8;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .line 1306
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$9;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$9;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 1629
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$10;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$10;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    .line 2464
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$13;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$13;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintClientActiveCallback:Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    .line 2813
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$15;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTaskStackListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

    .line 3637
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreventModeActive:Z

    .line 1828
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 1829
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1830
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 1831
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 1835
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v0, :cond_0

    .line 1836
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    .line 1840
    :cond_0
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->IS_SUPPORT_FACE_UNLOCK:Z

    if-eqz v0, :cond_1

    .line 1841
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForFacelockSettings()V

    .line 1847
    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    const/4 v3, 0x1

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 1851
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1858
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1859
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1860
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1861
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1862
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1863
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1864
    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1865
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1866
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1867
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1869
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1870
    .local v2, "bootCompleteFilter":Landroid/content/IntentFilter;
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1871
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1872
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1874
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1876
    .local v3, "allUserFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1878
    const-string v4, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1879
    const-string v4, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1880
    const-string v4, "com.android.facelock.FACE_UNLOCK_STARTED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1881
    const-string v4, "com.android.facelock.FACE_UNLOCK_STOPPED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1882
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1883
    const-string v4, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1884
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    move-object v4, p1

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1887
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1889
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$11;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    const-string v6, "KeyguardUpdateMonitor"

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1904
    goto :goto_0

    .line 1902
    :catch_0
    move-exception v4

    .line 1903
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1906
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    const-string/jumbo v4, "trust"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/trust/TrustManager;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 1907
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v4, p0}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    .line 1908
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1909
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 1912
    new-instance v4, Landroid/hardware/SystemSensorManager;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1913
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    const v5, 0x1fa2651

    invoke-virtual {v4, v5, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    .line 1916
    const-string v1, "dreams"

    .line 1917
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1916
    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 1919
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.hardware.fingerprint"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1920
    const-string v1, "fingerprint"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 1922
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1923
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_3

    .line 1924
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-virtual {v1, v4}, Landroid/hardware/fingerprint/FingerprintManager;->addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    .line 1927
    :cond_3
    const-string v1, "fingerprint"

    .line 1928
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v1

    .line 1929
    .local v1, "ifp":Landroid/hardware/fingerprint/IFingerprintService;
    if-eqz v1, :cond_4

    .line 1931
    :try_start_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintClientActiveCallback:Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v1, v4}, Landroid/hardware/fingerprint/IFingerprintService;->addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1934
    goto :goto_1

    .line 1932
    :catch_1
    move-exception v4

    .line 1933
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v5, "KeyguardUpdateMonitor"

    const-string v6, "addClientActiveCallback: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1938
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTaskStackListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 1939
    const-class v4, Landroid/os/UserManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    .line 1940
    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1941
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    .line 1944
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startClockCtrl()V

    .line 1946
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardBouncerChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserInfoChanged(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceUnlockStateChanged(ZI)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .line 129
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePendingSubInfoChange(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;IILandroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/telephony/ServiceState;

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleServiceStateChange(IILandroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDreamingStateChanged(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserUnlocked()V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .line 129
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleLocaleChanged()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateLogoutEnabled()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDuringAcquired:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .line 129
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDuringAcquired:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleLidSwitchChanged(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePreventModeChanged(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintLockoutReset()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthFailed()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutState:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAcquired(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyStrongAuthStateChanged(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketState:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLidOpen:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/keyguard/KeyguardUpdateMonitor;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFPStateBySensor(IZ)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .line 129
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFacelockState()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFacelockSettings()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockEnabled:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # Z

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFacelockTrustState(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardUpdateMonitor;ILandroid/os/IRemoteCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IRemoteCallback;

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitching(ILandroid/os/IRemoteCallback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p1, "x1"    # I

    .line 129
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitchComplete(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 129
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardReset()V

    return-void
.end method

.method private checkIsHandlerThread()V
    .locals 3

    .line 3010
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sDisableHandlerCheckForTesting:Z

    if-eqz v0, :cond_0

    .line 3011
    return-void

    .line 3013
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3014
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "must call on mHandler\'s thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 3015
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3014
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    :cond_1
    return-void
.end method

.method private clearFailedFacelockAttempts()V
    .locals 3

    .line 3301
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3302
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 3303
    .local v2, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v2, :cond_0

    .line 3304
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClearFailedFacelockAttempts()V

    .line 3301
    .end local v2    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3307
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 3308
    return-void
.end method

.method private clearFingerprintFailedUnlockAttempts()V
    .locals 2

    .line 2767
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2768
    return-void
.end method

.method public static disableHandlerCheckForTesting(Landroid/app/Instrumentation;)V
    .locals 1
    .param p0, "instrumentation"    # Landroid/app/Instrumentation;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3032
    const-string v0, "Must only call this method in tests!"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3036
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sDisableHandlerCheckForTesting:Z

    .line 3037
    return-void
.end method

.method private dispatchErrorMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 1152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1153
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1154
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 1155
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V

    .line 1152
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1158
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private getAuthenticatedPackage()Ljava/lang/String;
    .locals 1

    .line 3550
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatedPackage()Ljava/lang/String;

    move-result-object v0

    .line 3551
    .local v0, "pkg":Ljava/lang/String;
    return-object v0
.end method

.method public static declared-synchronized getCurrentUser()I
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 584
    :try_start_0
    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1557
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v0, :cond_0

    .line 1558
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1560
    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sInstance:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private handleAirplaneModeChanged()V
    .locals 2

    .line 651
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 652
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 653
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 651
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    .end local v0    # "j":I
    :cond_1
    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 2370
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 2371
    .local v0, "batteryUpdateInteresting":Z
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 2372
    if-eqz v0, :cond_1

    .line 2373
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2374
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2375
    .local v2, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v2, :cond_0

    .line 2376
    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 2373
    .end local v2    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2380
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private handleBootCompleted()V
    .locals 2

    .line 2262
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    if-eqz v0, :cond_0

    return-void

    .line 2263
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    .line 2264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2265
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2266
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_1

    .line 2267
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBootCompleted()V

    .line 2264
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2270
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private handleDevicePolicyManagerStateChanged()V
    .locals 2

    .line 2199
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2200
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2201
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2202
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 2203
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    .line 2200
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2208
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2209
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2210
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFacelockState()V

    .line 2213
    :cond_3
    return-void
.end method

.method private handleDeviceProvisioned()V
    .locals 2

    .line 2301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2302
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2303
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 2304
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    .line 2301
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2307
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 2309
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 2312
    :cond_2
    return-void
.end method

.method private handleDreamingStateChanged(I)V
    .locals 4
    .param p1, "dreamStart"    # I

    .line 1796
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1797
    .local v0, "count":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 1798
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1799
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1800
    .local v2, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v2, :cond_1

    .line 1801
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    .line 1798
    .end local v2    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1804
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1805
    return-void
.end method

.method private handleFaceUnlockStateChanged(ZI)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .line 1017
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 1018
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1019
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1020
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1021
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 1022
    invoke-virtual {v1, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceUnlockStateChanged(ZI)V

    .line 1019
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1025
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private handleFingerprintAcquired(I)V
    .locals 4
    .param p1, "acquireInfo"    # I

    .line 798
    if-eqz p1, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 802
    return-void

    .line 805
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDuringAcquired:Z

    .line 806
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0xbb8

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x5dc

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 810
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 811
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 812
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_2

    .line 814
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAcquired(I)V

    .line 810
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 818
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private handleFingerprintAuthFailed()V
    .locals 3

    .line 784
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 785
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fp Auth Failed, failed attempts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 789
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 790
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 791
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthFailed()V

    .line 788
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 794
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const v2, 0x7f110280

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    .line 795
    return-void
.end method

.method private handleFingerprintAuthenticated(I)V
    .locals 5
    .param p1, "authUserId"    # I

    .line 821
    const-string v0, "KeyGuardUpdateMonitor#handlerFingerPrintAuthenticated"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 825
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 836
    .local v1, "userId":I
    if-eq v1, p1, :cond_0

    .line 837
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fingerprint authenticated for wrong user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthFailed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 841
    return-void

    .line 843
    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 844
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fingerprint disabled by DPM for userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 848
    return-void

    .line 850
    :cond_1
    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFingerprintAuthenticated(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 852
    .end local v1    # "userId":I
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 853
    nop

    .line 854
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 855
    return-void

    .line 852
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    throw v1
.end method

.method private handleFingerprintError(ILjava/lang/String;)V
    .locals 8
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .line 897
    const/16 v0, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq p1, v2, :cond_0

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p1, v0, :cond_3

    .line 898
    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutState:Z

    .line 900
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 901
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    if-eqz v2, :cond_1

    .line 902
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 906
    :cond_1
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 907
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isDialogShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 908
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->showFPDialogWhenNoWindow()V

    .line 916
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAuthenticatedPackage()Ljava/lang/String;

    move-result-object v2

    .line 919
    .local v2, "authClient":Ljava/lang/String;
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle fp Error: msgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", errString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", lockout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", auth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne p1, v3, :cond_4

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v3, v4, :cond_4

    .line 923
    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 924
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFingerprint()V

    goto :goto_0

    .line 928
    :cond_4
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne v3, v1, :cond_5

    const-string v3, "com.android.systemui"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutState:Z

    if-nez v3, :cond_5

    .line 930
    const-string v3, "KeyguardUpdateMonitor"

    const-string v6, "not handle error when authenticated"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 932
    :cond_5
    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 937
    :goto_0
    if-ne p1, v1, :cond_6

    .line 938
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    if-ge v3, v4, :cond_6

    .line 939
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    .line 940
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 941
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 945
    :cond_6
    if-ne p1, v0, :cond_7

    .line 946
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v1, 0x8

    .line 948
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 946
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 951
    :cond_7
    nop

    .local v5, "i":I
    :goto_1
    move v0, v5

    .end local v5    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 952
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 953
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_8

    .line 954
    invoke-virtual {v1, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintError(ILjava/lang/String;)V

    .line 951
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_8
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 957
    .end local v5    # "i":I
    :cond_9
    return-void
.end method

.method private handleFingerprintHelp(ILjava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .line 858
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 859
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 860
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {v1, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintHelp(ILjava/lang/String;)V

    .line 858
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 864
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private handleFingerprintLockoutReset()V
    .locals 4

    .line 976
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutState:Z

    const/16 v1, 0x150

    if-nez v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 985
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutState:Z

    .line 988
    return-void
.end method

.method private handleFingerprintTimeout()V
    .locals 2

    .line 961
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleFingerprintTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 964
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 965
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 966
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintTimeout()V

    .line 963
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 969
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private handleKeyguardBouncerChanged(I)V
    .locals 3
    .param p1, "bouncer"    # I

    .line 2546
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKeyguardBouncerChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2548
    .local v1, "isBouncer":Z
    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    .line 2549
    nop

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2550
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2551
    .local v2, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v2, :cond_1

    .line 2552
    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    .line 2549
    .end local v2    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2555
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2556
    return-void
.end method

.method private handleKeyguardReset()V
    .locals 2

    .line 2515
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleKeyguardReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2517
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 2520
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFacelockState()V

    .line 2522
    return-void
.end method

.method private handleLidSwitchChanged(Z)V
    .locals 1
    .param p1, "lidOpen"    # Z

    .line 3463
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLidOpen:Z

    if-eq p1, v0, :cond_0

    .line 3464
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketState:I

    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFPStateBySensor(IZ)V

    .line 3466
    :cond_0
    return-void
.end method

.method private handleLocaleChanged()V
    .locals 2

    .line 2103
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2104
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2105
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 2106
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 2103
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2109
    .end local v0    # "j":I
    :cond_1
    return-void
.end method

.method private handlePendingSubInfoChange(I)V
    .locals 3
    .param p1, "slotId"    # I

    .line 3148
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3149
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    goto :goto_0

    .line 3150
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3151
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 3153
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    if-nez v1, :cond_3

    .line 3154
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    if-eqz v1, :cond_2

    .line 3155
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "handle pending subinfo change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    .line 3158
    :cond_2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    .line 3160
    :cond_3
    return-void
.end method

.method private handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "newState"    # Ljava/lang/String;

    .line 2318
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePhoneStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2320
    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 2321
    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2322
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 2323
    :cond_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2324
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 2326
    :cond_2
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2327
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2328
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_3

    .line 2329
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 2326
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_1

    .line 2332
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private handlePreventModeChanged(Z)V
    .locals 2
    .param p1, "prevent"    # Z

    .line 3487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3488
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 3489
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 3490
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPreventModeChanged(Z)V

    .line 3487
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3495
    .end local v0    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mQSExpanded:Z

    if-eqz v0, :cond_2

    .line 3496
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 3499
    :cond_2
    return-void
.end method

.method private handleReportEmergencyCallAction()V
    .locals 2

    .line 2562
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2563
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2564
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 2565
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onEmergencyCallAction()V

    .line 2562
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2568
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private handleRingerModeChange(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 2341
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    .line 2342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2343
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2344
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 2345
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 2342
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2348
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private handleScreenTurnedOff()V
    .locals 4

    .line 1766
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareUnavailableRetryCount:I

    .line 1767
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1768
    .local v1, "count":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1769
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1770
    .local v3, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v3, :cond_0

    .line 1771
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    .line 1768
    .end local v3    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1777
    .end local v2    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1778
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    goto :goto_1

    .line 1780
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    .line 1785
    :goto_1
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1786
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1791
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    .line 1793
    return-void
.end method

.method private handleScreenTurnedOn()V
    .locals 4

    .line 1738
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1739
    .local v0, "count":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1740
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1741
    .local v3, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v3, :cond_0

    .line 1742
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    .line 1739
    .end local v3    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1747
    .end local v2    # "i":I
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1748
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    goto :goto_1

    .line 1749
    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v1, :cond_3

    .line 1750
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    .line 1755
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v1, :cond_4

    .line 1756
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1761
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    .line 1763
    return-void
.end method

.method private handleServiceStateChange(IILandroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "phoneId"    # I
    .param p3, "serviceState"    # Landroid/telephony/ServiceState;

    .line 2425
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleServiceStateChange(subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", serviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2431
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "invalid subId in handleServiceStateChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    return-void

    .line 2435
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2436
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "invalid phoneId in handleServiceStateChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    return-void

    .line 2440
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2442
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2443
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2444
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_2

    .line 2445
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 2446
    invoke-virtual {v1, p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onServiceStateChanged(ILandroid/telephony/ServiceState;)V

    .line 2442
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2449
    .end local v0    # "j":I
    :cond_3
    return-void
.end method

.method private handleSimSubscriptionInfoChanged()V
    .locals 10

    .line 609
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    .line 610
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "onSubscriptionInfoChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 612
    .local v0, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_0

    .line 613
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 614
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SubInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    goto :goto_0

    .line 617
    :cond_0
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "onSubscriptionInfoChanged: list is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .end local v0    # "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v0

    .line 625
    .local v0, "subscriptionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v1, "changedSubscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 627
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 628
    .local v4, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->refreshSimState(II)Z

    move-result v5

    .line 629
    .local v5, "changed":Z
    if-eqz v5, :cond_2

    .line 630
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    .end local v4    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "changed":Z
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 633
    .end local v3    # "i":I
    :cond_3
    move v3, v2

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 634
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 635
    .local v4, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    move v5, v2

    .local v5, "j":I
    :goto_3
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 636
    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 637
    .local v6, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v6, :cond_4

    .line 638
    iget v7, v4, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v8, v4, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v9, v4, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 635
    .end local v6    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 633
    .end local v4    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    .end local v5    # "j":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 642
    .end local v3    # "i":I
    :cond_6
    nop

    .local v2, "j":I
    :goto_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 643
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 644
    .local v3, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v3, :cond_7

    .line 645
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 642
    .end local v3    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 648
    .end local v2    # "j":I
    :cond_8
    return-void
.end method

.method private handleTimeUpdate()V
    .locals 2

    .line 2354
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleTimeUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2356
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2357
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 2358
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 2355
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2361
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private handleUserInfoChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1808
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1809
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1810
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 1811
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    .line 1808
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1814
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private handleUserSwitchComplete(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2236
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUserSwitchComplete, user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setUserUnlocked(Z)V

    .line 2240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2241
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2242
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 2243
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 2240
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2246
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private handleUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .line 2219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2220
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2221
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 2222
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 2219
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2226
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2228
    goto :goto_1

    .line 2227
    :catch_0
    move-exception v0

    .line 2229
    :goto_1
    return-void
.end method

.method private handleUserUnlocked()V
    .locals 2

    .line 1817
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 1818
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1819
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1820
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 1821
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserUnlocked()V

    .line 1818
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1824
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private isBatteryUpdateInteresting(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 7
    .param p1, "old"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;
    .param p2, "current"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .line 2571
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v0

    .line 2572
    .local v0, "nowPluggedIn":Z
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->isPluggedIn()Z

    move-result v1

    .line 2573
    .local v1, "wasPluggedIn":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    iget v5, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    if-eq v4, v5, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 2577
    .local v4, "stateChangedWhilePluggedIn":Z
    :goto_0
    if-ne v1, v0, :cond_5

    if-eqz v4, :cond_1

    goto :goto_1

    .line 2582
    :cond_1
    iget v5, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget v6, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    if-eq v5, v6, :cond_2

    .line 2583
    return v3

    .line 2587
    :cond_2
    if-eqz v0, :cond_3

    iget v5, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    if-eq v5, v6, :cond_3

    .line 2588
    return v3

    .line 2592
    :cond_3
    if-eqz v0, :cond_4

    iget v5, p2, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->fastCharge:I

    iget v6, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->fastCharge:I

    if-eq v5, v6, :cond_4

    .line 2593
    return v3

    .line 2597
    :cond_4
    return v2

    .line 2578
    :cond_5
    :goto_1
    return v3
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 3

    .line 2138
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 3441
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3442
    return v0

    .line 3445
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 3446
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 3447
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0
.end method

.method private isSensorNear(IZ)Z
    .locals 1
    .param p1, "pocketState"    # I
    .param p2, "lidOpen"    # Z

    .line 1679
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1682
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1680
    :cond_1
    :goto_0
    return v0
.end method

.method public static isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2892
    move-object v0, p0

    .line 2893
    .local v0, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

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

.method private isTrustDisabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1055
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    .line 1056
    .local v0, "disabledBySimPin":Z
    return v0
.end method

.method private notifyFingerprintRunningStateChanged()V
    .locals 3

    .line 1008
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 1009
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1010
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1011
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 1012
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintRunningStateChanged(Z)V

    .line 1009
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private notifyStrongAuthStateChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1108
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 1109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1110
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1111
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 1112
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    .line 1109
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1115
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private onFingerprintAuthenticated(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 745
    const-string v0, "KeyGuardUpdateMonitor#onFingerPrintAuthenticated"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 748
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->unlockedByFingerprintForUser(I)V

    .line 752
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 755
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    .line 760
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->notifyFingerprintAuthenticated()V

    .line 765
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 766
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 767
    .local v2, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v2, :cond_2

    .line 768
    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFingerprintAuthenticated(I)V

    .line 765
    .end local v2    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 772
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x150

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 776
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    .line 778
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 779
    return-void
.end method

.method private onScreenStatusChanged(Z)V
    .locals 1
    .param p1, "screenON"    # Z

    .line 1137
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockCtrl:Lcom/android/keyguard/plugin/ClockCtrl;

    if-eqz v0, :cond_1

    .line 1138
    if-eqz p1, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockCtrl:Lcom/android/keyguard/plugin/ClockCtrl;

    invoke-virtual {v0}, Lcom/android/keyguard/plugin/ClockCtrl;->onScreenTurnedOn()V

    goto :goto_0

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockCtrl:Lcom/android/keyguard/plugin/ClockCtrl;

    invoke-virtual {v0}, Lcom/android/keyguard/plugin/ClockCtrl;->onScreenTurnedOff()V

    .line 1144
    :cond_1
    :goto_0
    return-void
.end method

.method private refreshSimState(II)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .line 2869
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 2870
    .local v0, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 2873
    .local v1, "simState":I
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2877
    .local v2, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 2874
    .end local v2    # "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :catch_0
    move-exception v2

    .line 2875
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown sim state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2878
    .local v2, "state":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 2880
    .local v3, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    if-nez v3, :cond_0

    .line 2881
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v4, v2, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    move-object v3, v4

    .line 2882
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2883
    const/4 v4, 0x1

    .local v4, "changed":Z
    goto :goto_2

    .line 2885
    .end local v4    # "changed":Z
    :cond_0
    iget-object v4, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 2886
    .restart local v4    # "changed":Z
    :goto_1
    iput-object v2, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2888
    :goto_2
    return v4
.end method

.method private resolveNeedsSlowUnlockTransition()Z
    .locals 5

    .line 2527
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    .line 2528
    .local v0, "isUnlocked":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setUserUnlocked(Z)V

    .line 2530
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2532
    return v1

    .line 2534
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 2535
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2536
    .local v2, "homeIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2538
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2658
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    .line 2659
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 2660
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 2661
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 2662
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 2663
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 2664
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    .line 2665
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2666
    .local v1, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 2667
    .local v2, "state":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    iget v3, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v4, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget-object v5, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 2668
    .end local v1    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;>;"
    .end local v2    # "state":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    goto :goto_0

    .line 2669
    :cond_0
    return-void
.end method

.method public static declared-synchronized setCurrentUser(I)V
    .locals 1
    .param p0, "currentUser"    # I

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 580
    :try_start_0
    sput p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    monitor-exit v0

    return-void

    .line 579
    .end local p0    # "currentUser":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setFingerprintRunningState(I)V
    .locals 5
    .param p1, "fingerprintRunningState"    # I

    .line 991
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 992
    .local v0, "wasRunning":Z
    :goto_0
    if-ne p1, v2, :cond_1

    move v1, v2

    nop

    .line 994
    .local v1, "isRunning":Z
    :cond_1
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-eq v2, p1, :cond_2

    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change fp running state to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_2
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 1002
    if-eq v0, v1, :cond_3

    .line 1003
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFingerprintRunningStateChanged()V

    .line 1005
    :cond_3
    return-void
.end method

.method private setPocketSensorEnabled(Z)V
    .locals 7
    .param p1, "register"    # Z

    .line 1688
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1689
    return-void

    .line 1691
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLidOpen:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 1692
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "not register when Lid closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    return-void

    .line 1696
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1699
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1701
    .local v1, "isFPEnabled":Z
    :goto_0
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "listen pocket-sensor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", current="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", FP enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 1704
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    if-nez v2, :cond_7

    .line 1705
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    .line 1706
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    .line 1710
    :cond_3
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    if-eqz v4, :cond_6

    .line 1711
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    .line 1712
    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketState:I

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLidOpen:Z

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1713
    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketState:I

    .line 1716
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLidOpen:Z

    .line 1718
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1720
    :cond_4
    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketState:I

    .line 1722
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLidOpen:Z

    .line 1725
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->updateStatus(I)I

    .line 1727
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1

    .line 1730
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleLidSwitchChanged(Z)V

    .line 1734
    :cond_7
    :goto_1
    return-void
.end method

.method private shouldListenForFingerprint()Z
    .locals 8

    .line 1987
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1989
    .local v0, "screenOff":Z
    :goto_0
    const/4 v3, 0x0

    .line 1990
    .local v3, "disableByQSExpanded":Z
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreventModeActive:Z

    if-nez v4, :cond_1

    .line 1991
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mQSExpanded:Z

    .line 1994
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v4

    .line 1996
    .local v4, "allow":Z
    const-string v5, "KeyguardUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldListen: visible= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", interactive= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", bouncer= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", goingToSleep= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", assist="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", occluded="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", dream="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", switchingUser= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", alreadyAuthenticated= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", away= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", disabled= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2006
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", camera= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLaunchingCamera:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", pocket= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", lidOpen= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLidOpen:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", imeShow= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mImeShow:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", prevent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 2011
    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", prevent Active:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreventModeActive:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", facelock type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isKeyguardDone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsKeyguardDone:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", fakeLocking:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFakeLocking:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", screenOff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", mScreenOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", allow:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", screenTurningOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenTurningOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", qsExpanded:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mQSExpanded:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", shutingDown:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShutingDown:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isInBrickMode= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lcom/oneplus/scene/OPSceneModeObserver;

    .line 2022
    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-virtual {v7}, Lcom/oneplus/scene/OPSceneModeObserver;->isInBrickMode()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1996
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-eqz v5, :cond_3

    .line 2026
    :cond_2
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLaunchingCamera:Z

    .line 2029
    :cond_3
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v5

    .line 2031
    .local v5, "cfp":Z
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-eqz v6, :cond_5

    :cond_4
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v6, :cond_5

    .line 2033
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprintAssistant()Z

    move-result v6

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v6, :cond_f

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v6, :cond_f

    :cond_5
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v6, :cond_f

    .line 2034
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v6

    if-nez v6, :cond_f

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    if-nez v6, :cond_f

    iget v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketState:I

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLidOpen:Z

    .line 2038
    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_f

    :cond_6
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mImeShow:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v6, :cond_f

    :cond_7
    if-eqz v5, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenTurningOn:Z

    if-eqz v6, :cond_f

    :cond_8
    if-eqz v5, :cond_9

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShutingDown:Z

    if-nez v6, :cond_f

    :cond_9
    if-eqz v5, :cond_a

    iget v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_f

    :cond_a
    if-eqz v5, :cond_b

    if-nez v3, :cond_f

    :cond_b
    if-eqz v5, :cond_c

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v6, :cond_c

    if-eqz v4, :cond_f

    :cond_c
    if-eqz v5, :cond_d

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-eqz v6, :cond_d

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFakeLocking:Z

    if-eqz v6, :cond_f

    :cond_d
    if-eqz v5, :cond_e

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockUnlocking:Z

    if-nez v6, :cond_f

    :cond_e
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLaunchingCamera:Z

    if-nez v6, :cond_f

    const-class v6, Lcom/oneplus/scene/OPSceneModeObserver;

    .line 2060
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-virtual {v6}, Lcom/oneplus/scene/OPSceneModeObserver;->isInBrickMode()Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_1

    .line 2031
    :cond_f
    move v1, v2

    :goto_1
    return v1
.end method

.method private shouldListenForFingerprintAssistant()Z
    .locals 3

    .line 1980
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    .line 1981
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 1982
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 1980
    :cond_0
    return v1
.end method

.method private showFPDialogWhenNoWindow()V
    .locals 3

    .line 877
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 881
    :cond_0
    :try_start_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "showFPDialogWhenNoWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 884
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "key_fingerprint_package_name"

    const-string v2, "forceShow-keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    if-eqz v1, :cond_1

    .line 886
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintDialog(Landroid/os/Bundle;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    goto :goto_0

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private startClockCtrl()V
    .locals 3

    .line 1131
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockCtrl:Lcom/android/keyguard/plugin/ClockCtrl;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mClockCtrl:Lcom/android/keyguard/plugin/ClockCtrl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeTickListener:Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/plugin/ClockCtrl;->onStartCtrl(Lcom/android/keyguard/plugin/ClockCtrl$OnTimeUpdatedListener;Landroid/content/Context;)V

    .line 1134
    :cond_0
    return-void
.end method

.method private startListeningForFingerprint()V
    .locals 8

    .line 2080
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2081
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 2082
    return-void

    .line 2085
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 2087
    .local v0, "userId":I
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startListeningForFingerprint , enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2089
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_1

    .line 2090
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    .line 2092
    :cond_1
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 2093
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v6, 0x0

    move v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 2095
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 2097
    :cond_2
    return-void
.end method

.method private stopListeningForFingerprint()V
    .locals 3

    .line 2124
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopListeningForFingerprint, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 2127
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 2128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 2130
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 2132
    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 2133
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 2135
    :cond_2
    return-void
.end method

.method private updateFPStateBySensor(IZ)V
    .locals 5
    .param p1, "pocketState"    # I
    .param p2, "lidOpen"    # Z

    .line 1655
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketState:I

    .line 1656
    .local v0, "lastPocketState":I
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLidOpen:Z

    .line 1658
    .local v1, "lasLidOpen":Z
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketState:I

    .line 1659
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLidOpen:Z

    .line 1661
    move v2, p1

    .line 1662
    .local v2, "notifyStatus":I
    if-nez p2, :cond_0

    .line 1663
    const/4 v2, 0x1

    .line 1666
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->updateStatus(I)I

    .line 1669
    :cond_1
    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1671
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    goto :goto_0

    .line 1672
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSensorNear(IZ)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1674
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1676
    :cond_3
    :goto_0
    return-void
.end method

.method private updateFacelockSettings()V
    .locals 4

    .line 3210
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockEnabled:Z

    .line 3211
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_auto_face_unlock_enable"

    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    .line 3213
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneplus_face_unlock_assistive_lighting_enable"

    invoke-static {v0, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    .line 3214
    return-void
.end method

.method private updateFacelockState()V
    .locals 2

    .line 3453
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3454
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 3455
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 3456
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardReset()V

    .line 3453
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3459
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private updateFacelockTrustState(Z)V
    .locals 3
    .param p1, "skipBouncer"    # Z

    .line 3250
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    .line 3251
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FacelockTrust,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3253
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 3254
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 3255
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    .line 3252
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3258
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private updateLogoutEnabled()V
    .locals 3

    .line 2996
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 2997
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v0

    .line 2998
    .local v0, "logoutEnabled":Z
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    if-eq v1, v0, :cond_1

    .line 2999
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    .line 3000
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3001
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 3002
    .local v2, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v2, :cond_0

    .line 3003
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onLogoutEnabledChanged()V

    .line 3000
    .end local v2    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3007
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private watchForDeviceProvisioning()V
    .locals 4

    .line 2143
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$12;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$12;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 2155
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    .line 2156
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 2155
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2161
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    .line 2162
    .local v0, "provisioned":Z
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_0

    .line 2163
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 2164
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v1, :cond_0

    .line 2165
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x134

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2168
    :cond_0
    return-void
.end method

.method private watchForFacelockSettings()V
    .locals 4

    .line 3186
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$16;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 3195
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_enable"

    .line 3196
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 3195
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3198
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_auto_face_unlock_enable"

    .line 3199
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 3198
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3202
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_assistive_lighting_enable"

    .line 3203
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockSettingsObserver:Landroid/database/ContentObserver;

    .line 3202
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 3206
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFacelockSettings()V

    .line 3207
    return-void
.end method


# virtual methods
.method public allowShowingLock()Z
    .locals 2

    .line 3429
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3430
    return v1

    .line 3432
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.camera"

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isForegroundApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3433
    return v1

    .line 3436
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public awakenFromDream()V
    .locals 3

    .line 735
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "Unable to awaken from dream"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public canSkipBouncerByFacelock()Z
    .locals 1

    .line 3382
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    return v0
.end method

.method public clearFailedUnlockAttempts()V
    .locals 2

    .line 2739
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2741
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintFailedUnlockAttempts()V

    .line 2745
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedFacelockAttempts()V

    .line 2747
    return-void
.end method

.method public clearFingerprintRecognized()V
    .locals 1

    .line 2776
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2777
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0}, Landroid/app/trust/TrustManager;->clearAllFingerprints()V

    .line 2778
    return-void
.end method

.method public dispatchAuthenticateChanged(ZIII)V
    .locals 3
    .param p1, "authenticating"    # Z
    .param p2, "type"    # I
    .param p3, "result"    # I
    .param p4, "reserved"    # I

    .line 3644
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3645
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3646
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 3647
    .local v2, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v2, :cond_0

    .line 3648
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onAuthenticateChanged(ZIII)V

    .line 3645
    .end local v2    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3651
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public dispatchBootCompleted()V
    .locals 2

    .line 2255
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2256
    return-void
.end method

.method public dispatchDreamingStarted()V
    .locals 5

    .line 2943
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14d

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2944
    return-void
.end method

.method public dispatchDreamingStopped()V
    .locals 4

    .line 2947
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/16 v3, 0x14d

    invoke-virtual {v1, v3, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2948
    return-void
.end method

.method public dispatchFinishedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    .line 2916
    monitor-enter p0

    .line 2917
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 2918
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2919
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x140

    invoke-virtual {v2, v3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2920
    return-void

    .line 2918
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchScreenTurnedOff()V
    .locals 2

    .line 2933
    monitor-enter p0

    .line 2934
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    .line 2936
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 2938
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2939
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2940
    return-void

    .line 2938
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchScreenTurnedOn()V
    .locals 2

    .line 2923
    monitor-enter p0

    .line 2924
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    .line 2926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 2928
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2929
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2930
    return-void

    .line 2928
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchStartedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    .line 2912
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x141

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2913
    return-void
.end method

.method public dispatchStartedWakingUp()V
    .locals 2

    .line 2905
    monitor-enter p0

    .line 2906
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 2907
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2908
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2909
    return-void

    .line 2907
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchSystemReady()V
    .locals 2

    .line 2283
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2284
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3040
    const-string v0, "KeyguardUpdateMonitor state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3041
    const-string v0, "  SIM States:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 3043
    .local v1, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3044
    .end local v1    # "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    goto :goto_0

    .line 3045
    :cond_0
    const-string v0, "  Subs:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3046
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3047
    move v0, v1

    .line 3047
    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3048
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3051
    .end local v0    # "i":I
    :cond_1
    const-string v0, "  Service states:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3053
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3054
    .local v2, "phoneId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3055
    .end local v2    # "phoneId":I
    goto :goto_2

    .line 3059
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 3060
    .local v0, "userId":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3062
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v2

    .line 3063
    .local v2, "strongAuthFlags":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Fingerprint state (user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3064
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    allowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    auth\'d="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    authSinceBoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3067
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3066
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3068
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    disabled(DPM)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    possible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    strongAuthFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    trustManaged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3073
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    FingerprintFailedAttempts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    mPocketSensorEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3075
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    mPocketState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3076
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    mLaunchingCamera="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLaunchingCamera:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3077
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    mDuringAcquired="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDuringAcquired:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3078
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    mLockoutState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    mFingerprintRunningState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3080
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    mFingerprintAlreadyAuthenticated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3081
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    EnrollSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    .end local v2    # "strongAuthFlags":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mBatteryStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    iget v3, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    iget v3, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", plugged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    iget v3, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", health="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    iget v3, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fastCharge="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    iget v3, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->fastCharge:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", health="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    iget v3, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->health:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxChargingWattage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    iget v3, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->maxChargingWattage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mKeyguardIsVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mBootCompleted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mGoingToSleep="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3092
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    isPreventModeEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPreventModeEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mPreventModeActive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreventModeActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mDeviceProvisioned="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getFailedUnlockAttempts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getUserCanSkipBouncer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mDeviceInteractive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3098
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3099
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mIsKeyguardDone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsKeyguardDone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    IS_SUPPORT_BOOT_TO_ENTER_BOUNCER="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mIsUserUnlocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mSimUnlockSlot0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mSimUnlockSlot1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mPendingSubInfoChange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPendingSubInfoChange:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    IS_SUPPORT_FACE_UNLOCK="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->IS_SUPPORT_FACE_UNLOCK:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mIsFaceAdded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceAdded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mFacelockRunningType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    isSecure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    getCurrentUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mSkipBouncerByFacelock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSkipBouncerByFacelock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mFacelockUnlocking="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockUnlocking:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    IS_SUPPORT_FINGERPRINT_POCKET="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3119
    const-string/jumbo v2, "sys.debug.systemui.pin"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3120
    .local v1, "debug":I
    const/16 v2, 0x38

    if-ne v1, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->keyguardPinPasswordLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3121
    :cond_4
    return-void
.end method

.method public earlyNotifySwitchingUser()V
    .locals 2

    .line 3629
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "earlyNotifySwitchingUser"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 3631
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hideFODDim()V

    .line 3632
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 3633
    return-void
.end method

.method public getFacelockNotifyMsgId(I)I
    .locals 2
    .param p1, "type"    # I

    .line 3344
    const/4 v0, 0x0

    .line 3345
    .local v0, "notifyMsg":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 3365
    const/4 v1, 0x0

    return v1

    .line 3362
    :pswitch_0
    const v0, 0x7f110278

    .line 3363
    goto :goto_0

    .line 3359
    :pswitch_1
    const v0, 0x7f110274

    .line 3360
    goto :goto_0

    .line 3356
    :pswitch_2
    const v0, 0x7f110275

    .line 3357
    goto :goto_0

    .line 3353
    :pswitch_3
    const v0, 0x7f110277

    .line 3354
    goto :goto_0

    .line 3350
    :pswitch_4
    const v0, 0x7f11027b

    .line 3351
    goto :goto_0

    .line 3347
    :cond_0
    const v0, 0x7f11027c

    .line 3348
    nop

    .line 3367
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFacelockRunningType()I
    .locals 1

    .line 3261
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    return v0
.end method

.method public getFailedUnlockAttempts(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 2754
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getFingerprintFailedUnlockAttempts()I
    .locals 3

    .line 2771
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintFailedAttempts:Landroid/util/SparseIntArray;

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I
    .locals 8
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2964
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    .line 2965
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v2, -0x1

    .line 2966
    .local v2, "resultId":I
    const v3, 0x7fffffff

    .line 2967
    .local v3, "bestSlotId":I
    nop

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 2968
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 2969
    .local v4, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 2970
    .local v5, "id":I
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v6

    .line 2971
    .local v6, "slotId":I
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v7

    if-ne p1, v7, :cond_0

    if-le v3, v6, :cond_0

    .line 2972
    move v2, v5

    .line 2973
    move v3, v6

    .line 2967
    .end local v4    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "id":I
    .end local v6    # "slotId":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2976
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public getServiceState(I)Landroid/telephony/ServiceState;
    .locals 2
    .param p1, "subId"    # I

    .line 2750
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getSimSlotId(I)I
    .locals 2
    .param p1, "subId"    # I

    .line 2804
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2805
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    return v0

    .line 2807
    :cond_0
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "invalid subid not in keyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    const/4 v0, -0x1

    return v0
.end method

.method public getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2
    .param p1, "subId"    # I

    .line 2794
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2795
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0

    .line 2797
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    return-object v0
.end method

.method public getSubscriptionInfo(Z)Ljava/util/List;
    .locals 2
    .param p1, "forceReload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    .line 662
    .local v0, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 664
    if-eqz v0, :cond_1

    .line 666
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 677
    :cond_1
    if-nez v0, :cond_2

    .line 679
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    goto :goto_0

    .line 681
    :cond_2
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    .line 683
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    return-object v1
.end method

.method public getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "subId"    # I

    .line 2980
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    .line 2981
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    nop

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2982
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 2983
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne p1, v3, :cond_0

    return-object v2

    .line 2981
    .end local v2    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2985
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserCanSkipBouncer(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1070
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1070
    :goto_1
    return v0
.end method

.method public getUserHasTrust(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1079
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canSkipBouncerByFacelock()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUserTrustIsManaged(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1086
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canSkipBouncerByFacelock()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected handleFinishedGoingToSleep(I)V
    .locals 3
    .param p1, "arg1"    # I

    .line 1616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 1617
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1618
    .local v1, "count":I
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1619
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1620
    .local v2, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v2, :cond_0

    .line 1621
    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    .line 1618
    .end local v2    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1624
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1625
    return-void
.end method

.method public handleScreenturningOn()V
    .locals 3

    .line 3602
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3603
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 3607
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3608
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 3609
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 3610
    .local v2, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v2, :cond_1

    .line 3611
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurningOn()V

    .line 3608
    .end local v2    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3617
    .end local v1    # "i":I
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3618
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v1, :cond_3

    .line 3619
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3620
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->showFPDialogWhenNoWindow()V

    .line 3624
    :cond_3
    return-void
.end method

.method handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2387
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 2389
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimStateChange(subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2394
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "invalid subId in handleSimStateChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    return-void

    .line 2398
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 2400
    .local v0, "data":Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2401
    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v2, p3, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;II)V

    move-object v0, v2

    .line 2402
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2403
    const/4 v2, 0x1

    .local v2, "changed":Z
    goto :goto_2

    .line 2405
    .end local v2    # "changed":Z
    :cond_1
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, p3, :cond_3

    iget v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    if-ne v2, p1, :cond_3

    iget v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-eq v2, p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    .line 2406
    .restart local v2    # "changed":Z
    :goto_1
    iput-object p3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2407
    iput p1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 2408
    iput p2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    .line 2410
    :goto_2
    if-eqz v2, :cond_5

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p3, v3, :cond_5

    .line 2411
    nop

    .local v1, "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 2412
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2413
    .local v3, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v3, :cond_4

    .line 2414
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 2411
    .end local v3    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2418
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method protected handleStartedGoingToSleep(I)V
    .locals 4
    .param p1, "arg1"    # I

    .line 1588
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    .line 1589
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1590
    .local v0, "count":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1591
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1592
    .local v3, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v3, :cond_0

    .line 1593
    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    .line 1590
    .end local v3    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1596
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 1598
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    .line 1604
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1605
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->showFPDialogWhenNoWindow()V

    .line 1609
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1611
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    .line 1613
    return-void
.end method

.method protected handleStartedWakingUp()V
    .locals 3

    .line 1564
    const-string v0, "KeyguardUpdateMonitor#handleStartedWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1566
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1567
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setPocketSensorEnabled(Z)V

    .line 1571
    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFakeLocking:Z

    .line 1573
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 1574
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1575
    .local v0, "count":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1576
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1577
    .local v2, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v2, :cond_1

    .line 1578
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    .line 1575
    .end local v2    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1582
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onScreenStatusChanged(Z)V

    .line 1584
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1585
    return-void
.end method

.method public handleSystemReady()V
    .locals 2

    .line 2288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2289
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2290
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 2291
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSystemReady()V

    .line 2288
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2294
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public hasBootCompleted()Z
    .locals 1

    .line 2277
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBootCompleted:Z

    return v0
.end method

.method public hasLockscreenWallpaper()Z
    .locals 1

    .line 2192
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    return v0
.end method

.method public hideFODDim()V
    .locals 2

    .line 3654
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    .line 3655
    return-void
.end method

.method public isAutoCheckPinEnabled()Z
    .locals 1

    .line 3522
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->keyguardPinPasswordLength()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutoFacelockEnabled()Z
    .locals 1

    .line 3315
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAutoFacelockEnabled:Z

    return v0
.end method

.method public isCameraErrorState()Z
    .locals 2

    .line 3292
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3296
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3294
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isDeviceInteractive()Z
    .locals 1

    .line 2951
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .line 2735
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return v0
.end method

.method public isDreaming()Z
    .locals 1

    .line 728
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    return v0
.end method

.method public isFaceAdded()Z
    .locals 1

    .line 3404
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceAdded:Z

    return v0
.end method

.method public isFaceUnlockRunning(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1038
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isFacelockAllowed()Z
    .locals 3

    .line 3324
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFacelockAllowed, visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", inter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bouncer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", done:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsKeyguardDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", switching:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3325
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", added:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceAdded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", simpin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3326
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fp authenticated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3324
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->allowShowingLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3333
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacelockPossible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3334
    const/4 v0, 0x1

    return v0

    .line 3336
    :cond_1
    return v1

    .line 3330
    :cond_2
    :goto_0
    return v1
.end method

.method public isFacelockAvailable()Z
    .locals 2

    .line 3265
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3270
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3268
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFacelockEnabled()Z
    .locals 1

    .line 3311
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockEnabled:Z

    return v0
.end method

.method public isFacelockLightingEnabled()Z
    .locals 1

    .line 3320
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockLightingEnabled:Z

    return v0
.end method

.method public isFacelockRecognizing()Z
    .locals 2

    .line 3274
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3275
    const/4 v0, 0x1

    return v0

    .line 3277
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFacelockUnlocking()Z
    .locals 1

    .line 3390
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockUnlocking:Z

    return v0
.end method

.method public isFingerprintAlreadyAuthenticated()Z
    .locals 1

    .line 1029
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    return v0
.end method

.method public isFingerprintDetectionRunning()Z
    .locals 2

    .line 1042
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFingerprintDisabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1061
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 1062
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1063
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_1

    .line 1065
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1063
    :goto_0
    return v1
.end method

.method public isFingerprintEnrolled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 2118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 2119
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2118
    :goto_0
    return v0
.end method

.method public isFingerprintLockout()Z
    .locals 1

    .line 1047
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutState:Z

    return v0
.end method

.method public isFirstUnlock()Z
    .locals 1

    .line 3180
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isGoingToSleep()Z
    .locals 1

    .line 2955
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    return v0
.end method

.method public isImeShow()Z
    .locals 1

    .line 3544
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mImeShow:Z

    return v0
.end method

.method public isKeyguardDone()Z
    .locals 1

    .line 2459
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsKeyguardDone:Z

    return v0
.end method

.method public isKeyguardVisible()Z
    .locals 1

    .line 3125
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    return v0
.end method

.method public isLaunchingCamera()Z
    .locals 1

    .line 2076
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLaunchingCamera:Z

    return v0
.end method

.method public isLogoutEnabled()Z
    .locals 1

    .line 2992
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    return v0
.end method

.method public isOOS()Z
    .locals 7

    .line 2833
    const/4 v0, 0x1

    .line 2834
    .local v0, "ret":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 2837
    .local v1, "phoneCount":I
    const/4 v2, 0x0

    .local v2, "phoneId":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2838
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ServiceState;

    .line 2839
    .local v3, "state":Landroid/telephony/ServiceState;
    if-eqz v3, :cond_2

    .line 2840
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2841
    const/4 v0, 0x0

    .line 2842
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 2843
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 2844
    const/4 v0, 0x0

    .line 2846
    :cond_1
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", is emergency: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2847
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", voice state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2846
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2851
    :cond_2
    const-string v4, "KeyguardUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", state is NULL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    .end local v3    # "state":Landroid/telephony/ServiceState;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2856
    .end local v2    # "phoneId":I
    :cond_3
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is Emergency supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    return v0
.end method

.method public isPreventModeActivte()Z
    .locals 1

    .line 3640
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreventModeActive:Z

    return v0
.end method

.method public isPreventModeEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 3133
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3134
    return v1

    .line 3138
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_acc_anti_misoperation_screen"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 3139
    :catch_0
    move-exception v0

    .line 3140
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v1
.end method

.method public isQSExpanded()Z
    .locals 1

    .line 3578
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mQSExpanded:Z

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .line 1148
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    return v0
.end method

.method public isSimPinSecure()Z
    .locals 4

    .line 2787
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 2788
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2789
    .end local v2    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_0
    goto :goto_0

    .line 2790
    :cond_1
    return v0
.end method

.method public isSimPinVoiceSecure()Z
    .locals 1

    .line 2782
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    return v0
.end method

.method public isSwitchingUser()Z
    .locals 1

    .line 2637
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    return v0
.end method

.method public isUnlockWithFacelockPossible()Z
    .locals 2

    .line 3395
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 3396
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3397
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    .line 3398
    const/4 v0, 0x1

    return v0

    .line 3400
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUnlockWithFingerprintPossible(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 2112
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 2113
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2112
    :goto_0
    return v0
.end method

.method public isUnlockingWithFingerprintAllowed()Z
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    return v0
.end method

.method public isUserInLockdown(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1095
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserUnlocked()Z
    .locals 2

    .line 3167
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->IS_SUPPORT_BOOT_TO_ENTER_BOUNCER:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3170
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsUserUnlocked:Z

    return v0

    .line 3168
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public keyguardPinPasswordLength()I
    .locals 2

    .line 3514
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getPINPasswordLength(I)I

    move-result v0

    .line 3515
    .local v0, "pinLength":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 3516
    return v0

    .line 3518
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public needsSlowUnlockTransition()Z
    .locals 1

    .line 1100
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    return v0
.end method

.method public notifyBrightnessChange()V
    .locals 1

    .line 3673
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->notifyBrightnessChange()V

    .line 3674
    return-void
.end method

.method public notifyFacelockStateChanged(I)V
    .locals 4
    .param p1, "type"    # I

    .line 3217
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 3218
    .local v0, "lastType":I
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    .line 3219
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyFacelockStateChanged, type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3223
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x150

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3227
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$17;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$17;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3247
    return-void
.end method

.method public notifyFakeLocking(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .line 3660
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFakeLocking:Z

    .line 3661
    return-void
.end method

.method public notifyKeyguardDone(Z)V
    .locals 1
    .param p1, "isKeyguardDone"    # Z

    .line 2452
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsKeyguardDone:Z

    .line 2453
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-eqz v0, :cond_0

    .line 2454
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->notifyKeyguardDone()V

    .line 2456
    :cond_0
    return-void
.end method

.method public notifyLidSwitchChanged(Z)V
    .locals 4
    .param p1, "lidOpen"    # Z

    .line 3469
    const/4 v0, 0x0

    .line 3471
    .local v0, "arg1":I
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 3474
    :cond_0
    sget-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->IS_SUPPORT_FINGERPRINT_POCKET:Z

    if-nez v1, :cond_1

    return-void

    .line 3476
    :cond_1
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LidOpen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pocket enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPocketSensorEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2be

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3478
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 3479
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3480
    return-void
.end method

.method public notifyPasswordLockout()V
    .locals 2

    .line 3409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3410
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 3411
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 3412
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPasswordLockout()V

    .line 3409
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3415
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public notifyPreventModeChange(Z)V
    .locals 4
    .param p1, "prevent"    # Z

    .line 3502
    const/4 v0, 0x0

    .line 3503
    .local v0, "arg1":I
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 3505
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPreventModeActive:Z

    .line 3506
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2bf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3507
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 3508
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3509
    return-void
.end method

.method public notifyScreenTurningOn()V
    .locals 2

    .line 3591
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "notifyScreenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    monitor-enter p0

    .line 3593
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenTurningOn:Z

    .line 3594
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3595
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x257

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3596
    return-void

    .line 3594
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyShutDownOrReboot()V
    .locals 1

    .line 3584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mShutingDown:Z

    .line 3585
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 3586
    return-void
.end method

.method public onFacelockUnlocking(Z)V
    .locals 0
    .param p1, "unlocked"    # Z

    .line 3386
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockUnlocking:Z

    .line 3387
    return-void
.end method

.method public onImeShow(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 3528
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3529
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mImeShow:Z

    .line 3531
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutState:Z

    if-eqz v0, :cond_1

    .line 3532
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    if-nez v0, :cond_0

    return-void

    .line 3533
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    goto :goto_1

    .line 3535
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateFingerprintListeningState:Ljava/lang/Runnable;

    .line 3536
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0xfa

    .line 3535
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3540
    :cond_3
    :goto_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .line 2493
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 2494
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    .line 2496
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2497
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2498
    .local v2, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v2, :cond_0

    .line 2499
    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    .line 2496
    .end local v2    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2503
    .end local v1    # "i":I
    :cond_1
    if-nez p1, :cond_2

    .line 2504
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    .line 2508
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2509
    return-void
.end method

.method public onTrustChanged(ZII)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 589
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrustChanged, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 591
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 592
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 594
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {v1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    .line 596
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 597
    invoke-virtual {v1, p3, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustGrantedWithFlags(II)V

    .line 592
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 601
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onTrustError(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 605
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchErrorMessage(Ljava/lang/CharSequence;)V

    .line 606
    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 2
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .line 688
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 689
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 691
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 692
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 693
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {v1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustManagedChanged(I)V

    .line 691
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2621
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 2622
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** register callback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2625
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 2626
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "Object tried to add another callback"

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Called by"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2628
    return-void

    .line 2624
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2631
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2632
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 2633
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 2634
    return-void
.end method

.method public removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2606
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 2607
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** unregister callback for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2609
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 2610
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2608
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2613
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public reportEmergencyCallAction(Z)V
    .locals 2
    .param p1, "bypassHandler"    # Z

    .line 2722
    if-nez p1, :cond_0

    .line 2723
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2725
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 2726
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    .line 2728
    :goto_0
    return-void
.end method

.method public reportFailedStrongAuthUnlockAttempt(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 2758
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2760
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    sget v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2761
    .local v0, "failAttemptShared":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    add-int/lit8 v3, v0, 0x1

    sget v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2763
    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 5
    .param p1, "subId"    # I

    .line 2697
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 2698
    .local v0, "slotId":I
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportSimUnlocked(subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2703
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimUnlockSlot0:Z

    goto :goto_0

    .line 2704
    :cond_0
    if-ne v0, v1, :cond_1

    .line 2705
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimUnlockSlot1:Z

    .line 2707
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2bd

    const/4 v4, 0x0

    .line 2708
    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    .line 2707
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2710
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(IILcom/android/internal/telephony/IccCardConstants$State;)V

    .line 2711
    return-void
.end method

.method public resetFPTimeout()V
    .locals 2

    .line 3420
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    .line 3421
    const/4 v0, 0x0

    .line 3422
    .local v0, "token":[B
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->resetTimeout([B)V

    .line 3424
    .end local v0    # "token":[B
    :cond_0
    return-void
.end method

.method public resetFingerprintAlreadyAuthenticated()V
    .locals 1

    .line 1033
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAlreadyAuthenticated:Z

    .line 1034
    return-void
.end method

.method public sendKeyguardBouncerChanged(Z)V
    .locals 3
    .param p1, "showingBouncer"    # Z

    .line 2679
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendKeyguardBouncerChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x142

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2681
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2682
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2683
    return-void
.end method

.method public sendKeyguardReset()V
    .locals 2

    .line 2672
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2673
    return-void
.end method

.method public setFingerprintDialogView(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V
    .locals 0
    .param p1, "fpView"    # Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 3556
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 3557
    return-void
.end method

.method public setHasLockscreenWallpaper(Z)V
    .locals 2
    .param p1, "hasLockscreenWallpaper"    # Z

    .line 2176
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->checkIsHandlerThread()V

    .line 2177
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    if-eq p1, v0, :cond_1

    .line 2178
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    .line 2179
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2180
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 2181
    .local v1, "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    if-eqz v1, :cond_0

    .line 2182
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onHasLockscreenWallpaperChanged(Z)V

    .line 2179
    .end local v1    # "cb":Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2186
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setIsFaceAdded(Z)V
    .locals 0
    .param p1, "isAdded"    # Z

    .line 3340
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceAdded:Z

    .line 3341
    return-void
.end method

.method public setKeyguardGoingAway(Z)V
    .locals 0
    .param p1, "goingAway"    # Z

    .line 704
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    .line 708
    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 1
    .param p1, "occluded"    # Z

    .line 716
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsKeyguardDone:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->showFPDialogWhenNoWindow()V

    .line 720
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 721
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 722
    return-void
.end method

.method public setQSExpanded(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .line 3561
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQSExpanded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3565
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mQSExpanded:Z

    if-eq p1, v0, :cond_2

    .line 3566
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mQSExpanded:Z

    .line 3568
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3569
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 3570
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutState:Z

    if-eqz v0, :cond_2

    .line 3571
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 3575
    :cond_2
    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 2
    .param p1, "switching"    # Z

    .line 2642
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 2644
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateFingerprintListeningState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2647
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$14;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$14;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2654
    return-void
.end method

.method public setUserUnlocked(Z)V
    .locals 0
    .param p1, "unlocked"    # Z

    .line 3174
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsUserUnlocked:Z

    .line 3175
    return-void
.end method

.method public shouldHideDismissButton()Z
    .locals 1

    .line 3667
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->shouldHideDismissButton()Z

    move-result v0

    return v0
.end method

.method public shouldPlayFacelockFailAnim()Z
    .locals 3

    .line 3371
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3378
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3376
    :cond_1
    :goto_0
    return v1
.end method

.method public shouldShowFacelockIcon()Z
    .locals 2

    .line 3281
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFacelockRunningType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3288
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3286
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateFingerprintListeningState()V
    .locals 4

    .line 1953
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x150

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    return-void

    .line 1958
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDuringAcquired:Z

    if-eqz v0, :cond_1

    .line 1959
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "not update fp listen state during acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    return-void

    .line 1964
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1965
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint()Z

    move-result v0

    .line 1968
    .local v0, "shouldListenForFingerprint":Z
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFPState: shouldListen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", running = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", lockout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockoutState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_2

    .line 1972
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    goto :goto_0

    .line 1973
    :cond_2
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-eq v1, v2, :cond_3

    if-eqz v0, :cond_3

    .line 1975
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFingerprint()V

    .line 1977
    :cond_3
    :goto_0
    return-void
.end method

.method public updateLaunchingCameraState(Z)V
    .locals 2
    .param p1, "launching"    # Z

    .line 2066
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLaunchingCamera:Z

    if-eq v0, p1, :cond_0

    .line 2067
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLaunchingCamera:Z

    .line 2068
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2070
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 2072
    :cond_0
    return-void
.end method
