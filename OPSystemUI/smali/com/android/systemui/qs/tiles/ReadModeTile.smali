.class public Lcom/android/systemui/qs/tiles/ReadModeTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "ReadModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mIsListening:Z

.field private mModeSetting:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 7
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 46
    new-instance v6, Lcom/android/systemui/qs/tiles/ReadModeTile$1;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mContext:Landroid/content/Context;

    const-string v4, "reading_mode_status"

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tiles/ReadModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/ReadModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mModeSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 55
    new-instance v0, Lcom/android/systemui/qs/tiles/ReadModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mContext:Landroid/content/Context;

    const-string v2, "accessibility_display_inversion_enabled"

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/systemui/qs/tiles/ReadModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/ReadModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 63
    new-instance v0, Lcom/android/systemui/qs/tiles/ReadModeTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mContext:Landroid/content/Context;

    const-string v2, "accessibility_display_daltonizer_enabled"

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/android/systemui/qs/tiles/ReadModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/ReadModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/ReadModeTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/ReadModeTile;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isColorCalibrationAvailable()Z
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 111
    .local v0, "inversion":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v3}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 112
    .local v3, "daltonize":Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method private isEnabled()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mModeSetting:Lcom/android/systemui/qs/SystemSetting;

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
    .locals 4
    .param p1, "enabled"    # Z

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status_manual"

    if-eqz p1, :cond_0

    const-string v2, "force-on"

    goto :goto_0

    :cond_0
    const-string v2, "force-off"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 96
    return-void
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.OP_READING_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 149
    const/16 v0, 0x7d1

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11052a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->isColorCalibrationAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v0, 0x1

    .line 90
    .local v0, "activated":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->getMetricsCategory()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 91
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->setEnabled(Z)V

    .line 92
    return-void
.end method

.method protected handleLongClick()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->isColorCalibrationAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleLongClick()V

    .line 107
    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .line 159
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mIsListening:Z

    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mModeSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->refreshState()V

    .line 168
    :cond_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->isEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateState:state.value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 130
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f11052a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 132
    const v0, 0x7f080592

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mContext:Landroid/content/Context;

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    .line 134
    const v1, 0x7f11052c

    goto :goto_0

    .line 135
    :cond_1
    const v1, 0x7f11052b

    .line 133
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 136
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->isColorCalibrationAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    goto :goto_1

    .line 142
    :cond_2
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    nop

    :cond_3
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 145
    :goto_1
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/ReadModeTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mInversionSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mDaltonizerSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setUserId(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->refreshState()V

    .line 120
    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.read_mode.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 80
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method
