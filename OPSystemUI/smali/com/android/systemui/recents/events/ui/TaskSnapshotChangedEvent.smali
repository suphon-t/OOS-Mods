.class public Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "TaskSnapshotChangedEvent.java"


# instance fields
.field public final taskId:I

.field public final thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;


# direct methods
.method public constructor <init>(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "thumbnailData"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 30
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->taskId:I

    .line 32
    iput-object p2, p0, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->thumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 33
    return-void
.end method
