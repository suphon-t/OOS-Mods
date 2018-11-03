.class public Lcom/android/systemui/volume/VolumeDialogComponent;
.super Ljava/lang/Object;
.source "VolumeDialogComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/volume/VolumeComponent;
.implements Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;


# instance fields
.field private final mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

.field private mDialog:Lcom/android/systemui/plugins/VolumeDialog;

.field private final mSysui:Lcom/android/systemui/SystemUI;

.field private mThreekeyDialog:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

.field private final mVolumeDialogCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

.field private mVolumePolicy:Landroid/media/VolumePolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUI;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "sysui"    # Lcom/android/systemui/SystemUI;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const v1, -0x3ffffffc    # -2.000001f

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 71
    new-instance v0, Landroid/media/VolumePolicy;

    const/4 v1, 0x0

    const/16 v2, 0x190

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 211
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogComponent$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogComponent$1;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumeDialogCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSysui:Lcom/android/systemui/SystemUI;

    .line 84
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    .line 85
    const-class v0, Lcom/android/systemui/plugins/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setUserActivityListener(Lcom/android/systemui/volume/VolumeDialogControllerImpl$UserActivityListener;)V

    .line 88
    const-class v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v1, Lcom/android/systemui/plugins/VolumeDialogController;

    .line 89
    invoke-virtual {v0, v1}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    .line 90
    const-class v0, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ExtensionController;

    const-class v1, Lcom/android/systemui/plugins/VolumeDialog;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    const-class v1, Lcom/android/systemui/plugins/VolumeDialog;

    .line 91
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$ZrIXH_vbJQUohqzHD9D7gJaZLEI;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$ZrIXH_vbJQUohqzHD9D7gJaZLEI;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    .line 92
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withDefault(Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    new-instance v2, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$_YDQvDgAZa0Z1NSD02XWqisctiE;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$_YDQvDgAZa0Z1NSD02XWqisctiE;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    .line 93
    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withFeature(Ljava/lang/String;Ljava/util/function/Supplier;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$vZvGMkdhFGTZ9hLE1BnozIW6Wb0;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogComponent$vZvGMkdhFGTZ9hLE1BnozIW6Wb0;-><init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V

    .line 94
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withCallback(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogComponent;->applyConfiguration()V

    .line 113
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_volume_down_silent"

    const-string/jumbo v2, "sysui_volume_up_silent"

    const-string/jumbo v3, "sysui_do_not_disturb"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/VolumeDialogComponent;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogComponent;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogComponent;->startSettings(Landroid/content/Intent;)V

    return-void
.end method

.method private applyConfiguration()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->showDndTile(Z)V

    .line 177
    return-void
.end method

.method private createCarDefault()Lcom/android/systemui/plugins/VolumeDialog;
    .locals 2

    .line 126
    new-instance v0, Lcom/android/systemui/volume/CarVolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/CarVolumeDialogImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private createDefault()Lcom/android/systemui/plugins/VolumeDialog;
    .locals 3

    .line 118
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, "impl":Lcom/android/systemui/volume/VolumeDialogImpl;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->setStreamImportant(IZ)V

    .line 120
    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->setAutomute(Z)V

    .line 121
    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->setSilentMode(Z)V

    .line 122
    return-object v0
.end method

.method public static synthetic lambda$ZrIXH_vbJQUohqzHD9D7gJaZLEI(Lcom/android/systemui/volume/VolumeDialogComponent;)Lcom/android/systemui/plugins/VolumeDialog;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogComponent;->createDefault()Lcom/android/systemui/plugins/VolumeDialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$_YDQvDgAZa0Z1NSD02XWqisctiE(Lcom/android/systemui/volume/VolumeDialogComponent;)Lcom/android/systemui/plugins/VolumeDialog;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogComponent;->createCarDefault()Lcom/android/systemui/plugins/VolumeDialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/volume/VolumeDialogComponent;Lcom/android/systemui/plugins/VolumeDialog;)V
    .locals 3
    .param p1, "dialog"    # Lcom/android/systemui/plugins/VolumeDialog;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/plugins/VolumeDialog;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/plugins/VolumeDialog;

    invoke-interface {v0}, Lcom/android/systemui/plugins/VolumeDialog;->destroy()V

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/plugins/VolumeDialog;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mDialog:Lcom/android/systemui/plugins/VolumeDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumeDialogCallback:Lcom/android/systemui/plugins/VolumeDialog$Callback;

    const/16 v2, 0x7e4

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/plugins/VolumeDialog;->init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V

    .line 102
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportSOCThreekey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mThreekeyDialog:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mThreekeyDialog:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->destroy()V

    .line 106
    :cond_1
    new-instance v0, Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mThreekeyDialog:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mThreekeyDialog:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-virtual {v0, v2, p0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->init(ILcom/android/systemui/statusbar/policy/OPThreekeyDialog$UserActivityListener;)V

    .line 110
    :cond_2
    return-void
.end method

.method private setVolumePolicy(ZZZI)V
    .locals 2
    .param p1, "volumeDownToEnterSilent"    # Z
    .param p2, "volumeUpToExitSilent"    # Z
    .param p3, "doNotDisturbWhenSilent"    # Z
    .param p4, "vibrateToSilentDebounce"    # I

    .line 157
    new-instance v0, Landroid/media/VolumePolicy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/media/VolumePolicy;-><init>(ZZZI)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 159
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 160
    return-void
.end method

.method private startSettings(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 207
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V

    .line 209
    return-void
.end method


# virtual methods
.method public dismissNow()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->dismiss()V

    .line 189
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 194
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 204
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConfigurationChanged()V

    .line 184
    :cond_0
    return-void
.end method

.method public onThreekeyStateUserActivity()V
    .locals 0

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogComponent;->onUserActivity()V

    .line 242
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "sysui_volume_down_silent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 132
    if-eqz p2, :cond_1

    .line 133
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    move v2, v1

    goto :goto_0

    .line 133
    :cond_0
    nop

    .line 134
    :cond_1
    :goto_0
    move v0, v2

    .line 135
    .local v0, "volumeDownToEnterSilent":Z
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v1, v1, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v3, v3, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/volume/VolumeDialogComponent;->setVolumePolicy(ZZZI)V

    .line 138
    .end local v0    # "volumeDownToEnterSilent":Z
    goto :goto_3

    :cond_2
    const-string/jumbo v0, "sysui_volume_up_silent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    if-eqz p2, :cond_4

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    move v2, v1

    goto :goto_1

    .line 140
    :cond_3
    nop

    .line 141
    :cond_4
    :goto_1
    move v0, v2

    .line 142
    .local v0, "volumeUpToExitSilent":Z
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v1, v1, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v3, v3, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogComponent;->setVolumePolicy(ZZZI)V

    .line 145
    .end local v0    # "volumeUpToExitSilent":Z
    goto :goto_3

    :cond_5
    const-string/jumbo v0, "sysui_do_not_disturb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 146
    if-eqz p2, :cond_7

    .line 147
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 148
    move v2, v1

    goto :goto_2

    .line 147
    :cond_6
    nop

    .line 148
    :cond_7
    :goto_2
    move v0, v2

    .line 149
    .local v0, "doNotDisturbWhenSilent":Z
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v1, v1, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v3, v3, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/systemui/volume/VolumeDialogComponent;->setVolumePolicy(ZZZI)V

    .line 153
    .end local v0    # "doNotDisturbWhenSilent":Z
    :cond_8
    :goto_3
    return-void
.end method

.method public onUserActivity()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mSysui:Lcom/android/systemui/SystemUI;

    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 169
    .local v0, "kvm":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    .line 172
    :cond_0
    return-void
.end method

.method public register()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->register()V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->setCombinedIcon(Landroid/content/Context;Z)V

    .line 200
    return-void
.end method

.method setEnableDialogs(ZZ)V
    .locals 1
    .param p1, "volumeUi"    # Z
    .param p2, "safetyWarning"    # Z

    .line 163
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setEnableDialogs(ZZ)V

    .line 164
    return-void
.end method
