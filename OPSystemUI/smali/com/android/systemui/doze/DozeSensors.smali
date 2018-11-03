.class public Lcom/android/systemui/doze/DozeSensors;
.super Ljava/lang/Object;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeSensors$Callback;,
        Lcom/android/systemui/doze/DozeSensors$TriggerSensor;,
        Lcom/android/systemui/doze/DozeSensors$MotionCheck;,
        Lcom/android/systemui/doze/DozeSensors$ProxSensor;
    }
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

.field private final mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mHandler:Landroid/os/Handler;

.field private final mMotionCheck:Lcom/android/systemui/doze/DozeSensors$MotionCheck;

.field private final mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field private final mProxCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/hardware/SensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "dozeParameters"    # Lcom/android/systemui/statusbar/phone/DozeParameters;
    .param p5, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    .param p6, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;
    .param p7, "callback"    # Lcom/android/systemui/doze/DozeSensors$Callback;
    .param p9, "policy"    # Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/AlarmManager;",
            "Landroid/hardware/SensorManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/internal/hardware/AmbientDisplayConfiguration;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Lcom/android/systemui/doze/DozeSensors$Callback;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;",
            ")V"
        }
    .end annotation

    .local p8, "proxCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    move-object/from16 v9, p0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v9, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    .line 183
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$1;

    iget-object v1, v9, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v9, v1}, Lcom/android/systemui/doze/DozeSensors$1;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/os/Handler;)V

    iput-object v0, v9, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 77
    move-object/from16 v10, p1

    iput-object v10, v9, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    .line 78
    move-object/from16 v11, p2

    iput-object v11, v9, Lcom/android/systemui/doze/DozeSensors;->mAlarmManager:Landroid/app/AlarmManager;

    .line 79
    move-object/from16 v12, p3

    iput-object v12, v9, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 80
    move-object/from16 v13, p4

    iput-object v13, v9, Lcom/android/systemui/doze/DozeSensors;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 81
    move-object/from16 v14, p5

    iput-object v14, v9, Lcom/android/systemui/doze/DozeSensors;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 82
    move-object/from16 v15, p6

    iput-object v15, v9, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 83
    move-object/from16 v8, p8

    iput-object v8, v9, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    .line 84
    iget-object v0, v9, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    .line 86
    const/4 v0, 0x4

    new-array v7, v0, [Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    new-instance v16, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iget-object v0, v9, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 88
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 90
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object v1, v9

    move-object v8, v7

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    const/4 v0, 0x0

    aput-object v16, v8, v0

    new-instance v7, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iget-object v0, v9, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 94
    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const-string v3, "doze_pulse_on_pick_up"

    .line 96
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v4

    const/4 v5, 0x3

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v9

    move-object v10, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    iput-object v10, v9, Lcom/android/systemui/doze/DozeSensors;->mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v0, 0x1

    aput-object v10, v8, v0

    new-instance v10, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 100
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    const-string v3, "doze_pulse_on_double_tap"

    .line 104
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->doubleTapReportsTouchCoordinates()Z

    move-result v6

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v7, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    const/4 v0, 0x2

    aput-object v10, v8, v0

    new-instance v10, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 107
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->longPressSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    const-string v3, "doze_pulse_on_long_press"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/16 v16, 0x1

    move-object v0, v10

    move-object v11, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZ)V

    const/4 v0, 0x3

    aput-object v10, v11, v0

    iput-object v11, v9, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 116
    new-instance v1, Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnPickupAvailable()Z

    move-result v2

    invoke-direct {v1, v9, v2, v0}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;-><init>(Lcom/android/systemui/doze/DozeSensors;ZI)V

    iput-object v1, v9, Lcom/android/systemui/doze/DozeSensors;->mMotionCheck:Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    .line 117
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    move-object/from16 v1, p9

    invoke-direct {v0, v9, v1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    iput-object v0, v9, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    .line 118
    move-object/from16 v0, p7

    iput-object v0, v9, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/doze/DozeSensors;)[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeSensors;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/doze/DozeSensors;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeSensors;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeSensors;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeSensors;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeSensors;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeSensors;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeSensors;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeSensors;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeSensors;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/wakelock/WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeSensors;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/doze/DozeSensors;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/doze/DozeSensors;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 5
    .param p0, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p1, "type"    # Ljava/lang/String;

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    return-object v1

    .line 129
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 131
    .local v3, "s":Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    return-object v3

    .line 134
    .end local v3    # "s":Landroid/hardware/Sensor;
    :cond_1
    goto :goto_0

    .line 135
    :cond_2
    return-object v1
.end method

.method private findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {v0, p1}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 202
    .local v3, "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    const-string v4, "Sensor: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    .end local v3    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_0
    const-string v0, "ProxSensor: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public isProximityCurrentlyFar()Ljava/lang/Boolean;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    return-object v0
.end method

.method public onUserSwitched()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 175
    .local v3, "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    invoke-virtual {v3}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListener()V

    .line 174
    .end local v3    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method public reregisterAllSensors()V
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 166
    .local v4, "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    invoke-virtual {v4, v2}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    .line 165
    .end local v4    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 169
    .local v3, "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    .line 168
    .end local v3    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    :cond_1
    return-void
.end method

.method public setDisableSensorsInterferingWithProximity(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .line 196
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setDisabled(Z)V

    .line 197
    return-void
.end method

.method public setListening(Z)V
    .locals 5
    .param p1, "listen"    # Z

    .line 140
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mMotionCheck:Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mMotionCheck:Lcom/android/systemui/doze/DozeSensors$MotionCheck;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors$MotionCheck;->setListening(Z)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 145
    .local v3, "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    invoke-virtual {v3, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    .line 146
    if-eqz p1, :cond_1

    .line 147
    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->registerSettingsObserver(Landroid/database/ContentObserver;)V

    .line 144
    .end local v3    # "s":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_2
    if-nez p1, :cond_3

    .line 151
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 153
    :cond_3
    return-void
.end method

.method public setProxListening(Z)V
    .locals 1
    .param p1, "listen"    # Z

    .line 180
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->setRequested(Z)V

    .line 181
    return-void
.end method

.method public setTouchscreenSensorsListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .line 157
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 158
    .local v3, "sensor":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    iget-boolean v4, v3, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequiresTouchscreen:Z

    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {v3, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    .line 157
    .end local v3    # "sensor":Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    return-void
.end method
