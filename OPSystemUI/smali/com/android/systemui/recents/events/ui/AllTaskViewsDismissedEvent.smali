.class public Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "AllTaskViewsDismissedEvent.java"


# instance fields
.field public final msgResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "msgResId"    # I

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 29
    iput p1, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->msgResId:I

    .line 30
    return-void
.end method
