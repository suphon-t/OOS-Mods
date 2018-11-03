.class Lcom/android/systemui/doze/DozeSensors$ProxSensor;
.super Ljava/lang/Object;
.source "DozeSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxSensor"
.end annotation


# instance fields
.field final mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

.field mCurrentlyFar:Ljava/lang/Boolean;

.field mLastNear:J

.field final mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

.field mRegistered:Z

.field mRequested:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .locals 4
    .param p2, "policy"    # Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 224
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 226
    new-instance v0, Lcom/android/systemui/util/AlarmTimeout;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$100(Lcom/android/systemui/doze/DozeSensors;)Landroid/app/AlarmManager;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$1rrJyrK-R8bANwbetqs61eKIcvs;

    invoke-direct {v2, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$1rrJyrK-R8bANwbetqs61eKIcvs;-><init>(Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V

    const-string v3, "prox_cooldown"

    .line 227
    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$200(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    .line 228
    return-void
.end method

.method public static synthetic lambda$1rrJyrK-R8bANwbetqs61eKIcvs(Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->updateRegistered()V

    return-void
.end method

.method public static synthetic lambda$setRequested$0(Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 237
    :cond_0
    return-void
.end method

.method private setRegistered(Z)V
    .locals 4
    .param p1, "register"    # Z

    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    if-ne v0, p1, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    if-eqz p1, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 254
    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 255
    invoke-static {v3}, Lcom/android/systemui/doze/DozeSensors;->access$200(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v3

    .line 253
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    .line 261
    :goto_0
    return-void
.end method

.method private updateRegistered()V
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->setRegistered(Z)V

    .line 246
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 287
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 265
    const-string v0, "DozeSensors"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    .line 268
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 271
    .local v0, "now":J
    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    goto :goto_0

    .line 273
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 274
    iput-wide v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mLastNear:J

    goto :goto_0

    .line 275
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mLastNear:J

    sub-long v3, v0, v3

    iget-object v5, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v5, v5, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxCooldownTriggerMs:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 279
    iget-object v3, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v4, v4, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxCooldownPeriodMs:J

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)V

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->updateRegistered()V

    .line 283
    :cond_3
    :goto_0
    return-void
.end method

.method setRequested(Z)V
    .locals 2
    .param p1, "requested"    # Z

    .line 231
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    if-ne v0, p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$200(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$ocSoA7n0sI8mkM1nacSopw2_2Oc;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$ocSoA7n0sI8mkM1nacSopw2_2Oc;-><init>(Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void

    .line 240
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->updateRegistered()V

    .line 242
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 291
    const-string/jumbo v0, "{registered=%s, requested=%s, coolingDown=%s, currentlyFar=%s}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    .line 292
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v2}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 291
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
