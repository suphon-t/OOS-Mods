.class public Lcom/android/settingslib/applications/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field private static sInstantAppDataProvider:Lcom/android/settingslib/applications/instantapps/InstantAppDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingslib/applications/AppUtils;->sInstantAppDataProvider:Lcom/android/settingslib/applications/instantapps/InstantAppDataProvider;

    return-void
.end method

.method public static isInstant(Landroid/content/pm/ApplicationInfo;)Z
    .locals 8
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 85
    sget-object v0, Lcom/android/settingslib/applications/AppUtils;->sInstantAppDataProvider:Lcom/android/settingslib/applications/instantapps/InstantAppDataProvider;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/android/settingslib/applications/AppUtils;->sInstantAppDataProvider:Lcom/android/settingslib/applications/instantapps/InstantAppDataProvider;

    invoke-interface {v0, p0}, Lcom/android/settingslib/applications/instantapps/InstantAppDataProvider;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    return v1

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    return v1

    .line 96
    :cond_1
    const-string v0, "settingsdebug.instant.packages"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "propVal":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 98
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "searchTerms":[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 100
    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 101
    .local v6, "term":Ljava/lang/String;
    iget-object v7, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 102
    return v1

    .line 100
    .end local v6    # "term":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "searchTerms":[Ljava/lang/String;
    :cond_3
    return v2
.end method
