.class final Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;
.super Ljava/lang/Object;
.source "NotificationEntryManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationEntryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationEntryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/NotificationEntryManager;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/NotificationEntryManager$1;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/NotificationEntryManager;)V

    return-void
.end method

.method static synthetic lambda$onClick$0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p0, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setJustClicked(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 161
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_0

    .line 162
    const-string v0, "NotificationEntryMgr"

    const-string v1, "NotificationClicker called on a view that is not a notification row."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/NotificationPresenter;->wakeUpIfDozing(JLandroid/view/View;)V

    .line 168
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 169
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 170
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    if-nez v1, :cond_1

    .line 171
    const-string v2, "NotificationEntryMgr"

    const-string v3, "NotificationClicker called on an unclickable notification,"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 176
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getProvider()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateTranslateNotification(F)V

    .line 178
    return-void

    .line 182
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setJustClicked(Z)V

    .line 183
    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$NotificationClicker$LBMGOladLjt5equMOv9trf31Q8s;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationEntryManager$NotificationClicker$LBMGOladLjt5equMOv9trf31Q8s;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-static {v2}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 185
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationEntryManager;->mCallback:Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;

    invoke-interface {v2, v1, v0}, Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;->onNotificationClicked(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 186
    return-void
.end method

.method public register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .line 189
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 190
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 191
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :goto_1
    return-void
.end method
