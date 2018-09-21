.class public Lcom/android/systemui/qs/tiles/NightDisplayTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "NightDisplayTile.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/internal/app/ColorDisplayController$Callback;"
    }
.end annotation


# instance fields
.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mIsListening:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 59
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 60
    return-void
.end method

.method private getSecondaryLabel(Z)Ljava/lang/String;
    .locals 8
    .param p1, "isNightLightActivated"    # Z

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 136
    :pswitch_0
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110508

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110507

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 148
    :pswitch_1
    if-eqz p1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    .line 150
    .local v0, "toggleTime":Ljava/time/LocalTime;
    const v1, 0x7f110518

    .local v1, "toggleTimeStringRes":I
    goto :goto_1

    .line 152
    .end local v0    # "toggleTime":Ljava/time/LocalTime;
    .end local v1    # "toggleTimeStringRes":I
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    .line 153
    .restart local v0    # "toggleTime":Ljava/time/LocalTime;
    const v1, 0x7f110506

    .line 163
    .restart local v1    # "toggleTimeStringRes":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 164
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    .line 167
    .local v3, "toggleTimeFormat":Ljava/time/format/DateTimeFormatter;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0, v3}, Ljava/time/LocalTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NIGHT_DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 177
    const/16 v0, 0x1eb

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110451

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .line 75
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "night_display_forced_auto_mode_available"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 77
    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoModeRaw()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setAutoMode(I)Z

    .line 79
    const-string v0, "NightDisplayTile"

    const-string v2, "Enrolled in forced night display auto mode"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/2addr v0, v1

    .line 84
    .local v0, "activated":Z
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 85
    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 192
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->refreshState()V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 199
    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 112
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 115
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const v1, 0x7f110451

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 119
    const v0, 0x7f08031a

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 121
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 122
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    nop

    :cond_1
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 123
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->getSecondaryLabel(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    .line 124
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 95
    :cond_0
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 100
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    .line 101
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 69
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->refreshState()V

    .line 212
    return-void
.end method

.method public populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "logMaker"    # Landroid/metrics/LogMaker;

    .line 182
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getAutoModeRaw()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x51f

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method
