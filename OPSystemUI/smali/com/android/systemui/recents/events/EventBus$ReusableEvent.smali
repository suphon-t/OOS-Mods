.class public Lcom/android/systemui/recents/events/EventBus$ReusableEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/events/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReusableEvent"
.end annotation


# instance fields
.field private mDispatchCount:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method onPostDispatch()V
    .locals 1

    .line 306
    invoke-super {p0}, Lcom/android/systemui/recents/events/EventBus$Event;->onPostDispatch()V

    .line 307
    iget v0, p0, Lcom/android/systemui/recents/events/EventBus$ReusableEvent;->mDispatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recents/events/EventBus$ReusableEvent;->mDispatchCount:I

    .line 308
    return-void
.end method
