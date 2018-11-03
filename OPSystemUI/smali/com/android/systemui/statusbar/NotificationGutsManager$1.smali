.class Lcom/android/systemui/statusbar/NotificationGutsManager$1;
.super Ljava/lang/Object;
.source "NotificationGutsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationGutsManager;->openGuts(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

.field final synthetic val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

.field final synthetic val$menuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationGutsManager;

    .line 379
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iput p4, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$x:I

    iput p5, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$y:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$menuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 383
    const-string v0, "NotificationGutsManager"

    const-string v1, "Trying to show notification guts in post(), but not attached to window"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 393
    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterLocked()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    .line 394
    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationGutsManager;->access$000(Lcom/android/systemui/statusbar/NotificationGutsManager;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v7, v2

    goto :goto_0

    :cond_1
    move v7, v1

    .line 396
    .local v7, "needsFalsingProtection":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 397
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$x:I

    iget v6, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$y:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/systemui/statusbar/-$$Lambda$A0nRQ1BmXNDkvl3KYSKAx5O94nc;

    invoke-direct {v8, v0}, Lcom/android/systemui/statusbar/-$$Lambda$A0nRQ1BmXNDkvl3KYSKAx5O94nc;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 396
    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/statusbar/NotificationGuts;->openControls(ZIIZLjava/lang/Runnable;)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->closeRemoteInput()V

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationGutsManager;->access$100(Lcom/android/systemui/statusbar/NotificationGutsManager;)Lcom/android/systemui/statusbar/NotificationListContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationListContainer;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationGutsManager;->access$202(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->this$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager$1;->val$menuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationGutsManager;->access$302(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 407
    return-void
.end method
