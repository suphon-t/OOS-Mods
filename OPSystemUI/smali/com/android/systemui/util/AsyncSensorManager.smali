.class public Lcom/android/systemui/util/AsyncSensorManager;
.super Landroid/hardware/SensorManager;
.source "AsyncSensorManager.java"


# instance fields
.field final mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mInner:Landroid/hardware/SensorManager;

.field private final mSensorCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 2
    .param p1, "inner"    # Landroid/hardware/SensorManager;

    .line 52
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "async_sensor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mSensorCache:Ljava/util/List;

    .line 57
    return-void
.end method

.method public static synthetic lambda$cancelTriggerSensorImpl$4(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string v0, "AsyncSensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method

.method public static synthetic lambda$registerDynamicSensorCallbackImpl$1(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$registerListenerImpl$0(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)V
    .locals 6
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "maxReportLatencyUs"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const-string v0, "AsyncSensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void
.end method

.method public static synthetic lambda$requestTriggerSensorImpl$3(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string v0, "AsyncSensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setOperationParameterImpl$5(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorAdditionalInfo;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/SensorAdditionalInfo;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    return-void
.end method

.method public static synthetic lambda$unregisterDynamicSensorCallbackImpl$2(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method

.method public static synthetic lambda$unregisterListenerImpl$6(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "listener"    # Landroid/hardware/SensorEventListener;

    .line 155
    if-nez p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 160
    :goto_0
    return-void
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .locals 2
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "disable"    # Z

    .line 125
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$ssfdtdJfSGgmlHJqcz8km7BLSQE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$ssfdtdJfSGgmlHJqcz8km7BLSQE;-><init>(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method protected configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .locals 2
    .param p1, "channel"    # Landroid/hardware/SensorDirectChannel;
    .param p2, "s"    # Landroid/hardware/Sensor;
    .param p3, "rate"    # I

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .locals 2
    .param p1, "memoryFile"    # Landroid/os/MemoryFile;
    .param p2, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .locals 2
    .param p1, "channel"    # Landroid/hardware/SensorDirectChannel;

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->flush(Landroid/hardware/SensorEventListener;)Z

    move-result v0

    return v0
.end method

.method protected getActiveSensorListImpl()Ljava/lang/String;
    .locals 1

    .line 165
    const-string v0, ""

    return-object v0
.end method

.method protected getActiveSensorListImplByHandle(I)Ljava/lang/String;
    .locals 1
    .param p1, "handle"    # I

    .line 172
    const-string v0, ""

    return-object v0
.end method

.method protected getFullDynamicSensorList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mInner:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDynamicSensorList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mSensorCache:Ljava/util/List;

    return-object v0
.end method

.method protected initDataInjectionImpl(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .locals 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "values"    # [F
    .param p3, "accuracy"    # I
    .param p4, "timestamp"    # J

    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$Hwm7wwA6xT-rLeZcpNr7J2BNQWE;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$Hwm7wwA6xT-rLeZcpNr7J2BNQWE;-><init>(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .locals 9
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "delayUs"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "maxReportLatencyUs"    # I
    .param p6, "reservedFlags"    # I

    .line 72
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$d7xLBI7qZK784-fy2ffbXtJPEGA;-><init>(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 2
    .param p1, "listener"    # Landroid/hardware/TriggerEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$q1TQFoUPad2_Ye0DbYS5yACL5CU;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$q1TQFoUPad2_Ye0DbYS5yACL5CU;-><init>(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method protected setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .locals 2
    .param p1, "parameter"    # Landroid/hardware/SensorAdditionalInfo;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$yWyG4VnNvYVS3_A55eZfq00QEBQ;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$yWyG4VnNvYVS3_A55eZfq00QEBQ;-><init>(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorAdditionalInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method protected unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/SensorManager$DynamicSensorCallback;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$ioH8tBFNQaFrSnUQEwQdi_ri4K0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$ioH8tBFNQaFrSnUQEwQdi_ri4K0;-><init>(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/util/AsyncSensorManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$-X62bKcCGUmPVwchbYAj2vQKUTg;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/util/-$$Lambda$AsyncSensorManager$-X62bKcCGUmPVwchbYAj2vQKUTg;-><init>(Lcom/android/systemui/util/AsyncSensorManager;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method
