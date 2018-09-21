.class Lcom/android/systemui/tuner/PluginFragment$PluginPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "PluginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/PluginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginPreference"
.end annotation


# instance fields
.field private final mHasSettings:Z

.field private final mInfo:Landroid/content/pm/PackageInfo;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 3
    .param p1, "prefContext"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/PackageInfo;

    .line 146
    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.PLUGIN_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 149
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 148
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mHasSettings:Z

    .line 150
    iput-object p2, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    .line 151
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->isPluginEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->setChecked(Z)V

    .line 153
    const v0, 0x7f0d01d7

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->setWidgetLayoutResource(I)V

    .line 154
    return-void
.end method

.method private isPluginEnabled()Z
    .locals 5

    .line 157
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 158
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v2, "componentName":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 162
    return v0

    .line 157
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$onBindViewHolder$0(Lcom/android/systemui/tuner/PluginFragment$PluginPreference;Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.PLUGIN_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 201
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 200
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 203
    .local v0, "result":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 208
    :cond_0
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/android/systemui/tuner/PluginFragment$PluginPreference;Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "package"

    iget-object v2, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 213
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 194
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 195
    const v0, 0x7f0a03a0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mHasSettings:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    .line 196
    :cond_0
    nop

    .line 195
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    const v1, 0x7f0a0112

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mHasSettings:Z

    if-eqz v2, :cond_1

    move v3, v4

    goto :goto_1

    .line 198
    :cond_1
    nop

    .line 197
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$PluginPreference$Xt_y65tw1Tc7XykRWrNNbIDklTs;

    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$PluginPreference$Xt_y65tw1Tc7XykRWrNNbIDklTs;-><init>(Lcom/android/systemui/tuner/PluginFragment$PluginPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$PluginPreference$hyhKFHxbkbEXGxqXV7_N3Il_7XE;

    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$PluginPreference$hyhKFHxbkbEXGxqXV7_N3Il_7XE;-><init>(Lcom/android/systemui/tuner/PluginFragment$PluginPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 215
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 8
    .param p1, "value"    # Z

    .line 170
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 171
    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 172
    .local v1, "desiredState":I
    :goto_0
    const/4 v2, 0x0

    .line 173
    .local v2, "shouldSendBroadcast":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 174
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v6, v6, v3

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v4, "componentName":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    if-eq v5, v1, :cond_1

    .line 178
    iget-object v5, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v1, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 180
    const/4 v2, 0x1

    .line 173
    .end local v4    # "componentName":Landroid/content/ComponentName;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 183
    .end local v3    # "i":I
    :cond_2
    if-eqz v2, :cond_4

    .line 184
    iget-object v3, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 185
    .local v3, "pkg":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.systemui.action.PLUGIN_CHANGED"

    .line 186
    const/4 v6, 0x0

    if-eqz v3, :cond_3

    const-string v7, "package"

    invoke-static {v7, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    nop

    :cond_3
    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 189
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    return v0
.end method
