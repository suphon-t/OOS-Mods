.class public Lcom/android/systemui/power/OverHeatProtector;
.super Ljava/lang/Object;
.source "OverHeatProtector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static ENABLE:Z

.field private static mInstance:Lcom/android/systemui/power/OverHeatProtector;


# instance fields
.field private final DELAY_TIME:I

.field private final DELAY_TIME_TO_SHUTDOWN:I

.field private INTERVAL_ORANGE:J

.field private INTERVAL_RED:J

.field private TEMPERATURE_ORANGE:I

.field private TEMPERATURE_PURPLE:I

.field private TEMPERATURE_RED:I

.field final mAlertRunnable:Ljava/lang/Runnable;

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCoolProcessingLocked:I

.field private mCurrentChangeTrendLocked:I

.field private final mDefaultBacklight:I

.field private mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private final mHandler:Landroid/os/Handler;

.field private final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastBatteryTemperatureLocked:I

.field private mLastOrangeTime:J

.field private mLastRedTime:J

.field private mLastResumeUnderOrangeTime:J

.field private mLastResumeUnderRedTime:J

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mTimer:Landroid/os/CountDownTimer;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    .line 64
    const-string v0, "persist.sys.ovp.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mUiHandler:Landroid/os/Handler;

    .line 81
    const/16 v0, 0x1c2

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    .line 82
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    .line 83
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    .line 100
    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    .line 101
    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    .line 103
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastOrangeTime:J

    .line 104
    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastRedTime:J

    .line 106
    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderOrangeTime:J

    .line 108
    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderRedTime:J

    .line 111
    const-wide/32 v1, 0x1d4c0

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    .line 112
    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    .line 114
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    .line 119
    const/16 v1, 0x2904

    iput v1, p0, Lcom/android/systemui/power/OverHeatProtector;->DELAY_TIME:I

    .line 120
    const/16 v1, 0x157c

    iput v1, p0, Lcom/android/systemui/power/OverHeatProtector;->DELAY_TIME_TO_SHUTDOWN:I

    .line 258
    new-instance v1, Lcom/android/systemui/power/OverHeatProtector$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/OverHeatProtector$2;-><init>(Lcom/android/systemui/power/OverHeatProtector;)V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 410
    new-instance v1, Lcom/android/systemui/power/OverHeatProtector$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/OverHeatProtector$3;-><init>(Lcom/android/systemui/power/OverHeatProtector;)V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mAlertRunnable:Ljava/lang/Runnable;

    .line 129
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    .line 130
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 131
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "op_temperature_orange"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    .line 133
    const-string v2, "op_temperature_red"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    .line 135
    const-string v2, "op_temperature_purple"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    .line 138
    const-class v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 139
    const-class v2, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    .line 140
    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 141
    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    .line 142
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    .line 143
    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 145
    new-instance v2, Lcom/android/systemui/power/OverHeatProtector$1;

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/systemui/power/OverHeatProtector$1;-><init>(Lcom/android/systemui/power/OverHeatProtector;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 170
    .local v2, "obs":Landroid/database/ContentObserver;
    const-string v3, "op_temperature_orange"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 172
    const-string v3, "op_temperature_red"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 180
    .local v0, "res":Landroid/content/res/Resources;
    const v3, 0x10e0083

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 181
    .local v3, "orange":I
    const v4, 0x10e0085

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 182
    .local v4, "red":I
    const v5, 0x10e0084

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 183
    .local v5, "purple":I
    if-lez v3, :cond_0

    if-lez v4, :cond_0

    if-lez v5, :cond_0

    .line 184
    invoke-virtual {p0, v3}, Lcom/android/systemui/power/OverHeatProtector;->setOrangeTemp(I)V

    .line 185
    invoke-virtual {p0, v4}, Lcom/android/systemui/power/OverHeatProtector;->setRedTemp(I)V

    .line 186
    invoke-virtual {p0, v5}, Lcom/android/systemui/power/OverHeatProtector;->setPurpleTemp(I)V

    goto :goto_0

    .line 188
    :cond_0
    const-string v6, "OverHeatProtector"

    const-string v7, "can\'t find resources... "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/power/OverHeatProtectorUtils;->init(Landroid/content/Context;)V

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 61
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->purpleAlertLocked()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 61
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->dismissDialogOrNotification(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/OverHeatProtector;)Landroid/app/KeyguardManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->showNotification(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/power/OverHeatProtector;)Lcom/android/systemui/power/OverHeatAlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/power/OverHeatProtector;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/power/OverHeatProtector;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/power/OverHeatProtector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 61
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 61
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 61
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 61
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 61
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->updatePolicy(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 61
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->orangeAlertLocked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/OverHeatProtector;

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->redAlertLocked()V

    return-void
.end method

.method private applyPolicy(I)V
    .locals 2
    .param p1, "type"    # I

    .line 427
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/power/OverHeatProtector$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/power/OverHeatProtector$4;-><init>(Lcom/android/systemui/power/OverHeatProtector;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 444
    return-void
.end method

.method private clearAllRunningProcessesLocked()V
    .locals 2

    .line 647
    const-string v0, "OverHeatProtector"

    const-string v1, "clearAllRunningProcesses"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-static {}, Lcom/android/systemui/power/OverHeatProtectorUtils;->killAllRunningProcesses()V

    .line 651
    return-void
.end method

.method private computeCurrentTrendLocked(I)V
    .locals 3
    .param p1, "currentTemperature"    # I

    .line 327
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    if-le p1, v0, :cond_0

    .line 328
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    goto :goto_0

    .line 329
    :cond_0
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    if-ge p1, v0, :cond_1

    .line 330
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    .line 334
    :goto_0
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 335
    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeCurrentTrendLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_2
    return-void
.end method

.method private disableFlashLightLocked()V
    .locals 2

    .line 642
    const-string v0, "OverHeatProtector"

    const-string v1, "disableFlashLight"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    .line 644
    return-void
.end method

.method private disableHotspotLocked()V
    .locals 2

    .line 615
    const-string v0, "OverHeatProtector"

    const-string v1, "disableHotspot"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 617
    return-void
.end method

.method private dismissDialogOrNotification(I)V
    .locals 2
    .param p1, "type"    # I

    .line 562
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 564
    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->dismiss()V

    .line 568
    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    .line 569
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->showNotification(I)V

    .line 571
    :cond_1
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 122
    sget-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/android/systemui/power/OverHeatProtector;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/OverHeatProtector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    .line 125
    :cond_0
    sget-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    return-object v0
.end method

.method private notifyCurrentOverHeatStateLocked(I)V
    .locals 3
    .param p1, "type"    # I

    .line 207
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    .line 208
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_overheat_temperature_type"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    return-void
.end method

.method private orangeAlertLocked()V
    .locals 3

    .line 592
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "overheat_protector_orange_alert"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 593
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->disableHotspotLocked()V

    .line 594
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->reduceBrightnessLocked()V

    .line 595
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->disableFlashLightLocked()V

    .line 596
    return-void
.end method

.method private purpleAlertLocked()V
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "overheat_protector_purple_alert"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 610
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 611
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "OverHeatProtector trigger..."

    invoke-virtual {v1, v0, v2, v0}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    .line 612
    return-void
.end method

.method private redAlertLocked()V
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "overheat_protector_red_alert"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 601
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->orangeAlertLocked()V

    .line 603
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->clearAllRunningProcessesLocked()V

    .line 604
    return-void
.end method

.method private reduceBrightnessLocked()V
    .locals 5

    .line 620
    const-string v0, "OverHeatProtector"

    const-string v1, "reduceBrightness"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 625
    .local v0, "brightness":I
    iget v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    if-le v0, v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v4, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 630
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 639
    .end local v0    # "brightness":I
    :cond_0
    return-void
.end method

.method private showAlertDialog(I)V
    .locals 10
    .param p1, "type"    # I

    .line 448
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    if-nez v0, :cond_4

    if-gtz p1, :cond_0

    goto/16 :goto_1

    .line 452
    :cond_0
    new-instance v0, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;-><init>(Lcom/android/systemui/power/OverHeatProtector;Lcom/android/systemui/power/OverHeatProtector$1;)V

    .line 454
    .local v0, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/systemui/power/OverHeatAlertDialog;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    .line 455
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v2, 0x7f080764

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setIcon(I)V

    .line 456
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 457
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setCancelable(Z)V

    .line 458
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v2, 0x7f110472

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setTitle(I)V

    .line 461
    const/4 v1, 0x1

    const v2, 0x7f11046d

    if-ne p1, v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 463
    .local v1, "button_content":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 464
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v3, 0x7f11046e

    invoke-virtual {v2, v3}, Lcom/android/systemui/power/OverHeatAlertDialog;->setMessage(I)V

    .line 465
    new-instance v2, Lcom/android/systemui/power/OverHeatProtector$5;

    const-wide/16 v5, 0x2904

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/power/OverHeatProtector$5;-><init>(Lcom/android/systemui/power/OverHeatProtector;JJLjava/lang/String;)V

    .line 479
    invoke-virtual {v2}, Lcom/android/systemui/power/OverHeatProtector$5;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 480
    .end local v1    # "button_content":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 481
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 482
    .restart local v1    # "button_content":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 483
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v3, 0x7f110471

    invoke-virtual {v2, v3}, Lcom/android/systemui/power/OverHeatAlertDialog;->setMessage(I)V

    .line 484
    new-instance v2, Lcom/android/systemui/power/OverHeatProtector$6;

    const-wide/16 v5, 0x2904

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/power/OverHeatProtector$6;-><init>(Lcom/android/systemui/power/OverHeatProtector;JJLjava/lang/String;)V

    .line 498
    invoke-virtual {v2}, Lcom/android/systemui/power/OverHeatProtector$6;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 499
    .end local v1    # "button_content":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 500
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const v2, 0x7f110470

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 501
    .local v1, "content":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v2, v1}, Lcom/android/systemui/power/OverHeatAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v3, 0x7f11046f

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 503
    new-instance v9, Lcom/android/systemui/power/OverHeatProtector$7;

    const-wide/16 v4, 0x157c

    const-wide/16 v6, 0x3e8

    move-object v2, v9

    move-object v3, p0

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/power/OverHeatProtector$7;-><init>(Lcom/android/systemui/power/OverHeatProtector;JJLjava/lang/String;)V

    .line 520
    invoke-virtual {v9}, Lcom/android/systemui/power/OverHeatProtector$7;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    .line 521
    .end local v1    # "content":Ljava/lang/String;
    nop

    .line 524
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v1}, Lcom/android/systemui/power/OverHeatAlertDialog;->show()V

    .line 525
    return-void

    .line 522
    :cond_3
    return-void

    .line 450
    .end local v0    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_4
    :goto_1
    return-void
.end method

.method private showNotification(I)V
    .locals 13
    .param p1, "type"    # I

    .line 528
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 529
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 530
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 531
    .local v1, "mBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 532
    .local v2, "bigTextStyle":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    const-string v3, "1"

    .line 533
    .local v3, "channelID":Ljava/lang/String;
    const-string v4, "channel_name"

    .line 536
    .local v4, "channelName":Ljava/lang/String;
    const/4 v5, 0x1

    .line 537
    .local v5, "onGoing":Z
    if-nez p1, :cond_0

    .line 538
    const/4 v5, 0x0

    .line 539
    iget-object v6, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const v7, 0x7f110474

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 540
    .local v6, "content":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const v8, 0x7f110475

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "title":Ljava/lang/String;
    goto :goto_0

    .line 542
    .end local v6    # "content":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const v7, 0x7f110472

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 543
    .restart local v7    # "title":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const v8, 0x7f110473

    invoke-virtual {v6, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 545
    .restart local v6    # "content":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 546
    new-instance v8, Landroid/app/NotificationChannel;

    const/4 v9, 0x4

    invoke-direct {v8, v3, v4, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 547
    .local v8, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 548
    invoke-virtual {v1, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 549
    invoke-virtual {v9, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const v10, 0x7f080764

    .line 550
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/4 v10, 0x1

    .line 551
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 552
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 553
    invoke-virtual {v9, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 554
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 555
    invoke-virtual {v9, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 556
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 557
    invoke-virtual {v9, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 558
    const-string v9, "overheat"

    const/16 v10, 0xa

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 559
    return-void
.end method

.method private triggerOrangeDownLocked()V
    .locals 2

    .line 399
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerOrangeDown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderOrangeTime:J

    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 407
    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->showNotification(I)V

    .line 408
    return-void
.end method

.method private triggerOrangeUpLocked()Z
    .locals 6

    .line 366
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerOrangeUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 368
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastOrangeTime:J

    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 369
    const-string v2, "OverHeatProtector"

    const-string v3, "Temperature fluctuation nearby ORANGE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v2, 0x0

    return v2

    .line 372
    :cond_1
    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastOrangeTime:J

    .line 374
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 375
    invoke-direct {p0, v2}, Lcom/android/systemui/power/OverHeatProtector;->applyPolicy(I)V

    .line 376
    return v2
.end method

.method private triggerPurpleDownLocked()V
    .locals 2

    .line 381
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerPurpleDownLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 384
    return-void
.end method

.method private triggerPurpleUpLocked()Z
    .locals 2

    .line 341
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerPurpleUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 345
    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->applyPolicy(I)V

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method private triggerRedDownLocked()V
    .locals 2

    .line 388
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerRedDown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderRedTime:J

    .line 393
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 395
    return-void
.end method

.method private triggerRedUpLocked()Z
    .locals 6

    .line 351
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerRedUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 353
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastRedTime:J

    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 354
    const-string v2, "OverHeatProtector"

    const-string v3, "Temperature fluctuation nearby RED!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v2, 0x0

    return v2

    .line 357
    :cond_1
    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastRedTime:J

    .line 359
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    .line 360
    invoke-direct {p0, v2}, Lcom/android/systemui/power/OverHeatProtector;->applyPolicy(I)V

    .line 361
    const/4 v2, 0x1

    return v2
.end method

.method private updatePolicy(I)V
    .locals 6
    .param p1, "temperature"    # I

    .line 273
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->computeCurrentTrendLocked(I)V

    .line 276
    const/4 v1, 0x1

    .line 277
    .local v1, "needRecordCurrentTemperature":Z
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge p1, v2, :cond_3

    .line 278
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-gtz v2, :cond_a

    .line 279
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-nez v2, :cond_0

    .line 280
    sget-boolean v2, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 281
    const-string v2, "OverHeatProtector"

    const-string v3, "Thanks God. Every thing is okay."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 282
    :cond_0
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v5, :cond_1

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeDownLocked()V

    goto/16 :goto_0

    .line 284
    :cond_1
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v4, :cond_2

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedDownLocked()V

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeDownLocked()V

    goto/16 :goto_0

    .line 287
    :cond_2
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v3, :cond_a

    .line 289
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleDownLocked()V

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedDownLocked()V

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeDownLocked()V

    goto/16 :goto_0

    .line 294
    :cond_3
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    if-ge p1, v2, :cond_7

    .line 296
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-ne v2, v5, :cond_4

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ge v2, v5, :cond_4

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeUpLocked()Z

    move-result v2

    move v1, v2

    goto :goto_0

    .line 298
    :cond_4
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-gtz v2, :cond_a

    .line 300
    sget-boolean v2, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 301
    const-string v2, "OverHeatProtector"

    const-string v5, "Yep, now the temperature has dropped into orange"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_5
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v4, :cond_6

    .line 303
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedDownLocked()V

    goto :goto_0

    .line 304
    :cond_6
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v3, :cond_a

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleDownLocked()V

    goto :goto_0

    .line 308
    :cond_7
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    if-ge p1, v2, :cond_9

    .line 310
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-ne v2, v5, :cond_8

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ge v2, v4, :cond_8

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedUpLocked()Z

    move-result v2

    move v1, v2

    goto :goto_0

    .line 312
    :cond_8
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-gtz v2, :cond_a

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v3, :cond_a

    .line 314
    const-string v2, "OverHeatProtector"

    const-string v3, "Yeh, this couldn\'t happend!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleDownLocked()V

    goto :goto_0

    .line 318
    :cond_9
    const-string v2, "OverHeatProtector"

    const-string v3, "Okay, this could be real dangerous."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleUpLocked()Z

    move-result v2

    move v1, v2

    .line 322
    :cond_a
    :goto_0
    if-eqz v1, :cond_b

    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    .line 323
    .end local v1    # "needRecordCurrentTemperature":Z
    :cond_b
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public setEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 195
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    sput-boolean p1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    .line 199
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    if-nez v0, :cond_1

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->updatePolicy(I)V

    .line 203
    :cond_1
    return-void
.end method

.method public setOrangeInterval(I)V
    .locals 8
    .param p1, "second"    # I

    .line 240
    if-gtz p1, :cond_0

    return-void

    .line 241
    :cond_0
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    .line 242
    .local v0, "millis":J
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 243
    :try_start_0
    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    .line 244
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v3, "overheat_protector_orange_interval"

    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 246
    return-void

    .line 244
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setOrangeTemp(I)V
    .locals 4
    .param p1, "temp"    # I

    .line 213
    if-gtz p1, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    .line 216
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_orange"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPurpleTemp(I)V
    .locals 4
    .param p1, "temp"    # I

    .line 231
    if-gtz p1, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    .line 234
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_purple"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRedInterval(I)V
    .locals 8
    .param p1, "second"    # I

    .line 250
    if-gtz p1, :cond_0

    return-void

    .line 251
    :cond_0
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    .line 252
    .local v0, "millis":J
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 253
    :try_start_0
    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    .line 254
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v3, "overheat_protector_red_interval"

    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 256
    return-void

    .line 254
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setRedTemp(I)V
    .locals 4
    .param p1, "temp"    # I

    .line 222
    if-gtz p1, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    .line 225
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_red"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
