.class public Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "LaunchTaskStartedEvent.java"


# instance fields
.field public final screenPinningRequested:Z

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Z)V
    .locals 0
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "screenPinningRequested"    # Z

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 33
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->screenPinningRequested:Z

    .line 34
    return-void
.end method
