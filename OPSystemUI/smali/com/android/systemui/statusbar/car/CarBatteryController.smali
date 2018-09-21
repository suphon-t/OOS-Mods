.class public Lcom/android/systemui/statusbar/car/CarBatteryController;
.super Landroid/content/BroadcastReceiver;
.source "CarBatteryController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

.field private mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 60
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Lcom/android/systemui/statusbar/car/CarBatteryController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/car/CarBatteryController$1;-><init>(Lcom/android/systemui/statusbar/car/CarBatteryController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 87
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/car/CarBatteryController;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/car/CarBatteryController;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method private notifyBatteryLevelChanged()V
    .locals 5

    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget v3, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    .line 260
    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method private updateBatteryIcon(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I

    .line 213
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    .line 214
    const-string v1, "CarBatteryController"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "CarBatteryController"

    const-string v1, "Device connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;->showBatteryView()V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_4

    if-nez p1, :cond_2

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v0

    .line 228
    .local v0, "featuresBundle":Landroid/os/Bundle;
    if-nez v0, :cond_3

    .line 229
    return-void

    .line 232
    :cond_3
    const-string v1, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 234
    .local v1, "batteryLevel":I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarBatteryController;->updateBatteryLevel(I)V

    .line 235
    .end local v0    # "featuresBundle":Landroid/os/Bundle;
    .end local v1    # "batteryLevel":I
    goto :goto_1

    .line 223
    :cond_4
    :goto_0
    return-void

    .line 235
    :cond_5
    if-nez p2, :cond_7

    .line 236
    const-string v1, "CarBatteryController"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 237
    const-string v0, "CarBatteryController"

    const-string v1, "Device disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    if-eqz v0, :cond_7

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;->hideBatteryView()V

    .line 244
    :cond_7
    :goto_1
    return-void
.end method

.method private updateBatteryLevel(I)V
    .locals 3
    .param p1, "batteryLevel"    # I

    .line 172
    const/4 v0, 0x3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 173
    const-string v1, "CarBatteryController"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "CarBatteryController"

    const-string v1, "Battery level invalid. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    return-void

    .line 180
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 198
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    goto :goto_0

    .line 182
    :pswitch_0
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    .line 183
    goto :goto_0

    .line 185
    :pswitch_1
    const/16 v1, 0x57

    iput v1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    .line 186
    goto :goto_0

    .line 188
    :pswitch_2
    const/16 v1, 0x3f

    iput v1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    .line 189
    goto :goto_0

    .line 191
    :pswitch_3
    const/16 v1, 0x1c

    iput v1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    .line 192
    goto :goto_0

    .line 194
    :pswitch_4
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    .line 195
    nop

    .line 201
    :goto_0
    const-string v1, "CarBatteryController"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const-string v0, "CarBatteryController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Battery level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; setting mLevel as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarBatteryController;->notifyBatteryLevelChanged()V

    .line 206
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addBatteryViewHandler(Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;)V
    .locals 0
    .param p1, "batteryViewHandler"    # Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    .line 118
    return-void
.end method

.method public addCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 108
    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onPowerSaveChanged(Z)V

    .line 109
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/car/CarBatteryController;->addCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 249
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 91
    const-string v0, "CarBatteryController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v0, "    mLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 94
    return-void
.end method

.method public isPowerSave()Z
    .locals 1

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "action":Ljava/lang/String;
    const-string v1, "CarBatteryController"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "CarBatteryController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(). action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    const-string v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_3

    .line 140
    const-string v1, "CarBatteryController"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    const-string v1, "CarBatteryController"

    const-string v2, "Received ACTION_AG_EVENT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    const-string v1, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 147
    .local v1, "batteryLevel":I
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/car/CarBatteryController;->updateBatteryLevel(I)V

    .line 149
    if-eq v1, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    if-eqz v2, :cond_2

    .line 150
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mBatteryViewHandler:Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;->showBatteryView()V

    .line 152
    .end local v1    # "batteryLevel":I
    :cond_2
    goto :goto_0

    :cond_3
    const-string v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 153
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 155
    .local v1, "newState":I
    const-string v4, "CarBatteryController"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 157
    .local v2, "oldState":I
    const-string v3, "CarBatteryController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_CONNECTION_STATE_CHANGED event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v2    # "oldState":I
    :cond_4
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    .line 162
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 163
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/car/CarBatteryController;->updateBatteryIcon(Landroid/bluetooth/BluetoothDevice;I)V

    .line 165
    .end local v1    # "newState":I
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_5
    :goto_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/car/CarBatteryController;->removeCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public setPowerSaveMode(Z)V
    .locals 0
    .param p1, "powerSave"    # Z

    .line 99
    return-void
.end method

.method public startListening()V
    .locals 2

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarBatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method
