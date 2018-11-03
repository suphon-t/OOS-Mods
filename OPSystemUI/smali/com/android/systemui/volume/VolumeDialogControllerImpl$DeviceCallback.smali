.class public final Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;
.super Landroid/media/AudioDeviceCallback;
.source "VolumeDialogControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DeviceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 1235
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 6
    .param p1, "addedDevices"    # [Landroid/media/AudioDeviceInfo;

    .line 1237
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$3700(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1238
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 1239
    .local v3, "info":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1240
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 1241
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 1242
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$3800(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1243
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConnectedDeviceChanged(Ljava/lang/String;)V

    .line 1238
    .end local v3    # "info":Landroid/media/AudioDeviceInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1246
    :cond_2
    monitor-exit v0

    .line 1247
    return-void

    .line 1246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 5
    .param p1, "removedDevices"    # [Landroid/media/AudioDeviceInfo;

    .line 1250
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$3700(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1251
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 1252
    .local v3, "info":Landroid/media/AudioDeviceInfo;
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$3800(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1251
    .end local v3    # "info":Landroid/media/AudioDeviceInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1255
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->access$3800(Lcom/android/systemui/volume/VolumeDialogControllerImpl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1256
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$DeviceCallback;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConnectedDeviceChanged(Ljava/lang/String;)V

    .line 1258
    :cond_1
    monitor-exit v0

    .line 1259
    return-void

    .line 1258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
