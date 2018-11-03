.class public Lcom/android/systemui/tuner/PluginFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "PluginFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/PluginFragment$PluginPreference;
    }
.end annotation


# instance fields
.field private mPluginPrefs:Lcom/android/systemui/plugins/PluginPrefs;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    .line 133
    new-instance v0, Lcom/android/systemui/tuner/PluginFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/PluginFragment$1;-><init>(Lcom/android/systemui/tuner/PluginFragment;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/PluginFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/tuner/PluginFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/tuner/PluginFragment;

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/tuner/PluginFragment;->loadPrefs()V

    return-void
.end method

.method public static synthetic lambda$loadPrefs$0(Lcom/android/systemui/tuner/PluginFragment;Landroid/util/ArrayMap;Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Landroid/content/pm/PackageInfo;)V
    .locals 3
    .param p1, "plugins"    # Landroid/util/ArrayMap;
    .param p2, "prefContext"    # Landroid/content/Context;
    .param p3, "screen"    # Landroid/support/v7/preference/PreferenceScreen;
    .param p4, "app"    # Landroid/content/pm/PackageInfo;

    .line 101
    iget-object v0, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    new-instance v0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;

    invoke-direct {v0, p2, p4}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V

    .line 103
    .local v0, "pref":Landroid/support/v14/preference/SwitchPreference;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plugins: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-direct {p0, v2}, Lcom/android/systemui/tuner/PluginFragment;->toString(Landroid/util/ArraySet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p3, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 105
    return-void
.end method

.method private loadPrefs()V
    .locals 13

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 77
    .local v0, "screen":Landroid/support/v7/preference/PreferenceScreen;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 79
    .local v1, "prefContext":Landroid/content/Context;
    new-instance v2, Lcom/android/systemui/plugins/PluginPrefs;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/plugins/PluginPrefs;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/tuner/PluginFragment;->mPluginPrefs:Lcom/android/systemui/plugins/PluginPrefs;

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 82
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/android/systemui/tuner/PluginFragment;->mPluginPrefs:Lcom/android/systemui/plugins/PluginPrefs;

    invoke-virtual {v3}, Lcom/android/systemui/plugins/PluginPrefs;->getPluginList()Ljava/util/Set;

    move-result-object v3

    .line 83
    .local v3, "pluginActions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 84
    .local v4, "plugins":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 85
    .local v6, "action":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/systemui/tuner/PluginFragment;->toName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "name":Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x200

    invoke-virtual {v2, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 88
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 89
    .local v10, "info":Landroid/content/pm/ResolveInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 90
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 91
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v4, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_0
    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    invoke-virtual {v12, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v10    # "info":Landroid/content/pm/ResolveInfo;
    .end local v11    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 95
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    goto :goto_0

    .line 97
    :cond_2
    const-string v5, "com.android.systemui.permission.PLUGIN"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x204

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 100
    .local v5, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v6, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$-gWfSjbBwCV0_TE_pdcQVko9wUY;

    invoke-direct {v6, p0, v4, v1, v0}, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$-gWfSjbBwCV0_TE_pdcQVko9wUY;-><init>(Lcom/android/systemui/tuner/PluginFragment;Landroid/util/ArrayMap;Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-interface {v5, v6}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/PluginFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 107
    return-void
.end method

.method private toName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "action"    # Ljava/lang/String;

    .line 121
    const-string v0, "com.android.systemui.action.PLUGIN_"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 124
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 125
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .end local v6    # "s":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(Landroid/util/ArraySet;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 110
    .local p1, "plugins":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .end local v2    # "string":Ljava/lang/String;
    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tuner/PluginFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tuner/PluginFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/tuner/PluginFragment;->loadPrefs()V

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 66
    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroy()V

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/tuner/PluginFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    return-void
.end method
