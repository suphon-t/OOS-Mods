.class public Landroid/support/v7/preference/PreferenceGroupAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/preference/PreferenceViewHolder;",
        ">;",
        "Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mPreferenceGroupController:Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

.field private mPreferenceLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceListInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method public constructor <init>(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/PreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;Landroid/os/Handler;)V

    .line 123
    return-void
.end method

.method private constructor <init>(Landroid/support/v7/preference/PreferenceGroup;Landroid/os/Handler;)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 125
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 74
    new-instance v0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v0}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 80
    new-instance v0, Landroid/support/v7/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/PreferenceGroupAdapter$1;-><init>(Landroid/support/v7/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 126
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 127
    iput-object p2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

    invoke-direct {v0, p1, p0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;-><init>(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroupController:Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

    .line 131
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    .line 137
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    instance-of v0, v0, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->shouldUseGeneratedIds()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->setHasStableIds(Z)V

    goto :goto_0

    .line 140
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->setHasStableIds(Z)V

    .line 143
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    .line 144
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/preference/PreferenceGroupAdapter;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/preference/PreferenceGroupAdapter;

    .line 46
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v0

    .line 246
    .local v0, "pl":Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    return-void
.end method

.method static createInstanceWithCustomHandler(Landroid/support/v7/preference/PreferenceGroup;Landroid/os/Handler;)Landroid/support/v7/preference/PreferenceGroupAdapter;
    .locals 1
    .param p0, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 149
    new-instance v0, Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;-><init>(Landroid/support/v7/preference/PreferenceGroup;Landroid/os/Handler;)V

    return-object v0
.end method

.method private createPreferenceLayout(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "in"    # Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 237
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v0}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    .line 238
    .local v0, "pl":Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$102(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$202(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 240
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$302(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 241
    return-object v0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 5
    .param p2, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 210
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceGroup;->sortPreferences()V

    .line 212
    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 213
    .local v0, "groupSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 214
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 216
    .local v2, "preference":Landroid/support/v7/preference/Preference;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-direct {p0, v2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->addPreferenceClassName(Landroid/support/v7/preference/Preference;)V

    .line 220
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 221
    move-object v3, v2

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    .line 222
    .local v3, "preferenceAsGroup":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    invoke-direct {p0, p1, v3}, Landroid/support/v7/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    .line 227
    .end local v3    # "preferenceAsGroup":Landroid/support/v7/preference/PreferenceGroup;
    :cond_0
    invoke-virtual {v2, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeInternalListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 213
    .end local v2    # "preference":Landroid/support/v7/preference/Preference;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private syncMyPreferences()V
    .locals 6

    .line 153
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 156
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeInternalListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 157
    .end local v1    # "preference":Landroid/support/v7/preference/Preference;
    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .local v0, "fullPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V

    .line 161
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroupController:Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 162
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->createVisiblePreferencesList(Landroid/support/v7/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v1

    .line 164
    .local v1, "visiblePreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 165
    .local v2, "oldVisibleList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 166
    iput-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    .line 168
    iget-object v3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v3

    .line 169
    .local v3, "preferenceManager":Landroid/support/v7/preference/PreferenceManager;
    if-eqz v3, :cond_1

    .line 170
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceComparisonCallback()Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 171
    nop

    .line 172
    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceManager;->getPreferenceComparisonCallback()Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    move-result-object v4

    .line 173
    .local v4, "comparisonCallback":Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;
    new-instance v5, Landroid/support/v7/preference/PreferenceGroupAdapter$2;

    invoke-direct {v5, p0, v2, v1, v4}, Landroid/support/v7/preference/PreferenceGroupAdapter$2;-><init>(Landroid/support/v7/preference/PreferenceGroupAdapter;Ljava/util/List;Ljava/util/List;Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;)V

    invoke-static {v5}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v5

    .line 199
    .local v5, "result":Landroid/support/v7/util/DiffUtil$DiffResult;
    invoke-virtual {v5, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 200
    .end local v4    # "comparisonCallback":Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;
    .end local v5    # "result":Landroid/support/v7/util/DiffUtil$DiffResult;
    goto :goto_1

    .line 201
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 204
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/Preference;

    .line 205
    .local v5, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->clearWasDetached()V

    .line 206
    .end local v5    # "preference":Landroid/support/v7/preference/Preference;
    goto :goto_2

    .line 207
    :cond_2
    return-void
.end method


# virtual methods
.method public getItem(I)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "position"    # I

    .line 257
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    return-object v0

    .line 257
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 263
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceGroupAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const-wide/16 v0, -0x1

    return-wide v0

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .line 327
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 329
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 331
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 332
    .local v1, "viewType":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 333
    return v1

    .line 335
    :cond_0
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 336
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    new-instance v3, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    iget-object v4, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v3, v4}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    return v1
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;
    .param p2, "position"    # I

    .line 374
    invoke-virtual {p0, p2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 375
    .local v0, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 376
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 45
    check-cast p1, Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/preference/PreferenceViewHolder;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 343
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 344
    .local v0, "pl":Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 345
    .local v1, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 346
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/support/v7/preference/R$styleable;->BackgroundStyle:[I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 347
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Landroid/support/v7/preference/R$styleable;->BackgroundStyle_android_selectableItemBackground:I

    .line 348
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 349
    .local v3, "background":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_0

    .line 350
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1080062

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 353
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 355
    invoke-static {v0}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$200(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 356
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1

    .line 357
    invoke-static {v4, v3}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 360
    :cond_1
    const v5, 0x1020018

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 361
    .local v5, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v5, :cond_3

    .line 362
    invoke-static {v0}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$300(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 363
    invoke-static {v0}, Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$300(Landroid/support/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v6

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 365
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 369
    :cond_3
    :goto_0
    new-instance v6, Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-direct {v6, v4}, Landroid/support/v7/preference/PreferenceViewHolder;-><init>(Landroid/view/View;)V

    return-object v6
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/preference/PreferenceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 271
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 273
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 275
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 277
    :cond_0
    return-void
.end method

.method public onPreferenceHierarchyChange(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 281
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method

.method public onPreferenceVisibilityChange(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 287
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceGroupController:Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->onPreferenceVisibilityChange(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    return-void

    .line 293
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    const/4 v0, -0x1

    .line 298
    .local v0, "previousVisibleIndex":I
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    .line 299
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    goto :goto_1

    .line 302
    :cond_2
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 303
    add-int/lit8 v0, v0, 0x1

    .line 305
    .end local v2    # "pref":Landroid/support/v7/preference/Preference;
    :cond_3
    goto :goto_0

    .line 307
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 309
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->notifyItemInserted(I)V

    .line 310
    .end local v0    # "previousVisibleIndex":I
    goto :goto_4

    .line 314
    :cond_5
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 315
    .local v0, "listSize":I
    const/4 v1, 0x0

    .local v1, "removalIndex":I
    :goto_2
    if-ge v1, v0, :cond_7

    .line 316
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 317
    goto :goto_3

    .line 315
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 320
    :cond_7
    :goto_3
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 321
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->notifyItemRemoved(I)V

    .line 323
    .end local v0    # "listSize":I
    .end local v1    # "removalIndex":I
    :goto_4
    return-void
.end method
