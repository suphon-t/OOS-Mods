.class public Lcom/android/settingslib/wifi/AccessPoint;
.super Ljava/lang/Object;
.source "AccessPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# static fields
.field public static final UNREACHABLE_RSSI:I

.field static final sLastId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private bssid:Ljava/lang/String;

.field mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

.field private mCarrierApEapType:I

.field private mCarrierName:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mFqdn:Ljava/lang/String;

.field mId:I

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mIsCarrierAp:Z

.field private mIsScoredNetworkMetered:Z

.field private mKey:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mProviderFriendlyName:Ljava/lang/String;

.field private mRssi:I

.field private final mScanResults:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mScoredNetworkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeed:I

.field private mTag:Ljava/lang/Object;

.field private networkId:I

.field private pskType:I

.field private security:I

.field private ssid:Ljava/lang/String;

.field private wapiPskType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 157
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 188
    sget v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    sput v0, Lcom/android/settingslib/wifi/AccessPoint;->UNREACHABLE_RSSI:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 197
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 201
    sget v2, Lcom/android/settingslib/wifi/AccessPoint;->UNREACHABLE_RSSI:I

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 209
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 210
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 222
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 226
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 293
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {p0, p2}, Lcom/android/settingslib/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 295
    sget-object v0, Lcom/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    .line 296
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 309
    .local p2, "results":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 197
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 201
    sget v2, Lcom/android/settingslib/wifi/AccessPoint;->UNREACHABLE_RSSI:I

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 209
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 210
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 222
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 226
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 310
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 312
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 318
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 319
    .local v0, "firstResult":Landroid/net/wifi/ScanResult;
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 320
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 321
    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 322
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 323
    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 325
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    .line 326
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateRssi()V

    .line 329
    iget-boolean v1, v0, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 330
    iget v1, v0, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    .line 331
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 333
    sget-object v1, Lcom/android/settingslib/wifi/AccessPoint;->sLastId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mId:I

    .line 334
    return-void

    .line 313
    .end local v0    # "firstResult":Landroid/net/wifi/ScanResult;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct with an empty ScanResult list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateAverageSpeedForSsid()I
    .locals 9

    .line 544
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 545
    return v1

    .line 548
    :cond_0
    const-string v0, "SettingsLib.AccessPoint"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 549
    const-string v0, "SettingsLib.AccessPoint"

    const-string v4, "Generating fallbackspeed for %s using cache: %s"

    new-array v5, v2, [Ljava/lang/Object;

    .line 550
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    aput-object v6, v5, v3

    .line 549
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_1
    const/4 v0, 0x0

    .line 558
    .local v0, "count":I
    const/4 v4, 0x0

    .line 559
    .local v4, "totalSpeed":I
    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    .line 560
    .local v6, "timedScore":Lcom/android/settingslib/wifi/TimestampedScoredNetwork;
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getScore()Landroid/net/ScoredNetwork;

    move-result-object v7

    iget v8, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v7, v8}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result v7

    .line 561
    .local v7, "speed":I
    if-eqz v7, :cond_2

    .line 562
    add-int/lit8 v0, v0, 0x1

    .line 563
    add-int/2addr v4, v7

    .line 565
    .end local v6    # "timedScore":Lcom/android/settingslib/wifi/TimestampedScoredNetwork;
    .end local v7    # "speed":I
    :cond_2
    goto :goto_0

    .line 566
    :cond_3
    if-nez v0, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    div-int v5, v4, v0

    .line 567
    .local v5, "speed":I
    :goto_1
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 568
    const-string v6, "SettingsLib.AccessPoint"

    const-string v7, "%s generated fallback speed is: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_5
    invoke-static {v5}, Lcom/android/settingslib/wifi/AccessPoint;->roundToClosestSpeedEnum(I)I

    move-result v1

    return v1
.end method

.method public static getKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 605
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)I
    .locals 5
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .line 1388
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1389
    .local v0, "wpa":Z
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WPA2-PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1390
    .local v1, "wpa2":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1391
    const/4 v2, 0x3

    return v2

    .line 1392
    :cond_0
    if-eqz v1, :cond_1

    .line 1393
    const/4 v2, 0x2

    return v2

    .line 1394
    :cond_1
    if-eqz v0, :cond_2

    .line 1395
    const/4 v2, 0x1

    return v2

    .line 1397
    :cond_2
    const-string v2, "SettingsLib.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/4 v2, 0x0

    return v2
.end method

.method public static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .line 1409
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "DPP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    const/4 v0, 0x6

    return v0

    .line 1411
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1412
    const/4 v0, 0x7

    return v0

    .line 1413
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "OWE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1414
    const/16 v0, 0x8

    return v0

    .line 1415
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1416
    const/4 v0, 0x1

    return v0

    .line 1417
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1418
    const/4 v0, 0x2

    return v0

    .line 1419
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1420
    const/4 v0, 0x3

    return v0

    .line 1423
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1424
    const/4 v0, 0x4

    return v0

    .line 1425
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1426
    const/4 v0, 0x5

    return v0

    .line 1429
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1433
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 1434
    return v2

    .line 1436
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1437
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1441
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xbe

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1442
    const/4 v0, 0x4

    return v0

    .line 1444
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xbf

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1445
    const/4 v0, 0x5

    return v0

    .line 1448
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1449
    const/4 v0, 0x6

    return v0

    .line 1451
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1452
    const/4 v0, 0x7

    return v0

    .line 1454
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1455
    const/16 v0, 0x8

    return v0

    .line 1457
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    move v1, v2

    :goto_0
    return v1

    .line 1438
    :cond_8
    :goto_1
    return v2
.end method

.method private getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 932
    .local v0, "summary":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {v1, v4, v3, v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 936
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    if-eqz v1, :cond_1

    .line 938
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->connected_via_carrier:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 939
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 941
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 942
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 941
    move v5, v2

    goto :goto_0

    .line 942
    :cond_2
    nop

    .line 941
    move v5, v3

    :goto_0
    invoke-static {v1, v4, v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 943
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 944
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 945
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->available_via_passpoint:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, "format":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    .end local v1    # "format":Ljava/lang/String;
    goto/16 :goto_3

    :cond_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 948
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 949
    sget v1, Lcom/android/settingslib/R$string;->wifi_no_internet_no_reconnect:I

    goto :goto_1

    .line 950
    :cond_5
    sget v1, Lcom/android/settingslib/R$string;->wifi_no_internet:I

    .line 951
    .local v1, "messageID":I
    :goto_1
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    .end local v1    # "messageID":I
    goto/16 :goto_3

    :cond_6
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 953
    nop

    .line 954
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    .line 955
    .local v1, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_7

    packed-switch v4, :pswitch_data_0

    .end local v1    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    goto :goto_2

    .line 964
    .restart local v1    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :pswitch_0
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_disabled_network_failure:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    goto :goto_2

    .line 957
    :pswitch_1
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    goto :goto_2

    .line 967
    :pswitch_2
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_disabled_generic:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    goto :goto_2

    .line 960
    .restart local v1    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_7
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settingslib/R$string;->wifi_check_password_try_again:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    nop

    .line 970
    .end local v1    # "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :goto_2
    goto :goto_3

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNotRecommended()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 971
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_disabled_by_recommendation_provider:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 972
    :cond_9
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    if-eqz v1, :cond_a

    .line 973
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->available_via_carrier:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 974
    :cond_a
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v1

    if-nez v1, :cond_b

    .line 975
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_not_in_range:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 977
    :cond_b
    if-eqz p1, :cond_d

    .line 979
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getAssociationStatus()I

    move-result v1

    const/16 v4, 0x11

    if-eq v1, v4, :cond_c

    .line 986
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_remembered:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 981
    :cond_c
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settingslib/R$string;->wifi_ap_unable_to_handle_new_sta:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    nop

    .line 992
    :cond_d
    :goto_3
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 993
    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiUtils;->buildLoggingSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    :cond_e
    const/4 v1, 0x2

    if-eqz p1, :cond_10

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiUtils;->isMeteredOverridden(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz v4, :cond_10

    .line 997
    :cond_f
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settingslib/R$string;->preference_summary_default_combination:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 999
    invoke-static {v6, p1}, Lcom/android/settingslib/wifi/WifiUtils;->getMeteredLabel(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 1000
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 997
    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1005
    :cond_10
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_11

    .line 1006
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settingslib/R$string;->preference_summary_default_combination:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 1008
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 1009
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1006
    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1010
    :cond_11
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1011
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1013
    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getSpeedLabel(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "speed"    # I

    .line 1291
    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    .line 1302
    const/4 v0, 0x0

    return-object v0

    .line 1293
    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->speed_label_very_fast:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1295
    :cond_1
    sget v0, Lcom/android/settingslib/R$string;->speed_label_fast:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1297
    :cond_2
    sget v0, Lcom/android/settingslib/R$string;->speed_label_okay:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1299
    :cond_3
    sget v0, Lcom/android/settingslib/R$string;->speed_label_slow:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSpeedLabel(Landroid/content/Context;Landroid/net/ScoredNetwork;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scoredNetwork"    # Landroid/net/ScoredNetwork;
    .param p2, "rssi"    # I

    .line 1309
    invoke-virtual {p1, p2}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->roundToClosestSpeedEnum(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "isEphemeral"    # Z

    .line 1375
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "isEphemeral"    # Z
    .param p3, "passpointProvider"    # Ljava/lang/String;

    .line 1380
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "isEphemeral"    # Z
    .param p4, "passpointProvider"    # Ljava/lang/String;

    .line 1319
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_2

    if-nez p1, :cond_2

    .line 1320
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    sget v0, Lcom/android/settingslib/R$string;->connected_via_passpoint:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1323
    .local v0, "format":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1324
    .end local v0    # "format":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_2

    .line 1326
    const-class v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 1328
    .local v0, "networkScoreManager":Landroid/net/NetworkScoreManager;
    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v3

    .line 1329
    .local v3, "scorer":Landroid/net/NetworkScorerAppData;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1330
    sget v4, Lcom/android/settingslib/R$string;->connected_via_network_scorer:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1331
    .local v4, "format":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1333
    .end local v4    # "format":Ljava/lang/String;
    :cond_1
    sget v1, Lcom/android/settingslib/R$string;->connected_via_network_scorer_default:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1339
    .end local v0    # "networkScoreManager":Landroid/net/NetworkScoreManager;
    .end local v3    # "scorer":Landroid/net/NetworkScorerAppData;
    :cond_2
    const-string v0, "connectivity"

    .line 1340
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1341
    .local v0, "cm":Landroid/net/ConnectivityManager;
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v3, :cond_4

    .line 1342
    const-string/jumbo v3, "wifi"

    .line 1343
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1342
    invoke-static {v3}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v3

    .line 1344
    .local v3, "wifiManager":Landroid/net/wifi/IWifiManager;
    const/4 v4, 0x0

    .line 1347
    .local v4, "nc":Landroid/net/NetworkCapabilities;
    :try_start_0
    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 1348
    goto :goto_0

    :catch_0
    move-exception v5

    .line 1350
    :goto_0
    if-eqz v4, :cond_4

    .line 1351
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1352
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "network_available_sign_in"

    const-string/jumbo v5, "string"

    const-string v6, "android"

    .line 1353
    invoke-virtual {v1, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1354
    .local v1, "id":I
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1355
    .end local v1    # "id":I
    :cond_3
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1356
    sget v1, Lcom/android/settingslib/R$string;->wifi_connected_no_internet:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1360
    .end local v3    # "wifiManager":Landroid/net/wifi/IWifiManager;
    .end local v4    # "nc":Landroid/net/NetworkCapabilities;
    :cond_4
    if-nez p2, :cond_5

    .line 1361
    const-string v1, "SettingsLib.AccessPoint"

    const-string/jumbo v2, "state is null, returning empty summary"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const-string v1, ""

    return-object v1

    .line 1364
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez p1, :cond_6

    .line 1365
    sget v4, Lcom/android/settingslib/R$array;->wifi_status:I

    goto :goto_1

    :cond_6
    sget v4, Lcom/android/settingslib/R$array;->wifi_status_with_ssid:I

    .line 1364
    :goto_1
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1366
    .local v3, "formats":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v4

    .line 1368
    .local v4, "index":I
    array-length v5, v3

    if-ge v4, v5, :cond_8

    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    .line 1371
    :cond_7
    aget-object v5, v3, v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1369
    :cond_8
    :goto_2
    const-string v1, ""

    return-object v1
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 2

    .line 1540
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    if-nez v0, :cond_1

    const-string v0, "SettingsLib.AccessPoint"

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

.method public static synthetic lambda$setScanResults$1(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1

    .line 1166
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1169
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setScanResults$2(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1177
    :cond_0
    return-void
.end method

.method public static synthetic lambda$update$3(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1228
    :cond_0
    return-void
.end method

.method public static synthetic lambda$update$4(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1

    .line 1232
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1235
    :cond_0
    return-void
.end method

.method public static synthetic lambda$update$5(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    invoke-interface {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1249
    :cond_0
    return-void
.end method

.method static synthetic lambda$updateScores$0(JLjava/util/Iterator;Lcom/android/settingslib/wifi/TimestampedScoredNetwork;)V
    .locals 2
    .param p0, "evictionCutoff"    # J
    .param p2, "iterator"    # Ljava/util/Iterator;
    .param p3, "timestampedScoredNetwork"    # Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    .line 520
    invoke-virtual {p3}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getUpdatedTimestampMillis()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    .line 521
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 523
    :cond_0
    return-void
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .line 1491
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    const-string v0, ""

    return-object v0

    .line 1494
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1495
    .local v0, "length":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 1496
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1497
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1499
    :cond_1
    return-object p0
.end method

.method private static roundToClosestSpeedEnum(I)I
    .locals 2
    .param p0, "speed"    # I

    .line 1272
    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    .line 1273
    const/4 v0, 0x0

    return v0

    .line 1274
    :cond_0
    const/4 v1, 0x7

    if-ge p0, v1, :cond_1

    .line 1275
    return v0

    .line 1276
    :cond_1
    const/16 v0, 0xf

    if-ge p0, v0, :cond_2

    .line 1277
    const/16 v0, 0xa

    return v0

    .line 1278
    :cond_2
    const/16 v0, 0x19

    if-ge p0, v0, :cond_3

    .line 1279
    const/16 v0, 0x14

    return v0

    .line 1281
    :cond_3
    const/16 v0, 0x1e

    return v0
.end method

.method public static securityToString(II)Ljava/lang/String;
    .locals 3
    .param p0, "security"    # I
    .param p1, "pskType"    # I

    .line 1461
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1462
    const-string v0, "WEP"

    return-object v0

    .line 1463
    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne p0, v2, :cond_4

    .line 1464
    if-ne p1, v0, :cond_1

    .line 1465
    const-string v0, "WPA"

    return-object v0

    .line 1466
    :cond_1
    if-ne p1, v2, :cond_2

    .line 1467
    const-string v0, "WPA2"

    return-object v0

    .line 1468
    :cond_2
    if-ne p1, v1, :cond_3

    .line 1469
    const-string v0, "WPA_WPA2"

    return-object v0

    .line 1471
    :cond_3
    const-string v0, "PSK"

    return-object v0

    .line 1472
    :cond_4
    if-ne p0, v1, :cond_5

    .line 1473
    const-string v0, "EAP"

    return-object v0

    .line 1475
    :cond_5
    const/4 v0, 0x4

    if-ne p0, v0, :cond_6

    .line 1476
    const-string v0, "WAPI-KEY"

    return-object v0

    .line 1477
    :cond_6
    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    .line 1478
    const-string v0, "WAPI-CERT"

    return-object v0

    .line 1480
    :cond_7
    const/4 v0, 0x6

    if-ne p0, v0, :cond_8

    .line 1481
    const-string v0, "DPP"

    return-object v0

    .line 1482
    :cond_8
    const/4 v0, 0x7

    if-ne p0, v0, :cond_9

    .line 1483
    const-string v0, "SAE"

    return-object v0

    .line 1484
    :cond_9
    const/16 v0, 0x8

    if-ne p0, v0, :cond_a

    .line 1485
    const-string v0, "OWE"

    return-object v0

    .line 1487
    :cond_a
    const-string v0, "NONE"

    return-object v0
.end method

.method private updateKey()V
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    .line 360
    return-void
.end method

.method private updateMetered(Landroid/net/wifi/WifiNetworkScoreCache;)Z
    .locals 7
    .param p1, "scoreCache"    # Landroid/net/wifi/WifiNetworkScoreCache;

    .line 578
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 579
    .local v0, "oldMetering":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 581
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_1

    .line 582
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v2}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v2

    .line 583
    .local v2, "key":Landroid/net/NetworkKey;
    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v3

    .line 584
    .local v3, "score":Landroid/net/ScoredNetwork;
    if-eqz v3, :cond_0

    .line 585
    iget-boolean v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iget-boolean v5, v3, Landroid/net/ScoredNetwork;->meteredHint:Z

    or-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 587
    .end local v2    # "key":Landroid/net/NetworkKey;
    .end local v3    # "score":Landroid/net/ScoredNetwork;
    :cond_0
    goto :goto_1

    .line 588
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 589
    .local v3, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v4

    .line 590
    .local v4, "score":Landroid/net/ScoredNetwork;
    if-nez v4, :cond_2

    .line 591
    goto :goto_0

    .line 593
    :cond_2
    iget-boolean v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    iget-boolean v6, v4, Landroid/net/ScoredNetwork;->meteredHint:Z

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    .line 594
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "score":Landroid/net/ScoredNetwork;
    goto :goto_0

    .line 596
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    nop

    :cond_4
    return v1
.end method

.method private updateRssi()V
    .locals 4

    .line 765
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    return-void

    .line 769
    :cond_0
    sget v0, Lcom/android/settingslib/wifi/AccessPoint;->UNREACHABLE_RSSI:I

    .line 770
    .local v0, "rssi":I
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 771
    .local v2, "result":Landroid/net/wifi/ScanResult;
    iget v3, v2, Landroid/net/wifi/ScanResult;->level:I

    if-le v3, v0, :cond_1

    .line 772
    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 774
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    goto :goto_0

    .line 776
    :cond_2
    sget v1, Lcom/android/settingslib/wifi/AccessPoint;->UNREACHABLE_RSSI:I

    if-eq v0, v1, :cond_3

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    sget v2, Lcom/android/settingslib/wifi/AccessPoint;->UNREACHABLE_RSSI:I

    if-eq v1, v2, :cond_3

    .line 777
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    goto :goto_1

    .line 779
    :cond_3
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 781
    :goto_1
    return-void
.end method

.method private updateScores(Landroid/net/wifi/WifiNetworkScoreCache;J)Z
    .locals 9
    .param p1, "scoreCache"    # Landroid/net/wifi/WifiNetworkScoreCache;
    .param p2, "maxScoreCacheAgeMillis"    # J

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 501
    .local v0, "nowMillis":J
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 502
    .local v3, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v4

    .line 503
    .local v4, "score":Landroid/net/ScoredNetwork;
    if-nez v4, :cond_0

    .line 504
    goto :goto_0

    .line 506
    :cond_0
    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    .line 507
    .local v5, "timedScore":Lcom/android/settingslib/wifi/TimestampedScoredNetwork;
    if-nez v5, :cond_1

    .line 508
    iget-object v6, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    iget-object v7, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    new-instance v8, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    invoke-direct {v8, v4, v0, v1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;-><init>(Landroid/net/ScoredNetwork;J)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 512
    :cond_1
    invoke-virtual {v5, v4, v0, v1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->update(Landroid/net/ScoredNetwork;J)V

    .line 514
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "score":Landroid/net/ScoredNetwork;
    .end local v5    # "timedScore":Lcom/android/settingslib/wifi/TimestampedScoredNetwork;
    :goto_1
    goto :goto_0

    .line 517
    :cond_2
    sub-long v2, v0, p2

    .line 518
    .local v2, "evictionCutoff":J
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 519
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settingslib/wifi/TimestampedScoredNetwork;>;"
    new-instance v5, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$OIXfUc7y1PqI_zmQ3STe_086YzY;

    invoke-direct {v5, v2, v3, v4}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$OIXfUc7y1PqI_zmQ3STe_086YzY;-><init>(JLjava/util/Iterator;)V

    invoke-interface {v4, v5}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 525
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateSpeed()Z

    move-result v5

    return v5
.end method

.method private updateSpeed()Z
    .locals 8

    .line 532
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 533
    .local v0, "oldSpeed":I
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->generateAverageSpeedForSsid()I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    .line 535
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 536
    .local v1, "changed":Z
    :goto_0
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 537
    const-string v4, "SettingsLib.AccessPoint"

    const-string v5, "%s: Set speed to %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v7, v6, v2

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_1
    return v1
.end method


# virtual methods
.method public clearConfig()V
    .locals 1

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 655
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 656
    return-void
.end method

.method public compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I
    .locals 3
    .param p1, "other"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 380
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 385
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 388
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 389
    :cond_4
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 392
    :cond_5
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 393
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 397
    :cond_6
    iget v0, p1, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 398
    invoke-static {v2, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    sub-int/2addr v0, v1

    .line 399
    .local v0, "difference":I
    if-eqz v0, :cond_7

    .line 400
    return v0

    .line 404
    :cond_7
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 405
    if-eqz v0, :cond_8

    .line 406
    return v0

    .line 410
    :cond_8
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 81
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 415
    instance-of v0, p1, Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 416
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->compareTo(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public generateOpenNetworkConfig()V
    .locals 2

    .line 1097
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-nez v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 1100
    return-void

    .line 1101
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1102
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1103
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1104
    return-void

    .line 1098
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    return-object v0

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mFqdn:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 868
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mProviderFriendlyName:Ljava/lang/String;

    return-object v0

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0

    .line 878
    :cond_0
    const-string v0, "SettingsLib.AccessPoint"

    const-string v1, "NetworkInfo is null, cannot return detailed state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 2

    .line 737
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0
.end method

.method public getScanResults()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getScoredNetworkCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;"
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScoredNetworkCache:Ljava/util/Map;

    return-object v0
.end method

.method public getSecurity()I
    .locals 1

    .line 796
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    return v0
.end method

.method getSpeed()I
    .locals 1

    .line 1262
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    return v0
.end method

.method getSpeedLabel()Ljava/lang/String;
    .locals 1

    .line 1266
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSpeedLabel(I)Ljava/lang/String;
    .locals 1
    .param p1, "speed"    # I

    .line 1287
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSsid()Ljava/lang/CharSequence;
    .locals 5

    .line 858
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 859
    .local v0, "str":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TtsSpan$TelephoneBuilder;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 861
    return-object v0
.end method

.method public getSsidStr()Ljava/lang/String;
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 423
    :cond_0
    const/16 v1, 0x13

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 424
    const/16 v1, 0x17

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 425
    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 426
    return v0
.end method

.method public isActive()Z
    .locals 2

    .line 1023
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1025
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1023
    :goto_0
    return v0
.end method

.method public isConnectable()Z
    .locals 2

    .line 1029
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEphemeral()Z
    .locals 2

    .line 1033
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1034
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1033
    :goto_0
    return v0
.end method

.method public isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;

    .line 1063
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1064
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 1065
    :cond_1
    if-eqz p1, :cond_2

    .line 1066
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0

    .line 1072
    :cond_2
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    .line 1073
    return v1

    .line 1075
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMetered()Z
    .locals 2

    .line 787
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsScoredNetworkMetered:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 788
    invoke-static {v0, v1}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 787
    :goto_1
    return v0
.end method

.method public isPasspoint()Z
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReachable()Z
    .locals 2

    .line 1314
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    sget v1, Lcom/android/settingslib/wifi/AccessPoint;->UNREACHABLE_RSSI:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSaved()Z
    .locals 2

    .line 1081
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 337
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 338
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 339
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 340
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateKey()V

    .line 341
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 342
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 343
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->wapiPskType:I

    .line 344
    return-void
.end method

.method public matches(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .line 631
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 636
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settingslib/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    .line 640
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-ne v0, v3, :cond_3

    .line 639
    :cond_2
    move v1, v2

    goto :goto_0

    .line 640
    :cond_3
    nop

    .line 639
    :goto_0
    return v1
.end method

.method setRssi(I)V
    .locals 0
    .param p1, "rssi"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1254
    iput p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 1255
    return-void
.end method

.method setScanResults(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1144
    .local p1, "scanResults":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1145
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1146
    .local v2, "result":Landroid/net/wifi/ScanResult;
    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v4

    .line 1147
    .local v4, "scanResultKey":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1152
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "scanResultKey":Ljava/lang/String;
    goto :goto_0

    .line 1148
    .restart local v2    # "result":Landroid/net/wifi/ScanResult;
    .restart local v4    # "scanResultKey":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    aput-object v0, v5, v3

    .line 1149
    const-string v3, "ScanResult %s\nkey of %s did not match current AP key %s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1155
    .end local v2    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "scanResultKey":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 1156
    .local v1, "oldLevel":I
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1157
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1158
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateRssi()V

    .line 1159
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v2

    .line 1162
    .local v2, "newLevel":I
    if-lez v2, :cond_2

    if-eq v2, v1, :cond_2

    .line 1164
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPoint;->updateSpeed()Z

    .line 1165
    new-instance v4, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$MkkIS1nUbezHicDMmYnviyiBJyo;

    invoke-direct {v4, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$MkkIS1nUbezHicDMmYnviyiBJyo;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {v4}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1173
    :cond_2
    new-instance v4, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$0Yq14aFJZLjPMzFGAvglLaxsblI;

    invoke-direct {v4, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$0Yq14aFJZLjPMzFGAvglLaxsblI;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {v4}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1179
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1180
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 1183
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget v5, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-ne v5, v3, :cond_3

    .line 1184
    invoke-static {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)I

    move-result v3

    iput v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    .line 1189
    :cond_3
    iget-boolean v3, v4, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    iput-boolean v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mIsCarrierAp:Z

    .line 1190
    iget v3, v4, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    iput v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierApEapType:I

    .line 1191
    iget-object v3, v4, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mCarrierName:Ljava/lang/String;

    .line 1193
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .line 1089
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mTag:Ljava/lang/Object;

    .line 1090
    return-void
.end method

.method setUnreachable()V
    .locals 1

    .line 1259
    sget v0, Lcom/android/settingslib/wifi/AccessPoint;->UNREACHABLE_RSSI:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;->setRssi(I)V

    .line 1260
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessPoint("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 434
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    const/16 v2, 0x2c

    if-eqz v1, :cond_1

    .line 437
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "saved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 443
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "connectable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_4
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_5

    .line 449
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->security:I

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->pskType:I

    invoke-static {v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->securityToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_5
    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 452
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    if-eqz v1, :cond_6

    .line 453
    const-string v1, ",speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 455
    :cond_6
    const-string v1, ",metered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isMetered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 457
    invoke-static {}, Lcom/android/settingslib/wifi/AccessPoint;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 458
    const-string v1, ",rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 459
    const-string v1, ",scan cache size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mScanResults:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    :cond_7
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method update(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 1243
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1244
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPoint;->networkId:I

    .line 1245
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QyP0aXhFuWtm7lmBu1IY3qbfmBA;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QyP0aXhFuWtm7lmBu1IY3qbfmBA;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1250
    return-void
.end method

.method public update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;
    .param p3, "networkInfo"    # Landroid/net/NetworkInfo;

    .line 1199
    const/4 v0, 0x0

    .line 1200
    .local v0, "updated":Z
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 1201
    .local v1, "oldLevel":I
    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1202
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 1203
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eq v2, p1, :cond_1

    .line 1207
    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;)V

    .line 1209
    :cond_1
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v3, -0x7f

    if-eq v2, v3, :cond_2

    .line 1210
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mRssi:I

    .line 1211
    const/4 v0, 0x1

    goto :goto_1

    .line 1212
    :cond_2
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_3

    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1213
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {p3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 1214
    const/4 v0, 0x1

    .line 1216
    :cond_3
    :goto_1
    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1217
    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_2

    .line 1218
    :cond_4
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_5

    .line 1219
    const/4 v0, 0x1

    .line 1220
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 1221
    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1223
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPoint;->mAccessPointListener:Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;

    if-eqz v2, :cond_6

    .line 1224
    new-instance v2, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$S7H59e_8IxpVPy0V68Oc2-zX-rg;

    invoke-direct {v2, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$S7H59e_8IxpVPy0V68Oc2-zX-rg;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1230
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 1231
    new-instance v2, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QW-1Uw0oxoaKqUtEtPO0oPvH5ng;

    invoke-direct {v2, p0}, Lcom/android/settingslib/wifi/-$$Lambda$AccessPoint$QW-1Uw0oxoaKqUtEtPO0oPvH5ng;-><init>(Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1239
    :cond_6
    return v0
.end method

.method update(Landroid/net/wifi/WifiNetworkScoreCache;ZJ)Z
    .locals 2
    .param p1, "scoreCache"    # Landroid/net/wifi/WifiNetworkScoreCache;
    .param p2, "scoringUiEnabled"    # Z
    .param p3, "maxScoreCacheAgeMillis"    # J

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "scoreChanged":Z
    if-eqz p2, :cond_0

    .line 480
    invoke-direct {p0, p1, p3, p4}, Lcom/android/settingslib/wifi/AccessPoint;->updateScores(Landroid/net/wifi/WifiNetworkScoreCache;J)Z

    move-result v0

    .line 482
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/AccessPoint;->updateMetered(Landroid/net/wifi/WifiNetworkScoreCache;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
