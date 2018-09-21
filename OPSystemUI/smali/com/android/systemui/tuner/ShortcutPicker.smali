.class public Lcom/android/systemui/tuner/ShortcutPicker;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "ShortcutPicker.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;,
        Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;
    }
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field private mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

.field private final mSelectablePreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/tuner/SelectablePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mSelectablePreferences:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic lambda$onCreatePreferences$0(Lcom/android/systemui/tuner/ShortcutPicker;Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/support/v7/preference/PreferenceScreen;Lcom/android/systemui/tuner/ShortcutParser$Shortcut;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/LauncherActivityInfo;
    .param p3, "screen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p4, "shortcut"    # Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    .line 78
    new-instance v0, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;

    .line 79
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, p1, p4, v1}, Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;-><init>(Landroid/content/Context;Lcom/android/systemui/tuner/ShortcutParser$Shortcut;Ljava/lang/CharSequence;)V

    .line 80
    .local v0, "shortcutPref":Lcom/android/systemui/tuner/ShortcutPicker$ShortcutPreference;
    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mSelectablePreferences:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p3, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 82
    return-void
.end method

.method public static synthetic lambda$onCreatePreferences$1(Lcom/android/systemui/tuner/ShortcutPicker;Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceCategory;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p3, "otherApps"    # Landroid/support/v7/preference/PreferenceCategory;
    .param p4, "info"    # Landroid/content/pm/LauncherActivityInfo;

    .line 68
    :try_start_0
    new-instance v0, Lcom/android/systemui/tuner/ShortcutParser;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    invoke-virtual {p4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/tuner/ShortcutParser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-virtual {v0}, Lcom/android/systemui/tuner/ShortcutParser;->getShortcuts()Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/tuner/ShortcutParser$Shortcut;>;"
    new-instance v1, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;

    invoke-direct {v1, p1, p4}, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)V

    .line 71
    .local v1, "appPreference":Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;
    iget-object v2, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mSelectablePreferences:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 77
    new-instance v2, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$KhrCRM8tSZs7Fj3ZW16pUQ2_D54;

    invoke-direct {v2, p0, p1, p4, p2}, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$KhrCRM8tSZs7Fj3ZW16pUQ2_D54;-><init>(Lcom/android/systemui/tuner/ShortcutPicker;Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 83
    return-void

    .line 85
    :cond_0
    invoke-virtual {p3, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "shortcuts":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/tuner/ShortcutParser$Shortcut;>;"
    .end local v1    # "appPreference":Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 88
    :goto_0
    return-void
.end method

.method static synthetic lambda$onTuningChanged$2(Ljava/lang/String;Lcom/android/systemui/tuner/SelectablePreference;)V
    .locals 1
    .param p0, "v"    # Ljava/lang/String;
    .param p1, "p"    # Lcom/android/systemui/tuner/SelectablePreference;

    .line 131
    invoke-virtual {p1}, Lcom/android/systemui/tuner/SelectablePreference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/tuner/SelectablePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 114
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    const-string v0, "sysui_keyguard_left"

    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1103a9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1103aa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 120
    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 50
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 51
    .local v1, "screen":Landroid/support/v7/preference/PreferenceScreen;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 52
    new-instance v3, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v3, v0}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 53
    .local v3, "otherApps":Landroid/support/v7/preference/PreferenceCategory;
    const v4, 0x7f110638

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 55
    new-instance v4, Lcom/android/systemui/tuner/SelectablePreference;

    invoke-direct {v4, v0}, Lcom/android/systemui/tuner/SelectablePreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

    .line 56
    iget-object v4, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mSelectablePreferences:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v4, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

    const v5, 0x7f1103a8

    invoke-virtual {v4, v5}, Lcom/android/systemui/tuner/SelectablePreference;->setTitle(I)V

    .line 58
    iget-object v4, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

    const v5, 0x7f08036e

    invoke-virtual {v4, v5}, Lcom/android/systemui/tuner/SelectablePreference;->setIcon(I)V

    .line 59
    iget-object v4, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mNonePreference:Lcom/android/systemui/tuner/SelectablePreference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/content/pm/LauncherApps;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    .line 62
    .local v4, "apps":Landroid/content/pm/LauncherApps;
    nop

    .line 63
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 62
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    .line 65
    .local v5, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 66
    new-instance v6, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$kjubRY0RERFi5q4FUGuCDMvPtEc;

    invoke-direct {v6, p0, v0, v1, v3}, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$kjubRY0RERFi5q4FUGuCDMvPtEc;-><init>(Lcom/android/systemui/tuner/ShortcutPicker;Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceCategory;)V

    invoke-interface {v5, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 90
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 91
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 92
    invoke-virtual {v3, v6}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v8

    .line 93
    .local v8, "p":Landroid/support/v7/preference/Preference;
    invoke-virtual {v3, v8}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 94
    const v9, 0x7fffffff

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 95
    invoke-virtual {v1, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 91
    .end local v8    # "p":Landroid/support/v7/preference/Preference;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 99
    .end local v7    # "i":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/ShortcutPicker;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "android.support.v7.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mKey:Ljava/lang/String;

    .line 101
    const-class v7, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/tuner/TunerService;

    iput-object v7, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 102
    iget-object v7, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mKey:Ljava/lang/String;

    aput-object v8, v2, v6

    invoke-virtual {v7, p0, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 124
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroy()V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 126
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .line 130
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 131
    .local v0, "v":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutPicker;->mSelectablePreferences:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$i1fIZ726bN-ySXwulncRN12T1Qg;

    invoke-direct {v2, v0}, Lcom/android/systemui/tuner/-$$Lambda$ShortcutPicker$i1fIZ726bN-ySXwulncRN12T1Qg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 132
    return-void
.end method
