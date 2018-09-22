.class public Lcom/google/android/systemui/smartspace/SmartSpaceController;
.super Ljava/lang/Object;
.source "SmartSpaceController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static sInstance:Lcom/google/android/systemui/smartspace/SmartSpaceController;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmRegistered:Z

.field private final mAppContext:Landroid/content/Context;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

.field private final mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

.field private mListener:Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

.field private mSmartSpaceEnabledBroadcastSent:Z

.field private final mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-string v0, "SmartSpaceController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const v0, 0x1

    sput-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$2JD3Kr-LWtVJvDpjst0cS-5HQXs;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$2JD3Kr-LWtVJvDpjst0cS-5HQXs;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    .line 105
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/google/android/systemui/smartspace/ProtoStore;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/smartspace/ProtoStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "smartspace-background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "loaderThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mBackgroundHandler:Landroid/os/Handler;

    .line 112
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    .line 114
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAppContext:Landroid/content/Context;

    .line 115
    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 117
    new-instance v1, Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-direct {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceData;-><init>()V

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    .line 119
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->isSmartSpaceDisabledByExperiments()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->reloadData()V

    .line 124
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onGsaChanged()V

    .line 126
    new-instance v1, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    const-string v5, "android.intent.action.PACKAGE_DATA_CLEARED"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {v2}, Lcom/google/android/systemui/smartspace/GSAIntents;->getGsaPackageFilter([Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v2

    .line 126
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    new-instance v2, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/systemui/smartspace/SmartSpaceController$UserSwitchReceiver;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/SmartSpaceController$1;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.apps.nexuslauncher.UPDATE_SMARTSPACE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, "updateFilter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/smartspace/SmartSpaceBroadcastReceiver;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/systemui/smartspace/SmartSpaceController;

    .line 42
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onGsaChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/systemui/smartspace/SmartSpaceController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/systemui/smartspace/SmartSpaceController;
    .param p1, "x1"    # I

    .line 42
    iput p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Lcom/google/android/systemui/smartspace/SmartSpaceData;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/systemui/smartspace/SmartSpaceController;

    .line 42
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/smartspace/SmartSpaceController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/systemui/smartspace/SmartSpaceController;
    .param p1, "x1"    # Z

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onExpire(Z)V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/systemui/smartspace/SmartSpaceController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    sget-object v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->sInstance:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    if-nez v0, :cond_1

    .line 96
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "SmartSpaceController"

    const-string v1, "controller created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    new-instance v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->sInstance:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    .line 101
    :cond_1
    sget-object v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->sInstance:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    return-object v0
.end method

.method private isSmartSpaceDisabledByExperiments()Z
    .locals 7

    .line 308
    const/4 v0, 0x1

    .line 310
    .local v0, "smartSpaceEnabled":Z
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "always_on_display_constants"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Landroid/util/KeyValueListParser;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 314
    .local v2, "parser":Landroid/util/KeyValueListParser;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 315
    const-string v4, "smart_space_enabled"

    invoke-virtual {v2, v4, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 318
    goto :goto_0

    .line 316
    :catch_0
    move-exception v4

    .line 317
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "SmartSpaceController"

    const-string v6, "Bad AOD constants"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public static synthetic lambda$new$0(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 1

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->onExpire(Z)V

    .line 83
    return-void
.end method

.method public static synthetic lambda$onNewCard$1(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V
    .locals 1
    .param p1, "card"    # Lcom/google/android/systemui/smartspace/NewCardInfo;
    .param p2, "smartSpaceCard"    # Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 187
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iput-object p2, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iput-object p2, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->handleExpire()Z

    .line 193
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    .line 194
    return-void
.end method

.method public static synthetic lambda$onNewCard$2(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;)V
    .locals 4
    .param p1, "card"    # Lcom/google/android/systemui/smartspace/NewCardInfo;

    .line 180
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/smartspace/NewCardInfo;->toWrapper(Landroid/content/Context;)Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    move-result-object v0

    .line 181
    .local v0, "message":Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartspace_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->isPrimary()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/systemui/smartspace/ProtoStore;->store(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->shouldDiscard()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->isPrimary()Z

    move-result v2

    .line 184
    invoke-static {v1, v0, v2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->fromWrapper(Landroid/content/Context;Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v1

    .line 186
    .local v1, "smartSpaceCard":Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$n8s4pB_ZZhUkH9mNRMztkigI3Ag;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$n8s4pB_ZZhUkH9mNRMztkigI3Ag;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method private loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;
    .locals 4
    .param p1, "primary"    # Z

    .line 153
    new-instance v0, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    invoke-direct {v0}, Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;-><init>()V

    .line 154
    .local v0, "output":Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mStore:Lcom/google/android/systemui/smartspace/ProtoStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartspace_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/systemui/smartspace/ProtoStore;->load(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mContext:Landroid/content/Context;

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v1, v0, v2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->fromWrapper(Landroid/content/Context;Lcom/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v1

    return-object v1

    .line 157
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private onExpire(Z)V
    .locals 3
    .param p1, "forceExpire"    # Z

    .line 235
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    .line 238
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->handleExpire()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 254
    const-string v0, "SmartSpaceController"

    const-string v1, "onExpire - cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 240
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    .line 244
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_3

    .line 245
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 246
    const-string v0, "SmartSpaceController"

    const-string v1, "onExpire - sent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAppContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.systemui.smartspace.EXPIRE_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.apps.nexuslauncher"

    .line 249
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 250
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 257
    :cond_3
    :goto_1
    return-void
.end method

.method private onGsaChanged()V
    .locals 3

    .line 281
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "SmartSpaceController"

    const-string v1, "onGsaChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAppContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.systemui.smartspace.ENABLE_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.apps.nexuslauncher"

    .line 287
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 288
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mSmartSpaceEnabledBroadcastSent:Z

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListener:Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListener:Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    invoke-interface {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onGsaChanged()V

    .line 295
    :cond_2
    return-void
.end method

.method private update()V
    .locals 10

    .line 203
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 205
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "SmartSpaceController"

    const-string v1, "update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->getExpiresAtMillis()J

    move-result-wide v8

    .line 216
    .local v8, "expiresMillis":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_2

    .line 217
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    const-string v5, "SmartSpace"

    iget-object v6, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mExpireAlarmAction:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mUiHandler:Landroid/os/Handler;

    move-wide v3, v8

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mAlarmRegistered:Z

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListener:Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    if-eqz v0, :cond_4

    .line 223
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 224
    const-string v0, "SmartSpaceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify listener data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListener:Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-interface {v0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSmartSpaceUpdated(Lcom/google/android/systemui/smartspace/SmartSpaceData;)V

    .line 228
    :cond_4
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 325
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 326
    const-string v0, "SmartspaceController"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  initial broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mSmartSpaceEnabledBroadcastSent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  weather "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    const-string v0, "serialized:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  weather "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disabled by experiment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->isSmartSpaceDisabledByExperiments()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public onNewCard(Lcom/google/android/systemui/smartspace/NewCardInfo;)V
    .locals 3
    .param p1, "card"    # Lcom/google/android/systemui/smartspace/NewCardInfo;

    .line 166
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "SmartSpaceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewCard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    if-eqz p1, :cond_3

    .line 171
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->getUserId()I

    move-result v0

    iget v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    if-eq v0, v1, :cond_2

    .line 172
    sget-boolean v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "SmartSpaceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore card that belongs to another user target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_1
    return-void

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$9U6GvXj5mJZXQ9EeZasJ48wS8Es;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$9U6GvXj5mJZXQ9EeZasJ48wS8Es;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_3
    return-void
.end method

.method public reloadData()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 299
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->loadSmartSpaceData(Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 300
    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    .line 301
    return-void
.end method

.method public setHideSensitiveData(Z)V
    .locals 1
    .param p1, "hidePrivateData"    # Z

    .line 273
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListener:Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    invoke-interface {v0, p1}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSensitiveModeChanged(Z)V

    .line 274
    return-void
.end method

.method public setListener(Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    .line 265
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 266
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListener:Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    .line 267
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListener:Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mListener:Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-interface {v0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceUpdateListener;->onSmartSpaceUpdated(Lcom/google/android/systemui/smartspace/SmartSpaceData;)V

    .line 270
    :cond_0
    return-void
.end method
