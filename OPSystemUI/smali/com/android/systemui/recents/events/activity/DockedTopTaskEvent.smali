.class public Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DockedTopTaskEvent.java"


# instance fields
.field public dragMode:I

.field public initialRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "dragMode"    # I
    .param p2, "initialRect"    # Landroid/graphics/Rect;

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->dragMode:I

    .line 34
    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;->initialRect:Landroid/graphics/Rect;

    .line 35
    return-void
.end method
