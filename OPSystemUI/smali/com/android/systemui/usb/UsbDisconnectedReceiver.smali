.class Lcom/android/systemui/usb/UsbDisconnectedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbDisconnectedReceiver.java"


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private final mActivity:Landroid/app/Activity;

.field private mDevice:Landroid/hardware/usb/UsbDevice;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "device"    # Landroid/hardware/usb/UsbDevice;

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const-string v1, "device"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 56
    .local v1, "device":Landroid/hardware/usb/UsbDevice;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 59
    .end local v1    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    const-string v1, "accessory"

    .line 61
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    .line 62
    .local v1, "accessory":Landroid/hardware/usb/UsbAccessory;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/android/systemui/usb/UsbDisconnectedReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 66
    .end local v1    # "accessory":Landroid/hardware/usb/UsbAccessory;
    :cond_2
    :goto_0
    return-void
.end method
