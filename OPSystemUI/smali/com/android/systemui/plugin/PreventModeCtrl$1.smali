.class Lcom/android/systemui/plugin/PreventModeCtrl$1;
.super Ljava/lang/Object;
.source "PreventModeCtrl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/PreventModeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/PreventModeCtrl;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/PreventModeCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/plugin/PreventModeCtrl;

    .line 161
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 3
    .param p1, "result"    # I

    .line 189
    const-string v0, "PreventModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishWithResult: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->access$300(Lcom/android/systemui/plugin/PreventModeCtrl;)V

    goto :goto_0

    .line 192
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/systemui/plugin/PreventModeCtrl;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    iget-object v0, v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugin/PreventModeView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->stopPreventMode()V

    goto :goto_0

    .line 195
    :cond_1
    if-nez p1, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->stopPreventMode()V

    .line 198
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 186
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->access$100(Lcom/android/systemui/plugin/PreventModeCtrl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 172
    const-string v1, "PreventModeCtrl"

    const-string v3, "Event has no values!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0, v2}, Lcom/android/systemui/plugin/PreventModeCtrl$1;->finishWithResult(I)V

    goto :goto_1

    .line 176
    :cond_0
    const-string v1, "PreventModeCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event: value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v4}, Lcom/android/systemui/plugin/PreventModeCtrl;->access$200(Lcom/android/systemui/plugin/PreventModeCtrl;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v2, v3

    nop

    :cond_1
    move v1, v2

    .line 178
    .local v1, "isNear":Z
    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/plugin/PreventModeCtrl$1;->finishWithResult(I)V

    .line 180
    .end local v1    # "isNear":Z
    :goto_1
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
