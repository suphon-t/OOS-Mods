.class final Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/A2dpProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "A2dpServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/A2dpProfile;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/bluetooth/A2dpProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settingslib/bluetooth/A2dpProfile;
    .param p2, "x1"    # Lcom/android/settingslib/bluetooth/A2dpProfile$1;

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/settingslib/bluetooth/A2dpProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 68
    invoke-static {}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$102(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    new-instance v1, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$100(Lcom/android/settingslib/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;-><init>(Landroid/bluetooth/BluetoothA2dp;)V

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$202(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;)Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;

    .line 72
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$100(Lcom/android/settingslib/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 73
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 75
    .local v1, "nextDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$300(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 77
    .local v2, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v2, :cond_1

    .line 78
    const-string v3, "A2dpProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A2dpProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$300(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-static {v4}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$400(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$500(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 82
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 83
    .end local v1    # "nextDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    goto :goto_0

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$602(Lcom/android/settingslib/bluetooth/A2dpProfile;Z)Z

    .line 85
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .line 88
    invoke-static {}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "A2dpProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;->this$0:Lcom/android/settingslib/bluetooth/A2dpProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->access$602(Lcom/android/settingslib/bluetooth/A2dpProfile;Z)Z

    .line 90
    return-void
.end method
