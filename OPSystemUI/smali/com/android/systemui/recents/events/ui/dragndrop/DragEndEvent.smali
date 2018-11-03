.class public Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "DragEndEvent.java"


# instance fields
.field public final dropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field public final task:Lcom/android/systemui/shared/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/DropTarget;)V
    .locals 0
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "dropTarget"    # Lcom/android/systemui/recents/views/DropTarget;

    .line 33
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    .line 35
    iput-object p2, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 36
    iput-object p3, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 37
    return-void
.end method
