.class final Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;
.super Landroid/os/Handler;
.source "KeyboardUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyboardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 451
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 452
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 453
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 457
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 507
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 508
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Context;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1600(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/content/Context;Ljava/lang/String;I)V

    .end local v0    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Context;Ljava/lang/String;>;"
    goto :goto_1

    .line 480
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 481
    .local v0, "scanAttempt":I
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v1, v0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1000(Lcom/android/systemui/keyboard/KeyboardUI;I)V

    .line 482
    goto :goto_1

    .line 503
    .end local v0    # "scanAttempt":I
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1500(Lcom/android/systemui/keyboard/KeyboardUI;)V

    .line 504
    goto :goto_1

    .line 496
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 497
    .local v0, "d":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v1, v0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1300(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 498
    .local v1, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2, v1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1400(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 499
    goto :goto_1

    .line 490
    .end local v0    # "d":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 491
    .local v0, "d":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 492
    .local v1, "bondState":I
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1200(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 493
    goto :goto_1

    .line 485
    .end local v0    # "d":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v1    # "bondState":I
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 486
    .local v0, "bluetoothState":I
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v1, v0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1100(Lcom/android/systemui/keyboard/KeyboardUI;I)V

    .line 487
    goto :goto_1

    .line 471
    .end local v0    # "bluetoothState":I
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 472
    .local v0, "enable":Z
    if-eqz v0, :cond_1

    .line 473
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v1}, Lcom/android/systemui/keyboard/KeyboardUI;->access$800(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    goto :goto_1

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/systemui/keyboard/KeyboardUI;->access$902(Lcom/android/systemui/keyboard/KeyboardUI;I)I

    .line 477
    goto :goto_1

    .line 467
    .end local v0    # "enable":Z
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$700(Lcom/android/systemui/keyboard/KeyboardUI;)V

    .line 468
    goto :goto_1

    .line 463
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-virtual {v0}, Lcom/android/systemui/keyboard/KeyboardUI;->onBootCompletedInternal()V

    .line 464
    goto :goto_1

    .line 459
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$600(Lcom/android/systemui/keyboard/KeyboardUI;)V

    .line 460
    nop

    .line 511
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
