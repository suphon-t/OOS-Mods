.class public final Lcom/android/settingslib/bluetooth/PbapClientProfile;
.super Ljava/lang/Object;
.source "PbapClientProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;
    }
.end annotation


# static fields
.field static final SRC_UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothPbapClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->V:Z

    .line 45
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/os/ParcelUuid;

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    aput-object v2, v1, v0

    sput-object v1, Lcom/android/settingslib/bluetooth/PbapClientProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 112
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 113
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/PbapClientProfile$PbapClientServiceListener;-><init>(Lcom/android/settingslib/bluetooth/PbapClientProfile;Lcom/android/settingslib/bluetooth/PbapClientProfile$1;)V

    const/16 v2, 0x11

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 116
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Landroid/bluetooth/BluetoothPbapClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/PbapClientProfile;

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/PbapClientProfile;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/PbapClientProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPbapClient;

    .line 35
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/PbapClientProfile;

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/PbapClientProfile;

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/PbapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/PbapClientProfile;

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settingslib/bluetooth/PbapClientProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/PbapClientProfile;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 137
    sget-boolean v0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->V:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "PbapClientProfile"

    const-string v1, "PBAPClientProfile got connect request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v0, :cond_1

    .line 141
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/PbapClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "srcs":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_3

    .line 145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 146
    .local v2, "src":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 148
    const-string v1, "PbapClientProfile"

    const-string v3, "Ignoring Connect"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v1, 0x1

    return v1

    .line 151
    .end local v2    # "src":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    goto :goto_0

    .line 153
    :cond_3
    const-string v1, "PbapClientProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PBAPClientProfile attempting to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothPbapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 159
    sget-boolean v0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->V:Z

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "PbapClientProfile"

    const-string v1, "PBAPClientProfile got disconnect request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v0, :cond_1

    .line 163
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 3

    .line 224
    sget-boolean v0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->V:Z

    if-eqz v0, :cond_0

    .line 225
    const-string v0, "PbapClientProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    if-eqz v0, :cond_1

    .line 229
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "PbapClientProfile"

    const-string v2, "Error cleaning up PBAP Client proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPbapClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 169
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .line 220
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_cellphone:I

    return v0
.end method

.method public getProfileId()I
    .locals 1

    .line 105
    const/16 v0, 0x11

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 176
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 177
    return v1

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .line 190
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    if-nez v0, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    if-eqz p2, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPbapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothPbapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PbapClientProfile;->mService:Landroid/bluetooth/BluetoothPbapClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothPbapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 200
    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 203
    const-string v0, "PbapClient"

    return-object v0
.end method
