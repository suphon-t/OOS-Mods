.class public Lcom/android/settingslib/drawer/TileUtils;
.super Ljava/lang/Object;
.source "TileUtils.java"


# static fields
.field private static final CATEGORY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 605
    new-instance v0, Lcom/android/settingslib/drawer/TileUtils$1;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/TileUtils$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private static createCategory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryKey"    # Ljava/lang/String;
    .param p2, "categoryDefinedInManifest"    # Z

    .line 281
    new-instance v0, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>()V

    .line 282
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iput-object p1, v0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    .line 283
    if-nez p2, :cond_0

    .line 284
    return-object v0

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 287
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 288
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 289
    const/4 v3, 0x0

    return-object v3

    .line 291
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 292
    .local v5, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v6, v5, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v6, :cond_2

    .line 294
    goto :goto_0

    .line 296
    :cond_2
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 297
    const-string v6, "com.android.settings"

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 298
    iget v6, v5, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    iput v6, v0, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    .line 300
    .end local v5    # "resolved":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 302
    :cond_4
    return-object v0
.end method

.method private static getBundleFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/os/Bundle;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 555
    .local p2, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/IContentProvider;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 556
    return-object v1

    .line 558
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 559
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/settingslib/drawer/TileUtils;->getMethodFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "method":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 561
    return-object v1

    .line 563
    :cond_1
    invoke-static {p0, v0, p2}, Lcom/android/settingslib/drawer/TileUtils;->getProviderFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/content/IContentProvider;

    move-result-object v3

    .line 564
    .local v3, "provider":Landroid/content/IContentProvider;
    if-nez v3, :cond_2

    .line 565
    return-object v1

    .line 568
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2, p1, v1}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 569
    :catch_0
    move-exception v4

    .line 570
    .local v4, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public static getCategories(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "categoryDefinedInManifest"    # Z
    .param p3, "extraAction"    # Ljava/lang/String;
    .param p4, "settingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .line 218
    .local p1, "cache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    move-object/from16 v9, p0

    move/from16 v10, p2

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 219
    .local v11, "startTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v13, v2

    .line 221
    .local v13, "setup":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 222
    .local v14, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    const-string/jumbo v0, "user"

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/UserManager;

    .line 223
    .local v15, "userManager":Landroid/os/UserManager;
    invoke-virtual {v15}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/UserHandle;

    .line 225
    .local v7, "user":Landroid/os/UserHandle;
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 227
    const-string v2, "com.android.settings.action.SETTINGS"

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, v9

    move-object v1, v7

    move-object/from16 v3, p1

    move-object v5, v14

    move-object/from16 v16, v7

    move-object/from16 v7, p4

    .line 227
    .end local v7    # "user":Landroid/os/UserHandle;
    .local v16, "user":Landroid/os/UserHandle;
    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 229
    const-string v2, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    const-string v4, "com.android.settings.category.wireless"

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, v16

    move-object/from16 v17, v8

    move-object/from16 v8, p4

    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    .line 231
    const-string v2, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    const-string v4, "com.android.settings.category.device"

    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    goto :goto_1

    .line 234
    .end local v16    # "user":Landroid/os/UserHandle;
    .restart local v7    # "user":Landroid/os/UserHandle;
    :cond_1
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .line 234
    .end local v7    # "user":Landroid/os/UserHandle;
    .restart local v16    # "user":Landroid/os/UserHandle;
    :goto_1
    if-eqz v13, :cond_2

    .line 235
    const-string v2, "com.android.settings.action.EXTRA_SETTINGS"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v3, p1

    move-object v5, v14

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 237
    if-nez v10, :cond_2

    .line 238
    const-string v2, "com.android.settings.action.IA_SETTINGS"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v3, p1

    move-object v5, v14

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 240
    if-eqz p3, :cond_2

    .line 241
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object v5, v14

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 246
    .end local v16    # "user":Landroid/os/UserHandle;
    :cond_2
    nop

    .line 223
    move-object/from16 v8, v17

    goto :goto_0

    .line 248
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v0, "categoryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 250
    .local v2, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v3, v2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 251
    .local v3, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v3, :cond_5

    .line 252
    iget-object v4, v2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-static {v9, v4, v10}, Lcom/android/settingslib/drawer/TileUtils;->createCategory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v3

    .line 253
    if-nez v3, :cond_4

    .line 254
    const-string v4, "TileUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find category "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    goto :goto_2

    .line 257
    :cond_4
    iget-object v4, v3, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_5
    invoke-virtual {v3, v2}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    .line 260
    .end local v2    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v3    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    goto :goto_2

    .line 261
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 262
    .local v1, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 263
    .restart local v3    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    invoke-virtual {v3}, Lcom/android/settingslib/drawer/DashboardCategory;->sortTiles()V

    .line 264
    .end local v3    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    goto :goto_3

    .line 265
    :cond_7
    sget-object v2, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 268
    return-object v1
.end method

.method static getMethodFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .line 595
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 596
    return-object v0

    .line 598
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 599
    .local v1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 602
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 600
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getProviderFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/content/IContentProvider;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;)",
            "Landroid/content/IContentProvider;"
        }
    .end annotation

    .line 580
    .local p2, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/IContentProvider;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 581
    return-object v0

    .line 583
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "authority":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    return-object v0

    .line 587
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 588
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IContentProvider;

    return-object v0
.end method

.method private static getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 575
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "action"    # Ljava/lang/String;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "requireSettings"    # Z
    .param p7, "settingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 309
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    .line 311
    return-void
.end method

.method private static getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "action"    # Ljava/lang/String;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "requireSettings"    # Z
    .param p7, "usePriority"    # Z
    .param p8, "settingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 317
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    new-instance v0, Landroid/content/Intent;

    move-object v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p6, :cond_0

    .line 319
    move-object/from16 v11, p8

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 321
    :cond_0
    move-object/from16 v11, p8

    :goto_0
    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p7

    invoke-static/range {v2 .. v10}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZZ)V

    .line 323
    return-void
.end method

.method public static getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZZ)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "usePriority"    # Z
    .param p7, "checkCategory"    # Z
    .param p8, "forceTintExternalIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 329
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZZZ)V

    .line 331
    return-void
.end method

.method public static getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZZZ)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "usePriority"    # Z
    .param p7, "checkCategory"    # Z
    .param p8, "forceTintExternalIcon"    # Z
    .param p9, "shouldUpdateTiles"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;ZZZZ)V"
        }
    .end annotation

    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 339
    .local v11, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 339
    const/16 v5, 0x80

    invoke-virtual {v11, v1, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 341
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v13, v4

    .line 342
    .local v13, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/IContentProvider;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 343
    .local v15, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v4, v15, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v4, :cond_0

    .line 345
    goto :goto_0

    .line 347
    :cond_0
    iget-object v10, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 348
    .local v10, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v9, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 349
    .local v9, "metaData":Landroid/os/Bundle;
    move-object/from16 v4, p4

    .line 352
    .local v4, "categoryKey":Ljava/lang/String;
    if-eqz p7, :cond_3

    if-eqz v9, :cond_1

    const-string v5, "com.android.settings.category"

    invoke-virtual {v9, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    if-nez v4, :cond_3

    .line 354
    const-string v5, "TileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " missing metadata "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    if-nez v9, :cond_2

    const-string v7, ""

    goto :goto_1

    :cond_2
    const-string v7, "com.android.settings.category"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 354
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    goto :goto_0

    .line 359
    :cond_3
    const-string v5, "com.android.settings.category"

    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 362
    .end local v4    # "categoryKey":Ljava/lang/String;
    .local v8, "categoryKey":Ljava/lang/String;
    new-instance v4, Landroid/util/Pair;

    iget-object v5, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v4

    .line 364
    .local v7, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    .line 365
    .local v4, "tile":Lcom/android/settingslib/drawer/Tile;
    if-nez v4, :cond_5

    .line 366
    new-instance v5, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {v5}, Lcom/android/settingslib/drawer/Tile;-><init>()V

    move-object v6, v5

    .line 367
    .end local v4    # "tile":Lcom/android/settingslib/drawer/Tile;
    .local v6, "tile":Lcom/android/settingslib/drawer/Tile;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v6, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 369
    iput-object v8, v6, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    .line 370
    if-eqz p6, :cond_4

    iget v4, v15, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    iput v4, v6, Lcom/android/settingslib/drawer/Tile;->priority:I

    .line 371
    iget-object v4, v10, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iput-object v4, v6, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 372
    iget-object v5, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v4, p0

    move-object/from16 v16, v5

    move-object v5, v6

    move-object v1, v6

    move-object v6, v10

    .end local v6    # "tile":Lcom/android/settingslib/drawer/Tile;
    .local v1, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v17, v12

    move-object v12, v7

    move-object/from16 v7, v16

    .end local v7    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v12, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v17, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v16, v8

    move-object v8, v11

    .end local v8    # "categoryKey":Ljava/lang/String;
    .local v16, "categoryKey":Ljava/lang/String;
    move-object/from16 v18, v9

    move-object v9, v13

    .end local v9    # "metaData":Landroid/os/Bundle;
    .local v18, "metaData":Landroid/os/Bundle;
    move-object/from16 v19, v10

    move/from16 v10, p8

    .end local v10    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .local v19, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-static/range {v4 .. v10}, Lcom/android/settingslib/drawer/TileUtils;->updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Ljava/util/Map;Z)Z

    .line 375
    invoke-interface {v2, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    move-object/from16 v5, p0

    move-object v4, v1

    goto :goto_3

    .line 376
    .end local v1    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v16    # "categoryKey":Ljava/lang/String;
    .end local v17    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "metaData":Landroid/os/Bundle;
    .end local v19    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "tile":Lcom/android/settingslib/drawer/Tile;
    .restart local v7    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "categoryKey":Ljava/lang/String;
    .restart local v9    # "metaData":Landroid/os/Bundle;
    .restart local v10    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5
    move-object/from16 v16, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v17, v12

    move-object v12, v7

    .end local v7    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "categoryKey":Ljava/lang/String;
    .end local v9    # "metaData":Landroid/os/Bundle;
    .end local v10    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "categoryKey":Ljava/lang/String;
    .restart local v17    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v18    # "metaData":Landroid/os/Bundle;
    .restart local v19    # "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz p9, :cond_6

    .line 377
    move-object/from16 v5, p0

    invoke-static {v5, v13, v4}, Lcom/android/settingslib/drawer/TileUtils;->updateSummaryAndTitle(Landroid/content/Context;Ljava/util/Map;Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_3

    .line 380
    :cond_6
    move-object/from16 v5, p0

    :goto_3
    iget-object v6, v4, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 381
    iget-object v6, v4, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_7
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 384
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    .end local v4    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v12    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "resolved":Landroid/content/pm/ResolveInfo;
    .end local v16    # "categoryKey":Ljava/lang/String;
    .end local v18    # "metaData":Landroid/os/Bundle;
    .end local v19    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_8
    nop

    .line 342
    move-object/from16 v12, v17

    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 387
    .end local v17    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_9
    move-object/from16 v5, p0

    move-object/from16 v17, v12

    .end local v12    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v17    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-void
.end method

.method private static updateSummaryAndTitle(Landroid/content/Context;Ljava/util/Map;Lcom/android/settingslib/drawer/Tile;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ")V"
        }
    .end annotation

    .line 491
    .local p1, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/IContentProvider;>;"
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.summary_uri"

    .line 492
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.summary_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "uriString":Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/drawer/TileUtils;->getBundleFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v1

    .line 498
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "com.android.settings.summary"

    invoke-static {v1, v2}, Lcom/android/settingslib/drawer/TileUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "overrideSummary":Ljava/lang/String;
    const-string v3, "com.android.settings.title"

    invoke-static {v1, v3}, Lcom/android/settingslib/drawer/TileUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "overrideTitle":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 501
    iget-object v4, p2, Lcom/android/settingslib/drawer/Tile;->remoteViews:Landroid/widget/RemoteViews;

    const v5, 0x1020010

    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 504
    :cond_1
    if-eqz v3, :cond_2

    .line 505
    iget-object v4, p2, Lcom/android/settingslib/drawer/Tile;->remoteViews:Landroid/widget/RemoteViews;

    const v5, 0x1020016

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 507
    :cond_2
    return-void

    .line 493
    .end local v0    # "uriString":Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "overrideSummary":Ljava/lang/String;
    .end local v3    # "overrideTitle":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method private static updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Ljava/util/Map;Z)Z
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "pm"    # Landroid/content/pm/PackageManager;
    .param p6, "forceTintExternalIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/drawer/Tile;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;Z)Z"
        }
    .end annotation

    .local p5, "providerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/IContentProvider;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_f

    .line 393
    const/4 v6, 0x0

    .line 394
    .local v6, "forceTintIcon":Z
    const/4 v7, 0x0

    .line 395
    .local v7, "icon":I
    const/4 v8, 0x0

    .line 396
    .local v8, "iconFromUri":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 397
    .local v9, "title":Ljava/lang/CharSequence;
    const/4 v10, 0x0

    .line 398
    .local v10, "summary":Ljava/lang/String;
    const/4 v11, 0x0

    .line 399
    .local v11, "keyHint":Ljava/lang/String;
    nop

    .line 403
    .local v5, "isIconTintable":Z
    :try_start_0
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 404
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    .line 406
    .local v12, "metaData":Landroid/os/Bundle;
    if-eqz p6, :cond_0

    .line 407
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v13, :cond_0

    .line 408
    const/4 v5, 0x1

    .line 409
    const/4 v6, 0x1

    goto :goto_1

    .line 451
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v12    # "metaData":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object/from16 v14, p0

    move v15, v5

    .end local v5    # "isIconTintable":Z
    .local v15, "isIconTintable":Z
    :goto_0
    move-object/from16 v5, p5

    goto/16 :goto_a

    .line 412
    .end local v15    # "isIconTintable":Z
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v5    # "isIconTintable":Z
    .restart local v12    # "metaData":Landroid/os/Bundle;
    :cond_0
    :goto_1
    if-eqz v0, :cond_b

    if-eqz v12, :cond_b

    .line 413
    :try_start_2
    const-string v13, "com.android.settings.icon"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v13, :cond_1

    .line 414
    :try_start_3
    const-string v13, "com.android.settings.icon"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move v7, v13

    .line 416
    :cond_1
    :try_start_4
    const-string v13, "com.android.settings.icon_tintable"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    if-eqz v13, :cond_3

    .line 417
    if-eqz v6, :cond_2

    .line 418
    :try_start_5
    const-string v13, "TileUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    move v15, v5

    :try_start_6
    const-string v5, "Ignoring icon tintable for "

    .end local v5    # "isIconTintable":Z
    .restart local v15    # "isIconTintable":Z
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 451
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v12    # "metaData":Landroid/os/Bundle;
    .end local v15    # "isIconTintable":Z
    .restart local v5    # "isIconTintable":Z
    :catch_1
    move-exception v0

    move v15, v5

    move-object/from16 v14, p0

    goto/16 :goto_8

    .line 420
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v12    # "metaData":Landroid/os/Bundle;
    :cond_2
    move v15, v5

    .end local v5    # "isIconTintable":Z
    .restart local v15    # "isIconTintable":Z
    const-string v5, "com.android.settings.icon_tintable"

    .line 421
    invoke-virtual {v12, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v15    # "isIconTintable":Z
    .restart local v5    # "isIconTintable":Z
    goto :goto_3

    .line 451
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v5    # "isIconTintable":Z
    .end local v12    # "metaData":Landroid/os/Bundle;
    .restart local v15    # "isIconTintable":Z
    :catch_2
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_0

    .line 424
    .end local v15    # "isIconTintable":Z
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v5    # "isIconTintable":Z
    .restart local v12    # "metaData":Landroid/os/Bundle;
    :cond_3
    move v15, v5

    .end local v5    # "isIconTintable":Z
    .restart local v15    # "isIconTintable":Z
    :goto_2
    move v5, v15

    .end local v15    # "isIconTintable":Z
    .restart local v5    # "isIconTintable":Z
    :goto_3
    :try_start_7
    const-string v13, "com.android.settings.title"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    if-eqz v13, :cond_5

    .line 425
    :try_start_8
    const-string v13, "com.android.settings.title"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Ljava/lang/Integer;

    if-eqz v13, :cond_4

    .line 426
    const-string v13, "com.android.settings.title"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    goto :goto_4

    .line 428
    :cond_4
    const-string v13, "com.android.settings.title"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v9, v13

    .line 431
    :cond_5
    :goto_4
    :try_start_9
    const-string v13, "com.android.settings.summary"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_4

    if-eqz v13, :cond_7

    .line 432
    :try_start_a
    const-string v13, "com.android.settings.summary"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Ljava/lang/Integer;

    if-eqz v13, :cond_6

    .line 433
    const-string v13, "com.android.settings.summary"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    goto :goto_5

    .line 435
    :cond_6
    const-string v13, "com.android.settings.summary"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_0

    move-object v10, v13

    .line 438
    :cond_7
    :goto_5
    :try_start_b
    const-string v13, "com.android.settings.keyhint"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_4

    if-eqz v13, :cond_9

    .line 439
    :try_start_c
    const-string v13, "com.android.settings.keyhint"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Ljava/lang/Integer;

    if-eqz v13, :cond_8

    .line 440
    const-string v13, "com.android.settings.keyhint"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    goto :goto_6

    .line 442
    :cond_8
    const-string v13, "com.android.settings.keyhint"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_0

    move-object v11, v13

    .line 445
    :cond_9
    :goto_6
    :try_start_d
    const-string v13, "com.android.settings.custom_view"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 446
    const-string v13, "com.android.settings.custom_view"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 447
    .local v13, "layoutId":I
    new-instance v14, Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .end local v0    # "res":Landroid/content/res/Resources;
    .local v16, "res":Landroid/content/res/Resources;
    invoke-direct {v14, v0, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v14, v1, Lcom/android/settingslib/drawer/Tile;->remoteViews:Landroid/widget/RemoteViews;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_4

    .line 448
    move-object/from16 v14, p0

    move/from16 v17, v5

    move-object/from16 v5, p5

    :try_start_e
    invoke-static {v14, v5, v1}, Lcom/android/settingslib/drawer/TileUtils;->updateSummaryAndTitle(Landroid/content/Context;Ljava/util/Map;Lcom/android/settingslib/drawer/Tile;)V
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_3

    .end local v5    # "isIconTintable":Z
    .end local v12    # "metaData":Landroid/os/Bundle;
    .end local v13    # "layoutId":I
    .end local v16    # "res":Landroid/content/res/Resources;
    .local v17, "isIconTintable":Z
    goto :goto_7

    .line 451
    :catch_3
    move-exception v0

    move/from16 v15, v17

    goto :goto_a

    .line 453
    .end local v17    # "isIconTintable":Z
    .restart local v5    # "isIconTintable":Z
    :cond_a
    move-object/from16 v14, p0

    move/from16 v17, v5

    move-object/from16 v5, p5

    .end local v5    # "isIconTintable":Z
    .restart local v17    # "isIconTintable":Z
    :goto_7
    move/from16 v15, v17

    goto :goto_9

    .line 451
    .end local v17    # "isIconTintable":Z
    .restart local v5    # "isIconTintable":Z
    :catch_4
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v17, v5

    move-object/from16 v5, p5

    move/from16 v15, v17

    .end local v5    # "isIconTintable":Z
    .restart local v17    # "isIconTintable":Z
    goto :goto_a

    .end local v17    # "isIconTintable":Z
    .restart local v5    # "isIconTintable":Z
    :catch_5
    move-exception v0

    move-object/from16 v14, p0

    move v15, v5

    :goto_8
    move-object/from16 v5, p5

    .end local v5    # "isIconTintable":Z
    .restart local v15    # "isIconTintable":Z
    goto :goto_a

    .line 453
    .end local v15    # "isIconTintable":Z
    .restart local v5    # "isIconTintable":Z
    :cond_b
    move-object/from16 v14, p0

    move v15, v5

    move-object/from16 v5, p5

    .end local v5    # "isIconTintable":Z
    .restart local v15    # "isIconTintable":Z
    :goto_9
    goto :goto_a

    .line 451
    .end local v15    # "isIconTintable":Z
    .restart local v5    # "isIconTintable":Z
    :catch_6
    move-exception v0

    move-object/from16 v14, p0

    move v12, v5

    move-object/from16 v5, p5

    move v15, v12

    .line 457
    .end local v5    # "isIconTintable":Z
    .local v0, "isIconTintable":Z
    :goto_a
    move v0, v15

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 458
    invoke-virtual {v2, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 462
    :cond_c
    if-nez v7, :cond_d

    .line 465
    iget-object v12, v1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v13, "com.android.settings.icon_uri"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 466
    iget v7, v2, Landroid/content/pm/ActivityInfo;->icon:I

    .line 469
    :cond_d
    if-eqz v7, :cond_e

    .line 470
    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v12, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    iput-object v12, v1, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    .line 474
    :cond_e
    iput-object v9, v1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    .line 475
    iput-object v10, v1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    .line 477
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 480
    iput-object v11, v1, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    .line 481
    iput-boolean v0, v1, Lcom/android/settingslib/drawer/Tile;->isIconTintable:Z

    .line 483
    const/4 v3, 0x1

    return v3

    .line 486
    .end local v0    # "isIconTintable":Z
    .end local v6    # "forceTintIcon":Z
    .end local v7    # "icon":I
    .end local v8    # "iconFromUri":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "title":Ljava/lang/CharSequence;
    .end local v10    # "summary":Ljava/lang/String;
    .end local v11    # "keyHint":Ljava/lang/String;
    :cond_f
    move-object/from16 v14, p0

    move v0, v5

    move-object/from16 v5, p5

    return v0
.end method
