.class public Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "ConfigurationChangedEvent.java"


# instance fields
.field public final fromDeviceOrientationChange:Z

.field public final fromDisplayDensityChange:Z

.field public final fromMultiWindow:Z

.field public final hasStackTasks:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0
    .param p1, "fromMultiWindow"    # Z
    .param p2, "fromDeviceOrientationChange"    # Z
    .param p3, "fromDisplayDensityChange"    # Z
    .param p4, "hasStackTasks"    # Z

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromMultiWindow:Z

    .line 34
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    .line 35
    iput-boolean p3, p0, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDisplayDensityChange:Z

    .line 36
    iput-boolean p4, p0, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->hasStackTasks:Z

    .line 37
    return-void
.end method
