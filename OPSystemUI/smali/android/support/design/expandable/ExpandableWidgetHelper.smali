.class public final Landroid/support/design/expandable/ExpandableWidgetHelper;
.super Ljava/lang/Object;
.source "ExpandableWidgetHelper.java"


# instance fields
.field private expanded:Z

.field private expandedComponentIdHint:I

.field private final widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/design/expandable/ExpandableWidget;)V
    .locals 1
    .param p1, "widget"    # Landroid/support/design/expandable/ExpandableWidget;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 36
    iput v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 40
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    .line 41
    return-void
.end method

.method private dispatchExpandedStateChanged()V
    .locals 3

    .line 89
    iget-object v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 90
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    .line 91
    move-object v1, v0

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->widget:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public getExpandedComponentIdHint()I
    .locals 1

    .line 85
    iget v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expanded:Z

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .line 69
    const-string v0, "expanded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expanded:Z

    .line 70
    const-string v0, "expandedComponentIdHint"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    .line 72
    iget-boolean v0, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expanded:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Landroid/support/design/expandable/ExpandableWidgetHelper;->dispatchExpandedStateChanged()V

    .line 75
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "expanded"

    iget-boolean v2, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expanded:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    const-string v1, "expandedComponentIdHint"

    iget v2, p0, Landroid/support/design/expandable/ExpandableWidgetHelper;->expandedComponentIdHint:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    return-object v0
.end method
