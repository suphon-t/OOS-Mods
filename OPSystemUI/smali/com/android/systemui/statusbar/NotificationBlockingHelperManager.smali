.class public Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;
.super Ljava/lang/Object;
.source "NotificationBlockingHelperManager.java"


# instance fields
.field private mBlockingHelperRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final mContext:Landroid/content/Context;

.field private mIsShadeExpanded:Z

.field private mNonBlockablePkgs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mNonBlockablePkgs:Ljava/util/Set;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mNonBlockablePkgs:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mNonBlockablePkgs:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 68
    return-void
.end method


# virtual methods
.method dismissCurrentBlockingHelper()Z
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->isBlockingHelperRowNull()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mBlockingHelperRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string v0, "BlockingHelper"

    const-string v2, "Manager.dismissCurrentBlockingHelper: Non-null row is not showing a blocking helper"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mBlockingHelperRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setBlockingHelperShowing(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mBlockingHelperRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-class v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 134
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mBlockingHelperRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_2
    return v1
.end method

.method isBlockingHelperRowNull()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mBlockingHelperRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNonblockablePackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mNonBlockablePkgs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method perhapsShowBlockingHelper(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;)Z
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "menuRow"    # Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    .line 86
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->userSentiment:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mIsShadeExpanded:Z

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIsNonblockable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnlyChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->dismissCurrentBlockingHelper()Z

    .line 97
    const-class v0, Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationGutsManager;

    .line 101
    .local v0, "manager":Lcom/android/systemui/statusbar/NotificationGutsManager;
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mBlockingHelperRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mBlockingHelperRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setBlockingHelperShowing(Z)V

    .line 106
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mBlockingHelperRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mContext:Landroid/content/Context;

    invoke-interface {p2, v4}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->getLongpressMenuItem(Landroid/content/Context;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v1, v4}, Lcom/android/systemui/statusbar/NotificationGutsManager;->openGuts(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    .line 108
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    const-string v2, "blocking_helper_shown"

    .line 109
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 110
    return v3

    .line 112
    .end local v0    # "manager":Lcom/android/systemui/statusbar/NotificationGutsManager;
    :cond_2
    :goto_0
    return v1
.end method

.method setBlockingHelperRowForTest(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "blockingHelperRowForTest"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 163
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mBlockingHelperRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 164
    return-void
.end method

.method public setNotificationShadeExpanded(F)V
    .locals 1
    .param p1, "expandedHeight"    # F

    .line 146
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBlockingHelperManager;->mIsShadeExpanded:Z

    .line 147
    return-void
.end method
