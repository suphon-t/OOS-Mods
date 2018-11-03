.class public Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "ActivityPinnedEvent.java"


# instance fields
.field public final taskId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 29
    iput p1, p0, Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;->taskId:I

    .line 30
    return-void
.end method
