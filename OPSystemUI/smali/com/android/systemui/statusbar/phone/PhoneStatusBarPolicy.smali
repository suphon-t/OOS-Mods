.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
.implements Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;
.implements Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$SettingObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBgHandler:Landroid/os/Handler;

.field private mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBluetoothContentDescription:Ljava/lang/String;

.field private mBluetoothIconId:I

.field private final mCast:Lcom/android/systemui/statusbar/policy/CastController;

.field private final mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentNotifs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentUserSetup:Z

.field private final mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private mDockedStackExists:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsNotifyShown:Z

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mManagedProfileIconVisible:Z

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private final mNextAlarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

.field private final mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private final mNfcReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOPNotifController:Lcom/oneplus/notification/OPNotificationController;

.field private mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

.field private final mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mRemoveCastIconRunnable:Ljava/lang/Runnable;

.field private final mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mSettingObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$SettingObserver;

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private final mSlotAlarmClock:Ljava/lang/String;

.field private final mSlotBluetooth:Ljava/lang/String;

.field private final mSlotCast:Ljava/lang/String;

.field private final mSlotDataSaver:Ljava/lang/String;

.field private final mSlotHeadset:Ljava/lang/String;

.field private final mSlotHotspot:Ljava/lang/String;

.field private final mSlotLocation:Ljava/lang/String;

.field private final mSlotManagedProfile:Ljava/lang/String;

.field private final mSlotRotate:Ljava/lang/String;

.field private final mSlotTty:Ljava/lang/String;

.field private final mSlotVolume:Ljava/lang/String;

.field private final mSlotZen:Ljava/lang/String;

.field private final mTaskListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;

.field private mVibrateWhenMute:I

.field private mVolumeVisible:Z

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 129
    const-string v0, "PhoneStatusBarPolicy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconController"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$SettingObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSettingObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$SettingObserver;

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVibrateWhenMute:I

    .line 156
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 170
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentNotifs:Landroid/util/ArraySet;

    .line 171
    const-class v1, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/UiOffloadThread;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 175
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 182
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    .line 194
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsNotifyShown:Z

    .line 195
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    .line 204
    new-instance v2, Landroid/os/Handler;

    sget-object v3, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBgHandler:Landroid/os/Handler;

    .line 205
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    .line 206
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothContentDescription:Ljava/lang/String;

    .line 1010
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;

    .line 1027
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 1034
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    .line 1041
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    .line 1120
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mTaskListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

    .line 1128
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1181
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$9;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    .line 1204
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$10;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 213
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 214
    const-class v2, Lcom/android/systemui/statusbar/policy/CastController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/CastController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    .line 215
    const-class v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 216
    const-class v2, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 217
    const-class v2, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 218
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 219
    const-class v2, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 220
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserManager:Landroid/os/UserManager;

    .line 221
    const-class v2, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 222
    const-class v2, Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DataSaverController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 223
    const-class v2, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 224
    const-class v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 225
    const-class v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 226
    const-class v2, Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 229
    const-class v2, Lcom/oneplus/notification/OPNotificationController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/notification/OPNotificationController;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mOPNotifController:Lcom/oneplus/notification/OPNotificationController;

    .line 232
    const v2, 0x104063f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    .line 233
    const v2, 0x1040646

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    .line 234
    const v2, 0x104063e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    .line 235
    const v2, 0x1040655

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    .line 236
    const v2, 0x104065b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    .line 237
    const v2, 0x1040657

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    .line 238
    const v2, 0x104063c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    .line 239
    const v2, 0x1040649

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    .line 241
    const v2, 0x1040650

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    .line 242
    const v2, 0x1040645

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    .line 243
    const v2, 0x1040643

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    .line 244
    const v2, 0x1040648

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    .line 247
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v3, "com.oem.intent.action.ACTION_USB_HEADSET_PLUG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v3, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v3, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const/4 v3, 0x1

    new-array v4, v3, [I

    const/16 v5, 0x3a

    aput v5, v4, v0

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v5, "pref_name_notify_shown"

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "pref_key_notify_shown"

    .line 262
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsNotifyShown:Z

    .line 263
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsNotifyShown:Z

    if-nez v4, :cond_0

    .line 264
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/NotificationManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    .line 270
    :cond_0
    const-string v4, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v2, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 274
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_vibrate_under_silent"

    .line 275
    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSettingObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$SettingObserver;

    const/4 v7, -0x1

    .line 274
    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 279
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserSwitchListener:Landroid/app/SynchronousUserSwitchObserver;

    const-string v6, "PhoneStatusBarPolicy"

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_0

    .line 280
    :catch_0
    move-exception v4

    .line 285
    :goto_0
    const-class v4, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    .line 286
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v4, p0}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY()V

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 296
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    const v6, 0x7f0807bf

    invoke-interface {v4, v5, v6, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 297
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 300
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    const v6, 0x7f080a76

    invoke-interface {v4, v5, v6, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 301
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 304
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    const v6, 0x7f080889

    invoke-interface {v4, v5, v6, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 305
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 309
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    const v6, 0x7f0807d1

    invoke-interface {v4, v5, v6, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 310
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 313
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    const v6, 0x7f08081a

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f110103

    .line 314
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 313
    invoke-interface {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 315
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 318
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    const v6, 0x7f08081c

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f110086

    .line 319
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-interface {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 320
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 323
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    const v6, 0x7f080811

    const v7, 0x7f110065

    .line 324
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 323
    invoke-interface {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 325
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 328
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string v5, "nfc"

    const v6, 0x7f08081e

    invoke-interface {v4, v5, v6, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 331
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 332
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string v5, "nfc"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-interface {v4, v5, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    .end local v1    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    goto :goto_2

    .line 333
    :catch_1
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const-string v3, "PhoneStatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get Nfc adapter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string v4, "nfc"

    invoke-interface {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 339
    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 344
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->addCallback(Ljava/lang/Object;)V

    .line 345
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addCallback(Ljava/lang/Object;)V

    .line 346
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    .line 347
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 348
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCastCallback:Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/policy/CastController;->addCallback(Ljava/lang/Object;)V

    .line 349
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    .line 350
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addCallback(Ljava/lang/Object;)V

    .line 351
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/DataSaverController;->addCallback(Ljava/lang/Object;)V

    .line 352
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    .line 353
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/LocationController;->addCallback(Ljava/lang/Object;)V

    .line 355
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1, v3}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 356
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mTaskListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

    invoke-virtual {v1, v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 359
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 360
    .local v1, "noMan":Landroid/app/NotificationManager;
    invoke-virtual {v1}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    array-length v4, v3

    :goto_3
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 361
    .local v5, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_2

    .line 362
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 360
    .end local v5    # "notification":Landroid/service/notification/StatusBarNotification;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 365
    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$eamN1_naA3onhFWH3wlclHRzu6s;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$eamN1_naA3onhFWH3wlclHRzu6s;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    invoke-static {v0}, Lcom/android/systemui/DockedStackExistsListener;->register(Ljava/util/function/Consumer;)V

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # I

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateHeadsetPlug(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sendHeadsetNotify()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->cancelHeadsetNotify()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 121
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateForegroundInstantApps()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/policy/UserInfoController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateCast()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/app/AlarmManager$AlarmClockInfo;)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .param p1, "x1"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 121
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    return-object p1
.end method

.method private buildAlarmContentDescription()Ljava/lang/String;
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f1105db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cancelHeadsetNotify()V
    .locals 4

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "headset"

    const v2, 0xd348

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1243
    :cond_0
    return-void
.end method

.method private checkStack(IILandroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    .locals 1
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p4, "noMan"    # Landroid/app/NotificationManager;
    .param p5, "pm"    # Landroid/content/pm/IPackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/app/NotificationManager;",
            "Landroid/content/pm/IPackageManager;",
            ")V"
        }
    .end annotation

    .line 898
    .local p3, "notifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 899
    .local v0, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->checkStack(Landroid/app/ActivityManager$StackInfo;Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    .end local v0    # "info":Landroid/app/ActivityManager$StackInfo;
    goto :goto_0

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 903
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private checkStack(Landroid/app/ActivityManager$StackInfo;Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    .locals 8
    .param p1, "info"    # Landroid/app/ActivityManager$StackInfo;
    .param p3, "noMan"    # Landroid/app/NotificationManager;
    .param p4, "pm"    # Landroid/content/pm/IPackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$StackInfo;",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/app/NotificationManager;",
            "Landroid/content/pm/IPackageManager;",
            ")V"
        }
    .end annotation

    .line 907
    .local p2, "notifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_1

    .line 908
    :cond_0
    iget-object v0, p1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, "pkg":Ljava/lang/String;
    iget v1, p1, Landroid/app/ActivityManager$StackInfo;->userId:I

    invoke-direct {p0, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->hasNotif(Landroid/util/ArraySet;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 912
    const/16 v1, 0x2000

    iget v2, p1, Landroid/app/ActivityManager$StackInfo;->userId:I

    invoke-interface {p4, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object v7, v1

    .line 914
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 915
    iget v3, p1, Landroid/app/ActivityManager$StackInfo;->userId:I

    iget-object v1, p1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v2, p1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v6, v1, v2

    move-object v1, p0

    move-object v2, v0

    move-object v4, v7

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->postEphemeralNotif(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/app/NotificationManager;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_0

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 921
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 907
    :cond_2
    :goto_1
    return-void
.end method

.method private static formatNextAlarm(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p1, "context"    # Landroid/content/Context;

    .line 437
    if-nez p0, :cond_0

    .line 438
    const-string v0, ""

    return-object v0

    .line 440
    :cond_0
    nop

    .line 441
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 440
    invoke-static {p1, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    const-string v0, "EHm"

    goto :goto_0

    :cond_1
    const-string v0, "Ehma"

    .line 442
    .local v0, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "pattern":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, "dateString":Ljava/lang/String;
    const v3, 0x7f1100ae

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getBluetoothBatteryIcon(I)I
    .locals 1
    .param p1, "batteryLevel"    # I

    .line 729
    const/4 v0, 0x0

    .line 730
    .local v0, "iconId":I
    div-int/lit8 p1, p1, 0xa

    .line 731
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 763
    :pswitch_0
    const v0, 0x7f0807c6

    goto :goto_0

    .line 760
    :pswitch_1
    const v0, 0x7f0807d0

    .line 761
    goto :goto_0

    .line 757
    :pswitch_2
    const v0, 0x7f0807cf

    .line 758
    goto :goto_0

    .line 754
    :pswitch_3
    const v0, 0x7f0807ce

    .line 755
    goto :goto_0

    .line 751
    :pswitch_4
    const v0, 0x7f0807cd

    .line 752
    goto :goto_0

    .line 748
    :pswitch_5
    const v0, 0x7f0807cc

    .line 749
    goto :goto_0

    .line 745
    :pswitch_6
    const v0, 0x7f0807cb

    .line 746
    goto :goto_0

    .line 742
    :pswitch_7
    const v0, 0x7f0807ca

    .line 743
    goto :goto_0

    .line 739
    :pswitch_8
    const v0, 0x7f0807c8

    .line 740
    goto :goto_0

    .line 736
    :pswitch_9
    const v0, 0x7f0807c5

    .line 737
    goto :goto_0

    .line 733
    :pswitch_a
    const v0, 0x7f0807c4

    .line 734
    nop

    .line 767
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getTaskIntent(II)Landroid/content/Intent;
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 988
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 989
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 990
    .local v0, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    nop

    .local v2, "i":I
    :goto_0
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 991
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v2, p1, :cond_0

    .line 992
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 990
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 997
    .end local v0    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 995
    :catch_0
    move-exception v0

    .line 998
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private hasNotif(Landroid/util/ArraySet;Ljava/lang/String;I)Z
    .locals 2
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .line 1002
    .local p1, "notifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v0, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1003
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentNotifs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1005
    const/4 v1, 0x1

    return v1

    .line 1007
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "exists"    # Ljava/lang/Boolean;

    .line 366
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDockedStackExists:Z

    .line 367
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateForegroundInstantApps()V

    .line 368
    return-void
.end method

.method public static synthetic lambda$updateBluetooth$2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "iconId"    # I
    .param p2, "contentDescription"    # Ljava/lang/String;
    .param p3, "bluetoothVisible"    # Z

    .line 715
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothContentDescription:Ljava/lang/String;

    .line 716
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 718
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothIconId:I

    .line 719
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetoothContentDescription:Ljava/lang/String;

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 722
    return-void
.end method

.method public static synthetic lambda$updateBluetooth$3(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 7

    .line 670
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBarPolicy"

    const-string/jumbo v1, "updateBluetooth"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    const v1, 0x7f1100b7

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v0

    .line 678
    .local v0, "connected":Z
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_1

    const-string v3, "PhoneStatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateBluetooth connected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isUST()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 681
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v2

    .line 681
    .local v2, "bluetoothVisible":Z
    :goto_0
    goto :goto_1

    .line 684
    .end local v2    # "bluetoothVisible":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 685
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothEnabled()Z

    move-result v2

    goto :goto_0

    .line 687
    :cond_3
    nop

    .line 690
    .restart local v2    # "bluetoothVisible":Z
    :goto_1
    if-eqz v0, :cond_6

    .line 692
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v3, 0x7f110054

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "contentDescription":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBatteryLevel()I

    move-result v3

    .line 694
    .local v3, "batteryLevel":I
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_4

    .line 695
    const-string v4, "PhoneStatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateBluetooth batteryLevel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_4
    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 697
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getBluetoothBatteryIcon(I)I

    move-result v4

    if-eqz v4, :cond_5

    .line 698
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getBluetoothBatteryIcon(I)I

    move-result v4

    .line 698
    .local v4, "iconId":I
    goto :goto_2

    .line 700
    .end local v4    # "iconId":I
    :cond_5
    const v4, 0x7f0807d3

    .line 700
    .end local v3    # "batteryLevel":I
    .restart local v4    # "iconId":I
    :goto_2
    move v3, v4

    .line 702
    .end local v4    # "iconId":I
    .local v3, "iconId":I
    goto :goto_3

    .line 703
    .end local v1    # "contentDescription":Ljava/lang/String;
    .end local v3    # "iconId":I
    :cond_6
    const v3, 0x7f0807d2

    .line 704
    .restart local v3    # "iconId":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 705
    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 705
    .end local v0    # "connected":Z
    .restart local v1    # "contentDescription":Ljava/lang/String;
    :goto_3
    move-object v0, v1

    .line 707
    .end local v1    # "contentDescription":Ljava/lang/String;
    .local v0, "contentDescription":Ljava/lang/String;
    goto :goto_4

    .line 708
    .end local v0    # "contentDescription":Ljava/lang/String;
    .end local v2    # "bluetoothVisible":Z
    .end local v3    # "iconId":I
    :cond_7
    const v3, 0x7f0807d2

    .line 709
    .restart local v3    # "iconId":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 710
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 711
    .restart local v0    # "contentDescription":Ljava/lang/String;
    nop

    .line 711
    .restart local v2    # "bluetoothVisible":Z
    :goto_4
    move v1, v2

    .line 714
    .end local v2    # "bluetoothVisible":Z
    .local v1, "bluetoothVisible":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$QSXgv6Ubq6vAhPg1YhAS1xgaxbY;

    invoke-direct {v4, p0, v3, v0, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$QSXgv6Ubq6vAhPg1YhAS1xgaxbY;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;ILjava/lang/String;Z)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 723
    return-void
.end method

.method static synthetic lambda$updateForegroundInstantApps$6(Landroid/app/NotificationManager;Landroid/util/Pair;)V
    .locals 3
    .param p0, "noMan"    # Landroid/app/NotificationManager;
    .param p1, "v"    # Landroid/util/Pair;

    .line 889
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 890
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 889
    const/4 v2, 0x7

    invoke-virtual {p0, v0, v2, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic lambda$updateForegroundInstantApps$7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    .locals 8
    .param p1, "notifs"    # Landroid/util/ArraySet;
    .param p2, "noMan"    # Landroid/app/NotificationManager;
    .param p3, "pm"    # Landroid/content/pm/IPackageManager;

    .line 863
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 864
    .local v0, "focusedStack":Landroid/app/ActivityManager$StackInfo;
    if-eqz v0, :cond_3

    .line 868
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mOPNotifController:Lcom/oneplus/notification/OPNotificationController;

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_0

    .line 869
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 868
    :goto_0
    invoke-virtual {v1, v2}, Lcom/oneplus/notification/OPNotificationController;->setTopActivity(Ljava/lang/String;)V

    .line 871
    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 872
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 874
    .local v1, "windowingMode":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mOPNotifController:Lcom/oneplus/notification/OPNotificationController;

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/oneplus/notification/OPNotificationController;->setIsFreeForm(Z)V

    .line 876
    if-eq v1, v4, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 878
    :cond_2
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->checkStack(Landroid/app/ActivityManager$StackInfo;Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V

    .line 881
    .end local v1    # "windowingMode":I
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDockedStackExists:Z

    if-eqz v1, :cond_4

    .line 882
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->checkStack(IILandroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    .end local v0    # "focusedStack":Landroid/app/ActivityManager$StackInfo;
    :cond_4
    goto :goto_2

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 889
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$b-IB1HjQgPhniLJeVuSxUgUdYPE;

    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$b-IB1HjQgPhniLJeVuSxUgUdYPE;-><init>(Landroid/app/NotificationManager;)V

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 891
    return-void
.end method

.method public static synthetic lambda$updateManagedProfile$4(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;ZI)V
    .locals 6
    .param p1, "isManagedProfile"    # Z
    .param p2, "userId"    # I

    .line 835
    if-eqz p1, :cond_1

    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 837
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 838
    :cond_0
    const/4 v0, 0x1

    .line 839
    .local v0, "showIcon":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    const v3, 0x7f08081c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x7f110086

    .line 841
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 839
    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 843
    .end local v0    # "showIcon":Z
    :cond_1
    const/4 v0, 0x0

    .line 845
    .restart local v0    # "showIcon":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    if-eq v1, v0, :cond_2

    .line 846
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotManagedProfile:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 847
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mManagedProfileIconVisible:Z

    .line 849
    :cond_2
    return-void
.end method

.method public static synthetic lambda$updateManagedProfile$5(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 4

    .line 829
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getLastResumedActivityUserId()I

    move-result v0

    .line 830
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    .line 831
    .local v1, "isManagedProfile":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$w9anoxTS5-IhbLz0At8h8YyE07M;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$w9anoxTS5-IhbLz0At8h8YyE07M;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;ZI)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    .end local v1    # "isManagedProfile":Z
    goto :goto_0

    .line 850
    .end local v0    # "userId":I
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PhoneStatusBarPolicy"

    const-string/jumbo v2, "updateManagedProfile: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 853
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private postEphemeralNotif(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/app/NotificationManager;I)V
    .locals 17
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "noMan"    # Landroid/app/NotificationManager;
    .param p5, "taskId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    .line 925
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    .line 926
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "android.substName"

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 927
    const v7, 0x7f1102c5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 926
    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentNotifs:Landroid/util/ArraySet;

    new-instance v6, Landroid/util/Pair;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 929
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f1102c6

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 930
    .local v6, "message":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "package"

    .line 932
    const/4 v9, 0x0

    invoke-static {v8, v2, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    .line 930
    const/4 v8, 0x0

    invoke-static {v0, v8, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 933
    .local v7, "appInfoAction":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v10, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v11, 0x7f110132

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10, v7}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 934
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v10

    .line 936
    .local v10, "action":Landroid/app/Notification$Action;
    move/from16 v11, p5

    invoke-direct {v1, v11, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->getTaskIntent(II)Landroid/content/Intent;

    move-result-object v12

    .line 937
    .local v12, "browserIntent":Landroid/content/Intent;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v13, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget-object v14, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-direct {v0, v13, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v13, v0

    .line 938
    .local v13, "builder":Landroid/app/Notification$Builder;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {v12, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 941
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v14, 0x200

    .line 942
    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v14, 0x10000000

    .line 943
    invoke-virtual {v0, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 945
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v12, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 947
    .local v14, "pendingIntent":Landroid/app/PendingIntent;
    move-object v15, v9

    .line 949
    .local v15, "aiaComponent":Landroid/content/ComponentName;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v0

    .line 952
    goto :goto_0

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 953
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 954
    invoke-virtual {v0, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v9, "android.intent.action.VIEW"

    .line 955
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v9, "android.intent.category.BROWSABLE"

    .line 956
    invoke-virtual {v0, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unique:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    move-object/from16 v16, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 957
    .end local v12    # "browserIntent":Landroid/content/Intent;
    .local v16, "browserIntent":Landroid/content/Intent;
    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v8, "android.intent.extra.PACKAGE_NAME"

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 958
    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v8, "android.intent.extra.VERSION_CODE"

    iget v9, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    const v11, 0x7fffffff

    and-int/2addr v9, v11

    .line 959
    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v8, "android.intent.extra.LONG_VERSION_CODE"

    iget v9, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    .line 960
    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v8, "android.intent.extra.EPHEMERAL_FAILURE"

    .line 961
    invoke-virtual {v0, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    const-string v8, "android.intent.extra.INSTANT_APP_FAILURE"

    .line 962
    invoke-virtual {v0, v8, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 964
    .local v0, "goToWebIntent":Landroid/content/Intent;
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 965
    .local v8, "webPendingIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/app/Notification$Action$Builder;

    iget-object v11, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v12, 0x7f110292

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v9, v12, v11, v8}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 966
    invoke-virtual {v9}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v9

    .line 967
    .local v9, "webAction":Landroid/app/Notification$Action;
    invoke-virtual {v13, v9}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 967
    .end local v0    # "goToWebIntent":Landroid/content/Intent;
    .end local v8    # "webPendingIntent":Landroid/app/PendingIntent;
    .end local v9    # "webAction":Landroid/app/Notification$Action;
    .end local v14    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v15    # "aiaComponent":Landroid/content/ComponentName;
    goto :goto_1

    .line 970
    .end local v16    # "browserIntent":Landroid/content/Intent;
    .restart local v12    # "browserIntent":Landroid/content/Intent;
    :cond_0
    move-object/from16 v16, v12

    .line 970
    .end local v12    # "browserIntent":Landroid/content/Intent;
    .restart local v16    # "browserIntent":Landroid/content/Intent;
    :goto_1
    const/4 v0, 0x7

    .line 971
    invoke-virtual {v13, v5}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 972
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 973
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v11, 0x7f060241

    .line 974
    invoke-virtual {v9, v11}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 975
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget v9, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 976
    invoke-static {v2, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    .line 977
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v11, 0x7f080638

    invoke-static {v9, v11}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 979
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x1

    .line 980
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 981
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 970
    move-object/from16 v11, p4

    invoke-virtual {v11, v2, v0, v8, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 983
    return-void
.end method

.method private sendHeadsetNotify()V
    .locals 10

    .line 1218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsNotifyShown:Z

    if-nez v0, :cond_0

    .line 1219
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f08046e

    .line 1221
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x7f11040c

    .line 1222
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x7f11040b

    .line 1223
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1225
    .local v0, "nb":Landroid/app/Notification$Builder;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.oneplus.EARPHONE_MODE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1226
    .local v1, "notificationIntent":Landroid/content/Intent;
    const-string v2, "earmode_from_notify"

    const/4 v9, 0x1

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1227
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, v1

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1229
    .local v2, "intent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1230
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v9}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 1231
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 1232
    .local v3, "n":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v5, "headset"

    const v6, 0xd348

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1233
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIsNotifyShown:Z

    .line 1234
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v5, "pref_name_notify_shown"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1235
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_key_notify_shown"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1237
    .end local v0    # "nb":Landroid/app/Notification$Builder;
    .end local v1    # "notificationIntent":Landroid/content/Intent;
    .end local v2    # "intent":Landroid/app/PendingIntent;
    .end local v3    # "n":Landroid/app/Notification;
    :cond_0
    return-void
.end method

.method private updateAlarm()V
    .locals 10

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 421
    .local v0, "alarm":Landroid/app/AlarmManager$AlarmClockInfo;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 422
    .local v3, "hasAlarm":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v4

    .line 423
    .local v4, "zen":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    .line 424
    .local v5, "zenNone":Z
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    if-eqz v5, :cond_2

    const v8, 0x7f0807c0

    goto :goto_2

    .line 425
    :cond_2
    const v8, 0x7f0807bf

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->buildAlarmContentDescription()Ljava/lang/String;

    move-result-object v9

    .line 424
    invoke-interface {v6, v7, v8, v9}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 426
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    if-eqz v8, :cond_3

    if-eqz v3, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-interface {v6, v7, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 427
    return-void
.end method

.method private final updateBluetooth()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$6oeqgwrqP6lMviv4JH0qDD1ROvA;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$6oeqgwrqP6lMviv4JH0qDD1ROvA;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 725
    return-void
.end method

.method private updateCast()V
    .locals 7

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "isCasting":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCast:Lcom/android/systemui/statusbar/policy/CastController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/CastController;->getCastDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    .line 802
    .local v2, "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    iget v4, v2, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    if-eq v4, v3, :cond_1

    iget v4, v2, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 807
    .end local v2    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_0
    goto :goto_0

    .line 804
    .restart local v2    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 805
    nop

    .line 808
    .end local v2    # "device":Lcom/android/systemui/statusbar/policy/CastController$CastDevice;
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "PhoneStatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCast: isCasting: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 810
    if-eqz v0, :cond_4

    .line 811
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    const v4, 0x7f0807d1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f11005b

    .line 812
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 811
    invoke-interface {v1, v2, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 813
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_2

    .line 817
    :cond_4
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "PhoneStatusBarPolicy"

    const-string/jumbo v2, "updateCast: hiding icon in 3 sec..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRemoveCastIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 820
    :goto_2
    return-void
.end method

.method private updateForegroundInstantApps()V
    .locals 5

    .line 857
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 858
    .local v0, "noMan":Landroid/app/NotificationManager;
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentNotifs:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 859
    .local v1, "notifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 860
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentNotifs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 861
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v4, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$RJswXgAbtWXnoRcOebMYKb7rziw;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$RJswXgAbtWXnoRcOebMYKb7rziw;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 892
    return-void
.end method

.method private updateHeadsetPlug(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1095
    const-string/jumbo v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1096
    .local v0, "connected":Z
    :goto_0
    const-string v3, "microphone"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 1097
    .local v3, "hasMic":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 1098
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 1099
    const v4, 0x7f110102

    goto :goto_2

    .line 1100
    :cond_2
    const v4, 0x7f110101

    .line 1098
    :goto_2
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1101
    .local v1, "contentDescription":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    if-eqz v3, :cond_3

    const v6, 0x7f08049d

    goto :goto_3

    .line 1102
    :cond_3
    const v6, 0x7f08049c

    .line 1101
    :goto_3
    invoke-interface {v4, v5, v6, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 1103
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->sendHeadsetNotify()V

    .line 1107
    .end local v1    # "contentDescription":Ljava/lang/String;
    goto :goto_4

    .line 1108
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->cancelHeadsetNotify()V

    .line 1113
    :goto_4
    return-void
.end method

.method private updateLocation()V
    .locals 5

    .line 411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    const v2, 0x7f08081b

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v4, 0x7f110084

    .line 413
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void
.end method

.method private updateManagedProfile()V
    .locals 2

    .line 826
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$KrnKIpI4UkCe97j69rEyLfdNm5s;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$KrnKIpI4UkCe97j69rEyLfdNm5s;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 854
    return-void
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 449
    const-string v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "stateExtra":Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    .line 452
    :cond_0
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    .line 454
    :cond_1
    const-string v1, "CARD_RESTRICTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_RESTRICTED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    .line 456
    :cond_2
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 457
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_1

    .line 458
    :cond_3
    const-string v1, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 459
    const-string v1, "reason"

    .line 460
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "lockedReason":Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 462
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 463
    :cond_4
    const-string v2, "PUK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 464
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 466
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 468
    .end local v1    # "lockedReason":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 469
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 471
    :goto_1
    return-void
.end method

.method private final updateTTY()V
    .locals 2

    .line 772
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    .line 773
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 774
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-nez v0, :cond_0

    .line 775
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(I)V

    goto :goto_0

    .line 777
    :cond_0
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(I)V

    .line 779
    :goto_0
    return-void
.end method

.method private final updateTTY(I)V
    .locals 7
    .param p1, "currentTtyMode"    # I

    .line 782
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 784
    .local v2, "enabled":Z
    :goto_0
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "PhoneStatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTTY: enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_1
    if-eqz v2, :cond_3

    .line 788
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "PhoneStatusBarPolicy"

    const-string/jumbo v3, "updateTTY: set TTY on"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    const v4, 0x7f080a5e

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f110105

    .line 790
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 789
    invoke-interface {v0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 794
    :cond_3
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "PhoneStatusBarPolicy"

    const-string/jumbo v3, "updateTTY: set TTY off"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotTty:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 797
    :goto_1
    return-void
.end method

.method private final updateVolumeZen()V
    .locals 17

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 498
    .local v1, "audioManager":Landroid/media/AudioManager;
    const/4 v2, 0x0

    .line 499
    .local v2, "zenVisible":Z
    const/4 v3, 0x0

    .line 500
    .local v3, "zenIconId":I
    const/4 v4, 0x0

    .line 502
    .local v4, "zenDescription":Ljava/lang/String;
    const/4 v5, 0x0

    .line 503
    .local v5, "volumeVisible":Z
    const/4 v6, 0x0

    .line 504
    .local v6, "volumeIconId":I
    const/4 v7, 0x0

    .line 505
    .local v7, "volumeDescription":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v8

    .line 507
    .local v8, "zen":I
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "oem_vibrate_under_silent"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v9, v10, v12, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    iput v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVibrateWhenMute:I

    .line 526
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->getThreeKeySatus()I

    move-result v9

    .line 527
    .local v9, "threeKeystatus":I
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v10}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->getDndEnable()Z

    move-result v10

    .line 529
    .local v10, "isDndEnable":Z
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportSOCThreekey()Z

    move-result v11

    const v14, 0x7f1102cc

    const/16 v15, 0x13

    const/4 v13, 0x1

    if-eqz v11, :cond_1

    .line 530
    if-eqz v10, :cond_0

    .line 531
    const/4 v2, 0x1

    .line 532
    const v3, 0x7f080a5b

    .line 533
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 534
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v16, "show disturb icon on status bar"

    aput-object v16, v14, v12

    invoke-static {v11, v15, v14}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 536
    :cond_0
    const/4 v2, 0x0

    .line 537
    const v3, 0x7f080a5b

    .line 538
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 539
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v16, "show no disturb icon on status bar"

    aput-object v16, v14, v12

    invoke-static {v11, v15, v14}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 545
    :cond_1
    if-eq v8, v13, :cond_4

    const/4 v11, 0x3

    if-eq v8, v11, :cond_2

    .line 567
    const/4 v2, 0x0

    .line 568
    const v3, 0x7f080a5c

    .line 569
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v14, 0x7f1104ff

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 571
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v14, v13, [Ljava/lang/Object;

    const-string/jumbo v16, "three key in normal state, no icon shows on status bar"

    aput-object v16, v14, v12

    invoke-static {v11, v15, v14}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 554
    :cond_2
    const/4 v2, 0x1

    .line 556
    iget v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVibrateWhenMute:I

    if-ne v11, v13, :cond_3

    .line 557
    const v3, 0x7f080889

    goto :goto_0

    .line 559
    :cond_3
    const v3, 0x7f080a5d

    .line 562
    :goto_0
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v14, 0x7f1102cf

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 564
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v16, "show silent icon on status bar"

    aput-object v16, v14, v12

    invoke-static {v11, v15, v14}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 565
    goto :goto_1

    .line 547
    :cond_4
    const/4 v2, 0x1

    .line 548
    const v3, 0x7f080a5b

    .line 549
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 551
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v14, v13, [Ljava/lang/Object;

    const-string v16, "show no disturb icon on status bar"

    aput-object v16, v14, v12

    invoke-static {v11, v15, v14}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 552
    nop

    .line 578
    :goto_1
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportSOCThreekey()Z

    move-result v11

    const v14, 0x7f1100f3

    if-eqz v11, :cond_5

    .line 579
    packed-switch v9, :pswitch_data_0

    .line 593
    const/4 v5, 0x0

    .line 594
    const v6, 0x7f080a5c

    .line 595
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v14, 0x7f1104ff

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 597
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v13, v13, [Ljava/lang/Object;

    const-string/jumbo v14, "three key in normal state, no icon shows on status bar"

    aput-object v14, v13, v12

    invoke-static {v11, v15, v13}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 598
    goto :goto_2

    .line 581
    :pswitch_0
    const/4 v5, 0x1

    .line 582
    const v6, 0x7f080889

    .line 583
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v14, 0x7f1100f4

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 584
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "show vibrate icon on status bar"

    aput-object v14, v13, v12

    invoke-static {v11, v15, v13}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 585
    goto :goto_2

    .line 587
    :pswitch_1
    const/4 v5, 0x1

    .line 588
    const v6, 0x7f080a5d

    .line 589
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 590
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "show silent icon on status bar"

    aput-object v14, v13, v12

    invoke-static {v11, v15, v13}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 591
    goto :goto_2

    .line 602
    :cond_5
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/qs/tiles/DndTile;->isVisible(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/qs/tiles/DndTile;->isCombinedIcon(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 603
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v11

    if-nez v11, :cond_6

    .line 604
    const/4 v5, 0x1

    .line 605
    const v6, 0x7f080888

    .line 606
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 625
    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    .line 626
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    invoke-interface {v11, v12, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 628
    :cond_7
    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    if-eq v2, v11, :cond_8

    .line 629
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    invoke-interface {v11, v12, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 630
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    .line 633
    :cond_8
    if-eqz v5, :cond_9

    .line 634
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    invoke-interface {v11, v12, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 636
    :cond_9
    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    if-eq v5, v11, :cond_a

    .line 637
    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotVolume:Ljava/lang/String;

    invoke-interface {v11, v12, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 638
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mVolumeVisible:Z

    .line 640
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    .line 641
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public appTransitionStarting(JJZ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "duration"    # J
    .param p5, "forced"    # Z

    .line 1052
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    .line 1053
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateForegroundInstantApps()V

    .line 1054
    return-void
.end method

.method public onBluetoothDevicesChanged()V
    .locals 0

    .line 645
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 646
    return-void
.end method

.method public onBluetoothStateChange(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 650
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V

    .line 651
    return-void
.end method

.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 0
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .line 401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 402
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 2
    .param p1, "isDataSaving"    # Z

    .line 1117
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1118
    return-void
.end method

.method public onDndChanged(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    return-void
.end method

.method public onKeyguardShowingChanged()V
    .locals 0

    .line 1058
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateManagedProfile()V

    .line 1059
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateForegroundInstantApps()V

    .line 1060
    return-void
.end method

.method public onLocationActiveChanged(Z)V
    .locals 0
    .param p1, "active"    # Z

    .line 406
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateLocation()V

    .line 407
    return-void
.end method

.method public onRotationLockStateChanged(ZZ)V
    .locals 6
    .param p1, "rotationLocked"    # Z
    .param p2, "affordanceVisible"    # Z

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->isCurrentOrientationLockPortrait(Lcom/android/systemui/statusbar/policy/RotationLockController;Landroid/content/Context;)Z

    move-result v0

    .line 1080
    .local v0, "portrait":Z
    if-eqz p1, :cond_1

    .line 1081
    if-eqz v0, :cond_0

    .line 1082
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const v3, 0x7f08088c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x7f1100fa

    .line 1083
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1082
    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 1085
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const v3, 0x7f08088b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x7f1100f8

    .line 1086
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1085
    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    .line 1088
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1090
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1092
    :goto_1
    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 2
    .param p1, "threekey"    # I

    .line 476
    const-string v0, "PhoneStatusBarPolicy"

    const-string v1, " onThreeKeyStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 483
    return-void
.end method

.method public onUserSetupChanged()V
    .locals 2

    .line 1064
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 1065
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v1

    .line 1064
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isUserSetup(I)Z

    move-result v0

    .line 1066
    .local v0, "userSetup":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    if-ne v1, v0, :cond_0

    return-void

    .line 1067
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    .line 1068
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V

    .line 1069
    return-void
.end method

.method public onZenChanged(I)V
    .locals 0
    .param p1, "zen"    # I

    .line 396
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateVolumeZen()V

    .line 397
    return-void
.end method

.method public preloadRecentApps()V
    .locals 0

    .line 1073
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateForegroundInstantApps()V

    .line 1074
    return-void
.end method
