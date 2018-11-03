.class public Lcom/android/systemui/statusbar/SmartReplyController;
.super Ljava/lang/Object;
.source "SmartReplyController.java"


# instance fields
.field private mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mSendingKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mSendingKeys:Ljava/util/Set;

    .line 36
    const-class v0, Lcom/android/internal/statusbar/IStatusBarService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/IStatusBarService;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 37
    return-void
.end method


# virtual methods
.method public isSendingSmartReply(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mSendingKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public smartRepliesAdded(Lcom/android/systemui/statusbar/NotificationData$Entry;I)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "replyCount"    # I

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationSmartRepliesAdded(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 71
    :goto_0
    return-void
.end method

.method public smartReplySent(Lcom/android/systemui/statusbar/NotificationData$Entry;ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "replyIndex"    # I
    .param p3, "reply"    # Ljava/lang/CharSequence;

    .line 40
    const-class v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 41
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 42
    .local v0, "notificationEntryManager":Lcom/android/systemui/statusbar/NotificationEntryManager;
    nop

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->rebuildNotificationWithRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/CharSequence;Z)Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 45
    .local v1, "newSbn":Landroid/service/notification/StatusBarNotification;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 46
    iget-object v2, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mSendingKeys:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationSmartReplySent(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    .line 54
    :goto_0
    return-void
.end method

.method public stopSending(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/SmartReplyController;->mSendingKeys:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    return-void
.end method
