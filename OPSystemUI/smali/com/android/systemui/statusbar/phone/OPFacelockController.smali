.class public Lcom/android/systemui/statusbar/phone/OPFacelockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OPFacelockController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static FACELOCK_PACKAGE_NAME:Ljava/lang/String;

.field private static FACELOCK_SERVICE_NAME:Ljava/lang/String;

.field private static FACELOCK_SETTING_SERVICE_NAME:Ljava/lang/String;


# instance fields
.field private LIGHTING_MODE_BRIGHTNESS:I

.field private LIGHTING_MODE_BRIGHTNESS_ADJUSTMENT:D

.field private LIGHTING_MODE_SENSOR_THRESHOLD:I

.field private final MSG_CAMERA_ERROR:I

.field private final MSG_FAIL:I

.field private final MSG_NO_FACE:I

.field private final MSG_NO_PERMISSION:I

.field private final MSG_RESET_FACELOCK_PENDING:I

.field private final MSG_RESET_LOCKOUT:I

.field private final MSG_SKIP_BOUNCER:I

.field private final MSG_START_FACELOCK:I

.field private final MSG_STOP_FACELOCK:I

.field private final MSG_UNLOCK:I

.field private final MSG_UPDATE_FACE_ADDED:I

.field private mBinding:Z

.field private mBindingSetting:Z

.field private mBouncer:Z

.field private mBoundToService:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonCloseLightView:Landroid/view/View;

.field private mCameraLaunching:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mFaceLockActive:Z

.field private mFacelockThread:Landroid/os/HandlerThread;

.field private mFailAttempts:I

.field private mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mIsGoingToSleep:Z

.field private mIsKeyguardShowing:Z

.field private mIsScreenOffUnlock:Z

.field private mIsScreenTurnedOn:Z

.field private mIsSleep:Z

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

.field private mLightingModeEnabled:Z

.field private mLockout:Z

.field private mNeedToPendingStopFacelock:Z

.field private final mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

.field private final mOffAuthenticateRunnable:Ljava/lang/Runnable;

.field private mPendingFacelockWhenBouncer:Z

.field private mPendingLaunchCameraSource:Ljava/lang/String;

.field private mPendingStopFacelock:Z

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field mPowerManager:Landroid/os/IPowerManager;

.field private final mResetScreenOnRunnable:Ljava/lang/Runnable;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRate:I

.field private mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

.field private mSettingConnection:Landroid/content/ServiceConnection;

.field private mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

.field mSleepTime:J

.field private mStartFacelockWhenScreenOn:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWM:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    .line 62
    const-string v0, "com.oneplus.faceunlock"

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    .line 63
    const-string v0, "com.oneplus.faceunlock.FaceUnlockService"

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SERVICE_NAME:Ljava/lang/String;

    .line 64
    const-string v0, "com.oneplus.faceunlock.FaceSettingService"

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SETTING_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardViewMediator"    # Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .param p3, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p4, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .param p5, "statusBarWindowManager"    # Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .param p6, "fpc"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 155
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    .line 119
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 131
    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    .line 132
    const-wide v1, 0x3fd2d0e560418937L    # 0.294

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS_ADJUSTMENT:D

    .line 133
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    .line 134
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSleepTime:J

    .line 206
    new-instance v0, Lcom/android/systemui/statusbar/phone/OPFacelockController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$1;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 220
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_START_FACELOCK:I

    .line 221
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_STOP_FACELOCK:I

    .line 222
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_UNLOCK:I

    .line 223
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_FAIL:I

    .line 224
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_NO_FACE:I

    .line 225
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_RESET_LOCKOUT:I

    .line 226
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_SKIP_BOUNCER:I

    .line 228
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_RESET_FACELOCK_PENDING:I

    .line 233
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_CAMERA_ERROR:I

    .line 235
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_NO_PERMISSION:I

    .line 236
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_UPDATE_FACE_ADDED:I

    .line 322
    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$2;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    .line 959
    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    .line 1112
    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mConnection:Landroid/content/ServiceConnection;

    .line 1132
    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$12;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    .line 1150
    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    .line 1259
    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$14;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 156
    const-string v1, "OPFacelockController"

    const-string v2, "new facelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    .line 158
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 159
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 161
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 162
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 164
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 165
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 166
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 168
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FacelockThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 170
    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    .line 171
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    .line 172
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mWM:Landroid/view/IWindowManager;

    .line 175
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0a0144

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    .line 176
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0a0146

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mButtonCloseLightView:Landroid/view/View;

    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mButtonCloseLightView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    if-nez v1, :cond_0

    .line 180
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLightView == null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->init()V

    .line 184
    :goto_0
    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensor:Landroid/hardware/Sensor;

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorRate:I

    .line 188
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 191
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    .line 192
    .local v1, "maxBrightness":I
    int-to-double v2, v1

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS_ADJUSTMENT:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    .line 195
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 199
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.oneplus.faceunlock.action.FACE_SETTING_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleResetLockout()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleSkipBouncer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleResetFacelockPending()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateIsFaceAdded()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/OPFacelockController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateKeyguardAlpha(IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/OPFacelockController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->launchCamera(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/OPFacelockLightView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/oneplus/faceunlock/internal/IOPFacelockService;)Lcom/oneplus/faceunlock/internal/IOPFacelockService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStartFacelock()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateFacelockLightMode(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/OPFacelockController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->unlockKeyguard()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleRecognizeFail()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->playFacelockIndicationTextAnim()V

    return-void
.end method

.method private bindFacelock()V
    .locals 6

    .line 1029
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    if-eqz v0, :cond_0

    return-void

    .line 1031
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1032
    .local v0, "serviceIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    .local v1, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1036
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1038
    const-string v2, "OPFacelockController"

    const-string v3, "Binding ok"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    goto :goto_0

    .line 1041
    :cond_1
    const-string v2, "OPFacelockController"

    const-string v3, "Binding fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :goto_0
    goto :goto_1

    .line 1043
    :catch_0
    move-exception v2

    .line 1044
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindFacelock fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private bindFacelockSetting()V
    .locals 6

    .line 1049
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    if-eqz v0, :cond_0

    .line 1050
    const-string v0, "OPFacelockController"

    const-string v1, "return Binding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void

    .line 1054
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1055
    .local v0, "serviceIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SETTING_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    .local v1, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1059
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1061
    const-string v2, "OPFacelockController"

    const-string v3, "Binding setting ok"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    goto :goto_0

    .line 1064
    :cond_1
    const-string v2, "OPFacelockController"

    const-string v3, "Binding setting fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :goto_0
    goto :goto_1

    .line 1066
    :catch_0
    move-exception v2

    .line 1067
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bind setting fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private handleRecognizeFail()V
    .locals 4

    .line 358
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 360
    const/4 v0, 0x0

    .line 362
    .local v0, "playFailAnimation":Z
    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    rem-int/lit8 v2, v2, 0x5

    if-eqz v2, :cond_0

    .line 363
    const/4 v1, 0x7

    .local v1, "type":I
    goto :goto_0

    .line 365
    .end local v1    # "type":I
    :cond_0
    nop

    .line 368
    .restart local v1    # "type":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    .line 369
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v2, :cond_3

    .line 371
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "OPFacelockController"

    const-string v3, "enter Bouncer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 383
    :cond_2
    const/4 v0, 0x1

    .line 386
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->playFacelockIndicationTextAnim()V

    .line 387
    :cond_4
    const/high16 v2, -0x10000

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 388
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    .line 389
    return-void
.end method

.method private handleResetFacelockPending()V
    .locals 3

    .line 853
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 854
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResetFacelockPending, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    if-eqz v0, :cond_1

    .line 856
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    .line 858
    :cond_1
    return-void
.end method

.method private handleResetLockout()V
    .locals 2

    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 344
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 348
    return-void

    .line 345
    :cond_1
    :goto_0
    return-void
.end method

.method private handleSkipBouncer()V
    .locals 2

    .line 351
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "handleSkipBouncer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 353
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    .line 355
    return-void
.end method

.method private handleStartFacelock()V
    .locals 8

    .line 764
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraErrorState()Z

    move-result v0

    .line 766
    .local v0, "cameraError":Z
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle startFacelock, active:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pendingStop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", live wp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", cameraError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", showing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pending:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    if-nez v1, :cond_0

    .line 769
    const-string v1, "OPFacelockController"

    const-string v2, "not start Facelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    return-void

    .line 774
    :cond_0
    if-eqz v0, :cond_1

    .line 775
    const-string v1, "OPFacelockController"

    const-string v2, "not start when camera error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return-void

    .line 779
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    if-eqz v1, :cond_2

    .line 780
    const-string v1, "OPFacelockController"

    const-string v2, "pending in bouncer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    return-void

    .line 786
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 787
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 788
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 789
    return-void

    .line 793
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    const/4 v5, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 794
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 795
    const-string v1, "OPFacelockController"

    const-string v2, "pending start to screen on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    return-void

    .line 798
    :cond_4
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 800
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 802
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    .line 804
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 808
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 809
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    .line 810
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateKeyguardAlpha(IZ)V

    .line 811
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 812
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x258

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 816
    :cond_5
    monitor-enter p0

    .line 818
    const/4 v1, 0x4

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    invoke-interface {v2, v3}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->registerCallback(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    .line 819
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v2}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->prepare()V

    .line 820
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v2, v4}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->startFaceUnlock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    nop

    .line 834
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 837
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 840
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    .line 842
    return-void

    .line 834
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 827
    :catch_0
    move-exception v2

    .line 828
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v3, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startFacelock mService null, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 831
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 832
    monitor-exit p0

    return-void

    .line 821
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 822
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startFacelock fail, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 825
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 826
    monitor-exit p0

    return-void

    .line 834
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private handleStopFacelock()V
    .locals 4

    .line 868
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-nez v0, :cond_0

    .line 869
    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not stop facelock, active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void

    .line 874
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    if-eqz v0, :cond_2

    .line 875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 876
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPFacelockController"

    const-string v1, "pending stop facelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_1
    return-void

    .line 879
    :cond_2
    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle stopFacelock, pending camera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 882
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 885
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    .line 887
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelockLightMode()V

    .line 889
    monitor-enter p0

    .line 891
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    invoke-interface {v1, v2}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->unregisterCallback(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    .line 892
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v1, v0}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->stopFaceUnlock(I)V

    .line 893
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v0}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    :goto_0
    goto :goto_1

    .line 899
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_1
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopFacelock mService null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 894
    :catch_1
    move-exception v0

    .line 895
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopFacelock fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 899
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 901
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    .line 904
    .local v0, "source":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 910
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    .line 914
    .end local v0    # "source":Ljava/lang/String;
    :cond_3
    return-void

    .line 899
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private launchCamera(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .line 1354
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    .line 1355
    :cond_0
    return-void
.end method

.method private playFacelockIndicationTextAnim()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 400
    :cond_0
    return-void
.end method

.method private registerLightSensor(Z)V
    .locals 5
    .param p1, "register"    # Z

    .line 1278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1280
    :cond_0
    if-eqz p1, :cond_1

    .line 1282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 1285
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1287
    :goto_0
    return-void
.end method

.method private stopFacelock()V
    .locals 3

    .line 862
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 863
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 864
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 865
    return-void
.end method

.method private unlockKeyguard()V
    .locals 7

    .line 968
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper()Z

    move-result v0

    .line 969
    .local v0, "liveWP":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v1

    .line 970
    .local v1, "bouncerShow":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    .line 972
    .local v2, "interActive":Z
    const-string v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unlockKeyguard, bouncer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", live wp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", interactive = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", offUnlock:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 974
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hideFODDim()V

    .line 975
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFacelockUnlocking(Z)V

    .line 976
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 978
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;

    invoke-direct {v5, p0, v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;ZZ)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1016
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1017
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    const/4 v6, 0x2

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    .line 1018
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 1019
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 1020
    return-void
.end method

.method private updateFacelockLightMode(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 1290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    if-nez v0, :cond_0

    return-void

    .line 1293
    :cond_0
    if-eqz p1, :cond_1

    .line 1294
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->overrideScreenBrightnessRangeMinimum(I)V

    goto :goto_0

    .line 1298
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1296
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->overrideScreenBrightnessRangeMinimum(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    :goto_0
    goto :goto_2

    .line 1298
    :goto_1
    nop

    .line 1299
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFacelockLightMode, overrideScreenBrightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$15;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController$15;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1320
    return-void
.end method

.method private updateIsFaceAdded()V
    .locals 7

    .line 700
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 702
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelockSetting()V

    .line 703
    return-void

    .line 706
    :cond_0
    const/4 v0, 0x1

    move v2, v0

    .line 708
    .local v2, "state":I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    invoke-interface {v3, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 711
    goto :goto_0

    .line 709
    :catch_0
    move-exception v3

    .line 710
    .local v3, "re":Ljava/lang/Exception;
    const-string v4, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateIsFaceAdded fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v3    # "re":Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v3

    .line 715
    .local v3, "preAdded":Z
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 716
    .local v0, "isAdded":Z
    :goto_1
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFaceAdded:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", pre:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 720
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 721
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz v1, :cond_3

    .line 723
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 724
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->updateBouncerPromptReason()V

    .line 725
    const-string v1, "OPFacelockController"

    const-string v4, "face is added and not allowed, update Prompt reason"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 732
    if-eq v0, v3, :cond_5

    .line 733
    if-eqz v0, :cond_4

    .line 734
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLock()Z

    goto :goto_2

    .line 736
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 740
    :cond_5
    :goto_2
    return-void
.end method

.method private updateKeyguardAlpha(IZ)V
    .locals 6
    .param p1, "alpha"    # I
    .param p2, "updateState"    # Z

    .line 918
    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update alpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", live wp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 922
    if-eqz p2, :cond_0

    .line 923
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 924
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v1, v0, v2, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZII)V

    .line 928
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/OPFacelockController$7;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController$7;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 940
    if-ne p1, v0, :cond_3

    .line 941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    .line 942
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result v1

    .line 943
    .local v1, "fpEnrolled":Z
    if-eqz p2, :cond_3

    .line 944
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 946
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSleepTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    .line 947
    .local v0, "delay":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 949
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 950
    .end local v0    # "delay":I
    goto :goto_1

    .line 951
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 952
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    .line 957
    .end local v1    # "fpEnrolled":Z
    :cond_3
    :goto_1
    return-void
.end method

.method private updateNotifyMessage(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "color"    # I

    .line 1072
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFacelockNotifyMsgId(I)I

    move-result v0

    .line 1074
    .local v0, "msgId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;III)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1110
    return-void
.end method

.method private updateRecognizedState(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "color"    # I

    .line 333
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    if-eqz v0, :cond_0

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateNotifyMessage(II)V

    .line 337
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 338
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 340
    :cond_1
    return-void
.end method


# virtual methods
.method public canLaunchFacelock()Z
    .locals 3

    .line 682
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 683
    const-string v0, "OPFacelockController"

    const-string v2, "not start when camera launching"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return v1

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 686
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPFacelockController"

    const-string v2, "not allow to facelock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_1
    return v1

    .line 688
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isFacelockTimeout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 689
    const-string v0, "OPFacelockController"

    const-string/jumbo v2, "timeout, not allow to facelock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return v1

    .line 692
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public disPatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1343
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1369
    const-string v0, "  OPFacelockController: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1370
    const-string v0, "  mFailAttempts: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1371
    const-string v0, "  mLockout: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1372
    const-string v0, "  mBinding: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1373
    const-string v0, "  mCameraLaunching: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1374
    const-string v0, "  mBoundToService: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1375
    const-string v0, "  mFaceLockActive: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1376
    const-string v0, "  mService: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1377
    const-string v0, "  isFacelockEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1378
    const-string v0, "  isAutoFacelockEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1379
    const-string v0, "  isFacelockLightingEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1380
    const-string v0, "  FacelockRunningType: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1381
    const-string v0, "  isFacelockTimeout: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isFacelockTimeout()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1382
    const-string v0, "  isFacelockAllowed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1383
    const-string v0, "  mIsKeyguardShowing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1384
    const-string v0, "  mBouncer: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1385
    const-string v0, "  mIsScreenTurnedOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1386
    const-string v0, "  mNeedToPendingStopFacelock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1387
    const-string v0, "  mPendingStopFacelock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1388
    const-string v0, "  mPendingLaunchCameraSource: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    const-string v0, "  mIsScreenOffUnlock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1390
    const-string v0, "  mStartFacelockWhenScreenOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1391
    const-string v0, "  mIsSleep: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1392
    const-string v0, "  mLightingModeEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1393
    const-string v0, "  LIGHTING_MODE_SENSOR_THRESHOLD: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1394
    const-string v0, "  LIGHTING_MODE_BRIGHTNESS: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1396
    return-void
.end method

.method public isFacelockRunning()Z
    .locals 1

    .line 696
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    return v0
.end method

.method public isFacelockTimeout()Z
    .locals 2

    .line 1024
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 1025
    .local v0, "allowed":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

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

.method public isLighModeEnabled()Z
    .locals 1

    .line 1338
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return v0
.end method

.method public isScreenOffUnlock()Z
    .locals 1

    .line 1359
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    return v0
.end method

.method public notifyCameraLaunching(ZLjava/lang/String;)Z
    .locals 4
    .param p1, "isCameraLaunching"    # Z
    .param p2, "source"    # Ljava/lang/String;

    .line 745
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_0

    .line 746
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 749
    :cond_0
    const/4 v0, 0x0

    .line 751
    .local v0, "pending":Z
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCameraLaunching, source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", facelockActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", keyguard:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-eqz v1, :cond_2

    .line 754
    if-eqz p2, :cond_1

    .line 755
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    .line 756
    const/4 v0, 0x1

    .line 758
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 760
    :cond_2
    return v0
.end method

.method public onClearFailedFacelockAttempts()V
    .locals 3

    .line 622
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClearFailedFacelockAttempts, failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lockout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 624
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 625
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1328
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onClick to stop Lighting mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelockLightMode()V

    .line 1330
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 3

    .line 541
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceProvisioned, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_1

    .line 543
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 547
    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 3
    .param p1, "dreaming"    # Z

    .line 501
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDreamingStateChanged, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .line 488
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishedGoingToSleep, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    .line 494
    const-string v1, "persist.sys.facelock.lsensor"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    .line 495
    const-string v0, "persist.sys.facelock.bright"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    .line 497
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3
    .param p1, "isBouncer"    # Z

    .line 598
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardBouncerChanged , bouncer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", skip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canSkipBouncerByFacelock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", unlocking:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    .line 601
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 602
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLock()Z

    .line 603
    return-void

    .line 607
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canSkipBouncerByFacelock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    const/4 v0, 0x6

    .line 610
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->startWakeAndUnlockForFace(I)V

    .line 612
    .end local v0    # "mode":I
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockUnlocking()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 613
    const-string v0, "OPFacelockController"

    const-string v1, "just keyguardDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    .line 618
    :cond_3
    :goto_0
    return-void
.end method

.method public onKeyguardReset()V
    .locals 2

    .line 507
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_0

    .line 508
    return-void

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_3

    .line 511
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-eqz v0, :cond_2

    .line 512
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPFacelockController"

    const-string v1, "onKeyguardReset to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 515
    :cond_2
    return-void

    .line 519
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 521
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "OPFacelockController"

    const-string v1, "onKeyguardReset to start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 526
    :cond_5
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .line 564
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged, show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 567
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_2

    .line 568
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 573
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 575
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 576
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 583
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 585
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 586
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 587
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 590
    :cond_4
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    .line 592
    if-nez p1, :cond_5

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    .line 594
    :cond_5
    return-void
.end method

.method public onPasswordLockout()V
    .locals 2

    .line 637
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onPasswordLockout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 639
    return-void
.end method

.method public onPreStartedGoingToSleep()V
    .locals 2

    .line 458
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onPreStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 460
    return-void
.end method

.method public onPreStartedWakingUp()V
    .locals 3

    .line 404
    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreStartedWakingUp, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 406
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 413
    return-void

    .line 407
    :cond_1
    :goto_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 453
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    .line 455
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 432
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOn, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    .line 436
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    if-eqz v1, :cond_2

    .line 437
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 438
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 441
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 442
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 446
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 449
    :cond_2
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 4
    .param p1, "why"    # I

    .line 464
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartedGoingToSleep, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    .line 470
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 472
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 473
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 474
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 475
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 479
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSleepTime:J

    .line 484
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    .line 418
    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartedWakingUp, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lockout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 421
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 428
    return-void

    .line 422
    :cond_1
    :goto_0
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 553
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 555
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    :cond_0
    const-string v0, "OPFacelockController"

    const-string v1, "onStrongAuthStateChanged to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 559
    :cond_1
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    .line 629
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    .line 631
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelockSetting()V

    .line 632
    return-void
.end method

.method public onThemeColorUpdate()V
    .locals 3

    .line 1364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mButtonCloseLightView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1365
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 532
    if-eqz p1, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 535
    :cond_0
    return-void
.end method

.method public resetFacelockPending()V
    .locals 1

    .line 846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 847
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 848
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p1, "indicationController"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1348
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1349
    return-void
.end method

.method public stopFacelockLightMode()V
    .locals 1

    .line 1333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    .line 1334
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateFacelockLightMode(Z)V

    .line 1335
    return-void
.end method

.method public tryToStartFaceLock()Z
    .locals 3

    .line 643
    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryToStartFaceLock, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 647
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 649
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 651
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 653
    :cond_1
    return v1
.end method

.method public tryToStartFaceLockAfterScreenOn()V
    .locals 4

    .line 657
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string/jumbo v1, "tryToStartFaceLockAfterScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 660
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    goto :goto_0

    .line 664
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 666
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingFacelockWhenBouncer:Z

    .line 667
    const/4 v0, 0x3

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 679
    :goto_0
    return-void

    .line 664
    :cond_3
    :goto_1
    return-void
.end method
