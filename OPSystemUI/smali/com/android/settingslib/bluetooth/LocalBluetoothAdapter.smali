.class public Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
.super Ljava/lang/Object;
.source "LocalBluetoothAdapter.java"


# static fields
.field private static sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mState:I


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 56
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 57
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 3

    const-class v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 72
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 73
    new-instance v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    sput-object v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 77
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    sget-object v1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public cancelDiscovery()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 84
    return-void
.end method

.method public enable()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getBluetoothState()I
    .locals 1

    monitor-enter p0

    .line 194
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    .line 195
    iget v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    throw v0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    return v0
.end method

.method getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "profile"    # I

    .line 100
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 101
    return-void
.end method

.method public getState()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    return v0
.end method

.method public getSupportedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public isDiscovering()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method public setBluetoothEnabled(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .line 226
    if-eqz p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    .line 230
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 231
    if-eqz p1, :cond_1

    .line 232
    const/16 v1, 0xb

    goto :goto_1

    .line 233
    :cond_1
    const/16 v1, 0xd

    .line 231
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    goto :goto_2

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    .line 242
    :goto_2
    return v0
.end method

.method setBluetoothStateInt(I)V
    .locals 1
    .param p1, "state"    # I

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    if-ne v0, p1, :cond_0

    .line 201
    monitor-exit p0

    return-void

    .line 203
    :cond_0
    iput p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 204
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->setBluetoothStateOn()V

    .line 213
    :cond_1
    return-void

    .line 204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setProfileManager(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 60
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 61
    return-void
.end method

.method syncBluetoothState()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 218
    .local v0, "currentState":I
    iget v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    if-eq v0, v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 220
    const/4 v1, 0x1

    return v1

    .line 222
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
