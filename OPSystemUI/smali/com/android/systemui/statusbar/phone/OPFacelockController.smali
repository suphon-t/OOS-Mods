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

.field private mButtonCloseLightView:Landroid/widget/Button;

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

.field private mStartFacelockWhenScreenOn:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWM:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    .line 60
    const-string v0, "com.oneplus.faceunlock"

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    .line 61
    const-string v0, "com.oneplus.faceunlock.FaceUnlockService"

    sput-object v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SERVICE_NAME:Ljava/lang/String;

    .line 62
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

    .line 146
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    .line 117
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    .line 120
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 129
    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    .line 130
    const-wide v1, 0x3fd2d0e560418937L    # 0.294

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS_ADJUSTMENT:D

    .line 131
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    .line 132
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    .line 197
    new-instance v0, Lcom/android/systemui/statusbar/phone/OPFacelockController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$1;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_START_FACELOCK:I

    .line 212
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_STOP_FACELOCK:I

    .line 213
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_UNLOCK:I

    .line 214
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_FAIL:I

    .line 215
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_NO_FACE:I

    .line 216
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_RESET_LOCKOUT:I

    .line 217
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_SKIP_BOUNCER:I

    .line 219
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_RESET_FACELOCK_PENDING:I

    .line 224
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_CAMERA_ERROR:I

    .line 226
    const/16 v1, 0xb

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_NO_PERMISSION:I

    .line 227
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->MSG_UPDATE_FACE_ADDED:I

    .line 313
    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$2;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    .line 886
    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$7;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    .line 1028
    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$9;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mConnection:Landroid/content/ServiceConnection;

    .line 1048
    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$10;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    .line 1066
    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    .line 1181
    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$12;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 147
    const-string v1, "OPFacelockController"

    const-string v2, "new facelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    .line 149
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 152
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 153
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 155
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 156
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 157
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 159
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "FacelockThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 161
    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFacelockThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    .line 162
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    .line 163
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mWM:Landroid/view/IWindowManager;

    .line 166
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0a0143

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    .line 167
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0a0145

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mButtonCloseLightView:Landroid/widget/Button;

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mButtonCloseLightView:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    if-nez v1, :cond_0

    .line 171
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

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->init()V

    .line 175
    :goto_0
    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensor:Landroid/hardware/Sensor;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorRate:I

    .line 179
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 182
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    .line 183
    .local v1, "maxBrightness":I
    int-to-double v2, v1

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS_ADJUSTMENT:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    .line 186
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 190
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.oneplus.faceunlock.action.FACE_SETTING_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 55
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleResetLockout()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleSkipBouncer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleResetFacelockPending()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateIsFaceAdded()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/OPFacelockController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateKeyguardAlpha(IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/OPFacelockController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->launchCamera(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/oneplus/faceunlock/internal/IOPFacelockService;)Lcom/oneplus/faceunlock/internal/IOPFacelockService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateFacelockLightMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStartFacelock()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # Z

    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/systemui/statusbar/phone/OPFacelockLightView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/OPFacelockController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->unlockKeyguard()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleRecognizeFail()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->playFacelockIndicationTextAnim()V

    return-void
.end method

.method private bindFacelock()V
    .locals 6

    .line 945
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    if-eqz v0, :cond_0

    return-void

    .line 947
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 948
    .local v0, "serviceIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .local v1, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 952
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 954
    const-string v2, "OPFacelockController"

    const-string v3, "Binding ok"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    goto :goto_0

    .line 957
    :cond_1
    const-string v2, "OPFacelockController"

    const-string v3, "Binding fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_0
    goto :goto_1

    .line 959
    :catch_0
    move-exception v2

    .line 960
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

    .line 962
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private bindFacelockSetting()V
    .locals 6

    .line 965
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    if-eqz v0, :cond_0

    .line 966
    const-string v0, "OPFacelockController"

    const-string v1, "return Binding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-void

    .line 970
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 971
    .local v0, "serviceIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_PACKAGE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/statusbar/phone/OPFacelockController;->FACELOCK_SETTING_SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    .local v1, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 975
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 977
    const-string v2, "OPFacelockController"

    const-string v3, "Binding setting ok"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBindingSetting:Z

    goto :goto_0

    .line 980
    :cond_1
    const-string v2, "OPFacelockController"

    const-string v3, "Binding setting fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :goto_0
    goto :goto_1

    .line 982
    :catch_0
    move-exception v2

    .line 983
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

    .line 985
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private handleRecognizeFail()V
    .locals 4

    .line 349
    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 351
    const/4 v0, 0x0

    .line 353
    .local v0, "playFailAnimation":Z
    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    rem-int/lit8 v2, v2, 0x5

    if-eqz v2, :cond_0

    .line 354
    const/4 v1, 0x7

    .local v1, "type":I
    goto :goto_0

    .line 356
    .end local v1    # "type":I
    :cond_0
    nop

    .line 359
    .restart local v1    # "type":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    .line 360
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v2, :cond_3

    .line 362
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "OPFacelockController"

    const-string v3, "enter Bouncer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 373
    :cond_2
    const/4 v0, 0x1

    .line 376
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->playFacelockIndicationTextAnim()V

    .line 377
    :cond_4
    const/high16 v2, -0x10000

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 378
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    .line 379
    return-void
.end method

.method private handleResetFacelockPending()V
    .locals 3

    .line 783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 784
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

    .line 785
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    if-eqz v0, :cond_1

    .line 786
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    .line 788
    :cond_1
    return-void
.end method

.method private handleResetLockout()V
    .locals 2

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 335
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 339
    return-void

    .line 336
    :cond_1
    :goto_0
    return-void
.end method

.method private handleSkipBouncer()V
    .locals 2

    .line 342
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "handleSkipBouncer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 344
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 345
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V

    .line 346
    return-void
.end method

.method private handleStartFacelock()V
    .locals 8

    .line 700
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCameraErrorState()Z

    move-result v0

    .line 702
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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    if-nez v1, :cond_0

    .line 705
    const-string v1, "OPFacelockController"

    const-string v2, "not start Facelock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return-void

    .line 710
    :cond_0
    if-eqz v0, :cond_1

    .line 711
    const-string v1, "OPFacelockController"

    const-string v2, "not start when camera error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return-void

    .line 716
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 717
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 718
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 719
    return-void

    .line 723
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    const/4 v5, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 724
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 725
    const-string v1, "OPFacelockController"

    const-string v2, "pending start to screen on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return-void

    .line 728
    :cond_3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 730
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateRecognizedState(II)V

    .line 732
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    .line 734
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 738
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isScreenOffAuthenticating()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-eqz v1, :cond_4

    .line 739
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    .line 740
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateKeyguardAlpha(IZ)V

    .line 741
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 742
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mResetScreenOnRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x258

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 746
    :cond_4
    monitor-enter p0

    .line 748
    const/4 v1, 0x4

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    invoke-interface {v2, v3}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->registerCallback(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    .line 749
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v2}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->prepare()V

    .line 750
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v2, v4}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->startFaceUnlock(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    nop

    .line 764
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 767
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 770
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    .line 772
    return-void

    .line 764
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 757
    :catch_0
    move-exception v2

    .line 758
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

    .line 760
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 761
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 762
    monitor-exit p0

    return-void

    .line 751
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 752
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

    .line 754
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 755
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 756
    monitor-exit p0

    return-void

    .line 764
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private handleStopFacelock()V
    .locals 4

    .line 798
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-nez v0, :cond_0

    .line 799
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

    .line 800
    return-void

    .line 804
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    if-eqz v0, :cond_2

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 806
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPFacelockController"

    const-string v1, "pending stop facelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_1
    return-void

    .line 809
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

    .line 811
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    .line 815
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    .line 817
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelockLightMode()V

    .line 819
    monitor-enter p0

    .line 821
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOPFacelockCallback:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    invoke-interface {v1, v2}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->unregisterCallback(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    .line 822
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v1, v0}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->stopFaceUnlock(I)V

    .line 823
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-interface {v0}, Lcom/oneplus/faceunlock/internal/IOPFacelockService;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    :goto_0
    goto :goto_1

    .line 829
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 826
    :catch_0
    move-exception v0

    .line 827
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

    .line 824
    :catch_1
    move-exception v0

    .line 825
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

    .line 829
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 832
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    .line 834
    .local v0, "source":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 840
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    .line 844
    .end local v0    # "source":Ljava/lang/String;
    :cond_3
    return-void

    .line 829
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

    .line 1276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    .line 1277
    :cond_0
    return-void
.end method

.method private playFacelockIndicationTextAnim()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    :cond_0
    return-void
.end method

.method private registerLightSensor(Z)V
    .locals 5
    .param p1, "register"    # Z

    .line 1200
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1202
    :cond_0
    if-eqz p1, :cond_1

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1209
    :goto_0
    return-void
.end method

.method private stopFacelock()V
    .locals 3

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 795
    return-void
.end method

.method private unlockKeyguard()V
    .locals 7

    .line 895
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper()Z

    move-result v0

    .line 898
    .local v0, "liveWP":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v1

    .line 899
    .local v1, "bouncerShow":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    .line 901
    .local v2, "interActive":Z
    const-string v3, "OPFacelockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unlockKeyguard, bouncer:"

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

    .line 902
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 903
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFacelockUnlocking(Z)V

    .line 904
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 907
    const/4 v4, 0x5

    .line 909
    .local v4, "mode":I
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    if-eqz v5, :cond_1

    if-nez v0, :cond_1

    .line 910
    const/4 v4, 0x1

    goto :goto_0

    .line 911
    :cond_1
    if-eqz v1, :cond_2

    .line 912
    const/4 v4, 0x6

    goto :goto_0

    .line 915
    :cond_2
    if-nez v0, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 916
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking(Z)V

    .line 917
    const/4 v4, 0x0

    goto :goto_0

    .line 919
    :cond_3
    const/4 v4, 0x5

    .line 924
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resetFPTimeout()V

    .line 926
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFPC:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->startWakeAndUnlockForFace(I)V

    .line 928
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 929
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v6, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v5, v3, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    .line 930
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isLighModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    if-eqz v5, :cond_4

    .line 931
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->setAlpha(F)V

    .line 934
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 935
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 936
    return-void

    .line 895
    .end local v0    # "liveWP":Z
    .end local v1    # "bouncerShow":Z
    .end local v2    # "interActive":Z
    .end local v4    # "mode":I
    :cond_5
    :goto_1
    return-void
.end method

.method private updateFacelockLightMode(Z)V
    .locals 4
    .param p1, "show"    # Z

    .line 1212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    if-nez v0, :cond_0

    return-void

    .line 1215
    :cond_0
    if-eqz p1, :cond_1

    .line 1216
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->overrideScreenBrightnessRangeMinimum(I)V

    goto :goto_0

    .line 1220
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->overrideScreenBrightnessRangeMinimum(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    :goto_0
    goto :goto_2

    .line 1220
    :goto_1
    nop

    .line 1221
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFacelockLightMode, overrideScreenBrightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController$13;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1242
    return-void
.end method

.method private updateIsFaceAdded()V
    .locals 7

    .line 636
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 638
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelockSetting()V

    .line 639
    return-void

    .line 642
    :cond_0
    const/4 v0, 0x1

    move v2, v0

    .line 644
    .local v2, "state":I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    invoke-interface {v3, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 647
    goto :goto_0

    .line 645
    :catch_0
    move-exception v3

    .line 646
    .local v3, "re":Ljava/lang/Exception;
    const-string v4, "OPFacelockController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateIsFaceAdded fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v3    # "re":Ljava/lang/Exception;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v3

    .line 651
    .local v3, "preAdded":Z
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 652
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

    .line 655
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAdded()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 656
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 657
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    if-eqz v1, :cond_3

    .line 659
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 660
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->updateBouncerPromptReason()V

    .line 661
    const-string v1, "OPFacelockController"

    const-string v4, "face is added and not allowed, update Prompt reason"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 668
    if-eq v0, v3, :cond_5

    .line 669
    if-eqz v0, :cond_4

    .line 670
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLock()Z

    goto :goto_2

    .line 672
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 676
    :cond_5
    :goto_2
    return-void
.end method

.method private updateKeyguardAlpha(IZ)V
    .locals 5
    .param p1, "alpha"    # I
    .param p2, "updateState"    # Z

    .line 848
    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update alpha:"

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

    .line 851
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 852
    if-eqz p2, :cond_0

    .line 853
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 854
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 870
    if-ne p1, v0, :cond_2

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    .line 872
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintEnrolled(I)Z

    move-result v1

    .line 873
    .local v1, "fpEnrolled":Z
    if-eqz p2, :cond_2

    .line 874
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 875
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 876
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 878
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mOffAuthenticateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 879
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FACEUNLOCK:I

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    .line 884
    .end local v1    # "fpEnrolled":Z
    :cond_2
    :goto_0
    return-void
.end method

.method private updateNotifyMessage(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "color"    # I

    .line 988
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFacelockNotifyMsgId(I)I

    move-result v0

    .line 990
    .local v0, "msgId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController$8;-><init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;III)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1026
    return-void
.end method

.method private updateRecognizedState(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "color"    # I

    .line 324
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    if-eqz v0, :cond_0

    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFacelockStateChanged(I)V

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateNotifyMessage(II)V

    .line 328
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 329
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 331
    :cond_1
    return-void
.end method


# virtual methods
.method public canLaunchFacelock()Z
    .locals 3

    .line 618
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 619
    const-string v0, "OPFacelockController"

    const-string v2, "not start when camera launching"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return v1

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 622
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPFacelockController"

    const-string v2, "not allow to facelock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_1
    return v1

    .line 624
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isFacelockTimeout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    const-string v0, "OPFacelockController"

    const-string v2, "timeout, not allow to facelock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return v1

    .line 628
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public disPatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightView:Lcom/android/systemui/statusbar/phone/OPFacelockLightView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/OPFacelockLightView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1265
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1281
    const-string v0, "  OPFacelockController: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1282
    const-string v0, "  mFailAttempts: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1283
    const-string v0, "  mLockout: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1284
    const-string v0, "  mBinding: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBinding:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1285
    const-string v0, "  mCameraLaunching: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1286
    const-string v0, "  mBoundToService: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1287
    const-string v0, "  mFaceLockActive: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1288
    const-string v0, "  mService: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mService:Lcom/oneplus/faceunlock/internal/IOPFacelockService;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1289
    const-string v0, "  isFacelockEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1290
    const-string v0, "  isAutoFacelockEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoFacelockEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1291
    const-string v0, "  isFacelockLightingEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockLightingEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1292
    const-string v0, "  FacelockRunningType: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFacelockRunningType()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1293
    const-string v0, "  isFacelockTimeout: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->isFacelockTimeout()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1294
    const-string v0, "  isFacelockAllowed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAllowed()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1295
    const-string v0, "  mIsKeyguardShowing: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1296
    const-string v0, "  mBouncer: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1297
    const-string v0, "  mIsScreenTurnedOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1298
    const-string v0, "  mNeedToPendingStopFacelock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1299
    const-string v0, "  mPendingStopFacelock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingStopFacelock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1300
    const-string v0, "  mPendingLaunchCameraSource: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    const-string v0, "  mIsScreenOffUnlock: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenOffUnlock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1302
    const-string v0, "  mStartFacelockWhenScreenOn: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1303
    const-string v0, "  mIsSleep: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1304
    const-string v0, "  mLightingModeEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1305
    const-string v0, "  LIGHTING_MODE_SENSOR_THRESHOLD: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1306
    const-string v0, "  LIGHTING_MODE_BRIGHTNESS: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1308
    return-void
.end method

.method public isFacelockRunning()Z
    .locals 1

    .line 632
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    return v0
.end method

.method public isFacelockTimeout()Z
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    .line 941
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

    .line 1260
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLightingModeEnabled:Z

    return v0
.end method

.method public notifyCameraLaunching(ZLjava/lang/String;)Z
    .locals 4
    .param p1, "isCameraLaunching"    # Z
    .param p2, "source"    # Ljava/lang/String;

    .line 681
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_0

    .line 682
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 685
    :cond_0
    const/4 v0, 0x0

    .line 687
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

    .line 689
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-eqz v1, :cond_2

    .line 690
    if-eqz p2, :cond_1

    .line 691
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mPendingLaunchCameraSource:Ljava/lang/String;

    .line 692
    const/4 v0, 0x1

    .line 694
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 696
    :cond_2
    return v0
.end method

.method public onClearFailedFacelockAttempts()V
    .locals 3

    .line 578
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

    .line 579
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFailAttempts:I

    .line 580
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mLockout:Z

    .line 581
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1250
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onClick to stop Lighting mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelockLightMode()V

    .line 1252
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 3

    .line 525
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

    .line 526
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_1

    .line 527
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 531
    return-void
.end method

.method public onDreamingStateChanged(Z)V
    .locals 3
    .param p1, "dreaming"    # Z

    .line 485
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

    .line 486
    :cond_0
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .line 472
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

    .line 474
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    .line 478
    const-string v1, "persist.sys.facelock.lsensor"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_SENSOR_THRESHOLD:I

    .line 479
    const-string v0, "persist.sys.facelock.bright"

    iget v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->LIGHTING_MODE_BRIGHTNESS:I

    .line 481
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3
    .param p1, "isBouncer"    # Z

    .line 567
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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBouncer:Z

    .line 570
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 571
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLock()Z

    .line 574
    :cond_1
    return-void
.end method

.method public onKeyguardReset()V
    .locals 2

    .line 491
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_0

    .line 492
    return-void

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_3

    .line 495
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mFaceLockActive:Z

    if-eqz v0, :cond_2

    .line 496
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPFacelockController"

    const-string v1, "onKeyguardReset to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 499
    :cond_2
    return-void

    .line 503
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 505
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "OPFacelockController"

    const-string v1, "onKeyguardReset to start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 510
    :cond_5
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .line 536
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

    .line 537
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 539
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-nez v0, :cond_2

    .line 540
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 545
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 547
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 548
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 555
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 557
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 558
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 559
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 560
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 562
    :cond_4
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsKeyguardShowing:Z

    .line 563
    return-void
.end method

.method public onPasswordLockout()V
    .locals 2

    .line 593
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onPasswordLockout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 595
    return-void
.end method

.method public onPreStartedGoingToSleep()V
    .locals 2

    .line 448
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onPreStartedGoingToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 450
    return-void
.end method

.method public onPreStartedWakingUp()V
    .locals 3

    .line 394
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

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 396
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 403
    return-void

    .line 397
    :cond_1
    :goto_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .line 443
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    .line 445
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .line 422
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

    .line 423
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsScreenTurnedOn:Z

    .line 426
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    if-eqz v1, :cond_2

    .line 427
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 431
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 432
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v1, :cond_2

    .line 433
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 434
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 436
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 439
    :cond_2
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .line 454
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

    .line 456
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsGoingToSleep:Z

    .line 460
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 462
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mCameraLaunching:Z

    .line 463
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 468
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    .line 408
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

    .line 409
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIsSleep:Z

    .line 411
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 418
    return-void

    .line 412
    :cond_1
    :goto_0
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    .line 585
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelock()V

    .line 587
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->bindFacelockSetting()V

    .line 588
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 516
    if-eqz p1, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 519
    :cond_0
    return-void
.end method

.method public resetFacelockPending()V
    .locals 1

    .line 776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mNeedToPendingStopFacelock:Z

    .line 777
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelock()V

    .line 778
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p1, "indicationController"    # Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1270
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mIndicator:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1271
    return-void
.end method

.method public stopFacelockLightMode()V
    .locals 1

    .line 1255
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->registerLightSensor(Z)V

    .line 1256
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->updateFacelockLightMode(Z)V

    .line 1257
    return-void
.end method

.method public tryToStartFaceLock()Z
    .locals 3

    .line 599
    const-string v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryToStartFaceLock, bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->canLaunchFacelock()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 603
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mBoundToService:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 609
    :cond_1
    return v1
.end method

.method public tryToStartFaceLockAfterScreenOn()V
    .locals 2

    .line 613
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPFacelockController"

    const-string v1, "tryToStartFaceLockAfterScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController;->mStartFacelockWhenScreenOn:Z

    .line 615
    return-void
.end method
