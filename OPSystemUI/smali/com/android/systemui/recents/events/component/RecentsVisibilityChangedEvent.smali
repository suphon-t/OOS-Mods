.class public Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "RecentsVisibilityChangedEvent.java"


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visible"    # Z

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->applicationContext:Landroid/content/Context;

    .line 34
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    .line 35
    return-void
.end method
