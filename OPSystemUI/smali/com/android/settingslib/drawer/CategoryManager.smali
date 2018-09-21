.class public Lcom/android/settingslib/drawer/CategoryManager;
.super Ljava/lang/Object;
.source "CategoryManager.java"


# static fields
.field private static sInstance:Lcom/android/settingslib/drawer/CategoryManager;


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mCategoryByKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraAction:Ljava/lang/String;

.field private final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private final mTileByComponentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    .line 69
    iput-object p2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mExtraAction:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/settingslib/drawer/CategoryManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settingslib/drawer/CategoryManager;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/CategoryManager;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/CategoryManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/android/settingslib/drawer/CategoryManager;->sInstance:Lcom/android/settingslib/drawer/CategoryManager;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/android/settingslib/drawer/CategoryManager;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/drawer/CategoryManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settingslib/drawer/CategoryManager;->sInstance:Lcom/android/settingslib/drawer/CategoryManager;

    .line 61
    :cond_0
    sget-object v0, Lcom/android/settingslib/drawer/CategoryManager;->sInstance:Lcom/android/settingslib/drawer/CategoryManager;

    return-object v0
.end method

.method private declared-synchronized tryInitCategories(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceClearCache"    # Z
    .param p3, "settingPkg"    # Ljava/lang/String;

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    if-nez v0, :cond_2

    .line 123
    if-eqz p2, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mExtraAction:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, p3}, Lcom/android/settingslib/drawer/TileUtils;->getCategories(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    .line 129
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 130
    .local v1, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .end local v1    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mTileByComponentCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/drawer/CategoryManager;->backwardCompatCleanupForCategory(Ljava/util/Map;Ljava/util/Map;)V

    .line 133
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/drawer/CategoryManager;->sortCategories(Landroid/content/Context;Ljava/util/Map;)V

    .line 134
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategoryByKeyMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/drawer/CategoryManager;->filterDuplicateTiles(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_2
    monitor-exit p0

    return-void

    .line 121
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "forceClearCache":Z
    .end local p3    # "settingPkg":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/drawer/CategoryManager;
    throw p1
.end method


# virtual methods
.method declared-synchronized backwardCompatCleanupForCategory(Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .local p1, "tileByComponentCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p2, "categoryByKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    monitor-enter p0

    .line 147
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v0, "packageToTileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 149
    .local v2, "tileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 150
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 151
    .local v4, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    if-nez v4, :cond_0

    .line 152
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 153
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v2    # "tileEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    goto :goto_0

    .line 158
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 161
    .local v3, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    const/4 v4, 0x0

    .line 162
    .local v4, "useNewKey":Z
    const/4 v5, 0x0

    .line 163
    .local v5, "useOldKey":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/drawer/Tile;

    .line 164
    .local v7, "tile":Lcom/android/settingslib/drawer/Tile;
    sget-object v8, Lcom/android/settingslib/drawer/CategoryKey;->KEY_COMPAT_MAP:Ljava/util/Map;

    iget-object v9, v7, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 165
    const/4 v5, 0x1

    .line 170
    .end local v7    # "tile":Lcom/android/settingslib/drawer/Tile;
    goto :goto_2

    .line 167
    .restart local v7    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_2
    const/4 v4, 0x1

    .line 168
    nop

    .line 172
    .end local v7    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_3
    if-eqz v5, :cond_5

    if-nez v4, :cond_5

    .line 173
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/drawer/Tile;

    .line 174
    .restart local v7    # "tile":Lcom/android/settingslib/drawer/Tile;
    sget-object v8, Lcom/android/settingslib/drawer/CategoryKey;->KEY_COMPAT_MAP:Ljava/util/Map;

    iget-object v9, v7, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 175
    .local v8, "newCategoryKey":Ljava/lang/String;
    iput-object v8, v7, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    .line 177
    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 178
    .local v9, "newCategory":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v9, :cond_4

    .line 179
    new-instance v10, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v10}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>()V

    move-object v9, v10

    .line 180
    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_4
    invoke-virtual {v9, v7}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .end local v7    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v8    # "newCategoryKey":Ljava/lang/String;
    .end local v9    # "newCategory":Lcom/android/settingslib/drawer/DashboardCategory;
    goto :goto_3

    .line 185
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;>;"
    .end local v3    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    .end local v4    # "useNewKey":Z
    .end local v5    # "useOldKey":Z
    :cond_5
    goto :goto_1

    .line 186
    :cond_6
    monitor-exit p0

    return-void

    .line 146
    .end local v0    # "packageToTileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;>;"
    .end local p1    # "tileByComponentCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .end local p2    # "categoryByKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/drawer/CategoryManager;
    throw p1
.end method

.method declared-synchronized filterDuplicateTiles(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .local p1, "categoryByKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    monitor-enter p0

    .line 209
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 210
    .local v1, "categoryEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 211
    .local v2, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v3

    .line 212
    .local v3, "count":I
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 213
    .local v4, "components":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_2

    .line 214
    invoke-virtual {v2, v5}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v6

    .line 215
    .local v6, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v7, v6, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v7, :cond_0

    .line 216
    goto :goto_2

    .line 218
    :cond_0
    iget-object v7, v6, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 219
    .local v7, "tileComponent":Landroid/content/ComponentName;
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 220
    invoke-virtual {v2, v5}, Lcom/android/settingslib/drawer/DashboardCategory;->removeTile(I)V

    goto :goto_2

    .line 222
    :cond_1
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .end local v6    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v7    # "tileComponent":Landroid/content/ComponentName;
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 225
    .end local v1    # "categoryEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .end local v2    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v3    # "count":I
    .end local v4    # "components":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v5    # "i":I
    :cond_2
    goto :goto_0

    .line 226
    :cond_3
    monitor-exit p0

    return-void

    .line 208
    .end local p1    # "categoryByKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/drawer/CategoryManager;
    throw p1
.end method

.method public declared-synchronized reloadAllCategories(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingPkg"    # Ljava/lang/String;

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 95
    .local v0, "forceClearCache":Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    .line 96
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settingslib/drawer/CategoryManager;->tryInitCategories(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 92
    .end local v0    # "forceClearCache":Z
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "settingPkg":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/drawer/CategoryManager;
    throw p1
.end method

.method declared-synchronized sortCategories(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .local p2, "categoryByKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    monitor-enter p0

    .line 198
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 199
    .local v1, "categoryEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->sortTiles(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v1    # "categoryEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    goto :goto_0

    .line 201
    :cond_0
    monitor-exit p0

    return-void

    .line 197
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "categoryByKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/drawer/CategoryManager;
    throw p1
.end method

.method public declared-synchronized updateCategoryFromBlacklist(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .local p1, "tileBlacklist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    if-nez v0, :cond_0

    .line 101
    const-string v0, "CategoryManager"

    const-string v1, "Category is null, skipping blacklist update"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 104
    iget-object v2, p0, Lcom/android/settingslib/drawer/CategoryManager;->mCategories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 105
    .local v2, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    move v3, v0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 106
    invoke-virtual {v2, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v4

    .line 107
    .local v4, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v5, v4, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    add-int/lit8 v5, v3, -0x1

    .local v5, "j":I
    invoke-virtual {v2, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->removeTile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .end local v3    # "j":I
    .end local v4    # "tile":Lcom/android/settingslib/drawer/Tile;
    move v3, v5

    .end local v5    # "j":I
    .restart local v3    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 103
    .end local v2    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "i":I
    :cond_3
    monitor-exit p0

    return-void

    .line 99
    .end local p1    # "tileBlacklist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/drawer/CategoryManager;
    throw p1
.end method
