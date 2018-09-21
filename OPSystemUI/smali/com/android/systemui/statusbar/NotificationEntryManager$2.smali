.class Lcom/android/systemui/statusbar/NotificationEntryManager$2;
.super Landroid/database/ContentObserver;
.source "NotificationEntryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationEntryManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationEntryManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 280
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    .line 284
    .local v0, "wasUsing":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/NotificationEntryManager;->mDisableNotificationAlerts:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationEntryManager;->mContext:Landroid/content/Context;

    .line 286
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "heads_up_notifications_enabled"

    .line 285
    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    iput-boolean v3, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    .line 289
    const-string v1, "NotificationEntryMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "heads up is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    if-eqz v3, :cond_1

    const-string v3, "enabled"

    goto :goto_0

    :cond_1
    const-string v3, "disabled"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    if-eq v0, v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    if-nez v1, :cond_2

    .line 292
    const-string v1, "NotificationEntryMgr"

    const-string v2, "dismissing any existing heads up notification on disable event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    .line 297
    :cond_2
    return-void
.end method
