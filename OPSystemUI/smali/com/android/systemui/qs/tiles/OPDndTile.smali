.class public Lcom/android/systemui/qs/tiles/OPDndTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "OPDndTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/OPZenModeController$Callback;"
    }
.end annotation


# static fields
.field private static final TOTAL_SILENCE:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private static final ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

.field private static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private isDedEnable:Z

.field private mDndSetting:Lcom/android/systemui/qs/SystemSetting;

.field private mHandler:Landroid/os/Handler;

.field private final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private mListening:Z

.field private mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/OPDndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/OPDndTile;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    .line 51
    nop

    .line 52
    const v0, 0x7f080343

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/OPDndTile;->TOTAL_SILENCE:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 1
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 68
    nop

    .line 69
    const v0, 0x7f080342

    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mDndSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 75
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mHandler:Landroid/os/Handler;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->isDedEnable:Z

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mHandler:Landroid/os/Handler;

    .line 83
    const-class v0, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/OPZenModeController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    .line 84
    return-void
.end method

.method private isDndEnabled()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->getDndEnable()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 113
    sget-object v0, Lcom/android/systemui/qs/tiles/OPDndTile;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 154
    const/16 v0, 0x76

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1104e4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleClick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPDndTile;->isDndEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPDndTile;->isDndEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->isDedEnable:Z

    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->isDedEnable:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->setDndEnable(Z)V

    .line 121
    return-void
.end method

.method protected handleDestroy()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 89
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 0

    .line 126
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .line 168
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 169
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mListening:Z

    .line 170
    if-eqz p1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPDndTile;->refreshState()V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/OPZenModeController;->removeCallback(Ljava/lang/Object;)V

    .line 176
    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mOPZenModeController:Lcom/android/systemui/statusbar/policy/OPZenModeController;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->TAG:Ljava/lang/String;

    const-string v1, "mOPZenModeController is empty!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->isDedEnable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->isDedEnable:Z

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPDndTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 148
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateState state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/OPDndTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 108
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPDndTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onDndChanged(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/OPDndTile;->isDndEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/OPDndTile;->isDedEnable:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPDndTile;->refreshState()V

    .line 193
    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 0
    .param p1, "threeKey"    # I

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/OPDndTile;->refreshState()V

    .line 197
    return-void
.end method
