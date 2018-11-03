.class public Lcom/android/settingslib/net/DataUsageController;
.super Ljava/lang/Object;
.source "DataUsageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/DataUsageController$Callback;,
        Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;,
        Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PERIOD_BUILDER:Ljava/lang/StringBuilder;

.field private static final PERIOD_FORMATTER:Ljava/util/Formatter;


# instance fields
.field private mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const-string v0, "DataUsageController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/net/DataUsageController;->DEBUG:Z

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 55
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 74
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 75
    const-string v0, "netstats"

    .line 76
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mStatsService:Landroid/net/INetworkStatsService;

    .line 77
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 79
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 81
    return-void
.end method

.method private findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 186
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 188
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    if-nez v0, :cond_1

    return-object v1

    .line 189
    :cond_1
    array-length v2, v0

    .line 190
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 191
    aget-object v4, v0, v3

    .line 192
    .local v4, "policy":Landroid/net/NetworkPolicy;
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v5}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    return-object v4

    .line 190
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    .end local v3    # "i":I
    :cond_3
    return-object v1

    .line 186
    .end local v0    # "policies":[Landroid/net/NetworkPolicy;
    .end local v2    # "N":I
    :cond_4
    :goto_1
    return-object v1
.end method

.method private formatDateRange(JJ)Ljava/lang/String;
    .locals 12
    .param p1, "start"    # J
    .param p3, "end"    # J

    .line 244
    const v1, 0x10010

    .line 245
    .local v1, "flags":I
    sget-object v2, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    monitor-enter v2

    .line 246
    :try_start_0
    sget-object v0, Lcom/android/settingslib/net/DataUsageController;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    move-object v3, p0

    :try_start_1
    iget-object v4, v3, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/settingslib/net/DataUsageController;->PERIOD_FORMATTER:Ljava/util/Formatter;

    const v10, 0x10010

    const/4 v11, 0x0

    move-wide v6, p1

    move-wide v8, p3

    invoke-static/range {v4 .. v11}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    .line 247
    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    move-object v3, p0

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 237
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 238
    .local v0, "tele":Landroid/telephony/TelephonyManager;
    nop

    .line 239
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "actualSubscriberId":Ljava/lang/String;
    return-object v1
.end method

.method private getSession()Landroid/net/INetworkStatsSession;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;

    if-nez v0, :cond_0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DataUsageController"

    const-string v2, "Failed to open stats session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataUsageController"

    const-string v2, "Failed to open stats session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 105
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method private static historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;
    .locals 3
    .param p0, "entry"    # Landroid/net/NetworkStatsHistory$Entry;

    .line 200
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "bucketDuration="

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",bucketStart="

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",activeTime="

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",rxBytes="

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",rxPackets="

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",txBytes="

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",txPackets="

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",operations="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    :goto_0
    return-object v0
.end method

.method private warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 113
    const-string v0, "DataUsageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get data usage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDataUsageInfo()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/net/DataUsageController;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "subscriberId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 120
    const-string v1, "no subscriber id"

    invoke-direct {p0, v1}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v1

    return-object v1

    .line 122
    :cond_0
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 123
    .local v1, "template":Landroid/net/NetworkTemplate;
    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v2

    return-object v2
.end method

.method public getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 26
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    move-object/from16 v1, p0

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/android/settingslib/net/DataUsageController;->getSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    .line 135
    .local v2, "session":Landroid/net/INetworkStatsSession;
    if-nez v2, :cond_0

    .line 136
    const-string v0, "no stats session"

    invoke-direct {v1, v0}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/settingslib/net/DataUsageController;->findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    move-object v3, v0

    .line 140
    .local v3, "policy":Landroid/net/NetworkPolicy;
    const/16 v0, 0xa

    move-object/from16 v4, p1

    :try_start_0
    invoke-interface {v2, v4, v0}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    .line 141
    .local v5, "history":Landroid/net/NetworkStatsHistory;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7

    move-wide v13, v6

    .line 143
    .local v13, "now":J
    if-eqz v3, :cond_1

    .line 144
    nop

    .line 145
    :try_start_1
    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 146
    .local v0, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/time/ZonedDateTime;

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 147
    .local v6, "start":J
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/time/ZonedDateTime;

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    .end local v0    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .local v8, "end":J
    nop

    .line 151
    move-wide v10, v8

    goto :goto_0

    .line 180
    .end local v5    # "history":Landroid/net/NetworkStatsHistory;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v13    # "now":J
    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move-object v4, v3

    goto/16 :goto_7

    .line 150
    .restart local v5    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v13    # "now":J
    :cond_1
    move-wide v6, v13

    .line 151
    .local v6, "end":J
    const-wide v8, 0x90321000L

    sub-long v8, v13, v8

    move-wide v10, v6

    move-wide v6, v8

    .local v6, "start":J
    .local v10, "end":J
    :goto_0
    move-wide v8, v6

    .line 153
    .end local v6    # "start":J
    .local v8, "start":J
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_7

    move-wide v15, v6

    .line 154
    .local v15, "callStart":J
    const/4 v12, 0x0

    move-wide v6, v8

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-wide v2, v8

    move-wide v8, v10

    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    .end local v8    # "start":J
    .local v2, "start":J
    .local v17, "session":Landroid/net/INetworkStatsSession;
    .local v18, "policy":Landroid/net/NetworkPolicy;
    move-wide v0, v10

    move-wide v10, v13

    .end local v10    # "end":J
    .local v0, "end":J
    :try_start_3
    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v6

    .line 155
    .local v6, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 156
    .local v7, "callEnd":J
    sget-boolean v9, Lcom/android/settingslib/net/DataUsageController;->DEBUG:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v9, :cond_2

    :try_start_4
    const-string v9, "DataUsageController"

    const-string v10, "history call from %s to %s now=%s took %sms: %s"

    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/16 v20, 0x0

    aput-object v12, v11, v20

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v0, v1}, Ljava/util/Date;-><init>(J)V

    const/16 v20, 0x1

    aput-object v12, v11, v20

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    const/16 v20, 0x2

    aput-object v12, v11, v20

    move-wide/from16 v21, v13

    sub-long v12, v7, v15

    .line 157
    .end local v13    # "now":J
    .local v21, "now":J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const/4 v12, 0x4

    .line 158
    invoke-static {v6}, Lcom/android/settingslib/net/DataUsageController;->historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 156
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 180
    .end local v0    # "end":J
    .end local v2    # "start":J
    .end local v5    # "history":Landroid/net/NetworkStatsHistory;
    .end local v6    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v7    # "callEnd":J
    .end local v15    # "callStart":J
    .end local v21    # "now":J
    :catch_1
    move-exception v0

    move-object/from16 v4, v18

    move-object/from16 v1, p0

    goto/16 :goto_7

    .line 159
    .restart local v0    # "end":J
    .restart local v2    # "start":J
    .restart local v5    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v6    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v7    # "callEnd":J
    .restart local v13    # "now":J
    .restart local v15    # "callStart":J
    :cond_2
    move-wide/from16 v21, v13

    .end local v13    # "now":J
    .restart local v21    # "now":J
    :goto_1
    if-nez v6, :cond_3

    .line 160
    :try_start_5
    const-string v9, "no entry data"
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    move-wide v10, v0

    move-object/from16 v1, p0

    :try_start_6
    invoke-direct {v1, v9}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v0    # "end":J
    .restart local v10    # "end":J
    return-object v0

    .line 180
    .end local v2    # "start":J
    .end local v5    # "history":Landroid/net/NetworkStatsHistory;
    .end local v6    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v7    # "callEnd":J
    .end local v10    # "end":J
    .end local v15    # "callStart":J
    .end local v21    # "now":J
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    .local v4, "policy":Landroid/net/NetworkPolicy;
    :goto_2
    move-object/from16 v4, v18

    goto/16 :goto_7

    .line 162
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    .restart local v0    # "end":J
    .restart local v2    # "start":J
    .restart local v5    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v6    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v7    # "callEnd":J
    .restart local v15    # "callStart":J
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    .restart local v21    # "now":J
    :cond_3
    move-wide v10, v0

    move-object/from16 v1, p0

    .end local v0    # "end":J
    .restart local v10    # "end":J
    :try_start_7
    iget-wide v12, v6, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v23, v5

    iget-wide v4, v6, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    .end local v5    # "history":Landroid/net/NetworkStatsHistory;
    .local v23, "history":Landroid/net/NetworkStatsHistory;
    add-long/2addr v12, v4

    .line 163
    .local v12, "totalBytes":J
    new-instance v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-direct {v0}, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;-><init>()V

    .line 164
    .local v0, "usage":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    iput-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->startDate:J

    .line 165
    iput-wide v12, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 166
    invoke-direct {v1, v2, v3, v10, v11}, Lcom/android/settingslib/net/DataUsageController;->formatDateRange(JJ)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    .line 167
    iput-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    .line 168
    iput-wide v10, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 170
    if-eqz v18, :cond_6

    .line 171
    move-wide/from16 v24, v2

    move-object/from16 v4, v18

    :try_start_8
    iget-wide v2, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    .end local v2    # "start":J
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    .restart local v4    # "policy":Landroid/net/NetworkPolicy;
    .local v24, "start":J
    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-lez v2, :cond_4

    iget-wide v2, v4, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_3

    :cond_4
    move-wide/from16 v2, v18

    :goto_3
    iput-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 172
    iget-wide v2, v4, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v2, v2, v18

    if-lez v2, :cond_5

    iget-wide v2, v4, Landroid/net/NetworkPolicy;->warningBytes:J

    goto :goto_4

    :cond_5
    move-wide/from16 v2, v18

    :goto_4
    iput-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    goto :goto_5

    .line 180
    .end local v0    # "usage":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .end local v6    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v7    # "callEnd":J
    .end local v10    # "end":J
    .end local v12    # "totalBytes":J
    .end local v15    # "callStart":J
    .end local v21    # "now":J
    .end local v23    # "history":Landroid/net/NetworkStatsHistory;
    .end local v24    # "start":J
    :catch_4
    move-exception v0

    goto :goto_7

    .line 174
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    .restart local v0    # "usage":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .restart local v2    # "start":J
    .restart local v6    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v7    # "callEnd":J
    .restart local v10    # "end":J
    .restart local v12    # "totalBytes":J
    .restart local v15    # "callStart":J
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    .restart local v21    # "now":J
    .restart local v23    # "history":Landroid/net/NetworkStatsHistory;
    :cond_6
    move-wide/from16 v24, v2

    move-object/from16 v4, v18

    .end local v2    # "start":J
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    .restart local v4    # "policy":Landroid/net/NetworkPolicy;
    .restart local v24    # "start":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/net/DataUsageController;->getDefaultWarningLevel()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 176
    :goto_5
    iget-object v2, v1, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    if-eqz v2, :cond_7

    .line 177
    iget-object v2, v1, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    invoke-interface {v2}, Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;->getMobileDataNetworkName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    .line 179
    :cond_7
    return-object v0

    .line 180
    .end local v0    # "usage":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    .end local v6    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v7    # "callEnd":J
    .end local v10    # "end":J
    .end local v12    # "totalBytes":J
    .end local v15    # "callStart":J
    .end local v21    # "now":J
    .end local v23    # "history":Landroid/net/NetworkStatsHistory;
    .end local v24    # "start":J
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    :catch_5
    move-exception v0

    move-object/from16 v4, v18

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v4, v18

    move-object/from16 v1, p0

    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    .restart local v4    # "policy":Landroid/net/NetworkPolicy;
    :goto_6
    goto :goto_7

    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    .end local v17    # "session":Landroid/net/INetworkStatsSession;
    .local v2, "session":Landroid/net/INetworkStatsSession;
    .restart local v3    # "policy":Landroid/net/NetworkPolicy;
    :catch_7
    move-exception v0

    move-object/from16 v17, v2

    move-object v4, v3

    .line 181
    .end local v2    # "session":Landroid/net/INetworkStatsSession;
    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4    # "policy":Landroid/net/NetworkPolicy;
    .restart local v17    # "session":Landroid/net/INetworkStatsSession;
    :goto_7
    const-string v2, "remote call failed"

    invoke-direct {v1, v2}, Lcom/android/settingslib/net/DataUsageController;->warn(Ljava/lang/String;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v2

    return-object v2
.end method

.method public getDefaultWarningLevel()J
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v2, v0

    .line 91
    return-wide v2
.end method

.method public isMobileDataEnabled()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isMobileDataSupported()Z
    .locals 3

    .line 223
    sget-boolean v0, Lcom/android/settingslib/net/DataUsageController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DataUsageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Esports SIM id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settingslib/net/DataUsageController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 228
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v2

    .line 226
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 225
    :cond_1
    return v1
.end method

.method public setCallback(Lcom/android/settingslib/net/DataUsageController$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settingslib/net/DataUsageController$Callback;

    .line 109
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

    .line 110
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 213
    const-string v0, "DataUsageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settingslib/net/DataUsageController;->mCallback:Lcom/android/settingslib/net/DataUsageController$Callback;

    invoke-interface {v0, p1}, Lcom/android/settingslib/net/DataUsageController$Callback;->onMobileDataEnabled(Z)V

    .line 218
    :cond_0
    return-void
.end method

.method public setNetworkController(Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;)V
    .locals 0
    .param p1, "networkController"    # Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    .line 84
    iput-object p1, p0, Lcom/android/settingslib/net/DataUsageController;->mNetworkController:Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;

    .line 85
    return-void
.end method
