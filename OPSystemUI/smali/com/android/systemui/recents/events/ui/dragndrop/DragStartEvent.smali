.class public Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DragStartEvent.java"


# instance fields
.field public final isUserTouchInitiated:Z

.field public final task:Lcom/android/systemui/shared/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;

.field public final tlOffset:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Point;)V
    .locals 1
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "tlOffset"    # Landroid/graphics/Point;

    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Point;Z)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Point;Z)V
    .locals 0
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "tlOffset"    # Landroid/graphics/Point;
    .param p4, "isUserTouchInitiated"    # Z

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 43
    iput-object p3, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->tlOffset:Landroid/graphics/Point;

    .line 44
    iput-boolean p4, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->isUserTouchInitiated:Z

    .line 45
    return-void
.end method
