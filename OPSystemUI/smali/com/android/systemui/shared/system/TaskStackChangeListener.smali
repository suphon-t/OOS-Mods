.class public abstract Lcom/android/systemui/shared/system/TaskStackChangeListener;
.super Ljava/lang/Object;
.source "TaskStackChangeListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final checkCurrentUserId(IZ)Z
    .locals 4
    .param p1, "currentUserId"    # I
    .param p2, "debug"    # Z

    .line 59
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 60
    .local v0, "processUserId":I
    if-eq v0, p1, :cond_1

    .line 61
    if-eqz p2, :cond_0

    .line 62
    const-string v1, "TaskStackChangeListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID mismatch. Process is uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and the current user is uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 67
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onActivityDismissingDockedStack()V
    .locals 0

    .line 44
    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I
    .param p3, "reason"    # I

    .line 43
    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 0

    .line 45
    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I
    .param p4, "stackId"    # I

    .line 38
    return-void
.end method

.method public onActivityRequestedOrientationChanged(II)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "requestedOrientation"    # I

    .line 50
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 0

    .line 39
    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 0
    .param p1, "clearedTask"    # Z

    .line 40
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 0

    .line 42
    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 0

    .line 41
    return-void
.end method

.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 47
    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 49
    return-void
.end method

.method public onTaskProfileLocked(II)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 46
    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 48
    return-void
.end method

.method public onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 37
    return-void
.end method

.method public onTaskStackChanged()V
    .locals 0

    .line 36
    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 0

    .line 33
    return-void
.end method
