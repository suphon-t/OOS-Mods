.class public Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.super Ljava/lang/Object;
.source "HotspotControllerImpl.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;
.implements Lcom/android/systemui/statusbar/policy/HotspotController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;,
        Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/HotspotController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHotspotState:I

.field private mNumConnectedDevices:I

.field private mWaitingForCallback:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiStateReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-string v0, "HotspotController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiStateReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    .line 52
    const-string v0, "connectivity"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 54
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 55
    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForCallback:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
    .param p1, "x1"    # Z

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotChangedCallback(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
    .param p1, "x1"    # I

    .line 35
    iput p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    return p1
.end method

.method private fireHotspotChangedCallback(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 162
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotChangedCallback(ZI)V

    .line 163
    return-void
.end method

.method private fireHotspotChangedCallback(ZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "numConnectedDevices"    # I

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 176
    .local v2, "callback":Lcom/android/systemui/statusbar/policy/HotspotController$Callback;
    invoke-interface {v2, p1, p2}, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;->onHotspotChanged(ZI)V

    .line 177
    .end local v2    # "callback":Lcom/android/systemui/statusbar/policy/HotspotController$Callback;
    goto :goto_0

    .line 178
    :cond_0
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "hotspotState"    # I

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_0
    const-string v0, "FAILED"

    return-object v0

    .line 76
    :pswitch_1
    const-string v0, "ENABLED"

    return-object v0

    .line 78
    :pswitch_2
    const-string v0, "ENABLING"

    return-object v0

    .line 72
    :pswitch_3
    const-string v0, "DISABLED"

    return-object v0

    .line 74
    :pswitch_4
    const-string v0, "DISABLING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateWifiStateListeners(Z)V
    .locals 2
    .param p1, "shouldListen"    # Z

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiStateReceiver:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$WifiStateReceiver;->setListening(Z)V

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 120
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 118
    invoke-virtual {v0, p0, v1}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 124
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 88
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "HotspotController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->updateWifiStateListeners(Z)V

    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 88
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 93
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 65
    const-string v0, "HotspotController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    const-string v0, "  mHotspotEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public getNumConnectedDevices()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    return v0
.end method

.method public isHotspotEnabled()Z
    .locals 2

    .line 128
    iget v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHotspotSupported()Z
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 60
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0
.end method

.method public isHotspotTransient()Z
    .locals 2

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForCallback:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onNumClientsChanged(I)V
    .locals 0
    .param p1, "numConnectedDevices"    # I

    .line 189
    return-void
.end method

.method public onStaConnected(Ljava/lang/String;I)V
    .locals 1
    .param p1, "Macaddr"    # Ljava/lang/String;
    .param p2, "numConnectedDevices"    # I

    .line 193
    iput p2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotChangedCallback(ZI)V

    .line 195
    return-void
.end method

.method public onStaDisconnected(Ljava/lang/String;I)V
    .locals 1
    .param p1, "Macaddr"    # Ljava/lang/String;
    .param p2, "numConnectedDevices"    # I

    .line 199
    iput p2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireHotspotChangedCallback(ZI)V

    .line 201
    return-void
.end method

.method public onStateChanged(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "failureReason"    # I

    .line 184
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    .line 98
    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "HotspotController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->updateWifiStateListeners(Z)V

    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/systemui/statusbar/policy/HotspotController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/HotspotController$Callback;)V

    return-void
.end method

.method public setHotspotEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 138
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 139
    new-instance v1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;)V

    .line 140
    .local v1, "callback":Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mWaitingForCallback:Z

    .line 141
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HotspotController"

    const-string v3, "Starting tethering"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0, v0, v1}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 144
    .end local v1    # "callback":Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$OnStartTetheringCallback;
    goto :goto_0

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 147
    :goto_0
    return-void
.end method
