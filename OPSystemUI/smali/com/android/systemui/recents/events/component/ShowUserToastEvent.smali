.class public Lcom/android/systemui/recents/events/component/ShowUserToastEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "ShowUserToastEvent.java"


# instance fields
.field public final msgLength:I

.field public final msgResId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "msgResId"    # I
    .param p2, "msgLength"    # I

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgResId:I

    .line 31
    iput p2, p0, Lcom/android/systemui/recents/events/component/ShowUserToastEvent;->msgLength:I

    .line 32
    return-void
.end method
