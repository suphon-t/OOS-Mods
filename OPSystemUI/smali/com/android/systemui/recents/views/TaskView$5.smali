.class Lcom/android/systemui/recents/views/TaskView$5;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->dismissTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskView;

    .line 399
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$5;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$5;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 402
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView$5;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/TaskView;->access$100(Lcom/android/systemui/recents/views/TaskView;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$5;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    new-instance v4, Lcom/android/systemui/shared/recents/utilities/AnimationProps;

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v6, 0xc8

    invoke-direct {v4, v6, v5}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 405
    return-void
.end method
