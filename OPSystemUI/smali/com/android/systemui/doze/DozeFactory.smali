.class public Lcom/android/systemui/doze/DozeFactory;
.super Ljava/lang/Object;
.source "DozeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private createDozeScreenBrightness(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;)Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/systemui/doze/DozeMachine$Service;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "host"    # Lcom/android/systemui/doze/DozeHost;
    .param p5, "params"    # Lcom/android/systemui/statusbar/phone/DozeParameters;
    .param p6, "handler"    # Landroid/os/Handler;

    .line 81
    nop

    .line 82
    const v0, 0x7f11024c

    move-object v9, p1

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    move-object v10, p3

    invoke-static {v10, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v0

    .line 83
    .local v0, "sensor":Landroid/hardware/Sensor;
    new-instance v11, Lcom/android/systemui/doze/DozeScreenBrightness;

    .line 84
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPolicy()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-result-object v8

    move-object v1, v11

    move-object v2, v9

    move-object v3, p2

    move-object v4, v10

    move-object v5, v0

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/doze/DozeScreenBrightness;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    .line 83
    return-object v11
.end method

.method private createDozeTriggers(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;)Lcom/android/systemui/doze/DozeTriggers;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p3, "host"    # Lcom/android/systemui/doze/DozeHost;
    .param p4, "alarmManager"    # Landroid/app/AlarmManager;
    .param p5, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    .param p6, "params"    # Lcom/android/systemui/statusbar/phone/DozeParameters;
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;
    .param p9, "machine"    # Lcom/android/systemui/doze/DozeMachine;

    .line 90
    const/4 v11, 0x1

    .line 91
    .local v11, "allowPulseTriggers":Z
    new-instance v12, Lcom/android/systemui/doze/DozeTriggers;

    move-object v0, v12

    move-object v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/doze/DozeTriggers;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/SensorManager;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Z)V

    return-object v12
.end method

.method private createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lcom/android/systemui/doze/DozeHost;
    .param p3, "wakeLock"    # Lcom/android/systemui/util/wakelock/WakeLock;
    .param p4, "machine"    # Lcom/android/systemui/doze/DozeMachine;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "alarmManager"    # Landroid/app/AlarmManager;
    .param p7, "params"    # Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 98
    new-instance v9, Lcom/android/systemui/doze/DozeUi;

    .line 99
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    move-object v0, v9

    move-object v1, p1

    move-object/from16 v2, p6

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 98
    return-object v9
.end method

.method public static getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;
    .locals 3
    .param p0, "service"    # Lcom/android/systemui/doze/DozeService;

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeService;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 104
    .local v0, "appCandidate":Landroid/app/Application;
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    .line 105
    .local v1, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/doze/DozeHost;

    return-object v2
.end method


# virtual methods
.method public assembleMachine(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeMachine;
    .locals 21
    .param p1, "dozeService"    # Lcom/android/systemui/doze/DozeService;

    .line 45
    move-object/from16 v10, p1

    .line 46
    .local v10, "context":Landroid/content/Context;
    const-class v0, Lcom/android/systemui/util/AsyncSensorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/hardware/SensorManager;

    .line 47
    .local v11, "sensorManager":Landroid/hardware/SensorManager;
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {v10, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/AlarmManager;

    .line 49
    .local v12, "alarmManager":Landroid/app/AlarmManager;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v13

    .line 50
    .local v13, "host":Lcom/android/systemui/doze/DozeHost;
    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v0, v10}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    .line 51
    .local v14, "config":Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v15

    .line 52
    .local v15, "params":Lcom/android/systemui/statusbar/phone/DozeParameters;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object v9, v0

    .line 53
    .local v9, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    const-string v1, "Doze"

    .line 54
    invoke-static {v10, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    invoke-direct {v0, v9, v1}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;)V

    move-object v8, v0

    .line 56
    .local v8, "wakeLock":Lcom/android/systemui/util/wakelock/WakeLock;
    move-object/from16 v0, p1

    .line 57
    .local v0, "wrappedService":Lcom/android/systemui/doze/DozeMachine$Service;
    new-instance v1, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;

    invoke-direct {v1, v0, v13}, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;)V

    move-object v0, v1

    .line 58
    invoke-static {v0, v15}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;

    move-result-object v0

    .line 59
    invoke-static {v0, v15}, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;

    move-result-object v7

    .line 62
    .end local v0    # "wrappedService":Lcom/android/systemui/doze/DozeMachine$Service;
    .local v7, "wrappedService":Lcom/android/systemui/doze/DozeMachine$Service;
    new-instance v0, Lcom/android/systemui/doze/DozeMachine;

    invoke-direct {v0, v7, v14, v8}, Lcom/android/systemui/doze/DozeMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;)V

    move-object v6, v0

    .line 63
    .local v6, "machine":Lcom/android/systemui/doze/DozeMachine;
    const/4 v0, 0x7

    new-array v5, v0, [Lcom/android/systemui/doze/DozeMachine$Part;

    new-instance v0, Lcom/android/systemui/doze/DozePauser;

    .line 64
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPolicy()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-result-object v1

    invoke-direct {v0, v9, v6, v12, v1}, Lcom/android/systemui/doze/DozePauser;-><init>(Landroid/os/Handler;Lcom/android/systemui/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    const/4 v1, 0x0

    aput-object v0, v5, v1

    new-instance v0, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;

    .line 65
    invoke-static {v10}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;-><init>(Lcom/android/systemui/classifier/FalsingManager;)V

    const/4 v1, 0x1

    aput-object v0, v5, v1

    .line 66
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v13

    move-object v4, v12

    move-object/from16 v16, v11

    move-object v11, v5

    move-object v5, v14

    .end local v11    # "sensorManager":Landroid/hardware/SensorManager;
    .local v16, "sensorManager":Landroid/hardware/SensorManager;
    move-object/from16 v17, v6

    move-object v6, v15

    .end local v6    # "machine":Lcom/android/systemui/doze/DozeMachine;
    .local v17, "machine":Lcom/android/systemui/doze/DozeMachine;
    move-object/from16 v18, v14

    move-object v14, v7

    move-object v7, v9

    .end local v7    # "wrappedService":Lcom/android/systemui/doze/DozeMachine$Service;
    .local v14, "wrappedService":Lcom/android/systemui/doze/DozeMachine$Service;
    .local v18, "config":Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    move-object/from16 v19, v8

    .end local v8    # "wakeLock":Lcom/android/systemui/util/wakelock/WakeLock;
    .local v19, "wakeLock":Lcom/android/systemui/util/wakelock/WakeLock;
    move-object/from16 v20, v9

    move-object/from16 v9, v17

    .end local v9    # "handler":Landroid/os/Handler;
    .local v20, "handler":Landroid/os/Handler;
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeFactory;->createDozeTriggers(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;)Lcom/android/systemui/doze/DozeTriggers;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v11, v1

    .line 68
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object/from16 v3, v19

    move-object/from16 v4, v17

    move-object/from16 v5, v20

    move-object v6, v12

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeFactory;->createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v11, v1

    new-instance v0, Lcom/android/systemui/doze/DozeScreenState;

    move-object/from16 v7, v20

    invoke-direct {v0, v14, v7, v15, v8}, Lcom/android/systemui/doze/DozeScreenState;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;)V

    .end local v19    # "wakeLock":Lcom/android/systemui/util/wakelock/WakeLock;
    .end local v20    # "handler":Landroid/os/Handler;
    .local v7, "handler":Landroid/os/Handler;
    .restart local v8    # "wakeLock":Lcom/android/systemui/util/wakelock/WakeLock;
    const/4 v1, 0x4

    aput-object v0, v11, v1

    .line 70
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v14

    move-object/from16 v3, v16

    move-object v4, v13

    move-object v5, v15

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/doze/DozeFactory;->createDozeScreenBrightness(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;)Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v11, v1

    new-instance v0, Lcom/android/systemui/doze/DozeWallpaperState;

    invoke-direct {v0, v10}, Lcom/android/systemui/doze/DozeWallpaperState;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x6

    aput-object v0, v11, v1

    .line 63
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/systemui/doze/DozeMachine;->setParts([Lcom/android/systemui/doze/DozeMachine$Part;)V

    .line 75
    .end local v17    # "machine":Lcom/android/systemui/doze/DozeMachine;
    .local v0, "machine":Lcom/android/systemui/doze/DozeMachine;
    return-object v0
.end method
