.class public Lcom/android/systemui/doze/DozeTriggers;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;,
        Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAllowPulseTriggers:Z

.field private final mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

.field private final mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

.field private final mHandler:Landroid/os/Handler;

.field private mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private final mMachine:Lcom/android/systemui/doze/DozeMachine;

.field private mNotificationPulseTime:J

.field private mPulsePending:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mUiModeManager:Landroid/app/UiModeManager;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/SensorManager;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Z)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "machine"    # Lcom/android/systemui/doze/DozeMachine;
    .param p3, "dozeHost"    # Lcom/android/systemui/doze/DozeHost;
    .param p4, "alarmManager"    # Landroid/app/AlarmManager;
    .param p5, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    .param p6, "dozeParameters"    # Lcom/android/systemui/statusbar/phone/DozeParameters;
    .param p7, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p8, "handler"    # Landroid/os/Handler;
    .param p9, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;
    .param p10, "allowPulseTriggers"    # Z

    move-object/from16 v0, p0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$1;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    .line 383
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$2;

    invoke-direct {v1, v0}, Lcom/android/systemui/doze/DozeTriggers$2;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    .line 77
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    .line 78
    move-object/from16 v12, p2

    iput-object v12, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 79
    move-object/from16 v13, p3

    iput-object v13, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 80
    move-object/from16 v14, p5

    iput-object v14, v0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 81
    move-object/from16 v15, p6

    iput-object v15, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 82
    move-object/from16 v11, p7

    iput-object v11, v0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Landroid/hardware/SensorManager;

    .line 83
    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/android/systemui/doze/DozeTriggers;->mHandler:Landroid/os/Handler;

    .line 84
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 85
    move/from16 v8, p10

    iput-boolean v8, v0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    .line 86
    new-instance v7, Lcom/android/systemui/doze/DozeSensors;

    iget-object v5, v0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v6, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$XvluYZ5eADBR1VYFZ4qS9j4p2P0;

    invoke-direct {v6, v0}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$XvluYZ5eADBR1VYFZ4qS9j4p2P0;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    new-instance v4, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$ulqUMEXi8OgK7771oZ9BOr21BBk;

    invoke-direct {v4, v0}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$ulqUMEXi8OgK7771oZ9BOr21BBk;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    .line 88
    invoke-virtual/range {p6 .. p6}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPolicy()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-result-object v16

    move-object v2, v7

    move-object v3, v1

    move-object/from16 v17, v4

    move-object/from16 v4, p4

    move-object/from16 v18, v6

    move-object v6, v15

    move-object v1, v7

    move-object v7, v14

    move-object v8, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v17

    move-object/from16 v11, v16

    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/doze/DozeSensors;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/hardware/SensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    .line 89
    iget-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/UiModeManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    .line 90
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/DozeTriggers;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeTriggers;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeTriggers;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeTriggers;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeTriggers;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeTriggers;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/doze/DozeTriggers;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeTriggers;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeTriggers;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeTriggers;

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->onNotification()V

    return-void
.end method

.method private canPulse()Z
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 249
    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 248
    :goto_1
    return v0
.end method

.method private checkTriggersAtInit()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 217
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPowerSaveActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 218
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isBlockingDoze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 219
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 222
    :cond_1
    return-void
.end method

.method private continuePulseRequest(I)V
    .locals 4
    .param p1, "reason"    # I

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    .line 254
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->canPulse()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestPulse(I)V

    .line 260
    return-void

    .line 255
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 256
    invoke-interface {v3}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v3

    .line 255
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;ZLcom/android/systemui/doze/DozeMachine$State;Z)V

    .line 257
    return-void
.end method

.method public static synthetic lambda$XvluYZ5eADBR1VYFZ4qS9j4p2P0(Lcom/android/systemui/doze/DozeTriggers;IZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/doze/DozeTriggers;->onSensor(IZFF)V

    return-void
.end method

.method public static synthetic lambda$onSensor$0(Lcom/android/systemui/doze/DozeTriggers;ZFFI)V
    .locals 1
    .param p1, "isDoubleTap"    # Z
    .param p2, "screenX"    # F
    .param p3, "screenY"    # F
    .param p4, "result"    # I

    .line 134
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 136
    return-void

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0, p2, p3}, Lcom/android/systemui/doze/DozeHost;->onDoubleTap(FF)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->wakeUp()V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->extendPulse()V

    .line 144
    :goto_0
    return-void
.end method

.method public static synthetic lambda$requestPulse$1(Lcom/android/systemui/doze/DozeTriggers;II)V
    .locals 1
    .param p1, "reason"    # I
    .param p2, "result"    # I

    .line 237
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->continuePulseRequest(I)V

    .line 244
    :goto_0
    return-void
.end method

.method public static synthetic lambda$ulqUMEXi8OgK7771oZ9BOr21BBk(Lcom/android/systemui/doze/DozeTriggers;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->onProximityFar(Z)V

    return-void
.end method

.method private onNotification()V
    .locals 2

    .line 93
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeTriggers"

    const-string v1, "requestNotificationPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    .line 95
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 96
    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZ)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->traceNotificationPulse(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method private onProximityFar(Z)V
    .locals 9
    .param p1, "far"    # Z

    .line 160
    xor-int/lit8 v0, p1, 0x1

    .line 161
    .local v0, "near":Z
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v1

    .line 162
    .local v1, "state":Lcom/android/systemui/doze/DozeMachine$State;
    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 163
    .local v2, "paused":Z
    :goto_0
    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v1, v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    .line 164
    .local v5, "pausing":Z
    :goto_1
    sget-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v1, v6, :cond_2

    move v3, v4

    nop

    .line 166
    .local v3, "aod":Z
    :cond_2
    sget-object v4, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v1, v4, :cond_4

    .line 167
    move v4, v0

    .line 168
    .local v4, "ignoreTouch":Z
    sget-boolean v6, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "DozeTriggers"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prox changed, ignore touch = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v6, v4}, Lcom/android/systemui/doze/DozeHost;->onIgnoreTouchWhilePulsing(Z)V

    .line 171
    .end local v4    # "ignoreTouch":Z
    :cond_4
    if-eqz p1, :cond_7

    if-nez v2, :cond_5

    if-eqz v5, :cond_7

    .line 172
    :cond_5
    sget-boolean v4, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "DozeTriggers"

    const-string v6, "Prox FAR, unpausing AOD"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v4, v6}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_2

    .line 174
    :cond_7
    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    .line 175
    sget-boolean v4, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "DozeTriggers"

    const-string v6, "Prox NEAR, pausing AOD"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v4, v6}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 178
    :cond_9
    :goto_2
    return-void
.end method

.method private onSensor(IZFF)V
    .locals 9
    .param p1, "pulseReason"    # I
    .param p2, "sensorPerformedProxCheck"    # Z
    .param p3, "screenX"    # F
    .param p4, "screenY"    # F

    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 129
    .local v2, "isDoubleTap":Z
    :goto_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 130
    .local v3, "isPickup":Z
    :goto_1
    const/4 v4, 0x5

    if-ne p1, v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    .line 132
    .local v4, "isLongPress":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    .line 133
    new-instance v0, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Cox3oanmitA51LErVAi1Gs5cbKs;

    invoke-direct {v0, p0, v2, p3, p4}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$Cox3oanmitA51LErVAi1Gs5cbKs;-><init>(Lcom/android/systemui/doze/DozeTriggers;ZFF)V

    invoke-direct {p0, v0, p2, p1}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/IntConsumer;ZI)V

    .line 145
    return-void

    .line 147
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZ)V

    .line 150
    if-eqz v3, :cond_5

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    sub-long/2addr v5, v7

    .line 153
    .local v5, "timeSinceNotification":J
    iget-object v7, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 154
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupVibrationThreshold()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    move v0, v1

    nop

    .line 155
    .local v0, "withinVibrationThreshold":Z
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/doze/DozeLog;->tracePickupPulse(Landroid/content/Context;Z)V

    .line 157
    .end local v0    # "withinVibrationThreshold":Z
    .end local v5    # "timeSinceNotification":J
    :cond_5
    return-void
.end method

.method private proximityCheckThenCall(Ljava/util/function/IntConsumer;ZI)V
    .locals 10
    .param p1, "callback"    # Ljava/util/function/IntConsumer;
    .param p2, "alreadyPerformedProxCheck"    # Z
    .param p3, "pulseReason"    # I

    .line 107
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors;->isProximityCurrentlyFar()Ljava/lang/Boolean;

    move-result-object v0

    .line 108
    .local v0, "cachedProxFar":Ljava/lang/Boolean;
    if-eqz p2, :cond_0

    .line 109
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_1

    .line 110
    :cond_0
    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_1

    .line 113
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 114
    .local v8, "start":J
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$1;

    move-object v2, v1

    move-object v3, p0

    move-wide v4, v8

    move v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/doze/DozeTriggers$1;-><init>(Lcom/android/systemui/doze/DozeTriggers;JILjava/util/function/IntConsumer;)V

    .line 122
    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeTriggers$1;->check()V

    .line 124
    .end local v8    # "start":J
    :goto_1
    return-void
.end method

.method private requestPulse(IZ)V
    .locals 4
    .param p1, "reason"    # I
    .param p2, "performedProxCheck"    # Z

    .line 225
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->extendPulse()V

    .line 227
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->canPulse()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 235
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    .line 236
    new-instance v1, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$hOBqImh7g4o_iKhiP9d1qETIOWo;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$hOBqImh7g4o_iKhiP9d1qETIOWo;-><init>(Lcom/android/systemui/doze/DozeTriggers;I)V

    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 244
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getProxCheckBeforePulse()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    nop

    .line 236
    :cond_2
    :goto_0
    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/IntConsumer;ZI)V

    .line 245
    return-void

    .line 228
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 230
    invoke-interface {v3}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v3

    .line 229
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;ZLcom/android/systemui/doze/DozeMachine$State;Z)V

    .line 232
    :cond_4
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 264
    const-string v0, " notificationPulseTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    const-string v0, " pulsePending="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 268
    const-string v0, "DozeSensors:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors;->dump(Ljava/io/PrintWriter;)V

    .line 270
    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/systemui/doze/DozeMachine$State;
    .param p2, "newState"    # Lcom/android/systemui/doze/DozeMachine$State;

    .line 182
    sget-object v0, Lcom/android/systemui/doze/DozeTriggers$3;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Lcom/android/systemui/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->unregister(Landroid/content/Context;)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0, v2}, Lcom/android/systemui/doze/DozeSensors;->setListening(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0, v2}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 210
    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0, v2}, Lcom/android/systemui/doze/DozeSensors;->setTouchscreenSensorsListening(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 204
    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0, v2}, Lcom/android/systemui/doze/DozeSensors;->setListening(Z)V

    .line 200
    goto :goto_0

    .line 190
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, v3, :cond_0

    move v2, v1

    nop

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 191
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors;->reregisterAllSensors()V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeSensors;->setListening(Z)V

    .line 195
    goto :goto_0

    .line 184
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->register(Landroid/content/Context;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->checkTriggersAtInit()V

    .line 187
    nop

    .line 213
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
