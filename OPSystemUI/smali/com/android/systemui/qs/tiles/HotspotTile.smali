.class public Lcom/android/systemui/qs/tiles/HotspotTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "HotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;,
        Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;,
        Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final TETHER_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

.field private final mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private mListening:Z

.field protected final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field protected final mSignalCallback:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

.field private mVirtualSimExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.TetherSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 46
    const v0, 0x7f080265

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 51
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    .line 56
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    .line 63
    const-class v0, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    .line 64
    const-class v0, Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DataSaverController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    .line 66
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 68
    new-instance v0, Lcom/android/systemui/qs/tiles/HotspotTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/HotspotTile$1;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/HotspotTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/HotspotTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/HotspotTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;

    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/tiles/HotspotTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    return p1
.end method

.method private getSecondaryLabel(ZZZI)Ljava/lang/String;
    .locals 5
    .param p1, "isActive"    # Z
    .param p2, "isTransient"    # Z
    .param p3, "isDataSaverEnabled"    # Z
    .param p4, "numConnectedDevices"    # I

    .line 205
    if-eqz p2, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1104f8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    if-eqz p3, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1104f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :cond_1
    if-lez p4, :cond_2

    if-eqz p1, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f000e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 214
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 211
    invoke-virtual {v0, v1, p4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 3

    .line 115
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/qs/tiles/HotspotTile;->TETHER_SETTINGS:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from_quick_setting"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 222
    const/16 v0, 0x78

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1104f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    .line 124
    .local v0, "isEnabled":Z
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    .line 125
    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    return-void

    .line 129
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "virtual sim exist. ignore click."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 135
    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/systemui/qs/tiles/HotspotTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState(Ljava/lang/Object;)V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    .line 137
    return-void
.end method

.method protected handleDestroy()V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 84
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 93
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 94
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mListening:Z

    .line 95
    if-eqz p1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->addCallback(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->addCallback(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->removeCallback(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mCallbacks:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotAndDataSaverCallbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DataSaverController;->removeCallback(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/HotspotTile$HotspotSignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 110
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V
    .locals 9
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/systemui/qs/tiles/HotspotTile;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 147
    .local v0, "transientEnabling":Z
    :goto_0
    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v3, :cond_1

    .line 148
    new-instance v3, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v3}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 152
    :cond_1
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotTransient()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v2

    .line 155
    .local v3, "isTransient":Z
    :goto_2
    const-string v4, "no_config_tethering"

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/qs/tiles/HotspotTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 157
    instance-of v4, p2, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    if-eqz v4, :cond_6

    .line 158
    move-object v4, p2

    check-cast v4, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;

    .line 159
    .local v4, "info":Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;
    if-nez v0, :cond_5

    iget-boolean v5, v4, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isHotspotEnabled:Z

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    move v5, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v2

    :goto_4
    iput-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    .line 160
    iget v5, v4, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->numConnectedDevices:I

    .line 161
    .local v5, "numConnectedDevices":I
    iget-boolean v4, v4, Lcom/android/systemui/qs/tiles/HotspotTile$CallbackInfo;->isDataSaverEnabled:Z

    .line 162
    .local v4, "isDataSaverEnabled":Z
    goto :goto_7

    .line 163
    .end local v4    # "isDataSaverEnabled":Z
    .end local v5    # "numConnectedDevices":I
    :cond_6
    if-nez v0, :cond_8

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    move v4, v1

    goto :goto_6

    :cond_8
    :goto_5
    move v4, v2

    :goto_6
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    .line 164
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/HotspotController;->getNumConnectedDevices()I

    move-result v5

    .line 165
    .restart local v5    # "numConnectedDevices":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/DataSaverController;->isDataSaverEnabled()Z

    move-result v4

    .line 168
    .restart local v4    # "isDataSaverEnabled":Z
    :goto_7
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mEnabledStatic:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 169
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mContext:Landroid/content/Context;

    const v7, 0x7f1104f4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    .line 170
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mAirplaneMode:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v6}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v6

    if-eqz v6, :cond_9

    move v6, v2

    goto :goto_8

    :cond_9
    move v6, v1

    :goto_8
    iput-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    .line 171
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    .line 172
    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-nez v7, :cond_a

    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    if-nez v7, :cond_a

    move v7, v2

    goto :goto_9

    :cond_a
    move v7, v1

    :goto_9
    iput-boolean v7, v6, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 173
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    if-eqz v6, :cond_b

    .line 175
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isUST()Z

    move-result v6

    if-nez v6, :cond_b

    .line 177
    const v6, 0x7f080267

    invoke-static {v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 179
    :cond_b
    const-class v6, Landroid/widget/Switch;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 180
    iget-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->label:Ljava/lang/CharSequence;

    iput-object v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 184
    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isAirplaneMode:Z

    if-nez v6, :cond_d

    if-nez v4, :cond_d

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    if-eqz v6, :cond_c

    goto :goto_a

    :cond_c
    move v6, v1

    goto :goto_b

    :cond_d
    :goto_a
    move v6, v2

    .line 185
    .local v6, "isTileUnavailable":Z
    :goto_b
    iget-boolean v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mVirtualSimExist:Z

    if-eqz v7, :cond_e

    .line 186
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "virtual sim exist, set to unavailable."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_e
    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->value:Z

    if-nez v7, :cond_10

    iget-boolean v7, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->isTransient:Z

    if-eqz v7, :cond_f

    goto :goto_c

    :cond_f
    move v7, v1

    goto :goto_d

    :cond_10
    :goto_c
    move v7, v2

    .line 192
    .local v7, "isTileActive":Z
    :goto_d
    if-eqz v6, :cond_11

    .line 193
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->state:I

    goto :goto_e

    .line 195
    :cond_11
    if-eqz v7, :cond_12

    const/4 v2, 0x2

    nop

    :cond_12
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->state:I

    .line 198
    :goto_e
    invoke-direct {p0, v7, v3, v4, v5}, Lcom/android/systemui/qs/tiles/HotspotTile;->getSecondaryLabel(ZZZI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    .line 200
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 42
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/HotspotTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/HotspotController;->isHotspotSupported()Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;
    .locals 1

    .line 88
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/HotspotTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$AirplaneBooleanState;

    move-result-object v0

    return-object v0
.end method
