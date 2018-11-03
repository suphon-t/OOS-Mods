.class Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;
.super Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;
.source "RecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field private mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsImpl;

    .line 128
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;-><init>()V

    .line 129
    const-class v0, Lcom/android/systemui/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/OverviewProxyService;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    .line 130
    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;III)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "taskId"    # I
    .param p4, "stackId"    # I

    .line 191
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    return-void

    .line 197
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromPipApp:Z

    .line 198
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithNextPipApp:Z

    .line 199
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;

    invoke-direct {v1, p3}, Lcom/android/systemui/recents/events/component/ActivityPinnedEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 200
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    .line 202
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    return-void

    .line 211
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/ActivityUnpinnedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/component/ActivityUnpinnedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 212
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/systemui/recents/RecentsImpl;->sLastPipTime:J

    .line 213
    return-void
.end method

.method public onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 218
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    return-void

    .line 222
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;-><init>(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 223
    return-void
.end method

.method public onTaskStackChangedBackground()V
    .locals 15

    .line 135
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->mOverviewProxyService:Lcom/android/systemui/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/OverviewProxyService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->checkCurrentUserId(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    return-void

    .line 145
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 146
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget v1, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v1, :cond_4

    .line 147
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->access$000(Lcom/android/systemui/recents/RecentsImpl;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 148
    .local v1, "windowRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    return-void

    .line 154
    :cond_2
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 155
    .local v2, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v3

    .line 156
    .local v3, "loader":Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    new-instance v4, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v5, v5, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    .line 157
    .local v4, "plan":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    .line 158
    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v6

    .line 159
    .local v6, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    new-instance v7, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-direct {v7}, Lcom/android/systemui/recents/RecentsActivityLaunchState;-><init>()V

    .line 160
    .local v7, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    new-instance v8, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 162
    .local v8, "launchOpts":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-static {v9}, Lcom/android/systemui/recents/RecentsImpl;->access$100(Lcom/android/systemui/recents/RecentsImpl;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v9

    monitor-enter v9

    .line 166
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-static {v11}, Lcom/android/systemui/recents/RecentsImpl;->access$100(Lcom/android/systemui/recents/RecentsImpl;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v11

    invoke-static {v10, v11, v6, v1}, Lcom/android/systemui/recents/RecentsImpl;->access$200(Lcom/android/systemui/recents/RecentsImpl;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 170
    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    .line 171
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    invoke-static {v11}, Lcom/android/systemui/recents/RecentsImpl;->access$100(Lcom/android/systemui/recents/RecentsImpl;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v12

    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->access$300()Landroid/util/ArraySet;

    move-result-object v13

    const/high16 v14, -0x40800000    # -1.0f

    invoke-virtual {v11, v12, v13, v7, v14}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->update(Lcom/android/systemui/shared/recents/model/TaskStack;Landroid/util/ArraySet;Lcom/android/systemui/recents/RecentsActivityLaunchState;F)V

    .line 173
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;->this$0:Lcom/android/systemui/recents/RecentsImpl;

    .line 174
    invoke-static {v11}, Lcom/android/systemui/recents/RecentsImpl;->access$100(Lcom/android/systemui/recents/RecentsImpl;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v11

    .line 175
    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v12

    .line 174
    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v11

    .line 177
    .local v11, "visibilityReport":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    if-eqz v2, :cond_3

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    nop

    :cond_3
    iput v5, v8, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 178
    iget v5, v11, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v5, v8, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 179
    iget v5, v11, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v5, v8, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 180
    iput-boolean v10, v8, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 181
    iput-boolean v10, v8, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    .line 182
    iput-boolean v10, v8, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 183
    .end local v11    # "visibilityReport":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-virtual {v3, v4, v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    .end local v1    # "windowRect":Landroid/graphics/Rect;
    .end local v2    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "loader":Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    .end local v4    # "plan":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    .end local v6    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .end local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .end local v8    # "launchOpts":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;
    goto :goto_0

    .line 183
    .restart local v1    # "windowRect":Landroid/graphics/Rect;
    .restart local v2    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v3    # "loader":Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    .restart local v4    # "plan":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    .restart local v6    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .restart local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .restart local v8    # "launchOpts":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 186
    .end local v1    # "windowRect":Landroid/graphics/Rect;
    .end local v2    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "loader":Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    .end local v4    # "plan":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    .end local v6    # "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    .end local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .end local v8    # "launchOpts":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;
    :cond_4
    :goto_0
    return-void
.end method
