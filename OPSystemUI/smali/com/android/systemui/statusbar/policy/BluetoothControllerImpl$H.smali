.class final Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;
.super Landroid/os/Handler;
.source "BluetoothControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 416
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 417
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 409
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    .line 418
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method private firePairedDevicesChanged()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 443
    .local v1, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothDevicesChanged()V

    .line 444
    .end local v1    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method private fireStateChange()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 449
    .local v1, "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V

    .line 450
    .end local v1    # "cb":Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;
    goto :goto_0

    .line 451
    :cond_0
    return-void
.end method

.method private fireStateChange(Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;->onBluetoothStateChange(Z)V

    .line 455
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 422
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 436
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->mCallbacks:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    goto :goto_0

    .line 428
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Z)Z

    .line 430
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->fireStateChange()V

    .line 431
    goto :goto_0

    .line 424
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$H;->firePairedDevicesChanged()V

    .line 425
    nop

    .line 439
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
