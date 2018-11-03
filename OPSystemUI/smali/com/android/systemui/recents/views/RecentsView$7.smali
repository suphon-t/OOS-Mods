.class Lcom/android/systemui/recents/views/RecentsView$7;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->launchTaskFromRecents(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandled:Z

.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$screenPinningRequested:Z

.field final synthetic val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$task:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsView;

    .line 943
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$7;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView$7;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsView$7;->val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

    iput-boolean p4, p0, Lcom/android/systemui/recents/views/RecentsView$7;->val$screenPinningRequested:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/android/systemui/recents/views/RecentsView$7;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 4
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 962
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$7;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/RecentsView;->access$300(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 964
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 948
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$7;->mHandled:Z

    if-eqz v0, :cond_0

    .line 949
    return-void

    .line 951
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$7;->mHandled:Z

    .line 955
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$7;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 956
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 957
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$7;->val$stackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelAllTaskViewAnimations()V

    .line 959
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$7;->val$screenPinningRequested:Z

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$7;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsView;->access$200(Lcom/android/systemui/recents/views/RecentsView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$7;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v2, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$7$6nm4p5eX5UvPb6uaSaO8OVjwZdU;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/recents/views/-$$Lambda$RecentsView$7$6nm4p5eX5UvPb6uaSaO8OVjwZdU;-><init>(Lcom/android/systemui/recents/views/RecentsView$7;Lcom/android/systemui/shared/recents/model/Task;)V

    const-wide/16 v3, 0x15e

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 967
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-nez v0, :cond_2

    .line 969
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 971
    :cond_2
    return-void
.end method
