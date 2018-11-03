.class public Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "ShowApplicationInfoEvent.java"


# instance fields
.field public final task:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    .line 31
    return-void
.end method
