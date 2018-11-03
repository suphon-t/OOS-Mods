.class public interface abstract Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.super Ljava/lang/Object;
.source "OnHeadsUpChangedListener.java"


# virtual methods
.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 36
    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 0
    .param p1, "inPinnedMode"    # Z

    .line 31
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 0
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "isHeadsUp"    # Z

    .line 49
    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "headsUp"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 41
    return-void
.end method
