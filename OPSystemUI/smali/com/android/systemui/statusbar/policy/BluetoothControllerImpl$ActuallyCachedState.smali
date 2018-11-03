.class Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActuallyCachedState"
.end annotation


# instance fields
.field private mBondState:I

.field private final mDevice:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxConnectionState:I

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/os/Handler;)V
    .locals 1
    .param p1, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "uiHandler"    # Landroid/os/Handler;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mBondState:I

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mMaxConnectionState:I

    .line 343
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mDevice:Ljava/lang/ref/WeakReference;

    .line 344
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mUiHandler:Landroid/os/Handler;

    .line 345
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "x1"    # Landroid/os/Handler;
    .param p3, "x2"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$1;

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;-><init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;

    .line 335
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mBondState:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 350
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mBondState:I

    .line 352
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mMaxConnectionState:I

    .line 353
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 356
    :cond_0
    return-void
.end method
