.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;
.super Landroid/content/BroadcastReceiver;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 498
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "unpauseRefreshUsers":Z
    const/16 v1, -0x2710

    .line 509
    .local v1, "forcePictureLoadForId":I
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, -0x2710

    if-eqz v2, :cond_a

    .line 510
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    .line 512
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$502(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 515
    :cond_0
    const-string v2, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 516
    .local v2, "currentId":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 517
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 518
    .local v5, "N":I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_7

    .line 519
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 520
    .local v8, "record":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    iget-object v9, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    const/4 v10, 0x1

    if-nez v9, :cond_1

    .end local v8    # "record":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    goto :goto_2

    .line 521
    .restart local v8    # "record":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_1
    iget-object v9, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    if-ne v9, v2, :cond_2

    move v9, v10

    goto :goto_1

    :cond_2
    move v9, v6

    .line 522
    .local v9, "shouldBeCurrent":Z
    :goto_1
    iget-boolean v11, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eq v11, v9, :cond_3

    .line 523
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v11}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->copyWithIsCurrent(Z)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 525
    :cond_3
    if-eqz v9, :cond_4

    iget-boolean v11, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-nez v11, :cond_4

    .line 526
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v12, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v11, v12}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$602(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    .line 528
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v11

    if-nez v11, :cond_6

    :cond_5
    iget-boolean v11, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v11, :cond_6

    .line 530
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v11}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 531
    add-int/lit8 v7, v7, -0x1

    .line 518
    .end local v8    # "record":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .end local v9    # "shouldBeCurrent":Z
    :cond_6
    :goto_2
    add-int/2addr v7, v10

    goto :goto_0

    .line 534
    .end local v7    # "i":I
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 537
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$700(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v6

    if-eq v6, v3, :cond_8

    .line 538
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$800(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 539
    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$700(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 538
    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 540
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v6, v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$702(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    .line 544
    :cond_8
    if-eqz v4, :cond_9

    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    if-eqz v3, :cond_9

    .line 545
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$800(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;

    move-result-object v3

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 546
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 545
    invoke-virtual {p1, v3, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 547
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$702(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    .line 549
    :cond_9
    const/4 v0, 0x1

    .line 550
    .end local v2    # "currentId":I
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v5    # "N":I
    goto :goto_3

    :cond_a
    const-string v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 551
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_3

    .line 553
    :cond_b
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 555
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 556
    .local v2, "userId":I
    if-eqz v2, :cond_c

    .line 557
    return-void

    .line 560
    .end local v2    # "userId":I
    :cond_c
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    .line 561
    if-eqz v0, :cond_d

    .line 562
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$900(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 564
    :cond_d
    return-void
.end method
