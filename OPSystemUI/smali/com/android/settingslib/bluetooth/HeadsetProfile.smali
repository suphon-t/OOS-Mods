.class public Lcom/android/settingslib/bluetooth/HeadsetProfile;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;
    }
.end annotation


# static fields
.field static final UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->V:Z

    .line 48
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/ParcelUuid;

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v1, v0

    sput-object v1, Lcom/android/settingslib/bluetooth/HeadsetProfile;->UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 104
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 105
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HeadsetProfile;Lcom/android/settingslib/bluetooth/HeadsetProfile$1;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 108
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 37
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/HeadsetProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .line 37
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 37
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 37
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 37
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settingslib/bluetooth/HeadsetProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/HeadsetProfile;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 119
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 121
    .local v0, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 123
    .local v2, "sink":Landroid/bluetooth/BluetoothDevice;
    const-string v3, "HeadsetProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not disconnecting device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v2    # "sink":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 130
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 132
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 134
    .local v3, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 135
    sget-boolean v1, Lcom/android/settingslib/bluetooth/HeadsetProfile;->V:Z

    if-eqz v1, :cond_1

    const-string v1, "HeadsetProfile"

    const-string v2, "Downgrade priority as useris disconnecting the headset"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    .line 139
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1, v2}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1

    .line 143
    .end local v3    # "dev":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    goto :goto_0

    .line 145
    :cond_4
    return v1
.end method

.method protected finalize()V
    .locals 3

    .line 241
    sget-boolean v0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "HeadsetProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 244
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "HeadsetProfile"

    const-string v2, "Error cleaning up HID proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 149
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 151
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 153
    .local v3, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    return v1

    .line 156
    .end local v3    # "dev":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    goto :goto_0

    .line 158
    :cond_2
    return v1
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .line 237
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp:I

    return v0
.end method

.method public getProfileId()I
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 182
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 162
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .line 192
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    if-eqz p2, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 200
    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 211
    const-string v0, "HEADSET"

    return-object v0
.end method
