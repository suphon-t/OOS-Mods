.class public interface abstract Lcom/android/systemui/plugins/NotificationListenerController;
.super Ljava/lang/Object;
.source "NotificationListenerController.java"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/DependsOn;
    target = Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;
.end annotation

.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_NOTIFICATION_ASSISTANT"
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_NOTIFICATION_ASSISTANT"

.field public static final VERSION:I = 0x1


# virtual methods
.method public getActiveNotifications([Landroid/service/notification/StatusBarNotification;)[Landroid/service/notification/StatusBarNotification;
    .locals 0
    .param p1, "activeNotifications"    # [Landroid/service/notification/StatusBarNotification;

    .line 42
    return-object p1
.end method

.method public getCurrentRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 0
    .param p1, "currentRanking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 46
    return-object p1
.end method

.method public abstract onListenerConnected(Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;)V
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 37
    const/4 v0, 0x0

    return v0
.end method
