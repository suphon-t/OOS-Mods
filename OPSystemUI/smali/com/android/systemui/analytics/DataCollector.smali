.class public Lcom/android/systemui/analytics/DataCollector;
.super Ljava/lang/Object;
.source "DataCollector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static sInstance:Lcom/android/systemui/analytics/DataCollector;


# instance fields
.field private mAllowReportRejectedTouch:Z

.field private mCollectBadTouches:Z

.field private final mContext:Landroid/content/Context;

.field private mCornerSwiping:Z

.field private mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

.field private mEnableCollector:Z

.field private final mHandler:Landroid/os/Handler;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private mTimeoutActive:Z

.field private mTrackingStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/analytics/DataCollector;->sInstance:Lcom/android/systemui/analytics/DataCollector;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mHandler:Landroid/os/Handler;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTimeoutActive:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCollectBadTouches:Z

    .line 70
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    .line 76
    new-instance v1, Lcom/android/systemui/analytics/DataCollector$1;

    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/analytics/DataCollector$1;-><init>(Lcom/android/systemui/analytics/DataCollector;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    .line 86
    iget-object v1, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_collector_enable"

    .line 87
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 86
    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 91
    iget-object v1, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_collector_collect_bad_touches"

    .line 92
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 91
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 96
    iget-object v1, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_collector_allow_rejected_touch_reports"

    .line 97
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 96
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->updateConfiguration()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/analytics/DataCollector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/analytics/DataCollector;

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->updateConfiguration()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/analytics/DataCollector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/analytics/DataCollector;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/analytics/DataCollector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/analytics/DataCollector;

    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCollectBadTouches:Z

    return v0
.end method

.method private addEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .line 458
    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/analytics/SensorLoggerSession;->addPhoneEvent(IJ)V

    .line 461
    :cond_0
    return-void
.end method

.method private enforceTimeout()V
    .locals 4

    .line 216
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTimeoutActive:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {v2}, Lcom/android/systemui/analytics/SensorLoggerSession;->getStartTimestampMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2af8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 219
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->onSessionEnd(I)V

    .line 225
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/analytics/DataCollector;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    sget-object v0, Lcom/android/systemui/analytics/DataCollector;->sInstance:Lcom/android/systemui/analytics/DataCollector;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/systemui/analytics/DataCollector;

    invoke-direct {v0, p0}, Lcom/android/systemui/analytics/DataCollector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/analytics/DataCollector;->sInstance:Lcom/android/systemui/analytics/DataCollector;

    .line 108
    :cond_0
    sget-object v0, Lcom/android/systemui/analytics/DataCollector;->sInstance:Lcom/android/systemui/analytics/DataCollector;

    return-object v0
.end method

.method private onSessionEnd(I)V
    .locals 3
    .param p1, "result"    # I

    .line 144
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    .line 145
    .local v0, "session":Lcom/android/systemui/analytics/SensorLoggerSession;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    .line 147
    iget-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    if-eqz v1, :cond_0

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/analytics/SensorLoggerSession;->end(JI)V

    .line 149
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->queueSession(Lcom/android/systemui/analytics/SensorLoggerSession;)V

    .line 151
    :cond_0
    return-void
.end method

.method private onSessionStart()V
    .locals 5

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    .line 140
    new-instance v0, Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/analytics/SensorLoggerSession;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    .line 141
    return-void
.end method

.method private queueSession(Lcom/android/systemui/analytics/SensorLoggerSession;)V
    .locals 1
    .param p1, "currentSession"    # Lcom/android/systemui/analytics/SensorLoggerSession;

    .line 180
    new-instance v0, Lcom/android/systemui/analytics/DataCollector$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/analytics/DataCollector$2;-><init>(Lcom/android/systemui/analytics/DataCollector;Lcom/android/systemui/analytics/SensorLoggerSession;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method private sessionEntrypoint()Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->onSessionStart()V

    .line 126
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sessionExitpoint(I)V
    .locals 1
    .param p1, "result"    # I

    .line 132
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/android/systemui/analytics/DataCollector;->onSessionEnd(I)V

    .line 135
    :cond_0
    return-void
.end method

.method private updateConfiguration()V
    .locals 4

    .line 112
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_collector_enable"

    .line 112
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_collector_collect_bad_touches"

    .line 115
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCollectBadTouches:Z

    .line 118
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_collector_allow_rejected_touch_reports"

    .line 118
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    .line 121
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    if-eqz v0, :cond_0

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

.method public isEnabledFull()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    return v0
.end method

.method public isReportingEnabled()Z
    .locals 1

    .line 464
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 229
    return-void
.end method

.method public onAffordanceSwipingAborted()V
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    .line 420
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 422
    :cond_0
    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 1
    .param p1, "rightCorner"    # Z

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    .line 407
    if-eqz p1, :cond_0

    .line 408
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    goto :goto_0

    .line 410
    :cond_0
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 412
    :goto_0
    return-void
.end method

.method public onBouncerHidden()V
    .locals 1

    .line 292
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 293
    return-void
.end method

.method public onBouncerShown()V
    .locals 1

    .line 285
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 286
    return-void
.end method

.method public onCameraHintStarted()V
    .locals 1

    .line 435
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 436
    return-void
.end method

.method public onCameraOn()V
    .locals 1

    .line 392
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 393
    return-void
.end method

.method public onFalsingSessionStarted()V
    .locals 0

    .line 468
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->sessionEntrypoint()Z

    .line 469
    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 1

    .line 442
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 443
    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 1

    .line 399
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 400
    return-void
.end method

.method public onNotificationActive()V
    .locals 1

    .line 335
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 336
    return-void
.end method

.method public onNotificationDismissed()V
    .locals 1

    .line 371
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 372
    return-void
.end method

.method public onNotificationDoubleTap()V
    .locals 1

    .line 343
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 344
    return-void
.end method

.method public onNotificatonStartDismissing()V
    .locals 1

    .line 378
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 379
    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .locals 1

    .line 357
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 358
    return-void
.end method

.method public onNotificatonStopDismissing()V
    .locals 1

    .line 385
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 386
    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .locals 1

    .line 364
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 365
    return-void
.end method

.method public onQsDown()V
    .locals 1

    .line 299
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 300
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .line 269
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->sessionExitpoint(I)V

    .line 271
    return-void
.end method

.method public onScreenOnFromTouch()V
    .locals 1

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 263
    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 254
    :cond_0
    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    monitor-enter p0

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/analytics/SensorLoggerSession;->addSensorEvent(Landroid/hardware/SensorEvent;J)V

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->enforceTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    monitor-exit p0

    return-void

    .line 208
    .end local p1    # "event":Landroid/hardware/SensorEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/analytics/DataCollector;
    throw p1
.end method

.method public onSucccessfulUnlock()V
    .locals 1

    .line 277
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 278
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->sessionExitpoint(I)V

    .line 279
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 446
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/SensorLoggerSession;->addMotionEvent(Landroid/view/MotionEvent;)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/analytics/SensorLoggerSession;->setTouchArea(II)V

    .line 453
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->enforceTimeout()V

    .line 455
    :cond_0
    return-void
.end method

.method public onTrackingStarted()V
    .locals 1

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    .line 318
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 319
    return-void
.end method

.method public onTrackingStopped()V
    .locals 1

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    .line 327
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 329
    :cond_0
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 1

    .line 428
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 429
    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 8

    .line 154
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    const-string v2, "Generating rejected touch report failed: session timed out."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    .line 161
    .local v0, "currentSession":Lcom/android/systemui/analytics/SensorLoggerSession;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/systemui/analytics/SensorLoggerSession;->setType(I)V

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/analytics/SensorLoggerSession;->end(JI)V

    .line 163
    invoke-virtual {v0}, Lcom/android/systemui/analytics/SensorLoggerSession;->toProto()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    move-result-object v1

    .line 165
    .local v1, "proto":Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 166
    .local v2, "b":[B
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "rejected_touch_reports"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 168
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rejected_touch_report_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .local v4, "touch":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    nop

    .line 176
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    return-object v5

    .line 172
    :catch_0
    move-exception v5

    .line 173
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public setNotificationExpanded()V
    .locals 1

    .line 350
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 351
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .line 306
    if-eqz p1, :cond_0

    .line 307
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    goto :goto_0

    .line 309
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    .line 311
    :goto_0
    return-void
.end method
