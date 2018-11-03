.class public Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchTaskEvent.java"


# instance fields
.field public final screenPinningRequested:Z

.field public final targetActivityType:I

.field public final targetTaskBounds:Landroid/graphics/Rect;

.field public final targetWindowingMode:I

.field public final task:Lcom/android/systemui/shared/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;Z)V
    .locals 7
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p3, "targetTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "screenPinningRequested"    # Z

    .line 42
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;ZII)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Landroid/graphics/Rect;ZII)V
    .locals 0
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p3, "targetTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "screenPinningRequested"    # Z
    .param p5, "windowingMode"    # I
    .param p6, "activityType"    # I

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    .line 50
    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskBounds:Landroid/graphics/Rect;

    .line 51
    iput p5, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetWindowingMode:I

    .line 52
    iput p6, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetActivityType:I

    .line 53
    iput-boolean p4, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenPinningRequested:Z

    .line 54
    return-void
.end method
