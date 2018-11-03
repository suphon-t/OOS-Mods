.class public Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;
.super Ljava/lang/Object;
.source "HighResThumbnailLoader.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;


# instance fields
.field private final mActivityManager:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private mFlingingFast:Z

.field private final mIsLowRamDevice:Z

.field private final mLoadQueue:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadThread:Ljava/lang/Thread;

.field private final mLoader:Ljava/lang/Runnable;

.field private mLoaderIdling:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation
.end field

.field private mLoading:Z

.field private final mLoadingTasks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mTaskLoadQueueIdle:Z

.field private mVisible:Z

.field private final mVisibleTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Landroid/os/Looper;Z)V
    .locals 3
    .param p1, "activityManager"    # Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "isLowRamDevice"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    .line 43
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    .line 201
    new-instance v0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader$1;-><init>(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoader:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mActivityManager:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoader:Ljava/lang/Runnable;

    const-string v2, "Recents-HighResThumbnailLoader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadThread:Ljava/lang/Thread;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 64
    iput-boolean p3, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mIsLowRamDevice:Z

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayDeque;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoading:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoaderIdling:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mActivityManager:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method private setLoading(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoading:Z

    if-ne p1, v0, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 109
    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoading:Z

    .line 110
    if-nez p1, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->stopLoading()V

    goto :goto_0

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->startLoading()V

    .line 115
    :goto_0
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startLoading()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 121
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task;

    .line 122
    .local v1, "t":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    .line 123
    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadingTasks:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v1    # "t":Lcom/android/systemui/shared/recents/model/Task;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 127
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 128
    return-void
.end method

.method private stopLoading()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLoadQueue"
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 134
    return-void
.end method

.method private updateLoading()V
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mTaskLoadQueueIdle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->setLoading(Z)V

    .line 102
    return-void
.end method


# virtual methods
.method isLoading()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 97
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoading:Z

    return v0
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "thumbnailData"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 186
    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 189
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 191
    :cond_0
    :goto_0
    return-void
.end method

.method public onTaskDataUnloaded()V
    .locals 0

    .line 195
    return-void
.end method

.method public onTaskInvisible(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 159
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "HighResThumbnailLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskInvisible, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_0
    const-string v0, "HighResThumbnailLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskInvisible, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/model/Task;->removeCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 169
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTaskVisible(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 143
    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/recents/model/Task;->addCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoading:Z

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 149
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 151
    :cond_1
    :goto_0
    return-void
.end method

.method public setFlingingFast(Z)V
    .locals 1
    .param p1, "flingingFast"    # Z

    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mIsLowRamDevice:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mFlingingFast:Z

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->updateLoading()V

    .line 81
    return-void

    .line 77
    :cond_1
    :goto_0
    return-void
.end method

.method public setTaskLoadQueueIdle(Z)V
    .locals 1
    .param p1, "idle"    # Z

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mIsLowRamDevice:Z

    if-eqz v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mTaskLoadQueueIdle:Z

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->updateLoading()V

    .line 93
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 68
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mIsLowRamDevice:Z

    if-eqz v0, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mVisible:Z

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->updateLoading()V

    .line 73
    return-void
.end method

.method waitForLoaderIdle()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoadQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->mLoaderIdling:Z

    if-eqz v1, :cond_0

    .line 177
    monitor-exit v0

    return-void

    .line 179
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
