.class Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;
.super Ljava/lang/Object;
.source "NotificationListenerWithPlugins.java"

# interfaces
.implements Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->getProvider()Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 139
    return-void
.end method

.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->access$001(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->access$101(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    return-object v0
.end method

.method public removeNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 144
    return-void
.end method

.method public updateRanking()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;->getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 149
    return-void
.end method
