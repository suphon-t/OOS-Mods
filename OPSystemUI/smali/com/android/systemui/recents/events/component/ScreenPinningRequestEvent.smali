.class public Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "ScreenPinningRequestEvent.java"


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final taskId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;->applicationContext:Landroid/content/Context;

    .line 33
    iput p2, p0, Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;->taskId:I

    .line 34
    return-void
.end method
