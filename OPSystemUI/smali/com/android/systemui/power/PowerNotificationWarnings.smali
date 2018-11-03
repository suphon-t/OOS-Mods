.class public Lcom/android/systemui/power/PowerNotificationWarnings;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Lcom/android/systemui/power/PowerUI$WarningsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;
    }
.end annotation


# static fields
.field private static final AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final DEBUG:Z

.field private static final SHOWING_STRINGS:[Ljava/lang/String;

.field private static final SHOW_EXTENDED_TIME:Z


# instance fields
.field private mBatteryLevel:I

.field private mBucket:I

.field private final mContext:Landroid/content/Context;

.field private mEstimate:Lcom/android/systemui/power/Estimate;

.field private final mHandler:Landroid/os/Handler;

.field private mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mHighTempWarning:Z

.field private mInvalidCharger:Z

.field private mLowWarningThreshold:J

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mOpenBatterySettings:Landroid/content/Intent;

.field private final mOpenSaverSettings:Landroid/content/Intent;

.field private mPlaySound:Z

.field private final mPowerMan:Landroid/os/PowerManager;

.field private final mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

.field private mSaver:Z

.field private mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mSaverEnabledConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mSaverNotificationShowing:Z

.field private mScreenOffTime:J

.field private mSevereWarningThreshold:J

.field private mShowAutoSaverSuggestion:Z

.field private mShowing:I

.field private mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mWarning:Z

.field private mWarningTriggerTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 74
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    .line 90
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isClosedBeta()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOW_EXTENDED_TIME:Z

    .line 94
    const-string v0, "SHOWING_NOTHING"

    const-string v1, "SHOWING_WARNING"

    const-string v2, "SHOWING_SAVER"

    const-string v3, "SHOWING_INVALID_CHARGER"

    const-string v4, "SHOWING_AUTO_SAVER_SUGGESTION"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    .line 131
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 132
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 133
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$1;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    .line 141
    const-string v0, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    .line 143
    const-string v0, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverNotificationShowing:Z

    .line 170
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 171
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 172
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    .line 173
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->init()V

    .line 174
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/power/PowerNotificationWarnings;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissHighTemperatureWarningInternal()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showHighTemperatureDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showThermalShutdownDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showAutoSaverSuggestion()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->scheduleAutoBatterySaver()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/power/PowerNotificationWarnings;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerNotificationWarnings;->setSaverMode(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showStartSaverConfirmation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissAutoSaverSuggestion()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissSaverNotification()V

    return-void
.end method

.method private addStopSaverAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "nb"    # Landroid/app/Notification$Builder;

    .line 480
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 481
    const v1, 0x7f11015d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PNW.stopSaver"

    .line 482
    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 480
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 483
    return-void
.end method

.method private dismissAutoSaverSuggestion()V
    .locals 1

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowAutoSaverSuggestion:Z

    .line 687
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 688
    return-void
.end method

.method private dismissHighTemperatureWarningInternal()V
    .locals 4

    .line 550
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "high_temp"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 551
    return-void
.end method

.method private dismissInvalidChargerNotification()V
    .locals 2

    .line 669
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing invalid charger notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 671
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 672
    return-void
.end method

.method private dismissLowBatteryNotification()V
    .locals 2

    .line 638
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing low battery notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 640
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 641
    return-void
.end method

.method private dismissSaverNotification()V
    .locals 2

    .line 486
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissing saver notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    .line 488
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 489
    return-void
.end method

.method private getBatteryLowDescription()Ljava/lang/String;
    .locals 11

    .line 407
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 408
    .local v0, "batteryStatsHelper":Lcom/android/internal/os/BatteryStatsHelper;
    const/4 v1, 0x0

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 409
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v1

    .line 410
    .local v1, "batteryStats":Landroid/os/BatteryStats;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/os/BatteryStats;->computePowerSaveExtendTime(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v3

    .line 411
    .local v3, "extendTime":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-lez v5, :cond_0

    const-wide/32 v7, 0x927c0

    cmp-long v5, v3, v7

    if-ltz v5, :cond_0

    .line 412
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f110161

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->getFormattedTime(J)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v2, v6

    invoke-virtual {v5, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "str":Ljava/lang/String;
    goto :goto_0

    .line 414
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v9

    .line 415
    invoke-virtual {v5, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    .line 416
    .local v5, "percentage":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f110157

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v6

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 418
    .end local v5    # "percentage":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    :goto_0
    sget-boolean v5, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 419
    const-string v5, "PowerUI.Notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBatteryLowDescription extendTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " str="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_1
    return-object v2
.end method

.method private getBatterySaverContentText()Ljava/lang/String;
    .locals 11

    .line 426
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 427
    .local v0, "batteryStatsHelper":Lcom/android/internal/os/BatteryStatsHelper;
    const/4 v1, 0x0

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 428
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v1

    .line 429
    .local v1, "batteryStats":Landroid/os/BatteryStats;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v3

    .line 430
    .local v3, "timeRemaining":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-lez v5, :cond_0

    .line 431
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v7, 0x7f110162

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->getFormattedTime(J)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v2, v6

    invoke-virtual {v5, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "str":Ljava/lang/String;
    goto :goto_0

    .line 433
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v9

    .line 434
    invoke-virtual {v5, v7, v8}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    .line 435
    .local v5, "percentage":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f110152

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v6

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 437
    .end local v5    # "percentage":Ljava/lang/String;
    .restart local v2    # "str":Ljava/lang/String;
    :goto_0
    sget-boolean v5, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 438
    const-string v5, "PowerUI.Notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBatterySaverContentText timeRemaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " str="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_1
    return-object v2
.end method

.method private getBatterySaverDescription()Ljava/lang/CharSequence;
    .locals 13

    .line 727
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v1, 0x7f1102a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 728
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "learnMoreUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x10400de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x10400df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 739
    .local v1, "rawText":Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 740
    .local v2, "message":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 745
    .local v3, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const-class v5, Landroid/text/Annotation;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/Annotation;

    array-length v5, v4

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 746
    .local v7, "annotation":Landroid/text/Annotation;
    invoke-virtual {v7}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 748
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v9, "url"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 749
    goto :goto_1

    .line 751
    :cond_1
    invoke-virtual {v2, v7}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 752
    .local v9, "start":I
    invoke-virtual {v2, v7}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 757
    .local v10, "end":I
    new-instance v11, Lcom/android/systemui/power/PowerNotificationWarnings$1;

    invoke-direct {v11, p0, v0}, Lcom/android/systemui/power/PowerNotificationWarnings$1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Ljava/lang/String;)V

    .line 786
    .local v11, "urlSpan":Landroid/text/style/URLSpan;
    invoke-virtual {v2, v11}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v3, v11, v9, v10, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 745
    .end local v7    # "annotation":Landroid/text/Annotation;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "start":I
    .end local v10    # "end":I
    .end local v11    # "urlSpan":Landroid/text/style/URLSpan;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 788
    :cond_2
    return-object v3
.end method

.method private getFormattedTime(J)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "estimateMillis"    # J

    .line 498
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    long-to-double v1, p1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getHybridContentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "percentage"    # Ljava/lang/String;

    .line 508
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mEstimate:Lcom/android/systemui/power/Estimate;

    iget-wide v1, v1, Lcom/android/systemui/power/Estimate;->estimateMillis:J

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mEstimate:Lcom/android/systemui/power/Estimate;

    iget-boolean v3, v3, Lcom/android/systemui/power/Estimate;->isBasedOnUsage:Z

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLowBatteryAutoTriggerDefaultLevel()I
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private hasBatterySettings()Z
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasSaverSettings()Z
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEnglishLocale()Z
    .locals 2

    .line 719
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 720
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 719
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$showAutoSaverEnabledConfirmation$4(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 806
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->onAutoSaverEnabledConfirmationClosed()V

    return-void
.end method

.method public static synthetic lambda$showAutoSaverEnabledConfirmation$5(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "actionBatterySaverSetting"    # Landroid/content/Intent;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 810
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 811
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->onAutoSaverEnabledConfirmationClosed()V

    .line 812
    return-void
.end method

.method public static synthetic lambda$showAutoSaverEnabledConfirmation$6(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 814
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->onAutoSaverEnabledConfirmationClosed()V

    return-void
.end method

.method public static synthetic lambda$showHighTemperatureDialog$0(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 583
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method public static synthetic lambda$showStartSaverConfirmation$2(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 711
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->setSaverMode(ZZ)V

    return-void
.end method

.method public static synthetic lambda$showStartSaverConfirmation$3(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method public static synthetic lambda$showThermalShutdownDialog$1(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method

.method private onAutoSaverEnabledConfirmationClosed()V
    .locals 1

    .line 820
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverEnabledConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 821
    return-void
.end method

.method private pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 493
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .line 516
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 517
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 518
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 516
    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private scheduleAutoBatterySaver()V
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 830
    .local v0, "autoTriggerThreshold":I
    if-nez v0, :cond_0

    .line 831
    const/16 v0, 0xf

    .line 834
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->ensureAutoBatterySaver(Landroid/content/Context;I)V

    .line 835
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showAutoSaverEnabledConfirmation()V

    .line 836
    return-void
.end method

.method private setSaverMode(ZZ)V
    .locals 1
    .param p1, "mode"    # Z
    .param p2, "needFirstTimeWarning"    # Z

    .line 824
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(Landroid/content/Context;ZZ)Z

    .line 825
    return-void
.end method

.method private static settings(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .line 523
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x5c800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private showAutoSaverEnabledConfirmation()V
    .locals 8

    .line 792
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverEnabledConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    return-void

    .line 795
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 797
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 799
    .local v0, "actionBatterySaverSetting":Landroid/content/Intent;
    new-instance v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 800
    .local v1, "d":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v2, 0x7f110141

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 801
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v3, 0x7f110140

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 802
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->getLowBatteryAutoTriggerDefaultLevel()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 801
    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 805
    const v2, 0x7f110142

    new-instance v3, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$vDtwYNuUfBD9Wjct46I3oQZA9IU;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$vDtwYNuUfBD9Wjct46I3oQZA9IU;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 809
    const v2, 0x7f110462

    new-instance v3, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$AbQVXaj-x5Lsbd2FymR2u02w1z0;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$AbQVXaj-x5Lsbd2FymR2u02w1z0;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 813
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 814
    new-instance v2, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$tYg3WGmOxz_w0_hCJQKvQn95Q7c;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$tYg3WGmOxz_w0_hCJQKvQn95Q7c;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 815
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 816
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverEnabledConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 817
    return-void
.end method

.method private showAutoSaverSuggestion()V
    .locals 1

    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowAutoSaverSuggestion:Z

    .line 682
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 683
    return-void
.end method

.method private showAutoSaverSuggestionNotification()V
    .locals 7

    .line 378
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->HINTS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 380
    const v1, 0x7f080567

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 381
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 382
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 383
    const v3, 0x7f110144

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 385
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->getLowBatteryAutoTriggerDefaultLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 384
    const v4, 0x7f110143

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 386
    .local v0, "nb":Landroid/app/Notification$Builder;
    const-string v2, "PNW.enableAutoSaver"

    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 387
    const-string v2, "PNW.dismissAutoSaverSuggestion"

    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 388
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 389
    const v3, 0x7f110409

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PNW.autoSaverNoThanks"

    .line 390
    invoke-direct {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 388
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 392
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 394
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 396
    .local v2, "n":Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v4, "low_battery"

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v6, 0x270f

    invoke-virtual {v3, v4, v6, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 397
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverNotificationShowing:Z

    .line 400
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v3, "auto_saver"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v5, 0x31

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 402
    return-void
.end method

.method private showHighTemperatureDialog()V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    return-void

    .line 577
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 578
    .local v0, "d":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setIconAttribute(I)V

    .line 579
    const v1, 0x7f1102b0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 580
    const v1, 0x7f1102ae

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 581
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 582
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 583
    new-instance v1, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$PU_JpsxNcz7jXGNa_DRkuMbEWwU;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$PU_JpsxNcz7jXGNa_DRkuMbEWwU;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 584
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 585
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 586
    return-void
.end method

.method private showInvalidChargerNotification()V
    .locals 6

    .line 288
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 290
    const v1, 0x7f080566

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 291
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 292
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 293
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 294
    const v3, 0x7f1102d3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 295
    const v3, 0x7f1102d2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 296
    const v3, 0x1060157

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 298
    .local v0, "nb":Landroid/app/Notification$Builder;
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 299
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 300
    .local v1, "n":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v3, "low_battery"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 301
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v3, "low_battery"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v5, v1, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 302
    return-void
.end method

.method private showSaverNotification()V
    .locals 9

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->getBatterySaverContentText()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "contentText":Ljava/lang/String;
    sget-boolean v1, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOW_EXTENDED_TIME:Z

    if-nez v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f11015e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverNotificationShowing:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->HINTS:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    .line 452
    .local v1, "channel":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f080567

    .line 453
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f11015f

    .line 454
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 455
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 456
    invoke-virtual {v3, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 457
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 458
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 459
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 460
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x1010543

    .line 461
    invoke-static {v5, v6}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 463
    .local v2, "nb":Landroid/app/Notification$Builder;
    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->addStopSaverAction(Landroid/app/Notification$Builder;)V

    .line 464
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->hasSaverSettings()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 465
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverSettings:Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 467
    :cond_2
    const-string v5, "PowerUI.Notification"

    const-string v6, "no saver settings"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v4}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 470
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 471
    .local v4, "n":Landroid/app/Notification;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v6, "low_battery"

    const/4 v7, 0x2

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 472
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v6, "low_battery"

    const/4 v7, 0x3

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 473
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v6, "auto_saver"

    const/16 v7, 0x31

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 475
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v6, "low_battery"

    const/16 v7, 0x270f

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7, v4, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 476
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverNotificationShowing:Z

    .line 477
    return-void
.end method

.method private showStartSaverConfirmation()V
    .locals 3

    .line 696
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    return-void

    .line 697
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 698
    .local v0, "d":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v1, 0x7f11015c

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 699
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->getBatterySaverDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 703
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->isEnglishLocale()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 704
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessageHyphenationFrequency(I)V

    .line 707
    :cond_1
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessageMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 709
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 710
    const v1, 0x7f11015b

    new-instance v2, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$PQ6TbFMdXvgpK7h9WuYVBt-fwlE;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$PQ6TbFMdXvgpK7h9WuYVBt-fwlE;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 712
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 713
    new-instance v1, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$xerpSCZ61JcOfwY_Falk7PImt6k;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$xerpSCZ61JcOfwY_Falk7PImt6k;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 714
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 715
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 716
    return-void
.end method

.method private showThermalShutdownDialog()V
    .locals 3

    .line 594
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    return-void

    .line 595
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 596
    .local v0, "d":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setIconAttribute(I)V

    .line 597
    const v1, 0x7f110613

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 598
    const v1, 0x7f110611

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 599
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 600
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 601
    new-instance v1, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$O5nkGS5PG2ihQrXqunpOO_aZDms;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$O5nkGS5PG2ihQrXqunpOO_aZDms;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 602
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 603
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 604
    return-void
.end method

.method private updateNotification()V
    .locals 5

    .line 249
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotification mWarning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mPlaySound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mInvalidCharger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mSaver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", SaverNotiShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverNotificationShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", suggest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowAutoSaverSuggestion:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showInvalidChargerNotification()V

    .line 256
    iput v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 257
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWarningNotification()V

    .line 259
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 261
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSaverNotification()V

    .line 263
    iput v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 265
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowAutoSaverSuggestion:Z

    if-eqz v0, :cond_5

    .line 270
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showAutoSaverSuggestionNotification()V

    .line 273
    :cond_4
    iput v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v3, "low_battery"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v2, "low_battery"

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "auto_saver"

    const/16 v2, 0x31

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "low_battery"

    const/16 v2, 0x270f

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverNotificationShowing:Z

    .line 283
    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    .line 285
    :goto_0
    return-void
.end method


# virtual methods
.method public dismissHighTemperatureWarning()V
    .locals 1

    .line 537
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    if-nez v0, :cond_0

    .line 538
    return-void

    .line 540
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    .line 541
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissHighTemperatureWarningInternal()V

    .line 542
    return-void
.end method

.method public dismissInvalidChargerWarning()V
    .locals 0

    .line 665
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissInvalidChargerNotification()V

    .line 666
    return-void
.end method

.method public dismissLowBatteryWarning()V
    .locals 3

    .line 633
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    .line 635
    return-void
.end method

.method dismissThermalShutdownWarning()V
    .locals 4

    .line 590
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v1, "high_temp"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 591
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 179
    const-string v0, "mSaver="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 181
    const-string v0, "mWarning="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 182
    const-string v0, "mPlaySound="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 183
    const-string v0, "mInvalidCharger="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 184
    const-string v0, "mShowing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    const-string v0, "mSaverConfirmation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "not null"

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    const-string v0, "mSaverEnabledConfirmation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverEnabledConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_1

    const-string v0, "not null"

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    const-string v0, "mHighTempWarning="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 189
    const-string v0, "mHighTempDialog="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_2

    const-string v0, "not null"

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    const-string v0, "mThermalShutdownDialog="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_3

    const-string v1, "not null"

    nop

    :cond_3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public isInvalidChargerWarningShowing()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    return v0
.end method

.method public isWarningNotificationShow()Z
    .locals 1

    .line 503
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    return v0
.end method

.method public showHighTemperatureWarning()V
    .locals 6

    .line 555
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    if-eqz v0, :cond_0

    .line 556
    return-void

    .line 558
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    .line 559
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f080460

    .line 561
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 562
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 563
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f1102b0

    .line 564
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f1102af

    .line 565
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 566
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "PNW.clickedTempWarning"

    .line 567
    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "PNW.dismissedTempWarning"

    .line 568
    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v3, 0x1010543

    .line 569
    invoke-static {v1, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 570
    .local v0, "nb":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 571
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 572
    .local v1, "n":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v3, "high_temp"

    const/4 v4, 0x4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 573
    return-void
.end method

.method public showInvalidChargerWarning()V
    .locals 1

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 677
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 678
    return-void
.end method

.method public showLowBatteryWarning(Z)V
    .locals 3
    .param p1, "playSound"    # Z

    .line 655
    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] playSound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 660
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 661
    return-void
.end method

.method public showSaverMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .line 237
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    .line 238
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->dismiss()V

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 242
    return-void
.end method

.method public showThermalShutdownWarning()V
    .locals 6

    .line 608
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 610
    const v1, 0x7f080460

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 611
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 612
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 613
    const v3, 0x7f110613

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 614
    const v3, 0x7f110612

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 615
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "PNW.clickedThermalShutdownWarning"

    .line 616
    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "PNW.dismissedThermalShutdownWarning"

    .line 618
    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 617
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 619
    const v3, 0x1010543

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 620
    .local v0, "nb":Landroid/app/Notification$Builder;
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 621
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 622
    .local v1, "n":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v3, "high_temp"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v5, 0x27

    invoke-virtual {v2, v3, v5, v1, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 624
    return-void
.end method

.method protected showWarningNotification()V
    .locals 12

    .line 305
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    .line 306
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "percentage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f110156

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "title":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->getBatteryLowDescription()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "contentText":Ljava/lang/String;
    sget-boolean v3, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOW_EXTENDED_TIME:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 314
    iget-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v3, :cond_0

    const v3, 0x7f110155

    goto :goto_0

    .line 315
    :cond_0
    const v3, 0x7f110152

    .line 316
    .local v3, "textRes":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 321
    .end local v3    # "textRes":I
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mEstimate:Lcom/android/systemui/power/Estimate;

    if-eqz v3, :cond_2

    .line 322
    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->getHybridContentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->BATTERY:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->HINTS:Ljava/lang/String;

    .line 329
    .local v3, "channel":Ljava/lang/String;
    :goto_1
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v7, 0x7f080566

    .line 332
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarningTriggerTimeMs:J

    .line 334
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 335
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 336
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 337
    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 338
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v7, "PNW.dismissedWarning"

    .line 339
    invoke-direct {p0, v7}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 340
    invoke-virtual {v7, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 341
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 344
    .local v6, "nb":Landroid/app/Notification$Builder;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 345
    .local v7, "b":Landroid/os/Bundle;
    const-string v8, "oneplus.shouldPeekInGameMode"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 346
    const-string v8, "oneplus.shouldPeekInCarMode"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 347
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 349
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v9, 0x7f080559

    invoke-static {v8, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->hasBatterySettings()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 352
    const-string v8, "PNW.batterySettings"

    invoke-direct {p0, v8}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 356
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mEstimate:Lcom/android/systemui/power/Estimate;

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-ltz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mEstimate:Lcom/android/systemui/power/Estimate;

    iget-wide v8, v8, Lcom/android/systemui/power/Estimate;->estimateMillis:J

    iget-wide v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSevereWarningThreshold:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_6

    .line 358
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v9, 0x1010543

    invoke-static {v8, v9}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 361
    :cond_6
    iget-boolean v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-nez v8, :cond_7

    .line 362
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v9, 0x7f110160

    .line 363
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "PNW.startSaver"

    .line 364
    invoke-direct {p0, v9}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 362
    invoke-virtual {v6, v4, v8, v9}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_2

    .line 366
    :cond_7
    invoke-direct {p0, v6}, Lcom/android/systemui/power/PowerNotificationWarnings;->addStopSaverAction(Landroid/app/Notification$Builder;)V

    .line 369
    :goto_2
    iget-boolean v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    xor-int/2addr v5, v8

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 370
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 371
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v4}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 372
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 373
    .local v4, "n":Landroid/app/Notification;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v8, "low_battery"

    const/4 v9, 0x2

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v8, v9, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 374
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string v8, "low_battery"

    const/4 v9, 0x3

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v8, v9, v4, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 375
    return-void
.end method

.method public update(IIJ)V
    .locals 3
    .param p1, "batteryLevel"    # I
    .param p2, "bucket"    # I
    .param p3, "screenOffTime"    # J

    .line 202
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update battery level from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSaver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaver:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    if-eq p1, v0, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSaverNotification()V

    .line 210
    :cond_1
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    .line 211
    if-ltz p2, :cond_2

    .line 212
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarningTriggerTimeMs:J

    goto :goto_0

    .line 213
    :cond_2
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-ge p2, v0, :cond_3

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarningTriggerTimeMs:J

    .line 216
    :cond_3
    :goto_0
    iput p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 217
    iput-wide p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    .line 218
    return-void
.end method

.method public updateEstimate(Lcom/android/systemui/power/Estimate;)V
    .locals 4
    .param p1, "estimate"    # Lcom/android/systemui/power/Estimate;

    .line 222
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mEstimate:Lcom/android/systemui/power/Estimate;

    .line 223
    iget-wide v0, p1, Lcom/android/systemui/power/Estimate;->estimateMillis:J

    iget-wide v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowWarningThreshold:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarningTriggerTimeMs:J

    .line 226
    :cond_0
    return-void
.end method

.method public updateLowBatteryWarning()V
    .locals 0

    .line 628
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 629
    return-void
.end method

.method public updateThresholds(JJ)V
    .locals 0
    .param p1, "lowThreshold"    # J
    .param p3, "severeThreshold"    # J

    .line 230
    iput-wide p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mLowWarningThreshold:J

    .line 231
    iput-wide p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSevereWarningThreshold:J

    .line 232
    return-void
.end method

.method public userSwitched()V
    .locals 0

    .line 692
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 693
    return-void
.end method
