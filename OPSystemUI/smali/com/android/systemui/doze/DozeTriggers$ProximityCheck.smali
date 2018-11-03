.class abstract Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ProximityCheck"
.end annotation


# instance fields
.field private mFinished:Z

.field private mMaxRange:F

.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method private constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/doze/DozeTriggers;
    .param p2, "x1"    # Lcom/android/systemui/doze/DozeTriggers$1;

    .line 272
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 3
    .param p1, "result"    # I

    .line 325
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    .line 326
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    .line 327
    .local v0, "wasRegistered":Z
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$500(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$300(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 330
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$400(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeSensors;->setDisableSensorsInterferingWithProximity(Z)V

    .line 331
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    .line 333
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->onProximityResult(I)V

    .line 334
    if-eqz v0, :cond_2

    .line 335
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$600(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/util/wakelock/WakeLock;->release()V

    .line 337
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mFinished:Z

    .line 338
    return-void
.end method


# virtual methods
.method public check()V
    .locals 10

    .line 287
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mFinished:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeTriggers;->access$300(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 289
    .local v0, "sensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_2

    .line 290
    sget-boolean v2, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DozeTriggers"

    const-string v3, "ProxCheck: No sensor found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    .line 292
    return-void

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$400(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/doze/DozeSensors;->setDisableSensorsInterferingWithProximity(Z)V

    .line 296
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mMaxRange:F

    .line 297
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$300(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;

    move-result-object v4

    const/4 v7, 0x3

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    .line 298
    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$500(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;

    move-result-object v9

    .line 297
    move-object v5, p0

    move-object v6, v0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 299
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$500(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeTriggers;->access$600(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire()V

    .line 301
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mRegistered:Z

    .line 302
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 343
    return-void
.end method

.method protected abstract onProximityResult(I)V
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 306
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 307
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeTriggers"

    const-string v2, "ProxCheck: Event has no values!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    goto :goto_1

    .line 310
    :cond_1
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 311
    const-string v0, "DozeTriggers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProxCheck: Event: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mMaxRange:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    iget v2, p0, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->mMaxRange:F

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_3

    move v1, v2

    nop

    :cond_3
    move v0, v1

    .line 314
    .local v0, "isNear":Z
    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    .line 316
    .end local v0    # "isNear":Z
    :goto_1
    return-void
.end method

.method public run()V
    .locals 2

    .line 320
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeTriggers"

    const-string v1, "ProxCheck: No event received before timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->finishWithResult(I)V

    .line 322
    return-void
.end method
