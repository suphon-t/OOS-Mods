.class Lcom/android/systemui/recents/views/TaskStackView$7;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->launchTask(Lcom/android/systemui/shared/recents/model/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;

.field final synthetic val$task:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackView;

    .line 2164
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$7;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackView$7;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2167
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView$7;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$7;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    .line 2168
    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$7;->val$task:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;Z)V

    .line 2167
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2170
    return-void
.end method
