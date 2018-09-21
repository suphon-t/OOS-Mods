.class public Lcom/android/systemui/qs/tiles/GameModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "GameModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIsListening:Z

.field private mLastUpdateNavBarTime:J

.field private mModeSetting:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 8
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mHandler:Landroid/os/Handler;

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mLastUpdateNavBarTime:J

    .line 50
    new-instance v0, Lcom/android/systemui/qs/tiles/GameModeTile$1;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mHandler:Landroid/os/Handler;

    const-string v6, "game_mode_status"

    const/4 v7, 0x1

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/qs/tiles/GameModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/GameModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mModeSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/GameModeTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/GameModeTile;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/GameModeTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/GameModeTile;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 80
    .local v0, "time":J
    iget-wide v2, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mLastUpdateNavBarTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2bc

    sub-long/2addr v4, v2

    .line 82
    .local v4, "retryDelay":J
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    .line 83
    const-wide/16 v4, 0x0

    .line 86
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/qs/tiles/GameModeTile$2;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/qs/tiles/GameModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/GameModeTile;Z)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mLastUpdateNavBarTime:J

    .line 95
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.OP_GAMING_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 119
    const/16 v0, 0x7d0

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1104f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    .line 72
    .local v0, "activated":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/GameModeTile;->getMetricsCategory()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 73
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/GameModeTile;->setEnabled(Z)V

    .line 74
    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mIsListening:Z

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 131
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/GameModeTile;->refreshState()V

    .line 134
    :cond_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/GameModeTile;->isEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 104
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 107
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 108
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1104f0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 109
    const v0, 0x7f080346

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile;->mContext:Landroid/content/Context;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    .line 111
    const v1, 0x7f1104f2

    goto :goto_0

    .line 112
    :cond_1
    const v1, 0x7f1104f1

    .line 110
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 113
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 114
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    nop

    :cond_2
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 115
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/GameModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 66
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/GameModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
