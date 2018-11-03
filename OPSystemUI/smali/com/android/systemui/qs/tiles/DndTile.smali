.class public Lcom/android/systemui/qs/tiles/DndTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "DndTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

.field private static final ZEN_SETTINGS:Landroid/content/Intent;


# instance fields
.field private final CAR_MODE_STATUS:Ljava/lang/String;

.field private final DEBUG:Z

.field private mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mCarModeStatus:I

.field private final mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

.field private mListening:Z

.field private final mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mShowingDetail:Z

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private final mZenModePanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_PRIORITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSHost;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->DEBUG:Z

    .line 96
    const-string v1, "oneplus_carmode_switch"

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->CAR_MODE_STATUS:Ljava/lang/String;

    .line 98
    iput v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mCarModeStatus:I

    .line 357
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DndTile$3;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 369
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DndTile$4;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 385
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DndTile$5;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/DndTile$6;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenModePanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 102
    const-class v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 103
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/DndTile;Lcom/android/systemui/qs/tiles/DndTile$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.systemui.dndtile.SET_VISIBLE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiverRegistered:Z

    .line 107
    new-instance v0, Lcom/android/systemui/qs/tiles/DndTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    const-string v3, "oneplus_carmode_switch"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/DndTile$1;-><init>(Lcom/android/systemui/qs/tiles/DndTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mCarModeStatus:I

    .line 118
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/content/Intent;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/volume/ZenModePanel$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenModePanelCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/DndTile;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;
    .param p1, "x1"    # I

    .line 76
    iput p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mCarModeStatus:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/qs/tiles/DndTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;
    .param p1, "x1"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mShowingDetail:Z

    return p1
.end method

.method static synthetic access$2400()Landroid/content/Intent;
    .locals 1

    .line 76
    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/DndTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/DndTile;->changeTile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/DndTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/DndTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/DndTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->isShowingDetail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/DndTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->isShowingDetail()Z

    move-result v0

    return v0
.end method

.method private changeTile()Z
    .locals 4

    .line 122
    iget v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mCarModeStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mHost:Lcom/android/systemui/qs/QSHost;

    const-string v2, "dnd"

    const-string v3, "opdndcarmode"

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/qs/QSHost;->replaceTile(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->handleDestroy()V

    .line 126
    return v1

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCombinedIcon(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 156
    const-string v0, "DndTileCombinedIcon"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVisible(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 148
    const-string v0, "DndTileVisible"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$showDetail$0(Landroid/app/Dialog;)V
    .locals 3
    .param p0, "mDialog"    # Landroid/app/Dialog;

    .line 218
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 220
    instance-of v0, p0, Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 221
    move-object v0, p0

    check-cast v0, Landroid/app/AlertDialog;

    .line 222
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    .line 223
    .local v1, "color":I
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 224
    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 227
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "color":I
    :cond_0
    return-void
.end method

.method public static synthetic lambda$showDetail$1(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 5

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 207
    const v0, 0x7f12013b

    goto :goto_0

    .line 208
    :cond_0
    const v0, 0x7f12013a

    .line 209
    .local v0, "theme":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V

    .line 211
    new-instance v2, Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settingslib/notification/EnableZenModeDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/settingslib/notification/EnableZenModeDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 212
    .local v2, "mDialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 214
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;Z)V

    .line 215
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    .line 216
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;)V

    .line 217
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/qs/tiles/-$$Lambda$DndTile$h-lFpQiq6o9qG86m-y4CxMaeI_o;

    invoke-direct {v3, v2}, Lcom/android/systemui/qs/tiles/-$$Lambda$DndTile$h-lFpQiq6o9qG86m-y4CxMaeI_o;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-void
.end method

.method public static setCombinedIcon(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "combined"    # Z

    .line 152
    const-string v0, "DndTileCombinedIcon"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 153
    return-void
.end method

.method public static setVisible(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "visible"    # Z

    .line 144
    const-string v0, "DndTileVisible"

    invoke-static {p0, v0, p1}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 145
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1100c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 172
    sget-object v0, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 324
    const/16 v0, 0x76

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1104ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/DndTile;->showDetail(Z)V

    .line 183
    :goto_0
    return-void
.end method

.method protected handleDestroy()V
    .locals 3

    .line 133
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 134
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiverRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mReceiverRegistered:Z

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 141
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->isVolumeRestricted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->collapsePanels()V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v3, 0x10401ed

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 253
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    new-instance v2, Lcom/android/systemui/qs/tiles/DndTile$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/DndTile$2;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->showDetail(Z)V

    .line 269
    :goto_0
    return-void
.end method

.method public handleSetListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 338
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 339
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mListening:Z

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, v1}, Lcom/android/systemui/Prefs;->registerListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 344
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mCarModeSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    goto :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->removeCallback(Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-static {v0, v1}, Lcom/android/systemui/Prefs;->unregisterListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 350
    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 8
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 278
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    .line 279
    .local v0, "zen":I
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 280
    .local v3, "newValue":Z
    :goto_1
    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v4, v3, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 281
    .local v4, "valueChanged":Z
    :goto_2
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    if-nez v5, :cond_3

    new-instance v5, Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    invoke-direct {v5}, Lcom/android/systemui/plugins/qs/QSTile$SlashState;-><init>()V

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    .line 282
    :cond_3
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    .line 283
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 284
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    iput v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 285
    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->slash:Lcom/android/systemui/plugins/qs/QSTile$SlashState;

    iget-boolean v6, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/2addr v6, v2

    iput-boolean v6, v5, Lcom/android/systemui/plugins/qs/QSTile$SlashState;->isSlashed:Z

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 287
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    move v6, v2

    goto :goto_4

    :cond_5
    move v6, v1

    :goto_4
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 288
    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v7

    .line 287
    invoke-static {v5, v6, v7, v1}, Landroid/service/notification/ZenModeConfig;->getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    .line 289
    const v5, 0x7f080582

    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 290
    const-string v5, "no_adjust_volume"

    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/qs/tiles/DndTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 291
    const v5, 0x7f1100c1

    packed-switch v0, :pswitch_data_0

    .line 310
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 304
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    .line 305
    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v7, 0x7f1100c2

    .line 306
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 308
    goto :goto_5

    .line 298
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    .line 299
    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    const v7, 0x7f1100c5

    .line 300
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 302
    goto :goto_5

    .line 293
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 296
    nop

    .line 314
    :goto_5
    if-eqz v4, :cond_6

    .line 315
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tiles/DndTile;->fireToggleStateChanged(Z)V

    .line 317
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1100dd

    new-array v2, v2, [Ljava/lang/Object;

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v2, v1

    .line 317
    invoke-virtual {v5, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 319
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 320
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/DndTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->isVisible(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    .line 167
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DndTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public showDetail(Z)V
    .locals 7
    .param p1, "show"    # Z

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_duration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 189
    .local v0, "zenDuration":I
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "show_zen_upgrade_notification"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 191
    .local v1, "showOnboarding":Z
    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 193
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "show_zen_upgrade_notification"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    invoke-interface {v5, v3, v4, v6}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 198
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.ZEN_MODE_ONBOARDING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v3, "intent":Landroid/content/Intent;
    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    const-class v4, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v4, v3, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 201
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 202
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 237
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mContext:Landroid/content/Context;

    .line 238
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 237
    invoke-static {v2, v0, v4, v3}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 239
    .local v2, "conditionId":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    invoke-interface {v4, v3, v2, v5}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 239
    .end local v2    # "conditionId":Landroid/net/Uri;
    goto :goto_1

    .line 234
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DndTile;->TAG:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 235
    goto :goto_1

    .line 204
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DndTile;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/qs/tiles/-$$Lambda$DndTile$fMf3Tdb9veQ9DG26bABcK78yOSM;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$DndTile$fMf3Tdb9veQ9DG26bABcK78yOSM;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    nop

    .line 243
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
