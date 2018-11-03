.class public Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
.super Ljava/lang/Object;
.source "CachedBluetoothDeviceManager.java"


# instance fields
.field private final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field final mCachedDevices:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedDevicesMapForHearingAids:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final mHearingAidDevicesNotAddedInCache:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localBtManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevicesMapForHearingAids:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 62
    return-void
.end method

.method private getHearingAidOtherDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;J)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 5
    .param p1, "thisDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "hiSyncId"    # J

    .line 382
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 383
    return-object v1

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 388
    .local v2, "notCachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v3

    cmp-long v3, p2, v3

    if-nez v3, :cond_1

    .line 389
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 390
    return-object v2

    .line 392
    .end local v2    # "notCachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_1
    goto :goto_0

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevicesMapForHearingAids:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 395
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 396
    return-object v0

    .line 398
    :cond_3
    return-object v1
.end method

.method private hearingAidSwitchDisplayDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;J)V
    .locals 2
    .param p1, "toDisplayDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "toHideDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p3, "hiSyncId"    # J

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hearingAidSwitchDisplayDevice: toDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toHideDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->log(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 413
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevicesMapForHearingAids:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 417
    return-void
.end method

.method private declared-synchronized isPairAddedInCache(J)Z
    .locals 3
    .param p1, "hiSyncId"    # J

    monitor-enter p0

    .line 159
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 160
    monitor-exit p0

    return v1

    .line 162
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevicesMapForHearingAids:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 163
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 165
    :cond_1
    monitor-exit p0

    return v1

    .line 158
    .end local p1    # "hiSyncId":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    throw p1
.end method

.method static synthetic lambda$clearNonBondedDevices$0(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p0, "entries"    # Ljava/util/Map$Entry;

    .line 250
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$clearNonBondedDevices$1(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 2
    .param p0, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 253
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$clearNonBondedDevices$2(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 2
    .param p0, "hearingAidDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 256
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 477
    const-string v0, "CachedBluetoothDeviceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method public static onDeviceDisappeared(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3
    .param p0, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setJustDiscovered(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method


# virtual methods
.method public addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 6
    .param p1, "adapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p2, "profileManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 125
    new-instance v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V

    .line 127
    .local v0, "newDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v1

    .line 131
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v4

    .line 130
    invoke-virtual {v0, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setHiSyncId(J)V

    .line 134
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->isPairAddedInCache(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 139
    :cond_1
    monitor-enter p0

    .line 140
    :try_start_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevicesMapForHearingAids:Ljava/util/Map;

    .line 142
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevicesMapForHearingAids:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 146
    monitor-exit p0

    .line 149
    :goto_0
    return-object v0

    .line 146
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public declared-synchronized clearNonBondedDevices()V
    .locals 2

    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevicesMapForHearingAids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$e-LCWrNLhjsTC176L1agksvai7c;->INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$e-LCWrNLhjsTC176L1agksvai7c;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 252
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    sget-object v1, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$kt27ylP2LAAkpFyw4Jk0DP1n8j4;->INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$kt27ylP2LAAkpFyw4Jk0DP1n8j4;

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 255
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    sget-object v1, Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$RiRiNHhShon-xX_yLpIJ83GKKko;->INSTANCE:Lcom/android/settingslib/bluetooth/-$$Lambda$CachedBluetoothDeviceManager$RiRiNHhShon-xX_yLpIJ83GKKko;

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    throw v0
.end method

.method public declared-synchronized dispatchAudioModeChanged()V
    .locals 2

    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 471
    .local v1, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onAudioModeChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    .end local v1    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    goto :goto_0

    .line 473
    :cond_0
    monitor-exit p0

    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    throw v0
.end method

.method public declared-synchronized findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 103
    .local v1, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 104
    monitor-exit p0

    return-object v1

    .line 106
    .end local v1    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_0
    goto :goto_0

    .line 107
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 108
    .local v1, "notCachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 109
    monitor-exit p0

    return-object v1

    .line 111
    .end local v1    # "notCachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_2
    goto :goto_1

    .line 113
    :cond_3
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 101
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    throw p1
.end method

.method public declared-synchronized getCachedDevicesCopy()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 65
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    throw v0
.end method

.method public declared-synchronized onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3
    .param p1, "activeDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bluetoothProfile"    # I

    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 333
    .local v1, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 334
    .local v2, "isActive":Z
    invoke-virtual {v1, v2, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onActiveDeviceChanged(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .end local v1    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v2    # "isActive":Z
    goto :goto_0

    .line 336
    :cond_0
    monitor-exit p0

    return-void

    .line 331
    .end local p1    # "activeDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local p2    # "bluetoothProfile":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    throw p1
.end method

.method public declared-synchronized onBluetoothStateChanged(I)V
    .locals 6
    .param p1, "bluetoothState"    # I

    monitor-enter p0

    .line 297
    const/16 v0, 0xd

    if-ne p1, v0, :cond_4

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0xc

    if-ltz v0, :cond_2

    .line 299
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 300
    .local v3, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 301
    invoke-virtual {v3, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setJustDiscovered(Z)V

    .line 302
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 303
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevicesMapForHearingAids:Ljava/util/Map;

    .line 304
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevicesMapForHearingAids:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 312
    :cond_0
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V

    .line 298
    .end local v3    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 315
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 316
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 317
    .local v3, "notCachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-eq v4, v2, :cond_3

    .line 318
    invoke-virtual {v3, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setJustDiscovered(Z)V

    .line 319
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 324
    :cond_3
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->clearProfileConnectionState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    .end local v3    # "notCachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 296
    .end local v0    # "i":I
    .end local p1    # "bluetoothState":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    throw p1

    .line 328
    .restart local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .restart local p1    # "bluetoothState":I
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onBtClassChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    monitor-enter p0

    .line 281
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 282
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refreshBtClass()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :cond_0
    monitor-exit p0

    return-void

    .line 280
    .end local v0    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    throw p1
.end method

.method public onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 75
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refreshName()V

    .line 78
    :cond_0
    return-void
.end method

.method public declared-synchronized onDeviceUnpaired(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 6
    .param p1, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    monitor-enter p0

    .line 447
    :try_start_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    .local v0, "hiSyncId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    .line 451
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 452
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 453
    .local v3, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_2

    .line 455
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 456
    if-ne p1, v3, :cond_1

    .end local v3    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    goto :goto_1

    .line 457
    .restart local v3    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceUnpaired: Unpair device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->log(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 451
    .end local v3    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 462
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevicesMapForHearingAids:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 463
    .local v2, "mappedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v2, :cond_4

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeviceUnpaired: Unpair mapped device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->log(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    :cond_4
    monitor-exit p0

    return-void

    .line 446
    .end local v0    # "hiSyncId":J
    .end local v2    # "mappedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local p1    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    throw p1
.end method

.method public declared-synchronized onHiSyncIdChanged(J)V
    .locals 8
    .param p1, "hiSyncId"    # J

    monitor-enter p0

    .line 339
    const/4 v0, -0x1

    .line 341
    .local v0, "firstMatchedIndex":I
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 342
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 343
    .local v2, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 344
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 355
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    move v3, v0

    .line 357
    .local v3, "indexToRemoveFromUi":I
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 358
    .local v4, "deviceToRemoveFromUi":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevicesMapForHearingAids:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 360
    .end local v3    # "indexToRemoveFromUi":I
    .end local v4    # "deviceToRemoveFromUi":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_0
    move v3, v1

    .line 361
    .restart local v3    # "indexToRemoveFromUi":I
    move-object v4, v2

    .line 362
    .restart local v4    # "deviceToRemoveFromUi":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevicesMapForHearingAids:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    .line 363
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 362
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :goto_1
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 367
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onHiSyncIdChanged: removed from UI device="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", with hiSyncId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->log(Ljava/lang/String;)V

    .line 370
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 371
    goto :goto_2

    .line 373
    .end local v3    # "indexToRemoveFromUi":I
    .end local v4    # "deviceToRemoveFromUi":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevicesMapForHearingAids:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    move v0, v1

    .line 341
    .end local v2    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 378
    .end local v1    # "i":I
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 338
    .end local v0    # "firstMatchedIndex":I
    .end local p1    # "hiSyncId":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    throw p1
.end method

.method public declared-synchronized onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 5
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I
    .param p3, "bluetoothProfile"    # I

    monitor-enter p0

    .line 421
    const/16 v0, 0x15

    if-ne p3, v0, :cond_2

    .line 422
    :try_start_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 425
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v0

    .line 427
    .local v0, "hiSyncId":J
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getHearingAidOtherDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;J)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    .local v2, "otherDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v2, :cond_0

    .line 430
    monitor-exit p0

    return-void

    .line 433
    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    .line 434
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->hearingAidSwitchDisplayDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;J)V

    goto :goto_0

    .line 436
    :cond_1
    if-nez p2, :cond_2

    .line 437
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevicesMapForHearingAids:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 439
    .local v3, "mapDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v3, :cond_2

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 440
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->hearingAidSwitchDisplayDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "hiSyncId":J
    .end local v2    # "otherDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v3    # "mapDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    goto :goto_0

    .line 420
    .end local p1    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local p2    # "state":I
    .end local p3    # "bluetoothProfile":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    throw p1

    .line 444
    .restart local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .restart local p1    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .restart local p2    # "state":I
    .restart local p3    # "bluetoothProfile":I
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onScanningStateChanged(Z)V
    .locals 3
    .param p1, "started"    # Z

    monitor-enter p0

    .line 267
    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 270
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 271
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 272
    .local v2, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setJustDiscovered(Z)V

    .line 270
    .end local v2    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 274
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 275
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mHearingAidDevicesNotAddedInCache:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 276
    .local v2, "notCachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setJustDiscovered(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v2    # "notCachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 278
    .end local v0    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    .line 266
    .end local p1    # "started":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    throw p1
.end method

.method public declared-synchronized onUuidChanged(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    monitor-enter p0

    .line 288
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 289
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onUuidChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_0
    monitor-exit p0

    return-void

    .line 287
    .end local v0    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    throw p1
.end method

.method public declared-synchronized updateHearingAidsDevices(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 8
    .param p1, "profileManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    monitor-enter p0

    .line 204
    :try_start_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    .line 205
    .local v0, "profileProxy":Lcom/android/settingslib/bluetooth/HearingAidProfile;
    if-nez v0, :cond_0

    .line 206
    const-string/jumbo v1, "updateHearingAidsDevices: getHearingAidProfile() is null"

    invoke-direct {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 209
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 210
    .local v1, "syncIdChangedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 211
    .local v3, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 212
    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v4

    .line 217
    .local v4, "newHiSyncId":J
    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 218
    invoke-virtual {v3, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setHiSyncId(J)V

    .line 219
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v3    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v4    # "newHiSyncId":J
    :cond_2
    goto :goto_0

    .line 222
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 223
    .local v3, "syncId":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->onHiSyncIdChanged(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    .end local v3    # "syncId":Ljava/lang/Long;
    goto :goto_1

    .line 225
    :cond_4
    monitor-exit p0

    return-void

    .line 203
    .end local v0    # "profileProxy":Lcom/android/settingslib/bluetooth/HearingAidProfile;
    .end local v1    # "syncIdChangedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local p1    # "profileManager":Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 203
    .end local p0    # "this":Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    throw p1
.end method
