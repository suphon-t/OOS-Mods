.class Lcom/android/systemui/statusbar/NotificationContentView$2;
.super Ljava/lang/Object;
.source "NotificationContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationContentView;->animateToVisibleType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationContentView;

.field final synthetic val$hiddenView:Lcom/android/systemui/statusbar/TransformableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationContentView;Lcom/android/systemui/statusbar/TransformableView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .line 953
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->val$hiddenView:Lcom/android/systemui/statusbar/TransformableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 956
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->val$hiddenView:Lcom/android/systemui/statusbar/TransformableView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->access$100(Lcom/android/systemui/statusbar/NotificationContentView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->access$200(Lcom/android/systemui/statusbar/NotificationContentView;I)Lcom/android/systemui/statusbar/TransformableView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->val$hiddenView:Lcom/android/systemui/statusbar/TransformableView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/TransformableView;->setVisible(Z)V

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->access$302(Lcom/android/systemui/statusbar/NotificationContentView;I)I

    .line 960
    return-void
.end method
