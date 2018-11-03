.class public Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$BatteryLevelChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$DockEventHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;
    }
.end annotation


# instance fields
.field private final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/BluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mProfileIntentFilter:Landroid/content/IntentFilter;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mReceiverHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 5
    .param p1, "adapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p2, "deviceManager"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .param p3, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 159
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$2;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 84
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    .line 88
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 91
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 93
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 97
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Z)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 98
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Z)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 99
    const-string v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 100
    const-string v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 101
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 102
    const-string v0, "android.bluetooth.device.action.ALIAS_CHANGED"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 105
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 108
    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 109
    const-string v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 110
    const-string v0, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BatteryLevelChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BatteryLevelChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 113
    const-string v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 116
    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 118
    const-string v0, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 120
    const-string v0, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 124
    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 126
    const-string v0, "android.intent.action.PHONE_STATE"

    new-instance v1, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 129
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method static synthetic access$1200(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager;
    .param p1, "x1"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "x2"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager;
    .param p1, "x1"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "x2"    # I

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 47
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchAudioModeChanged()V

    return-void
.end method

.method private addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;

    .line 67
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private dispatchActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3
    .param p1, "activeDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bluetoothProfile"    # I

    .line 473
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 474
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 476
    .local v2, "callback":Lcom/android/settingslib/bluetooth/BluetoothCallback;
    invoke-interface {v2, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 477
    .end local v2    # "callback":Lcom/android/settingslib/bluetooth/BluetoothCallback;
    goto :goto_0

    .line 478
    :cond_0
    monitor-exit v0

    .line 479
    return-void

    .line 478
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchAudioModeChanged()V
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->dispatchAudioModeChanged()V

    .line 496
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 498
    .local v2, "callback":Lcom/android/settingslib/bluetooth/BluetoothCallback;
    invoke-interface {v2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onAudioModeChanged()V

    .line 499
    .end local v2    # "callback":Lcom/android/settingslib/bluetooth/BluetoothCallback;
    goto :goto_0

    .line 500
    :cond_0
    monitor-exit v0

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .line 262
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 264
    .local v2, "callback":Lcom/android/settingslib/bluetooth/BluetoothCallback;
    invoke-interface {v2, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 265
    .end local v2    # "callback":Lcom/android/settingslib/bluetooth/BluetoothCallback;
    goto :goto_0

    .line 266
    :cond_0
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;

    .line 72
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 270
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 272
    .local v2, "callback":Lcom/android/settingslib/bluetooth/BluetoothCallback;
    invoke-interface {v2, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 273
    .end local v2    # "callback":Lcom/android/settingslib/bluetooth/BluetoothCallback;
    goto :goto_0

    .line 274
    :cond_0
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 278
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 280
    .local v2, "callback":Lcom/android/settingslib/bluetooth/BluetoothCallback;
    invoke-interface {v2, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 281
    .end local v2    # "callback":Lcom/android/settingslib/bluetooth/BluetoothCallback;
    goto :goto_0

    .line 282
    :cond_0
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dispatchProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 3
    .param p1, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I
    .param p3, "bluetoothProfile"    # I

    .line 505
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 507
    .local v2, "callback":Lcom/android/settingslib/bluetooth/BluetoothCallback;
    invoke-interface {v2, p1, p2, p3}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V

    .line 508
    .end local v2    # "callback":Lcom/android/settingslib/bluetooth/BluetoothCallback;
    goto :goto_0

    .line 509
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V

    .line 511
    return-void

    .line 509
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method readPairedDevices()Z
    .locals 8

    .line 429
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 430
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_0

    .line 431
    const/4 v1, 0x0

    return v1

    .line 434
    :cond_0
    const/4 v1, 0x0

    .line 435
    .local v1, "deviceAdded":Z
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 436
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    .line 437
    .local v4, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v4, :cond_1

    .line 438
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    .line 439
    invoke-virtual {p0, v4}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 440
    const/4 v1, 0x1

    .line 442
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_1
    goto :goto_0

    .line 444
    :cond_2
    return v1
.end method

.method public registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 147
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method registerProfileIntentReceiver()V
    .locals 5

    .line 134
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 135
    return-void
.end method

.method setProfileManager(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 78
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 79
    return-void
.end method

.method public setReceiverHandler(Landroid/os/Handler;)V
    .locals 5
    .param p1, "handler"    # Landroid/os/Handler;

    .line 138
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    .line 141
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 143
    return-void
.end method

.method public unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
