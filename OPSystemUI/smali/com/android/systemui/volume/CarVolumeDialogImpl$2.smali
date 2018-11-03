.class Lcom/android/systemui/volume/CarVolumeDialogImpl$2;
.super Ljava/lang/Object;
.source "CarVolumeDialogImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/CarVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 552
    iput-object p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$802(Lcom/android/systemui/volume/CarVolumeDialogImpl;Z)Z

    .line 557
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1900(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/car/Car;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/media/CarAudioManager;

    invoke-static {v0, v2}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1702(Lcom/android/systemui/volume/CarVolumeDialogImpl;Landroid/car/media/CarAudioManager;)Landroid/car/media/CarAudioManager;

    .line 558
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1700(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/car/media/CarAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/media/CarAudioManager;->getVolumeGroupCount()I

    move-result v0

    .line 560
    .local v0, "volumeGroupCount":I
    nop

    .local v1, "groupId":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 561
    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    .line 562
    invoke-static {v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1700(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/car/media/CarAudioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/car/media/CarAudioManager;->getUsagesForVolumeGroupId(I)[I

    move-result-object v3

    .line 561
    invoke-static {v2, v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$2000(Lcom/android/systemui/volume/CarVolumeDialogImpl;[I)Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    move-result-object v2

    .line 563
    .local v2, "volumeItem":Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$900(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    if-nez v1, :cond_0

    .line 566
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->access$1002(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;Z)Z

    .line 567
    iget-object v3, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    const v4, 0x7f08018e

    new-instance v5, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;

    iget-object v6, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/volume/CarVolumeDialogImpl$ExpandIconListener;-><init>(Lcom/android/systemui/volume/CarVolumeDialogImpl;Lcom/android/systemui/volume/CarVolumeDialogImpl$1;)V

    invoke-static {v3, v2, v1, v4, v5}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1100(Lcom/android/systemui/volume/CarVolumeDialogImpl;Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;IILandroid/view/View$OnClickListener;)Landroidx/car/widget/SeekbarListItem;

    .line 560
    .end local v2    # "volumeItem":Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    .end local v1    # "groupId":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1500(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroidx/car/widget/ListItemAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 574
    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1500(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroidx/car/widget/ListItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/car/widget/ListItemAdapter;->notifyDataSetChanged()V

    .line 576
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1700(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/car/media/CarAudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$2200(Lcom/android/systemui/volume/CarVolumeDialogImpl;)Landroid/car/media/ICarVolumeCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/media/ICarVolumeCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/car/media/CarAudioManager;->registerVolumeCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v0    # "volumeGroupCount":I
    goto :goto_1

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Landroid/car/CarNotConnectedException;
    invoke-static {}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$1600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Car is not connected!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 588
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/CarVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/CarVolumeDialogImpl;->access$2300(Lcom/android/systemui/volume/CarVolumeDialogImpl;)V

    .line 589
    return-void
.end method
