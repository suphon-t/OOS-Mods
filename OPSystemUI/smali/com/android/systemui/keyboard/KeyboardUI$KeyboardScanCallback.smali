.class final Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;
.super Landroid/bluetooth/le/ScanCallback;
.source "KeyboardUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyboardScanCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p2, "x1"    # Lcom/android/systemui/keyboard/KeyboardUI$1;

    .line 531
    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    return-void
.end method

.method private isDeviceDiscoverable(Landroid/bluetooth/le/ScanResult;)Z
    .locals 4
    .param p1, "result"    # Landroid/bluetooth/le/ScanResult;

    .line 534
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    .line 535
    .local v0, "scanRecord":Landroid/bluetooth/le/ScanRecord;
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getAdvertiseFlags()I

    move-result v1

    .line 536
    .local v1, "flags":I
    const/4 v2, 0x3

    .line 538
    .local v2, "BT_DISCOVERABLE_MASK":I
    and-int/lit8 v3, v1, 0x3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 547
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    const/4 v0, 0x0

    .line 548
    .local v0, "bestDevice":Landroid/bluetooth/BluetoothDevice;
    const/high16 v1, -0x80000000

    .line 550
    .local v1, "bestRssi":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/ScanResult;

    .line 555
    .local v3, "result":Landroid/bluetooth/le/ScanResult;
    invoke-direct {p0, v3}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->isDeviceDiscoverable(Landroid/bluetooth/le/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 556
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 557
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v1

    .line 559
    .end local v3    # "result":Landroid/bluetooth/le/ScanResult;
    :cond_0
    goto :goto_0

    .line 561
    :cond_1
    if-eqz v0, :cond_2

    .line 562
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1700(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 564
    :cond_2
    return-void
.end method

.method public onScanFailed(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .line 571
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1700(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 572
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 3
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .line 580
    invoke-direct {p0, p2}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->isDeviceDiscoverable(Landroid/bluetooth/le/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1700(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    move-result-object v0

    const/4 v1, 0x6

    .line 582
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 581
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 587
    :cond_0
    return-void
.end method
