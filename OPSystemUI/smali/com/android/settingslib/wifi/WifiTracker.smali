.class public Lcom/android/settingslib/wifi/WifiTracker;
.super Ljava/lang/Object;
.source "WifiTracker.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/WifiTracker$WifiListener;,
        Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;,
        Lcom/android/settingslib/wifi/WifiTracker$Multimap;,
        Lcom/android/settingslib/wifi/WifiTracker$Scanner;,
        Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;
    }
.end annotation


# static fields
.field public static sVerboseLogging:Z


# instance fields
.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mInternalAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastNetworkInfo:Landroid/net/NetworkInfo;

.field private final mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

.field private final mLock:Ljava/lang/Object;

.field private mMaxSpeedLabelScoreCacheAge:J

.field private mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mNetworkScoringUiEnabled:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mRequestedScores:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanResultCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

.field private mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field private mStaleScanResults:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/content/IntentFilter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
    .param p3, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p4, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p5, "networkScoreManager"    # Landroid/net/NetworkScoreManager;
    .param p6, "filter"    # Landroid/content/IntentFilter;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    .line 130
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 143
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    .line 831
    new-instance v1, Lcom/android/settingslib/wifi/WifiTracker$2;

    invoke-direct {v1, p0}, Lcom/android/settingslib/wifi/WifiTracker$2;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 208
    iput-object p3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 209
    new-instance v1, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-direct {v1, p0, p2}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;)V

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    .line 210
    iput-object p4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 214
    iput-object p6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    .line 216
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 217
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 218
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 222
    iput-object p5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 225
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiTracker{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 228
    .local v0, "workThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker;->setWorkThread(Landroid/os/HandlerThread;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;ZZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiListener"    # Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
    .param p3, "includeSaved"    # Z
    .param p4, "includeScans"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    const-class v0, Landroid/net/wifi/WifiManager;

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/wifi/WifiManager;

    const-class v0, Landroid/net/ConnectivityManager;

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/net/ConnectivityManager;

    const-class v0, Landroid/net/NetworkScoreManager;

    .line 185
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/NetworkScoreManager;

    .line 186
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->newIntentFilter()Landroid/content/IntentFilter;

    move-result-object v7

    .line 182
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/content/IntentFilter;)V

    .line 187
    return-void
.end method

.method private static final DBG()Z
    .locals 2

    .line 87
    const-string v0, "WifiTracker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$000(Lcom/android/settingslib/wifi/WifiTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/wifi/WifiTracker;

    .line 75
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/wifi/WifiTracker;

    .line 75
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->updateNetworkScores()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/wifi/WifiTracker;

    .line 75
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 75
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/wifi/WifiTracker;

    .line 75
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settingslib/wifi/WifiTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/wifi/WifiTracker;
    .param p1, "x1"    # I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->updateWifiState(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settingslib/wifi/WifiTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/wifi/WifiTracker;
    .param p1, "x1"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/wifi/WifiTracker;

    .line 75
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->fetchScansAndConfigsAndUpdateAccessPoints()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/wifi/WifiTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->updateNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/wifi/WifiTracker;

    .line 75
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private clearAccessPointsAndConditionallyUpdate()V
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 797
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 798
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->conditionallyNotifyListeners()V

    .line 800
    :cond_0
    monitor-exit v0

    .line 801
    return-void

    .line 800
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private conditionallyNotifyListeners()V
    .locals 1

    .line 1045
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    if-eqz v0, :cond_0

    .line 1046
    return-void

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onAccessPointsChanged()V

    .line 1050
    return-void
.end method

.method private evictOldScans()V
    .locals 8

    .line 482
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 483
    .local v0, "nowMs":J
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/ScanResult;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 486
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-wide v4, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long v4, v0, v4

    const-wide/16 v6, 0x61a8

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 487
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 489
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_0
    goto :goto_0

    .line 490
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    return-void
.end method

.method private fetchScansAndConfigsAndUpdateAccessPoints()V
    .locals 4

    .line 510
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 511
    .local v0, "newScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    const-string v1, "WifiTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetched scan results: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 516
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->updateAccessPoints(Ljava/util/List;Ljava/util/List;)V

    .line 517
    return-void
.end method

.method private forceUpdate()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 333
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 335
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->fetchScansAndConfigsAndUpdateAccessPoints()V

    .line 336
    return-void
.end method

.method private getWifiConfigurationForNetworkId(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "networkId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    .line 494
    .local p2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz p2, :cond_2

    .line 495
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 496
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, v2, :cond_1

    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-eqz v2, :cond_1

    .line 498
    :cond_0
    return-object v1

    .line 500
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    goto :goto_0

    .line 502
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 2

    .line 91
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    if-nez v0, :cond_1

    const-string v0, "WifiTracker"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private static newIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.intent.action.AUTH_PASSWORD_WRONG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    return-object v0
.end method

.method private pauseScanning()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    .line 270
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 271
    return-void
.end method

.method private registerScoreCache()V
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 343
    return-void
.end method

.method private requestScoresForNetworkKeys(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/NetworkKey;",
            ">;)V"
        }
    .end annotation

    .line 346
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/NetworkKey;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 348
    :cond_0
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->DBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    const-string v0, "WifiTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting scores for Network Keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkKey;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkKey;

    invoke-virtual {v0, v1}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    .line 352
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 354
    monitor-exit v0

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterScoreCache()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 389
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 391
    monitor-exit v0

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateAccessPoints(Ljava/util/List;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .local p1, "newScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .local p2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    move-object/from16 v1, p0

    .line 524
    move-object/from16 v2, p2

    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$Multimap;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/settingslib/wifi/WifiTracker$Multimap;-><init>(Lcom/android/settingslib/wifi/WifiTracker$1;)V

    move-object v3, v0

    .line 537
    .local v3, "apMap":Lcom/android/settingslib/wifi/WifiTracker$Multimap;, "Lcom/android/settingslib/wifi/WifiTracker$Multimap<Ljava/lang/String;Lcom/android/settingslib/wifi/AccessPoint;>;"
    nop

    .line 538
    invoke-direct/range {p0 .. p1}, Lcom/android/settingslib/wifi/WifiTracker;->updateScanResultCache(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v4

    .line 540
    .local v4, "scanResultsByApKey":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;"
    const/4 v0, 0x0

    .line 541
    .local v0, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v1, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_0

    .line 542
    iget-object v5, v1, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-direct {v1, v5, v2}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 547
    .end local v0    # "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    .local v5, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    move-object v5, v0

    iget-object v6, v1, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 550
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v0

    .line 554
    .local v7, "cachedAccessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/wifi/AccessPoint;

    .line 555
    .local v8, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->clearConfig()V

    .line 556
    .end local v8    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    goto :goto_0

    .line 559
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 561
    .local v8, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/wifi/AccessPoint;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 564
    .local v9, "scoresToRequest":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkKey;>;"
    if-eqz v2, :cond_7

    .line 565
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    .line 567
    .local v11, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v12, v11, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v12, :cond_2

    iget v12, v11, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-nez v12, :cond_2

    .line 568
    goto :goto_1

    .line 570
    :cond_2
    invoke-virtual {v1, v11, v7}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v12

    .line 571
    .local v12, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    iget-object v13, v1, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v13, :cond_3

    iget-object v13, v1, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v13, :cond_3

    .line 572
    iget-object v13, v1, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v14, v1, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12, v5, v13, v14}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 574
    :cond_3
    const/4 v13, 0x0

    .line 575
    .local v13, "apFound":Z
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 576
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    move-object v2, v10

    .line 577
    .local v2, "result":Landroid/net/wifi/ScanResult;
    iget-object v10, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 578
    invoke-virtual {v12}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v10

    if-ne v0, v10, :cond_4

    .line 579
    const/4 v13, 0x1

    .line 580
    goto :goto_3

    .line 582
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;"
    :cond_4
    nop

    .line 575
    move-object/from16 v0, v17

    move-object/from16 v2, p2

    goto :goto_2

    .line 583
    :cond_5
    move-object/from16 v17, v0

    :goto_3
    if-nez v13, :cond_6

    .line 584
    invoke-virtual {v12}, Lcom/android/settingslib/wifi/AccessPoint;->setUnreachable()V

    .line 586
    :cond_6
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    invoke-virtual {v12}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v12}, Lcom/android/settingslib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 588
    .end local v11    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v12    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v13    # "apFound":Z
    nop

    .line 565
    move-object/from16 v0, v17

    move-object/from16 v2, p2

    goto/16 :goto_1

    .line 592
    :cond_7
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v10, v0

    .line 593
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 594
    .local v11, "result":Landroid/net/wifi/ScanResult;
    invoke-static {v11}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    move-result-object v12

    .line 595
    .local v12, "key":Landroid/net/NetworkKey;
    if-eqz v12, :cond_8

    iget-object v13, v1, Lcom/android/settingslib/wifi/WifiTracker;->mRequestedScores:Ljava/util/Set;

    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 596
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    .end local v11    # "result":Landroid/net/wifi/ScanResult;
    .end local v12    # "key":Landroid/net/NetworkKey;
    :cond_8
    goto :goto_5

    .line 601
    :cond_9
    const/4 v0, 0x0

    .line 602
    .local v0, "found":Z
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    .line 603
    .restart local v11    # "result":Landroid/net/wifi/ScanResult;
    iget-object v13, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/android/settingslib/wifi/WifiTracker$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settingslib/wifi/AccessPoint;

    .line 604
    .local v14, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v14, v11}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/ScanResult;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 605
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-virtual {v14, v13}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    .line 606
    const/4 v0, 0x1

    .line 607
    goto :goto_7

    .line 609
    .end local v14    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_a
    goto :goto_6

    .line 611
    .end local v0    # "found":Z
    .local v13, "found":Z
    :cond_b
    :goto_7
    move v13, v0

    if-nez v13, :cond_f

    .line 612
    nop

    .line 613
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0, v7}, Lcom/android/settingslib/wifi/WifiTracker;->getCachedOrCreate(Ljava/util/List;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    move-object v14, v0

    .line 615
    .restart local v14    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    iget-object v0, v1, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_c

    .line 616
    iget-object v0, v1, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v15, v1, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v14, v5, v0, v15}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 619
    :cond_c
    invoke-virtual {v11}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_e

    .line 625
    :try_start_1
    iget-object v0, v1, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v11}, Landroid/net/wifi/WifiManager;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 626
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_d

    .line 627
    invoke-virtual {v14, v0}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_d
    goto :goto_8

    .line 629
    :catch_0
    move-exception v0

    .line 634
    :cond_e
    :goto_8
    :try_start_2
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-virtual {v14}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v14}, Lcom/android/settingslib/wifi/WifiTracker$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 651
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;"
    .end local v11    # "result":Landroid/net/wifi/ScanResult;
    .end local v13    # "found":Z
    .end local v14    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_f
    goto/16 :goto_4

    .line 656
    :cond_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v5, :cond_11

    .line 657
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v2, v1, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v5}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 658
    .local v0, "activeAp":Lcom/android/settingslib/wifi/AccessPoint;
    iget-object v2, v1, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v10, v1, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v5, v2, v10}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 659
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v2, v1, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v2}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    .end local v0    # "activeAp":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_11
    invoke-direct {v1, v9}, Lcom/android/settingslib/wifi/WifiTracker;->requestScoresForNetworkKeys(Ljava/util/Collection;)V

    .line 664
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 665
    .local v2, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    iget-object v10, v1, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-boolean v11, v1, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    iget-wide v12, v1, Lcom/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    .line 666
    .end local v2    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    goto :goto_9

    .line 669
    :cond_12
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 672
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->DBG()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 673
    const-string v0, "WifiTracker"

    const-string v2, "------ Dumping SSIDs that were not seen on this scan ------"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, v1, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 675
    .local v2, "prevAccessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v10

    if-nez v10, :cond_13

    .line 676
    goto :goto_a

    .line 677
    :cond_13
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v10

    .line 678
    .local v10, "prevSsid":Ljava/lang/String;
    const/4 v11, 0x0

    .line 679
    .local v11, "found":Z
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_15

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settingslib/wifi/AccessPoint;

    .line 680
    .local v13, "newAccessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v13}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_14

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v14

    .line 681
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 682
    const/4 v11, 0x1

    .line 683
    goto :goto_c

    .line 685
    .end local v13    # "newAccessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_14
    goto :goto_b

    .line 686
    :cond_15
    :goto_c
    if-nez v11, :cond_16

    .line 687
    const-string v12, "WifiTracker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Did not find "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " in this scan"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .end local v2    # "prevAccessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v10    # "prevSsid":Ljava/lang/String;
    .end local v11    # "found":Z
    :cond_16
    goto :goto_a

    .line 689
    :cond_17
    const-string v0, "WifiTracker"

    const-string v2, "---- Done dumping SSIDs that were not seen on this scan ----"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_18
    iget-object v0, v1, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 693
    iget-object v0, v1, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 694
    .end local v7    # "cachedAccessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .end local v8    # "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .end local v9    # "scoresToRequest":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkKey;>;"
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 696
    invoke-direct/range {p0 .. p0}, Lcom/android/settingslib/wifi/WifiTracker;->conditionallyNotifyListeners()V

    .line 697
    return-void

    .line 694
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 11
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 735
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->clearAccessPointsAndConditionallyUpdate()V

    goto :goto_0

    .line 741
    :cond_0
    if-eqz p1, :cond_2

    .line 742
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 743
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->DBG()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    const-string v0, "WifiTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastNetworkInfo set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 748
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onConnectedChanged()V

    .line 752
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 754
    .local v0, "connectionConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 755
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->DBG()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 756
    const-string v1, "WifiTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLastInfo set as: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_4

    .line 759
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 760
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 759
    invoke-direct {p0, v1, v2}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiConfigurationForNetworkId(ILjava/util/List;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 763
    :cond_4
    const/4 v1, 0x0

    .line 764
    .local v1, "updated":Z
    const/4 v2, 0x0

    .line 766
    .local v2, "reorder":Z
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 767
    :try_start_0
    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_7

    .line 768
    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/wifi/AccessPoint;

    .line 769
    .local v5, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v6

    .line 770
    .local v6, "previouslyConnected":Z
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v8, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5, v0, v7, v8}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 771
    const/4 v1, 0x1

    .line 772
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v7

    if-eq v6, v7, :cond_5

    const/4 v2, 0x1

    .line 774
    :cond_5
    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-boolean v8, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    iget-wide v9, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 775
    const/4 v2, 0x1

    .line 776
    const/4 v1, 0x1

    .line 767
    .end local v5    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v6    # "previouslyConnected":Z
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 780
    .end local v4    # "i":I
    :cond_7
    if-eqz v2, :cond_8

    .line 781
    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 783
    :cond_8
    if-eqz v1, :cond_9

    .line 784
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->conditionallyNotifyListeners()V

    .line 786
    :cond_9
    monitor-exit v3

    .line 787
    return-void

    .line 786
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private updateNetworkScores()V
    .locals 8

    .line 811
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 812
    const/4 v1, 0x0

    .line 813
    .local v1, "updated":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 814
    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-boolean v5, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    iget-wide v6, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 816
    const/4 v1, 0x1

    .line 813
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 819
    .end local v2    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 820
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 821
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->conditionallyNotifyListeners()V

    .line 823
    .end local v1    # "updated":Z
    :cond_2
    monitor-exit v0

    .line 824
    return-void

    .line 823
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateScanResultCache(Ljava/util/List;)Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation

    .line 440
    .local p1, "newResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 441
    .local v1, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    goto :goto_0

    .line 444
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .end local v1    # "newResult":Landroid/net/wifi/ScanResult;
    goto :goto_0

    .line 448
    :cond_2
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    if-nez v0, :cond_3

    .line 449
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->evictOldScans()V

    .line 452
    :cond_3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 453
    .local v0, "scanResultsByApKey":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;"
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanResultCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 455
    .local v2, "result":Landroid/net/wifi/ScanResult;
    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "[IBSS]"

    .line 456
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 457
    goto :goto_1

    .line 460
    :cond_5
    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "apKey":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 463
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .local v4, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    goto :goto_2

    .line 465
    .end local v4    # "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .restart local v4    # "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :goto_2
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    .end local v3    # "apKey":Ljava/lang/String;
    .end local v4    # "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    goto :goto_1

    .line 472
    :cond_7
    return-object v0
.end method

.method private updateWifiState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 876
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_2

    .line 880
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    goto :goto_0

    .line 883
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->clearAccessPointsAndConditionallyUpdate()V

    .line 884
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 885
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLastNetworkInfo:Landroid/net/NetworkInfo;

    .line 886
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    .line 889
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mStaleScanResults:Z

    .line 891
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mListener:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onWifiStateChanged(I)V

    .line 892
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 430
    const-string v0, "  - wifi tracker ------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 432
    .local v1, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    .end local v1    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    goto :goto_0

    .line 434
    :cond_0
    return-void
.end method

.method public getAccessPoints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mInternalAccessPoints:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 404
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCachedOrCreate(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/settingslib/wifi/AccessPoint;"
        }
    .end annotation

    .line 718
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 719
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 720
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 721
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 722
    .local v2, "ret":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v2, p1}, Lcom/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 723
    return-object v2

    .line 719
    .end local v2    # "ret":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 727
    .local v1, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    return-object v1
.end method

.method getCachedOrCreate(Ljava/util/List;Ljava/util/List;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)",
            "Lcom/android/settingslib/wifi/AccessPoint;"
        }
    .end annotation

    .line 703
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 704
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 705
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    invoke-static {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 706
    invoke-interface {p2, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 707
    .local v1, "ret":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v1, p1}, Lcom/android/settingslib/wifi/AccessPoint;->setScanResults(Ljava/util/Collection;)V

    .line 708
    return-object v1

    .line 704
    .end local v1    # "ret":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    .end local v2    # "i":I
    :cond_1
    new-instance v1, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    .line 712
    .local v1, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    return-object v1
.end method

.method public getManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 258
    return-void
.end method

.method public onStart()V
    .locals 6

    .line 298
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->forceUpdate()V

    .line 300
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->registerScoreCache()V

    .line 302
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 304
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_scoring_ui_enabled"

    .line 303
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkScoringUiEnabled:Z

    .line 307
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    .line 309
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "speed_label_cache_eviction_age_millis"

    const-wide/32 v3, 0x124f80

    .line 308
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mMaxSpeedLabelScoreCacheAge:J

    .line 313
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 314
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mFilter:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 317
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    invoke-direct {v0, p0, v5}, Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$1;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    .line 318
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 320
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    .line 322
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 370
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 372
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mNetworkCallback:Lcom/android/settingslib/wifi/WifiTracker$WifiTrackerNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mRegistered:Z

    .line 375
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->unregisterScoreCache()V

    .line 376
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker;->pauseScanning()V

    .line 378
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 379
    return-void
.end method

.method public resumeScanning()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;-><init>(Lcom/android/settingslib/wifi/WifiTracker;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    .line 286
    :cond_1
    return-void
.end method

.method setWorkThread(Landroid/os/HandlerThread;)V
    .locals 4
    .param p1, "workThread"    # Landroid/os/HandlerThread;

    .line 240
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkThread:Landroid/os/HandlerThread;

    .line 241
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    .line 242
    new-instance v0, Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settingslib/wifi/WifiTracker$1;

    iget-object v3, p0, Lcom/android/settingslib/wifi/WifiTracker;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/wifi/WifiTracker$1;-><init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 253
    return-void
.end method
