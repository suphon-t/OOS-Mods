.class public Lcom/android/systemui/classifier/FalsingManager;
.super Ljava/lang/Object;
.source "FalsingManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final CLASSIFIER_SENSORS:[I

.field private static final COLLECTOR_SENSORS:[I

.field private static sInstance:Lcom/android/systemui/classifier/FalsingManager;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBouncerOffOnDown:Z

.field private mBouncerOn:Z

.field private final mContext:Landroid/content/Context;

.field private final mDataCollector:Lcom/android/systemui/analytics/DataCollector;

.field private mEnforceBouncer:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

.field private mIsTouchScreen:Z

.field private mPendingWtf:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSessionActive:Z

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private mShowingAod:Z

.field private mState:I

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->CLASSIFIER_SENSORS:[I

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->COLLECTOR_SENSORS:[I

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0x8
        0x5
        0xb
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOffOnDown:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mIsTouchScreen:Z

    .line 80
    iput v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    .line 85
    new-instance v1, Lcom/android/systemui/classifier/FalsingManager$1;

    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/classifier/FalsingManager$1;-><init>(Lcom/android/systemui/classifier/FalsingManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 93
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    .line 94
    const-class v1, Lcom/android/systemui/util/AsyncSensorManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 95
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 96
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/analytics/DataCollector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/analytics/DataCollector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    .line 97
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/HumanInteractionClassifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    .line 98
    const-class v1, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/UiOffloadThread;

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 99
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 101
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "falsing_manager_enforce_bouncer"

    .line 102
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/classifier/FalsingManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 101
    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateConfiguration()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/classifier/FalsingManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/classifier/FalsingManager;

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateConfiguration()V

    return-void
.end method

.method private clearPendingWtf()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    .line 255
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 110
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/android/systemui/classifier/FalsingManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/FalsingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    .line 113
    :cond_0
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

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

.method public static synthetic lambda$isFalseTouch$2(Lcom/android/systemui/classifier/FalsingManager;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "enabled"    # I
    .param p2, "screenOn"    # I
    .param p3, "state"    # Ljava/lang/String;
    .param p4, "here"    # Ljava/lang/Throwable;

    .line 224
    const-string v0, "isFalseTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session did not become active after query for a false touch."

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enabled="

    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->isEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mScreenOn="

    .line 228
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mState="

    .line 230
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Look for warnings ~1000ms earlier to see root cause."

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-static {v0, v1, p4}, Lcom/android/systemui/classifier/FalsingLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$registerSensors$1(Lcom/android/systemui/classifier/FalsingManager;Landroid/hardware/Sensor;)V
    .locals 2
    .param p1, "s"    # Landroid/hardware/Sensor;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 186
    return-void
.end method

.method public static synthetic lambda$sessionExitpoint$0(Lcom/android/systemui/classifier/FalsingManager;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 147
    return-void
.end method

.method private onSessionStart()V
    .locals 3

    .line 160
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "onSessionStart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "classifierEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->clearPendingWtf()V

    .line 164
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 167
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->CLASSIFIER_SENSORS:[I

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->registerSensors([I)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabledFull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->COLLECTOR_SENSORS:[I

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->registerSensors([I)V

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onFalsingSessionStarted()V

    .line 176
    :cond_3
    return-void
.end method

.method private registerSensors([I)V
    .locals 6
    .param p1, "sensors"    # [I

    .line 179
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 180
    .local v2, "sensorType":I
    iget-object v3, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    .line 181
    .local v3, "s":Landroid/hardware/Sensor;
    if-eqz v3, :cond_0

    .line 184
    iget-object v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v5, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$XiT4szturm5rmaM7rTzbChKqPRY;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$XiT4szturm5rmaM7rTzbChKqPRY;-><init>(Lcom/android/systemui/classifier/FalsingManager;Landroid/hardware/Sensor;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 179
    .end local v2    # "sensorType":I
    .end local v3    # "s":Landroid/hardware/Sensor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_1
    return-void
.end method

.method private sessionEntrypoint()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->onSessionStart()V

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sessionExitpoint(Z)V
    .locals 2
    .param p1, "force"    # Z

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 145
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$y6A_bA-S5VQwPHuaVePl4zXiK1I;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$y6A_bA-S5VQwPHuaVePl4zXiK1I;-><init>(Lcom/android/systemui/classifier/FalsingManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 149
    :cond_1
    return-void
.end method

.method private shouldSessionBeActive()Z
    .locals 2

    .line 122
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mShowingAod:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateConfiguration()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "falsing_manager_enforce_bouncer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    .line 119
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 480
    const-string v0, "FALSING MANAGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    const-string v0, "classifierEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 482
    const-string v0, "mSessionActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 483
    const-string v0, "mBouncerOn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 484
    const-string v0, "mState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    const-string v0, "mScreenOn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 486
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 487
    return-void
.end method

.method public isClassiferEnabled()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFalseTouch()Z
    .locals 10

    .line 203
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 206
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->isEnabled()Z

    move-result v0

    .line 209
    .local v0, "enabled":I
    iget-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    move v7, v1

    .line 210
    .local v7, "screenOn":I
    iget v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, "state":Ljava/lang/String;
    new-instance v6, Ljava/lang/Throwable;

    const-string v1, "here"

    invoke-direct {v6, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 212
    .local v6, "here":Ljava/lang/Throwable;
    const-string v1, "isFalseTouch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session is not active, yet there\'s a query for a false touch."

    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enabled="

    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mScreenOn="

    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mState="

    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Escalating to WTF if screen does not turn on soon."

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->wLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v9, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;

    move-object v1, v9

    move-object v2, p0

    move v3, v0

    move v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/classifier/-$$Lambda$FalsingManager$ysaxoOhQjefK1Np-0ekN-RBwhN8;-><init>(Lcom/android/systemui/classifier/FalsingManager;IILjava/lang/String;Ljava/lang/Throwable;)V

    iput-object v9, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    .line 234
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    .end local v0    # "enabled":I
    .end local v6    # "here":Ljava/lang/Throwable;
    .end local v7    # "screenOn":I
    .end local v8    # "state":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 240
    return v1

    .line 242
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mIsTouchScreen:Z

    if-nez v0, :cond_2

    .line 245
    return v1

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isFalseTouch()Z

    move-result v0

    return v0
.end method

.method public isReportingEnabled()Z
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isReportingEnabled()Z

    move-result v0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 265
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/analytics/DataCollector;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 266
    return-void
.end method

.method public onAffordanceSwipingAborted()V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onAffordanceSwipingAborted()V

    .line 446
    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 2
    .param p1, "rightCorner"    # Z

    .line 433
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 434
    const-string v0, "onAffordanceSwipingStarted"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    if-eqz p1, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    goto :goto_0

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 441
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->onAffordanceSwipingStarted(Z)V

    .line 442
    return-void
.end method

.method public onBouncerHidden()V
    .locals 3

    .line 344
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "onBouncerHidden"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-eqz v0, :cond_1

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 351
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onBouncerHidden()V

    .line 353
    :cond_1
    return-void
.end method

.method public onBouncerShown()V
    .locals 3

    .line 332
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "onBouncerShown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-nez v0, :cond_1

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 339
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onBouncerShown()V

    .line 341
    :cond_1
    return-void
.end method

.method public onCameraHintStarted()V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onCameraHintStarted()V

    .line 454
    return-void
.end method

.method public onCameraOn()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onCameraOn()V

    .line 426
    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onLeftAffordanceHintStarted()V

    .line 458
    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onLeftAffordanceOn()V

    .line 430
    return-void
.end method

.method public onNotificationActive()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationActive()V

    .line 382
    return-void
.end method

.method public onNotificationDismissed()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationDismissed()V

    .line 410
    return-void
.end method

.method public onNotificationDoubleTap(ZFF)V
    .locals 3
    .param p1, "accepted"    # Z
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .line 385
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 386
    const-string v0, "onNotificationDoubleTap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " dx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " dy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " (px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationDoubleTap()V

    .line 390
    return-void
.end method

.method public onNotificatonStartDismissing()V
    .locals 2

    .line 413
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 414
    const-string v0, "onNotificatonStartDismissing"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 417
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStartDismissing()V

    .line 418
    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .locals 2

    .line 397
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "onNotificatonStartDraggingDown"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStartDraggingDown()V

    .line 402
    return-void
.end method

.method public onNotificatonStopDismissing()V
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStopDismissing()V

    .line 422
    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStopDraggingDown()V

    .line 406
    return-void
.end method

.method public onQsDown()V
    .locals 2

    .line 356
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "onQsDown"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onQsDown()V

    .line 361
    return-void
.end method

.method public onScreenOff()V
    .locals 3

    .line 314
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "onScreenOff"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    .line 316
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenOff()V

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 321
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->sessionExitpoint(Z)V

    .line 322
    return-void
.end method

.method public onScreenOnFromTouch()V
    .locals 3

    .line 302
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "onScreenOnFromTouch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    .line 304
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenOnFromTouch()V

    .line 311
    :cond_1
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 3

    .line 289
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "onScreenTurningOn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    .line 291
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->clearPendingWtf()V

    .line 295
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenTurningOn()V

    .line 299
    :cond_1
    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 258
    .end local p1    # "event":Landroid/hardware/SensorEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/classifier/FalsingManager;
    throw p1
.end method

.method public onSucccessfulUnlock()V
    .locals 2

    .line 325
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 326
    const-string v0, "onSucccessfulUnlock"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onSucccessfulUnlock()V

    .line 329
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 462
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mIsTouchScreen:Z

    .line 465
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOffOnDown:Z

    .line 467
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_2

    .line 468
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-nez v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/analytics/DataCollector;->onTouchEvent(Landroid/view/MotionEvent;II)V

    .line 473
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOffOnDown:Z

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 477
    :cond_2
    return-void
.end method

.method public onTrackingStarted(Z)V
    .locals 2
    .param p1, "secure"    # Z

    .line 368
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "onTrackingStarted"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    if-eqz p1, :cond_1

    .line 372
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 371
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onTrackingStarted()V

    .line 374
    return-void
.end method

.method public onTrackingStopped()V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onTrackingStopped()V

    .line 378
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onUnlockHintStarted()V

    .line 450
    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 493
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNotificationExpanded()V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->setNotificationExpanded()V

    .line 394
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .line 364
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->setQsExpanded(Z)V

    .line 365
    return-void
.end method

.method public setShowingAod(Z)V
    .locals 0
    .param p1, "showingAod"    # Z

    .line 273
    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingManager;->mShowingAod:Z

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateSessionActive()V

    .line 275
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 278
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "setStatusBarState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "from="

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to="

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    iput p1, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateSessionActive()V

    .line 286
    return-void
.end method

.method public shouldEnforceBouncer()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    return v0
.end method

.method public updateSessionActive()V
    .locals 1

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    goto :goto_0

    .line 155
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->sessionExitpoint(Z)V

    .line 157
    :goto_0
    return-void
.end method
