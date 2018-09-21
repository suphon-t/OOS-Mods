.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 234
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$000(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$100(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 238
    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$300(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$200(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$402(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$300(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$200(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    .line 241
    .local v0, "wasExpanded":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$300(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$200(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->toggleGroupExpansion(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    .line 242
    .local v2, "nowExpanded":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$600(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$500(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;->onExpandClicked(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 243
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$700(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x198

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 245
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3, v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$800(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZZ)V

    .line 246
    .end local v0    # "wasExpanded":Z
    .end local v2    # "nowExpanded":Z
    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$900(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$1000(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setFocusOnVisibilityChange()V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$1100(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 253
    .local v0, "nowExpanded":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$1102(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    goto :goto_0

    .line 255
    .end local v0    # "nowExpanded":Z
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 256
    .restart local v0    # "nowExpanded":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    .line 259
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$600(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$500(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;->onExpandClicked(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    .line 260
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$1200(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x197

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 263
    .end local v0    # "nowExpanded":Z
    :cond_4
    :goto_1
    return-void
.end method
