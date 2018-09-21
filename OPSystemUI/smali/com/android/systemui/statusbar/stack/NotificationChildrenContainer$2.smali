.class Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;
.super Ljava/lang/Object;
.source "NotificationChildrenContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

.field final synthetic val$divider:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    .line 288
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;->this$0:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;->val$divider:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;->this$0:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;->val$divider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 292
    return-void
.end method
