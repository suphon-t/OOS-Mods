.class Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "FlashlightControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    .line 204
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method

.method private setCameraAvailable(Z)V
    .locals 4
    .param p1, "available"    # Z

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Z

    move-result v1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 226
    .local v1, "changed":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$202(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z

    .line 227
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    if-eqz v1, :cond_2

    .line 229
    invoke-static {}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FlashlightController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchAvailabilityChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V

    .line 232
    :cond_2
    return-void

    .line 227
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setTorchMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Z

    move-result v1

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 238
    .local v1, "changed":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z

    .line 239
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    if-eqz v1, :cond_2

    .line 241
    invoke-static {}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FlashlightController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchModeChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V

    .line 244
    :cond_2
    return-void

    .line 239
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->setCameraAvailable(Z)V

    .line 218
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->setTorchMode(Z)V

    .line 220
    :cond_0
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-static {}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FlashlightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTorchModeUnavailable, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;->setCameraAvailable(Z)V

    .line 212
    :cond_1
    return-void
.end method
