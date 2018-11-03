.class public Lcom/android/systemui/qs/tiles/OPDndCarModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "OPDndCarModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private final CAR_MODE_STATUS:Ljava/lang/String;

.field private final DEBUG:Z

.field private final ZEN_MODE_CAR:Ljava/lang/String;

.field private mCarModeDndSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mCarModeStatus:I

.field private mListening:Z

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->DEBUG:Z

    .line 52
    const-string v0, "oneplus_carmode_switch"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->CAR_MODE_STATUS:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "zen_mode_car"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->ZEN_MODE_CAR:Ljava/lang/String;

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeStatus:I

    .line 62
    new-instance v0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string v3, "oneplus_carmode_switch"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/OPDndCarModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 71
    new-instance v0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string/jumbo v3, "zen_mode_car"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/OPDndCarModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeDndSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeStatus:I

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mNotificationManager:Landroid/app/NotificationManager;

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/tiles/OPDndCarModeTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/OPDndCarModeTile;
    .param p1, "x1"    # I

    .line 39
    iput p1, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/OPDndCarModeTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/OPDndCarModeTile;

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->changeTile()Z

    move-result v0

    return v0
.end method

.method private changeTile()Z
    .locals 3

    .line 86
    iget v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeStatus:I

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mHost:Lcom/android/systemui/qs/QSHost;

    const-string v1, "opdndcarmode"

    const-string v2, "dnd"

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/qs/QSHost;->replaceTile(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->handleDestroy()V

    .line 89
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isEnabled()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getZenModeByType(I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 4

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.carmode"

    const-string v3, "com.oneplus.carmode.activity.SettingActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 147
    const/16 v0, 0x7d4

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110525

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 115
    .local v0, "val":I
    const-string v2, "OPDndCarModeTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user clicked dnd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v3, 0x0

    const-string v4, "OPDndCarModeTile"

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/app/NotificationManager;->setZenModeByType(ILandroid/net/Uri;Ljava/lang/String;I)V

    .line 117
    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeDndSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 98
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 99
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 153
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mListening:Z

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mListening:Z

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeDndSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 162
    :cond_1
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->isEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 132
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 135
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110525

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 137
    const v0, 0x7f0806f2

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mContext:Landroid/content/Context;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    .line 139
    const v1, 0x7f110527

    goto :goto_0

    .line 140
    :cond_1
    const v1, 0x7f110526

    .line 138
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 141
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 142
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    nop

    :cond_2
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 143
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 167
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    .line 168
    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 103
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
