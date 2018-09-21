.class public Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DragStartInitializeDropTargetsEvent.java"


# instance fields
.field public final handler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

.field public final task:Lcom/android/systemui/shared/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/RecentsViewTouchHandler;)V
    .locals 0
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "handler"    # Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    .line 35
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 38
    iput-object p3, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;->handler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    .line 39
    return-void
.end method
