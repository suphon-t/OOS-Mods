.class final Landroid/support/v7/preference/CollapsiblePreferenceGroupController;
.super Ljava/lang/Object;
.source "CollapsiblePreferenceGroupController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasExpandablePreference:Z

.field private final mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/PreferenceGroupAdapter;)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "preferenceGroupAdapter"    # Landroid/support/v7/preference/PreferenceGroupAdapter;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    .line 41
    iput-object p2, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;

    .line 42
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/preference/CollapsiblePreferenceGroupController;)Landroid/support/v7/preference/PreferenceGroupAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

    .line 28
    iget-object v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;

    return-object v0
.end method

.method private createExpandButton(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
    .locals 4
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceGroup;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;)",
            "Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;"
        }
    .end annotation

    .line 136
    .local p2, "collapsedPreferences":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    new-instance v0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;

    iget-object v1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getId()J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 138
    .local v0, "preference":Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
    new-instance v1, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;-><init>(Landroid/support/v7/preference/CollapsiblePreferenceGroupController;Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 146
    return-object v0
.end method

.method private createInnerVisiblePreferencesList(Landroid/support/v7/preference/PreferenceGroup;)Ljava/util/List;
    .locals 12
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "visiblePreferenceCount":I
    nop

    .line 59
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 60
    .local v2, "hasExpandablePreference":Z
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v3, "visiblePreferences":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v4, "collapsedPreferences":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    .line 64
    .local v5, "groupSize":I
    nop

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_b

    .line 65
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 67
    .local v6, "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v7

    if-nez v7, :cond_1

    .line 68
    goto :goto_8

    .line 71
    :cond_1
    if-eqz v2, :cond_3

    .line 72
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v7

    if-ge v1, v7, :cond_2

    goto :goto_2

    .line 75
    :cond_2
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 73
    :cond_3
    :goto_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :goto_3
    instance-of v7, v6, Landroid/support/v7/preference/PreferenceGroup;

    if-nez v7, :cond_4

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 81
    goto :goto_8

    .line 84
    :cond_4
    move-object v7, v6

    check-cast v7, Landroid/support/v7/preference/PreferenceGroup;

    .line 85
    .local v7, "innerGroup":Landroid/support/v7/preference/PreferenceGroup;
    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v8

    if-nez v8, :cond_5

    .line 86
    goto :goto_8

    .line 90
    :cond_5
    invoke-direct {p0, v7}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->createInnerVisiblePreferencesList(Landroid/support/v7/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v8

    .line 91
    .local v8, "innerList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    if-eqz v2, :cond_7

    iget-boolean v9, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    if-nez v9, :cond_6

    goto :goto_4

    .line 92
    :cond_6
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Nested expand buttons are not supported!"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 95
    :cond_7
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/Preference;

    .line 96
    .local v10, "inner":Landroid/support/v7/preference/Preference;
    if-eqz v2, :cond_9

    .line 97
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v11

    if-ge v1, v11, :cond_8

    goto :goto_6

    .line 100
    :cond_8
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 98
    :cond_9
    :goto_6
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 103
    .end local v10    # "inner":Landroid/support/v7/preference/Preference;
    goto :goto_5

    .line 64
    .end local v6    # "preference":Landroid/support/v7/preference/Preference;
    .end local v7    # "innerGroup":Landroid/support/v7/preference/PreferenceGroup;
    .end local v8    # "innerList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/preference/Preference;>;"
    :cond_a
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    .end local v0    # "i":I
    :cond_b
    if-eqz v2, :cond_c

    .line 109
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v0

    if-le v1, v0, :cond_c

    .line 110
    invoke-direct {p0, p1, v4}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->createExpandButton(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;

    move-result-object v0

    .line 111
    .local v0, "expandButton":Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v0    # "expandButton":Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
    :cond_c
    iget-boolean v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    or-int/2addr v0, v2

    iput-boolean v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    .line 114
    return-object v3
.end method


# virtual methods
.method public createVisiblePreferencesList(Landroid/support/v7/preference/PreferenceGroup;)Ljava/util/List;
    .locals 1
    .param p1, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->createInnerVisiblePreferencesList(Landroid/support/v7/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceVisibilityChange(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 124
    iget-boolean v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroid/support/v7/preference/Preference;)V

    .line 129
    const/4 v0, 0x1

    return v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
