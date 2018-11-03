.class public interface abstract Lcom/android/systemui/statusbar/NotificationListContainer;
.super Ljava/lang/Object;
.source "NotificationListContainer.java"


# virtual methods
.method public abstract addContainerView(Landroid/view/View;)V
.end method

.method public applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 0
    .param p1, "params"    # Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;

    .line 188
    return-void
.end method

.method public bindRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 197
    return-void
.end method

.method public abstract changeViewPosition(Landroid/view/View;I)V
.end method

.method public abstract cleanUpViewState(Landroid/view/View;)V
.end method

.method public abstract generateAddAnimation(Landroid/view/View;Z)V
.end method

.method public abstract generateChildOrderChangedEvent()V
.end method

.method public abstract getContainerChildAt(I)Landroid/view/View;
.end method

.method public abstract getContainerChildCount()I
.end method

.method public abstract getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;
.end method

.method public abstract getViewParentForNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/view/ViewGroup;
.end method

.method public abstract hasPulsingNotifications()Z
.end method

.method public abstract isInVisibleLocation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
.end method

.method public abstract notifyGroupChildAdded(Landroid/view/View;)V
.end method

.method public abstract notifyGroupChildRemoved(Landroid/view/View;Landroid/view/ViewGroup;)V
.end method

.method public abstract onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V
.end method

.method public onNotificationViewUpdateFinished()V
    .locals 0

    .line 176
    return-void
.end method

.method public abstract removeContainerView(Landroid/view/View;)V
.end method

.method public abstract resetExposedMenuView(ZZ)V
.end method

.method public abstract setChildLocationsChangedListener(Lcom/android/systemui/statusbar/NotificationLogger$OnChildLocationsChangedListener;)V
.end method

.method public abstract setChildTransferInProgress(Z)V
.end method

.method public setExpandingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 190
    return-void
.end method

.method public abstract setMaxDisplayedNotifications(I)V
.end method

.method public abstract snapViewIfNeeded(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end method
