.class public Lcom/android/systemui/tuner/DemoModeFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "DemoModeFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final STATUS_ICONS:[Ljava/lang/String;


# instance fields
.field private final mDemoModeObserver:Landroid/database/ContentObserver;

.field private mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mOnSwitch:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 42
    const-string/jumbo v0, "volume"

    const-string v1, "bluetooth"

    const-string v2, "location"

    const-string v3, "alarm"

    const-string/jumbo v4, "zen"

    const-string v5, "sync"

    const-string v6, "tty"

    const-string v7, "eri"

    const-string v8, "mute"

    const-string v9, "speakerphone"

    const-string v10, "managed_profile"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    .line 210
    new-instance v0, Lcom/android/systemui/tuner/DemoModeFragment$1;

    new-instance v1, Landroid/os/Handler;

    .line 211
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tuner/DemoModeFragment$1;-><init>(Lcom/android/systemui/tuner/DemoModeFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeObserver:Landroid/database/ContentObserver;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/tuner/DemoModeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/tuner/DemoModeFragment;

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeEnabled()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/tuner/DemoModeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/tuner/DemoModeFragment;

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeOn()V

    return-void
.end method

.method private setGlobal(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    return-void
.end method

.method private startDemoMode()V
    .locals 9

    .line 151
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.demo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "enter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 156
    const-string v1, "command"

    const-string v2, "clock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "1010"

    .line 160
    .local v1, "demoTime":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "versionParts":[Ljava/lang/String;
    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 162
    .local v5, "majorVersion":I
    const-string v6, "%02d00"

    new-array v7, v2, [Ljava/lang/Object;

    rem-int/lit8 v8, v5, 0x18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 164
    .end local v4    # "versionParts":[Ljava/lang/String;
    .end local v5    # "majorVersion":I
    goto :goto_0

    .line 163
    :catch_0
    move-exception v4

    .line 165
    :goto_0
    const-string v4, "hhmm"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    const-string v4, "command"

    const-string v5, "network"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string/jumbo v4, "wifi"

    const-string v5, "show"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v4, "mobile"

    const-string v5, "show"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v4, "sims"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v4, "nosim"

    const-string v5, "false"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v4, "level"

    const-string v5, "4"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v4, "datatype"

    const-string v5, "lte"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    const-string v4, "fully"

    const-string v5, "true"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    const-string v4, "command"

    const-string v5, "battery"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v4, "level"

    const-string v5, "100"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v4, "plugged"

    const-string v5, "false"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 186
    const-string v4, "command"

    const-string v5, "status"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    sget-object v4, Lcom/android/systemui/tuner/DemoModeFragment;->STATUS_ICONS:[Ljava/lang/String;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    .line 188
    .local v6, "icon":Ljava/lang/String;
    const-string v7, "hide"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    .end local v6    # "icon":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    const-string v3, "command"

    const-string v4, "notifications"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string/jumbo v3, "visible"

    const-string v4, "false"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    const-string v3, "sysui_tuner_demo_on"

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/tuner/DemoModeFragment;->setGlobal(Ljava/lang/String;I)V

    .line 197
    return-void
.end method

.method private stopDemoMode()V
    .locals 3

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.demo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "exit"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    const-string v1, "sysui_tuner_demo_on"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/tuner/DemoModeFragment;->setGlobal(Ljava/lang/String;I)V

    .line 204
    return-void
.end method

.method private updateDemoModeEnabled()V
    .locals 3

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sysui_demo_allowed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    .line 116
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 118
    return-void
.end method

.method private updateDemoModeOn()V
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sysui_tuner_demo_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    .line 123
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 124
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v1, v0}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 63
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f110259

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 64
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    new-instance v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {v1, v0}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 66
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f110598

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 68
    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 71
    .local v1, "screen":Landroid/support/v7/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 72
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/DemoModeFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeEnabled()V

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->updateDemoModeOn()V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 78
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    const-string v4, "sysui_demo_allowed"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 80
    const-string v4, "sysui_tuner_demo_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/tuner/DemoModeFragment;->setHasOptionsMenu(Z)V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mDemoModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 110
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroy()V

    .line 111
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 87
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 92
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 103
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 105
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 128
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 129
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mEnabledSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_3

    .line 130
    if-nez v0, :cond_1

    .line 132
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->stopDemoMode()V

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xeb

    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 136
    const-string v3, "sysui_demo_allowed"

    if-eqz v0, :cond_2

    move v2, v1

    nop

    :cond_2
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/tuner/DemoModeFragment;->setGlobal(Ljava/lang/String;I)V

    goto :goto_1

    .line 137
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/tuner/DemoModeFragment;->mOnSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v3, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xec

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 139
    if-eqz v0, :cond_4

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->startDemoMode()V

    goto :goto_1

    .line 142
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->stopDemoMode()V

    .line 147
    :goto_1
    return v1

    .line 145
    :cond_5
    return v2
.end method

.method public onResume()V
    .locals 3

    .line 97
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/tuner/DemoModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xe5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 99
    return-void
.end method
