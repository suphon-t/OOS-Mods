.class Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;
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

    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->access$300(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V

    .line 112
    const-string v1, "LockscreenUserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget v4, v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is in the house"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->updateLockscreenNotificationSetting()V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->access$200(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget v4, v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->access$102(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Z)Z

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget v2, v2, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mCurrentUserId:I

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/NotificationPresenter;->onUserSwitched(I)V

    goto/16 :goto_3

    .line 122
    :cond_1
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->access$300(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V

    goto/16 :goto_3

    .line 124
    :cond_2
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    const-class v1, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v1}, Lcom/android/systemui/OverviewProxyService;->startConnectionToCurrentUser()V

    goto/16 :goto_3

    .line 127
    :cond_3
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 130
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getLastResumedActivityUserId()I

    move-result v1

    .line 131
    .local v1, "lastResumedActivityUserId":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->access$400(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x3e7

    if-eq v1, v2, :cond_4

    .line 132
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->access$500(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1    # "lastResumedActivityUserId":I
    goto :goto_1

    .line 134
    :catch_0
    move-exception v1

    .line 136
    :cond_4
    :goto_1
    goto :goto_3

    .line 137
    :cond_5
    const-string v1, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    .line 139
    .local v1, "intentSender":Landroid/content/IntentSender;
    const-string v3, "android.intent.extra.INDEX"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, "notificationKey":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 142
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    goto :goto_2

    .line 143
    :catch_1
    move-exception v3

    .line 147
    :cond_6
    :goto_2
    if-eqz v9, :cond_7

    .line 148
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    .line 149
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 150
    .local v3, "count":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/systemui/statusbar/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v4

    .line 151
    .local v4, "rank":I
    invoke-static {v9, v4, v3, v2}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v2

    .line 154
    .local v2, "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->access$600(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    invoke-interface {v5, v9, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 157
    goto :goto_3

    .line 155
    :catch_2
    move-exception v5

    .line 160
    .end local v1    # "intentSender":Landroid/content/IntentSender;
    .end local v2    # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v3    # "count":I
    .end local v4    # "rank":I
    .end local v9    # "notificationKey":Ljava/lang/String;
    :cond_7
    :goto_3
    return-void
.end method
