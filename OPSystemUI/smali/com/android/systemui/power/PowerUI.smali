.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$ThermalEventListener;,
        Lcom/android/systemui/power/PowerUI$WarningsUI;,
        Lcom/android/systemui/power/PowerUI$Receiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final SIX_HOURS_MILLIS:J


# instance fields
.field mBatteryLevel:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mBatteryStatus:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

.field private mEnteredPowerSave:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

.field private mInvalidCharger:I

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private mLowBatteryAlertCloseLevel:I

.field private final mLowBatteryReminderLevels:[I

.field private mLowWarningShownThisChargeCycle:Z

.field private mNextLogTime:J

.field private mNumTemps:I

.field private mPlugType:I

.field private mPowerManager:Landroid/os/PowerManager;

.field final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mRecentTemps:[F

.field private mScreenOffTime:J

.field private mScreenTimeout:I

.field private mSelfChange:Z

.field private mSelfChangeRestore:Z

.field private mSevereWarningShownThisChargeCycle:Z

.field private mThermalService:Landroid/os/IThermalService;

.field private mThresholdTemp:F

.field private mTimeRemaining:J

.field private final mUpdateTempCallback:Ljava/lang/Runnable;

.field private mUser:I

.field private mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 71
    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/power/PowerUI;->SIX_HOURS_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 80
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 81
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 83
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 89
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 91
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 94
    const/16 v1, 0x7d

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    .line 99
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 100
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 105
    new-instance v1, Lcom/android/systemui/power/-$$Lambda$Xy1vzUdmCVpH_1hTsQ2L8yUibUw;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/-$$Lambda$Xy1vzUdmCVpH_1hTsQ2L8yUibUw;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerUI;->mUpdateTempCallback:Ljava/lang/Runnable;

    .line 112
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenTimeout:I

    .line 113
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mUser:I

    .line 114
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnteredPowerSave:Z

    .line 116
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mSelfChange:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mSelfChangeRestore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mSelfChange:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mSelfChange:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mSelfChangeRestore:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mSelfChangeRestore:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/PowerUI;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/power/PowerUI;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/power/PowerUI;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # J

    .line 63
    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->restorePowerSavingSettingsForUser()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->updatePowerSavingSettings()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/power/PowerUI;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUpdateTempCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenTimeout:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenTimeout:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mUser:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->saveScreenTimeoutToPrefs(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/power/PowerUI;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # Z

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->setSaverMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/power/PowerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;

    .line 63
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p1, "x1"    # I

    .line 63
    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p1
.end method

.method private findBatteryLevelBucket(I)I
    .locals 3
    .param p1, "level"    # I

    .line 215
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v0, :cond_0

    .line 216
    const/4 v0, 0x1

    return v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-le p1, v0, :cond_1

    .line 219
    return v1

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v0

    .line 222
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 223
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 224
    rsub-int/lit8 v2, v1, -0x1

    return v2

    .line 222
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 227
    .end local v1    # "i":I
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "not possible!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initTemperatureWarning()V
    .locals 6

    .line 451
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 452
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 453
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "show_temperature_warning"

    .line 454
    const v3, 0x7f0b001c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 453
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 455
    return-void

    .line 458
    :cond_0
    const-string/jumbo v2, "warning_temperature"

    const v3, 0x7f0b0021

    .line 459
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    .line 458
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    .line 461
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 463
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/os/HardwarePropertiesManager;->getDeviceTemperatures(II)[F

    move-result-object v2

    .line 466
    .local v2, "throttlingTemps":[F
    if-eqz v2, :cond_2

    array-length v3, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    aget v4, v2, v3

    const v5, -0x800001

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    goto :goto_0

    .line 471
    :cond_1
    aget v3, v2, v3

    const v4, 0x7f0b0022

    .line 472
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    .line 472
    .end local v2    # "throttlingTemps":[F
    goto :goto_1

    .line 469
    .restart local v2    # "throttlingTemps":[F
    :cond_2
    :goto_0
    return-void

    .line 475
    .end local v2    # "throttlingTemps":[F
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    if-nez v2, :cond_5

    .line 479
    const-string/jumbo v2, "thermalservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 481
    .local v2, "b":Landroid/os/IBinder;
    if-eqz v2, :cond_4

    .line 482
    invoke-static {v2}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 484
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    new-instance v4, Lcom/android/systemui/power/PowerUI$ThermalEventListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/power/PowerUI$ThermalEventListener;-><init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$1;)V

    invoke-interface {v3, v4}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 486
    :catch_0
    move-exception v3

    .line 488
    .end local v2    # "b":Landroid/os/IBinder;
    :goto_2
    goto :goto_3

    .line 490
    .restart local v2    # "b":Landroid/os/IBinder;
    :cond_4
    const-string v3, "PowerUI"

    const-string v4, "cannot find thermalservice, no throttling push notifications"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .end local v2    # "b":Landroid/os/IBinder;
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->setNextLogTime()V

    .line 499
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mUpdateTempCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateTemperatureWarning()V

    .line 503
    return-void
.end method

.method private isEnhancedTrigger(ZJZI)Z
    .locals 7
    .param p1, "plugged"    # Z
    .param p2, "timeRemaining"    # J
    .param p4, "isPowerSaver"    # Z
    .param p5, "batteryStatus"    # I

    .line 431
    const/4 v0, 0x0

    if-nez p1, :cond_7

    if-nez p4, :cond_7

    const/4 v1, 0x1

    if-ne p5, v1, :cond_0

    goto :goto_4

    .line 434
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v0

    .line 435
    .local v2, "warnLevel":I
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v3, v3, v1

    .line 438
    .local v3, "critLevel":I
    iget-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 439
    invoke-interface {v4}, Lcom/android/systemui/power/EnhancedEstimates;->getLowWarningThreshold()J

    move-result-wide v4

    cmp-long v4, p2, v4

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    if-gt v4, v2, :cond_2

    :cond_1
    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v0

    .line 443
    .local v4, "canShowWarning":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 444
    invoke-interface {v5}, Lcom/android/systemui/power/EnhancedEstimates;->getSevereWarningThreshold()J

    move-result-wide v5

    cmp-long v5, p2, v5

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    if-gt v5, v3, :cond_4

    :cond_3
    move v5, v1

    goto :goto_1

    :cond_4
    move v5, v0

    .line 447
    .local v5, "canShowSevereWarning":Z
    :goto_1
    if-nez v4, :cond_6

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    goto :goto_3

    :cond_6
    :goto_2
    move v0, v1

    :goto_3
    return v0

    .line 432
    .end local v2    # "warnLevel":I
    .end local v3    # "critLevel":I
    .end local v4    # "canShowWarning":Z
    .end local v5    # "canShowSevereWarning":Z
    :cond_7
    :goto_4
    return v0
.end method

.method public static synthetic lambda$UShUnCLjyLd54pAqMZk3QJ-gMNs(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->initTemperatureWarning()V

    return-void
.end method

.method private logAtTemperatureThreshold(F)V
    .locals 3
    .param p1, "temp"    # F

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "currentTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",thresholdTemp="

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",batteryStatus="

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",recentTemps="

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-ge v1, v2, :cond_0

    .line 543
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    .end local v1    # "i":I
    :cond_0
    const-string v1, "PowerUI"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method private logTemperatureStats()V
    .locals 8

    .line 554
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    .line 555
    return-void

    .line 558
    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 559
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v0, v0, v1

    .local v0, "sum":F
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v2, v2, v1

    .local v2, "min":F
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v3, v3, v1

    .line 560
    .local v3, "max":F
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    if-ge v4, v5, :cond_3

    .line 561
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    aget v5, v5, v4

    .line 562
    .local v5, "temp":F
    add-float/2addr v0, v5

    .line 563
    cmpl-float v6, v5, v3

    if-lez v6, :cond_1

    .line 564
    move v3, v5

    .line 566
    :cond_1
    cmpg-float v6, v5, v2

    if-gez v6, :cond_2

    .line 567
    move v2, v5

    .line 560
    .end local v5    # "temp":F
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 571
    .end local v4    # "i":I
    :cond_3
    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    int-to-float v4, v4

    div-float v4, v0, v4

    .line 572
    .local v4, "avg":F
    const-string v5, "PowerUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "avg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",min="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ",max="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v6, "device_skin_temp_avg"

    float-to-int v7, v4

    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 574
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v6, "device_skin_temp_min"

    float-to-int v7, v2

    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 575
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v6, "device_skin_temp_max"

    float-to-int v7, v3

    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 577
    .end local v0    # "sum":F
    .end local v2    # "min":F
    .end local v3    # "max":F
    .end local v4    # "avg":F
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->setNextLogTime()V

    .line 578
    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    .line 579
    return-void
.end method

.method private restorePowerSavingSettingsForUser()V
    .locals 4

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mSelfChangeRestore:Z

    .line 621
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenTimeout:I

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mUser:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 622
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restorePowerSavingSettingsForUser:mScreenTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void
.end method

.method private restoreScreenTimeoutFromPrefsIfNeeded()V
    .locals 5

    .line 649
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v1, "PowerSavingTimeoutBackup"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 650
    .local v0, "timeout":I
    if-lez v0, :cond_0

    .line 651
    const-string v1, "PowerUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreScreenTimeoutFromPrefsIfNeeded:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_off_timeout"

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mUser:I

    invoke-static {v1, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 654
    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerUI;->saveScreenTimeoutToPrefs(I)V

    .line 656
    :cond_0
    return-void
.end method

.method private saveScreenTimeoutToPrefs(I)V
    .locals 3
    .param p1, "timeout"    # I

    .line 644
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveScreenTimeoutToPrefs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v1, "PowerSavingTimeoutBackup"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 646
    return-void
.end method

.method private setNextLogTime()V
    .locals 4

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    .line 583
    return-void
.end method

.method private setSaverMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .line 660
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showSaverMode(Z)V

    .line 661
    return-void
.end method

.method private showThermalShutdownDialog()V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getLastShutdownReason()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showThermalShutdownWarning()V

    .line 510
    :cond_0
    return-void
.end method

.method private updatePowerSavingSettings()V
    .locals 5

    .line 626
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mUser:I

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mSelfChange:Z

    .line 628
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnteredPowerSave:Z

    .line 631
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mUser:I

    const/16 v3, 0x7530

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenTimeout:I

    .line 632
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenTimeout:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->saveScreenTimeoutToPrefs(I)V

    .line 633
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mUser:I

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 634
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePowerSavingSettings:Enter PowerSaving Mode: mScreenTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 635
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnteredPowerSave:Z

    if-eqz v0, :cond_1

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnteredPowerSave:Z

    .line 637
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mScreenTimeout:I

    iget v4, p0, Lcom/android/systemui/power/PowerUI;->mUser:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 638
    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->saveScreenTimeoutToPrefs(I)V

    .line 639
    const-string v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePowerSavingSettings:Leave PowerSaving Mode: mScreenTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 586
    const-string v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 587
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 588
    const-string v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    const-string v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 591
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    const-string v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 593
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    const-string v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 595
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    const-string v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    const-string v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 599
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 600
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 601
    const-string v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 603
    const-string v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 605
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 606
    const-string v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 609
    const-string v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    const-string v0, "mThresholdTemp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 612
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    const-string v0, "mNextLogTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mNextLogTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dump(Ljava/io/PrintWriter;)V

    .line 616
    return-void
.end method

.method protected maybeShowBatteryWarning(ZZII)V
    .locals 16
    .param p1, "plugged"    # Z
    .param p2, "oldPlugged"    # Z
    .param p3, "oldBucket"    # I
    .param p4, "bucket"    # I

    move-object/from16 v9, p0

    move/from16 v10, p3

    .line 355
    move/from16 v11, p4

    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v12

    .line 357
    .local v12, "isPowerSaver":Z
    const/4 v0, 0x0

    const/4 v13, 0x1

    if-ne v11, v10, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v13

    :goto_1
    move v14, v1

    .line 358
    .local v14, "playSound":Z
    iget-object v1, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v1}, Lcom/android/systemui/power/EnhancedEstimates;->isHybridNotificationEnabled()Z

    move-result v15

    .line 359
    .local v15, "hybridEnabled":Z
    if-eqz v15, :cond_2

    .line 360
    iget-object v1, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v1}, Lcom/android/systemui/power/EnhancedEstimates;->getEstimate()Lcom/android/systemui/power/Estimate;

    move-result-object v1

    .line 363
    .local v1, "estimate":Lcom/android/systemui/power/Estimate;
    if-eqz v1, :cond_2

    .line 364
    iget-wide v2, v1, Lcom/android/systemui/power/Estimate;->estimateMillis:J

    iput-wide v2, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    .line 365
    iget-object v2, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v2, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateEstimate(Lcom/android/systemui/power/Estimate;)V

    .line 366
    iget-object v2, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget-object v3, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v3}, Lcom/android/systemui/power/EnhancedEstimates;->getLowWarningThreshold()J

    move-result-wide v3

    iget-object v5, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 367
    invoke-interface {v5}, Lcom/android/systemui/power/EnhancedEstimates;->getSevereWarningThreshold()J

    move-result-wide v5

    .line 366
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateThresholds(JJ)V

    .line 371
    iget v2, v9, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/16 v3, 0x2d

    if-lt v2, v3, :cond_2

    iget-wide v2, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    sget-wide v4, Lcom/android/systemui/power/PowerUI;->SIX_HOURS_MILLIS:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 373
    iput-boolean v0, v9, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    .line 374
    iput-boolean v0, v9, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    .line 379
    .end local v1    # "estimate":Lcom/android/systemui/power/Estimate;
    :cond_2
    iget-wide v5, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    iget v8, v9, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move-object v0, v9

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v10

    move v4, v11

    move v7, v12

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/power/PowerUI;->shouldShowLowBatteryWarning(ZZIIJZI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 381
    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v14}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    .line 385
    if-eqz v15, :cond_7

    .line 386
    iget-wide v0, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    iget-object v2, v9, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v2}, Lcom/android/systemui/power/EnhancedEstimates;->getSevereWarningThreshold()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    iget v0, v9, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget-object v1, v9, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v1, v1, v13

    if-ge v0, v1, :cond_3

    goto :goto_2

    .line 390
    :cond_3
    iput-boolean v13, v9, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    goto :goto_3

    .line 388
    :cond_4
    :goto_2
    iput-boolean v13, v9, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    goto :goto_3

    .line 393
    :cond_5
    iget-wide v4, v9, Lcom/android/systemui/power/PowerUI;->mTimeRemaining:J

    move-object v0, v9

    move/from16 v1, p1

    move v2, v10

    move v3, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/power/PowerUI;->shouldDismissLowBatteryWarning(ZIIJZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 395
    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto :goto_3

    .line 397
    :cond_6
    if-eq v10, v11, :cond_7

    .line 399
    iget-object v0, v9, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    .line 401
    :cond_7
    :goto_3
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 179
    const/4 v0, 0x3

    .line 182
    .local v0, "mask":I
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/power/-$$Lambda$PowerUI$UShUnCLjyLd54pAqMZk3QJ-gMNs;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/-$$Lambda$PowerUI$UShUnCLjyLd54pAqMZk3QJ-gMNs;-><init>(Lcom/android/systemui/power/PowerUI;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    :cond_0
    return-void
.end method

.method shouldDismissLowBatteryWarning(ZIIJZ)Z
    .locals 5
    .param p1, "plugged"    # Z
    .param p2, "oldBucket"    # I
    .param p3, "bucket"    # I
    .param p4, "timeRemaining"    # J
    .param p6, "isPowerSaver"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v0}, Lcom/android/systemui/power/EnhancedEstimates;->isHybridNotificationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 421
    invoke-interface {v0}, Lcom/android/systemui/power/EnhancedEstimates;->getLowWarningThreshold()J

    move-result-wide v3

    cmp-long v0, p4, v3

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 422
    .local v0, "hybridWouldDismiss":Z
    :goto_0
    if-le p3, p2, :cond_1

    if-lez p3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 423
    .local v3, "standardWouldDismiss":Z
    :goto_1
    if-nez p6, :cond_3

    if-nez p1, :cond_3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 425
    invoke-interface {v4}, Lcom/android/systemui/power/EnhancedEstimates;->isHybridNotificationEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    .line 423
    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    return v1
.end method

.method shouldShowLowBatteryWarning(ZZIIJZI)Z
    .locals 6
    .param p1, "plugged"    # Z
    .param p2, "oldPlugged"    # Z
    .param p3, "oldBucket"    # I
    .param p4, "bucket"    # I
    .param p5, "timeRemaining"    # J
    .param p7, "isPowerSaver"    # Z
    .param p8, "batteryStatus"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    invoke-interface {v0}, Lcom/android/systemui/power/EnhancedEstimates;->isHybridNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    move-object v0, p0

    move v1, p1

    move-wide v2, p5

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/power/PowerUI;->isEnhancedTrigger(ZJZI)Z

    move-result v0

    return v0

    .line 411
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-nez p7, :cond_2

    if-lt p4, p3, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-gez p4, :cond_2

    if-eq p8, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start()V
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v1, "hardware_properties"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HardwarePropertiesManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 126
    const-class v0, Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/PowerUI$WarningsUI;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 127
    const-class v0, Lcom/android/systemui/power/EnhancedEstimates;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/EnhancedEstimates;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 130
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 154
    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 155
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "low_power_trigger_level"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 159
    const-string v2, "screen_off_timeout"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 163
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mUser:I

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->restoreScreenTimeoutFromPrefsIfNeeded()V

    .line 165
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    const/16 v4, 0x7530

    iget v5, p0, Lcom/android/systemui/power/PowerUI;->mUser:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenTimeout:I

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    .line 168
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-virtual {v2}, Lcom/android/systemui/power/PowerUI$Receiver;->init()V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->showThermalShutdownDialog()V

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->initTemperatureWarning()V

    .line 175
    return-void
.end method

.method updateBatteryWarningLevels()V
    .locals 5

    .line 188
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 190
    .local v0, "critLevel":I
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 193
    .local v1, "warnLevel":I
    if-ge v1, v0, :cond_0

    .line 194
    move v1, v0

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 198
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v4, 0x1

    aput v0, v2, v4

    .line 199
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 202
    return-void
.end method

.method protected updateTemperatureWarning()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHardwarePropertiesManager:Landroid/os/HardwarePropertiesManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/HardwarePropertiesManager;->getDeviceTemperatures(II)[F

    move-result-object v0

    .line 517
    .local v0, "temps":[F
    array-length v2, v0

    if-eqz v2, :cond_1

    .line 518
    aget v1, v0, v1

    .line 519
    .local v1, "temp":F
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mRecentTemps:[F

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mNumTemps:I

    aput v1, v2, v3

    .line 521
    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v2}, Lcom/android/systemui/power/PowerUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 522
    .local v2, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInVrMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mThresholdTemp:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    .line 524
    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerUI;->logAtTemperatureThreshold(F)V

    .line 525
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showHighTemperatureWarning()V

    goto :goto_0

    .line 527
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissHighTemperatureWarning()V

    .line 531
    .end local v1    # "temp":F
    .end local v2    # "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI;->logTemperatureStats()V

    .line 533
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mUpdateTempCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 534
    return-void
.end method
