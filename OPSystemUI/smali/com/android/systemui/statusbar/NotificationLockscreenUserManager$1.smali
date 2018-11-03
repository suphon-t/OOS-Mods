.class Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationLockscreenUserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 87
    .local v1, "userId":I
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->getSendingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->access$000(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 90
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->updateLockscreenNotificationSetting()V

    .line 91
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->updateNotifications()V

    .line 94
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->access$200(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget v4, v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->access$102(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Z)Z

    goto :goto_1

    .line 97
    :cond_1
    const-string v2, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget v2, v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationPresenter;->onWorkChallengeChanged()V

    .line 102
    :cond_2
    :goto_1
    return-void
.end method
