.class public Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "ZenModeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConditions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/net/Uri;",
            "Landroid/service/notification/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mContext:Landroid/content/Context;

.field private final mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const-string v0, "ZenModeController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConditions:Ljava/util/LinkedHashMap;

    .line 230
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "zen_mode"

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 80
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "zen_mode_config_etag"

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 86
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mModeSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateZenMode(I)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfigSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->updateZenModeConfig()V

    .line 92
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 93
    new-instance v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;-><init>(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->register()V

    .line 95
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->startTracking()V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p1, "x1"    # I

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireNextAlarmChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireEffectsSuppressorChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    .line 51
    iget v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;
    .param p1, "x1"    # Z

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireZenAvailableChanged(Z)V

    return-void
.end method

.method private fireEffectsSuppressorChanged()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$SV0AVEr3ZD6I5F0ZOAtC6EOyn-k;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$SV0AVEr3ZD6I5F0ZOAtC6EOyn-k;

    invoke-static {v0, v1}, Lcom/android/systemui/util/OPUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 194
    return-void
.end method

.method private fireManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .locals 2
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$8iaDxlkHjmysoUP7KwjUaBzkBiQ;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$8iaDxlkHjmysoUP7KwjUaBzkBiQ;-><init>(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/OPUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 206
    return-void
.end method

.method private fireNextAlarmChanged()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$6_S_aAoRd9fsiJr9D0TIwCJGb6M;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$6_S_aAoRd9fsiJr9D0TIwCJGb6M;

    invoke-static {v0, v1}, Lcom/android/systemui/util/OPUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 190
    return-void
.end method

.method private fireZenAvailableChanged(Z)V
    .locals 2
    .param p1, "available"    # Z

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$SZ6Og1sK4NAner-jv0COJMr2bCU;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$SZ6Og1sK4NAner-jv0COJMr2bCU;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/OPUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 202
    return-void
.end method

.method private fireZenChanged(I)V
    .locals 2
    .param p1, "zen"    # I

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$d6ICAgvR9KT8NKs4p-zRwBgYI2g;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$d6ICAgvR9KT8NKs4p-zRwBgYI2g;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/OPUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 198
    return-void
.end method

.method static synthetic lambda$fireConfigChanged$5(Landroid/service/notification/ZenModeConfig;Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 0
    .param p0, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 210
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onConfigChanged(Landroid/service/notification/ZenModeConfig;)V

    return-void
.end method

.method static synthetic lambda$fireEffectsSuppressorChanged$1(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 0
    .param p0, "c"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 193
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onEffectsSupressorChanged()V

    return-void
.end method

.method static synthetic lambda$fireManualRuleChanged$4(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 0
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 205
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    return-void
.end method

.method static synthetic lambda$fireNextAlarmChanged$0(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 0
    .param p0, "c"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 189
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onNextAlarmChanged()V

    return-void
.end method

.method static synthetic lambda$fireZenAvailableChanged$3(ZLcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 0
    .param p0, "available"    # Z
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 201
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenAvailableChanged(Z)V

    return-void
.end method

.method static synthetic lambda$fireZenChanged$2(ILcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 0
    .param p0, "zen"    # I
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 197
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;->onZenChanged(I)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 116
    if-nez p1, :cond_0

    .line 117
    const-string v0, "ZenModeController"

    const-string v1, "Attempted to add a null callback."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method

.method public areNotificationsHiddenInShade()Z
    .locals 2

    .line 107
    iget v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 111
    :cond_1
    return v1
.end method

.method protected fireConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 2
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$NTRmeN-9LsZ7CNQt3AAPKduQbCg;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$NTRmeN-9LsZ7CNQt3AAPKduQbCg;-><init>(Landroid/service/notification/ZenModeConfig;)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/OPUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 211
    return-void
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method public getManualRule()Landroid/service/notification/ZenModeConfig$ZenRule;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    :goto_0
    return-object v0
.end method

.method public getNextAlarm()J
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mAlarmManager:Landroid/app/AlarmManager;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    .line 156
    .local v0, "info":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public getZen()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    return v0
.end method

.method public isVolumeRestricted()Z
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_adjust_volume"

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isZenAvailable()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->isUserSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onUserSwitched(I)V
    .locals 8
    .param p1, "userId"    # I

    .line 161
    iput p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    .line 162
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mUserId:I

    invoke-direct {v4, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mRegistered:Z

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mSetupObserver:Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl$SetupObserver;->register()V

    .line 170
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method

.method public setZen(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "zen"    # I
    .param p2, "conditionId"    # Landroid/net/Uri;
    .param p3, "reason"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method protected updateZenMode(I)V
    .locals 0
    .param p1, "mode"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 215
    iput p1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    .line 216
    return-void
.end method

.method protected updateZenModeConfig()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 221
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 223
    .local v1, "oldRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireConfigChanged(Landroid/service/notification/ZenModeConfig;)V

    .line 225
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    nop

    .line 226
    .local v2, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_2
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 227
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->fireManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 228
    return-void
.end method
