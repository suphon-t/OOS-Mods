.class final Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field private final mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V
    .locals 0
    .param p2, "row"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1513
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1515
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p3, "x2"    # Lcom/android/systemui/volume/VolumeDialogImpl$1;

    .line 1510
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 1519
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1520
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onProgressChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fromUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_1
    if-nez p3, :cond_2

    return-void

    .line 1525
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    if-ge p2, v1, :cond_3

    .line 1526
    const/4 p2, 0x1

    .line 1527
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1531
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-lez v0, :cond_4

    .line 1532
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 1533
    .local v0, "minProgress":I
    if-ge p2, v0, :cond_4

    .line 1534
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1535
    move p2, v0

    .line 1538
    .end local v0    # "minProgress":I
    :cond_4
    move v0, p2

    .line 1539
    .local v0, "userLevel":I
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne v3, v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v3, :cond_6

    if-lez v0, :cond_6

    .line 1540
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;J)J

    .line 1541
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v3

    if-eq v3, v0, :cond_6

    .line 1542
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    .line 1543
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v3, v0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1802(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I

    .line 1544
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4400(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v6}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 1545
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1544
    invoke-static {v3, v4, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1548
    :cond_6
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 1552
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTrackingTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3900(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    .line 1554
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2002(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 1555
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 1559
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2002(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z

    .line 1561
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$2302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;J)J

    .line 1562
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1563
    .local v0, "userLevel":I
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4400(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1564
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-eq v1, v0, :cond_1

    .line 1565
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4800(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$4800(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/volume/VolumeDialogImpl$H;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/volume/VolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1568
    :cond_1
    return-void
.end method
