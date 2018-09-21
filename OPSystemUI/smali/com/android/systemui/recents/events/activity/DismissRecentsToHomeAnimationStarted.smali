.class public Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "DismissRecentsToHomeAnimationStarted.java"


# instance fields
.field public final animated:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "animated"    # Z

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->animated:Z

    .line 30
    return-void
.end method
