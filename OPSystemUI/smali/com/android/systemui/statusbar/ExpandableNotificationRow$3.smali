.class Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;
.super Ljava/lang/Object;
.source "ExpandableNotificationRow.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onFinishInflate()V
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

    .line 1564
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2
    .param p1, "stub"    # Landroid/view/ViewStub;
    .param p2, "inflated"    # Landroid/view/View;

    .line 1567
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$1402(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1568
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$1400(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setClipTopAmount(I)V

    .line 1569
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$1400(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setActualHeight(I)V

    .line 1570
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;->this$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->access$1502(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/ViewStub;)Landroid/view/ViewStub;

    .line 1571
    return-void
.end method
