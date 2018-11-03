.class Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;
.super Ljava/lang/Object;
.source "CollapsiblePreferenceGroupController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->createExpandButton(Landroid/support/v7/preference/PreferenceGroup;Ljava/util/List;)Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

.field final synthetic val$group:Landroid/support/v7/preference/PreferenceGroup;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/CollapsiblePreferenceGroupController;Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

    .line 138
    iput-object p1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;->this$0:Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

    iput-object p2, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;->val$group:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 141
    iget-object v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;->val$group:Landroid/support/v7/preference/PreferenceGroup;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    .line 142
    iget-object v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;->this$0:Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

    invoke-static {v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->access$000(Landroid/support/v7/preference/CollapsiblePreferenceGroupController;)Landroid/support/v7/preference/PreferenceGroupAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroid/support/v7/preference/Preference;)V

    .line 143
    const/4 v0, 0x1

    return v0
.end method
