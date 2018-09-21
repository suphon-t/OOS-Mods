.class Landroid/support/v7/preference/PreferenceGroupAdapter$2;
.super Landroid/support/v7/util/DiffUtil$Callback;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/preference/PreferenceGroupAdapter;->syncMyPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/PreferenceGroupAdapter;

.field final synthetic val$comparisonCallback:Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

.field final synthetic val$oldVisibleList:Ljava/util/List;

.field final synthetic val$visiblePreferenceList:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/PreferenceGroupAdapter;Ljava/util/List;Ljava/util/List;Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/preference/PreferenceGroupAdapter;

    .line 173
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$2;->this$0:Landroid/support/v7/preference/PreferenceGroupAdapter;

    iput-object p2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    iput-object p3, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    iput-object p4, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    invoke-direct {p0}, Landroid/support/v7/util/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 3
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 193
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    .line 194
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    .line 195
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;->arePreferenceContentsTheSame(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(II)Z
    .locals 3
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 186
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    .line 187
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    .line 188
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;->arePreferenceItemsTheSame(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public getNewListSize()I
    .locals 1

    .line 181
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 176
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
