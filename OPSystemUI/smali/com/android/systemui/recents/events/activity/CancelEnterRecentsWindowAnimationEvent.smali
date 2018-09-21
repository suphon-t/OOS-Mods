.class public Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "CancelEnterRecentsWindowAnimationEvent.java"


# instance fields
.field public final launchTask:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0
    .param p1, "launchTask"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 33
    return-void
.end method
