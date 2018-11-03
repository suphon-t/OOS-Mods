.class public Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationListenerWithPlugins.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/notification/NotificationListenerService;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/NotificationListenerController;",
        ">;"
    }
.end annotation


# instance fields
.field private mConnected:Z

.field private mPlugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/NotificationListenerController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$001(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)[Landroid/service/notification/StatusBarNotification;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    .line 36
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$101(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;

    .line 36
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    return-object v0
.end method

.method private getProvider()Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;
    .locals 1

    .line 125
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)V

    return-object v0
.end method

.method public static synthetic lambda$onPluginConnected$0(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;Lcom/android/systemui/plugins/NotificationListenerController;)V
    .locals 1
    .param p1, "p"    # Lcom/android/systemui/plugins/NotificationListenerController;

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->getProvider()Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NotificationListenerController;->onListenerConnected(Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;)V

    return-void
.end method


# virtual methods
.method public getActiveNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 3

    .line 58
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 59
    .local v0, "activeNotifications":[Landroid/service/notification/StatusBarNotification;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/NotificationListenerController;

    .line 60
    .local v2, "plugin":Lcom/android/systemui/plugins/NotificationListenerController;
    invoke-interface {v2, v0}, Lcom/android/systemui/plugins/NotificationListenerController;->getActiveNotifications([Landroid/service/notification/StatusBarNotification;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 61
    .end local v2    # "plugin":Lcom/android/systemui/plugins/NotificationListenerController;
    goto :goto_0

    .line 62
    :cond_0
    return-object v0
.end method

.method public getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 3

    .line 67
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    .line 68
    .local v0, "currentRanking":Landroid/service/notification/NotificationListenerService$RankingMap;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/NotificationListenerController;

    .line 69
    .local v2, "plugin":Lcom/android/systemui/plugins/NotificationListenerController;
    invoke-interface {v2, v0}, Lcom/android/systemui/plugins/NotificationListenerController;->getCurrentRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    .line 70
    .end local v2    # "plugin":Lcom/android/systemui/plugins/NotificationListenerController;
    goto :goto_0

    .line 71
    :cond_0
    return-object v0
.end method

.method public onPluginConnected()V
    .locals 2

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mConnected:Z

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationListenerWithPlugins$AOWJwBGrUF4vFOVx-Lxlu4eVQD0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationListenerWithPlugins$AOWJwBGrUF4vFOVx-Lxlu4eVQD0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 77
    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/NotificationListenerController;Landroid/content/Context;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/NotificationListenerController;
    .param p2, "pluginContext"    # Landroid/content/Context;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mConnected:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->getProvider()Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NotificationListenerController;->onListenerConnected(Lcom/android/systemui/plugins/NotificationListenerController$NotificationProvider;)V

    .line 117
    :cond_0
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/systemui/plugins/NotificationListenerController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onPluginConnected(Lcom/android/systemui/plugins/NotificationListenerController;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/NotificationListenerController;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/NotificationListenerController;

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/android/systemui/plugins/NotificationListenerController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onPluginDisconnected(Lcom/android/systemui/plugins/NotificationListenerController;)V

    return-void
.end method

.method public onPluginNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/NotificationListenerController;

    .line 86
    .local v1, "plugin":Lcom/android/systemui/plugins/NotificationListenerController;
    invoke-interface {v1, p1, p2}, Lcom/android/systemui/plugins/NotificationListenerController;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const/4 v0, 0x1

    return v0

    .line 89
    .end local v1    # "plugin":Lcom/android/systemui/plugins/NotificationListenerController;
    :cond_0
    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPluginNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->mPlugins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/NotificationListenerController;

    .line 100
    .local v1, "plugin":Lcom/android/systemui/plugins/NotificationListenerController;
    invoke-interface {v1, p1, p2}, Lcom/android/systemui/plugins/NotificationListenerController;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const/4 v0, 0x1

    return v0

    .line 103
    .end local v1    # "plugin":Lcom/android/systemui/plugins/NotificationListenerController;
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPluginRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    return-object v0
.end method

.method public registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "currentUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 46
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/NotificationListenerController;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V

    .line 48
    return-void
.end method

.method public unregisterAsSystemService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    .line 53
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 54
    return-void
.end method
