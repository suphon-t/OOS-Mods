.class public Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "DragEndCancelledEvent.java"


# instance fields
.field public final stack:Lcom/android/systemui/shared/recents/model/TaskStack;

.field public final task:Lcom/android/systemui/shared/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/TaskStack;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/systemui/shared/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p3, "taskView"    # Lcom/android/systemui/recents/views/TaskView;

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->stack:Lcom/android/systemui/shared/recents/model/TaskStack;

    .line 35
    iput-object p2, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    .line 36
    iput-object p3, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 37
    return-void
.end method
