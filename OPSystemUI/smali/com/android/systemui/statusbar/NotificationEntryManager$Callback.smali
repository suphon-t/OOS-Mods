.class public interface abstract Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationEntryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onBindRow(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end method

.method public abstract onNotificationAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
.end method

.method public abstract onNotificationClicked(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end method

.method public abstract onNotificationRemoved(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract onPerformRemoveNotification(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z
.end method
