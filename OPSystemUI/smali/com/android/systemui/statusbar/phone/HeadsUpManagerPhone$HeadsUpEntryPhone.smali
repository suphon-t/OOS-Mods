.class public Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;
.super Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;
.source "HeadsUpManagerPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeadsUpEntryPhone"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 457
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    return-void
.end method

.method public static synthetic lambda$setEntry$0(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$700(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$600(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroid/support/v4/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$700(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$800(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getQuickReplyHeadsUpChild()Landroid/view/View;

    move-result-object v0

    .line 467
    .local v0, "quickReplyView":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 468
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    const-string v1, "landscape_quick_reply"

    const-string v2, "hun_action"

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$900(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 473
    .end local v0    # "quickReplyView":Landroid/view/View;
    goto :goto_0

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$500(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 476
    :goto_0
    return-void
.end method


# virtual methods
.method public expanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .line 499
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->expanded:Z

    if-ne v0, p1, :cond_0

    .line 500
    return-void

    .line 503
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->expanded:Z

    .line 504
    if-eqz p1, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->removeAutoRemovalCallbacks()V

    goto :goto_0

    .line 507
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->updateEntry(Z)V

    .line 509
    :goto_0
    return-void
.end method

.method public setEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 459
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpManagerPhone$HeadsUpEntryPhone$5mHSyZcdvhRZee7SQo_tx2_2-Bg;

    .local v0, "removeHeadsUpRunnable":Ljava/lang/Runnable;
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpManagerPhone$HeadsUpEntryPhone$5mHSyZcdvhRZee7SQo_tx2_2-Bg;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 478
    invoke-super {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->setEntry(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Runnable;)V

    .line 479
    return-void
.end method

.method public updateEntry(Z)V
    .locals 2
    .param p1, "updatePostTime"    # Z

    .line 487
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->updateEntry(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$500(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$500(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$600(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroid/support/v4/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$600(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroid/support/v4/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 495
    :cond_1
    return-void
.end method

.method public wasShownLongEnough()Z
    .locals 4

    .line 482
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->earliestRemovaltime:J

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$HeadsUpEntryPhone;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$400(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager$Clock;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
