.class public Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;,
        Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mRawTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

.field private final mTmpLockedUsers:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mTmpLockedUsers:Landroid/util/SparseBooleanArray;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 76
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 77
    return-void
.end method


# virtual methods
.method public executePlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;)V
    .locals 12
    .param p1, "opts"    # Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;
    .param p2, "loader"    # Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 185
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 186
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 187
    .local v2, "taskCount":I
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_7

    .line 188
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/shared/recents/model/Task;

    .line 189
    .local v5, "task":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v6, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 191
    .local v6, "taskKey":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    iget-object v7, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v8, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    const/4 v9, 0x1

    if-ne v7, v8, :cond_0

    move v7, v9

    goto :goto_1

    :cond_0
    move v7, v3

    .line 192
    .local v7, "isRunningTask":Z
    :goto_1
    iget v8, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    sub-int v8, v2, v8

    if-lt v4, v8, :cond_1

    move v8, v9

    goto :goto_2

    :cond_1
    move v8, v3

    .line 193
    .local v8, "isVisibleTask":Z
    :goto_2
    iget v10, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    sub-int v10, v2, v10

    if-lt v4, v10, :cond_2

    move v10, v9

    goto :goto_3

    :cond_2
    move v10, v3

    .line 196
    .local v10, "isVisibleThumbnail":Z
    :goto_3
    iget-boolean v11, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v11, :cond_3

    if-eqz v7, :cond_3

    .line 197
    goto :goto_4

    .line 200
    :cond_3
    iget-boolean v11, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v11, :cond_5

    if-nez v7, :cond_4

    if-eqz v8, :cond_5

    .line 201
    :cond_4
    iget-object v11, v5, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_5

    .line 202
    iget-object v11, v5, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p2, v6, v11, v9}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v5, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 206
    :cond_5
    iget-boolean v11, p1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v11, :cond_6

    if-eqz v10, :cond_6

    .line 207
    invoke-virtual {p2, v6, v9, v9}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v9

    iput-object v9, v5, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 187
    .end local v5    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v6    # "taskKey":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .end local v7    # "isRunningTask":Z
    .end local v8    # "isVisibleTask":Z
    .end local v10    # "isVisibleThumbnail":Z
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    .end local v4    # "i":I
    :cond_7
    return-void
.end method

.method public getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    return-object v0
.end method

.method public hasTasks()Z
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 225
    :cond_1
    return v1
.end method

.method public preloadPlan(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;II)V
    .locals 45
    .param p1, "opts"    # Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;
    .param p2, "loader"    # Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    .param p3, "runningTaskId"    # I
    .param p4, "currentUserId"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 92
    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 93
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v4, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/recents/model/Task;>;"
    iget-object v5, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-nez v5, :cond_0

    .line 95
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v5

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v6

    .line 95
    move/from16 v7, p4

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRecentTasks(II)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    .line 99
    iget-object v5, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0

    .line 102
    :cond_0
    move/from16 v7, p4

    :goto_0
    iget-object v5, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/shared/recents/LockStateController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/shared/recents/LockStateController;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/shared/recents/LockStateController;->initPackageNameList(Z)V

    .line 105
    iget-object v5, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 106
    .local v5, "taskCount":I
    const/4 v8, 0x0

    move v9, v8

    .local v9, "i":I
    :goto_1
    if-ge v9, v5, :cond_c

    .line 107
    iget-object v10, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 110
    .local v10, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v11, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v11, :cond_1

    .line 112
    iget-object v11, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 114
    :goto_2
    move-object/from16 v16, v11

    goto :goto_3

    :cond_1
    iget-object v11, v10, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    goto :goto_2

    .line 115
    .local v16, "sourceComponent":Landroid/content/ComponentName;
    :goto_3
    iget-object v11, v10, Landroid/app/ActivityManager$RecentTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v11, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v11

    .line 116
    .local v11, "windowingMode":I
    new-instance v21, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v13, v10, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v15, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget v14, v10, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    iget-wide v6, v10, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    iget-boolean v12, v10, Landroid/app/ActivityManager$RecentTaskInfo;->isTopAppLocked:Z

    move/from16 v20, v12

    move-object/from16 v12, v21

    move/from16 v17, v14

    move v14, v11

    move-wide/from16 v18, v6

    invoke-direct/range {v12 .. v20}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJZ)V

    move-object/from16 v6, v21

    .line 121
    .local v6, "taskKey":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    const/4 v7, 0x5

    if-ne v11, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_4

    :cond_2
    move v7, v8

    .line 122
    .local v7, "isFreeformTask":Z
    :goto_4
    if-nez v7, :cond_3

    const/4 v12, 0x1

    goto :goto_5

    :cond_3
    move v12, v8

    .line 123
    .local v12, "isStackTask":Z
    :goto_5
    iget v13, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    move/from16 v14, p3

    if-ne v13, v14, :cond_4

    const/16 v30, 0x1

    goto :goto_6

    :cond_4
    move/from16 v30, v8

    .line 125
    .local v30, "isLaunchTarget":Z
    :goto_6
    invoke-virtual {v2, v6}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v13

    .line 126
    .local v13, "info":Landroid/content/pm/ActivityInfo;
    if-nez v13, :cond_5

    .line 127
    nop

    .line 106
    move-object/from16 v39, v3

    move/from16 v40, v5

    const/16 v17, 0x1

    goto/16 :goto_f

    .line 131
    :cond_5
    iget-boolean v15, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;->loadTitles:Z

    if-eqz v15, :cond_6

    .line 132
    iget-object v15, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v6, v15}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityTitle(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v15

    .line 133
    :goto_7
    move-object/from16 v26, v15

    goto :goto_8

    :cond_6
    const-string v15, ""

    goto :goto_7

    .line 134
    .local v26, "title":Ljava/lang/String;
    :goto_8
    iget-boolean v15, v1, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$PreloadOptions;->loadTitles:Z

    if-eqz v15, :cond_7

    .line 135
    iget-object v15, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v6, v15}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v15

    .line 136
    :goto_9
    move-object/from16 v27, v15

    goto :goto_a

    :cond_7
    const-string v15, ""

    goto :goto_9

    .line 137
    .local v27, "titleDescription":Ljava/lang/String;
    :goto_a
    if-eqz v12, :cond_8

    .line 138
    iget-object v15, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v6, v15, v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 139
    :goto_b
    move-object/from16 v24, v15

    goto :goto_c

    :cond_8
    const/4 v15, 0x0

    goto :goto_b

    .line 140
    .local v24, "icon":Landroid/graphics/drawable/Drawable;
    :goto_c
    invoke-virtual {v2, v6, v8, v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v15

    .line 142
    .local v15, "thumbnail":Lcom/android/systemui/shared/recents/model/ThumbnailData;
    iget-object v8, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v8}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v8

    .line 143
    .local v8, "activityColor":I
    iget-object v1, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2, v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v1

    .line 144
    .local v1, "backgroundColor":I
    if-eqz v13, :cond_9

    iget-object v2, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v17, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    move/from16 v32, v17

    goto :goto_d

    :cond_9
    const/16 v17, 0x1

    :cond_a
    const/16 v32, 0x0

    .line 148
    .local v32, "isSystemApp":Z
    :goto_d
    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mTmpLockedUsers:Landroid/util/SparseBooleanArray;

    move-object/from16 v39, v3

    iget v3, v10, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .end local v3    # "res":Landroid/content/res/Resources;
    .local v39, "res":Landroid/content/res/Resources;
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_b

    .line 149
    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mTmpLockedUsers:Landroid/util/SparseBooleanArray;

    iget v3, v10, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move/from16 v40, v5

    iget-object v5, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mKeyguardManager:Landroid/app/KeyguardManager;

    .end local v5    # "taskCount":I
    .local v40, "taskCount":I
    move/from16 v41, v7

    iget v7, v10, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    .end local v7    # "isFreeformTask":Z
    .local v41, "isFreeformTask":Z
    invoke-virtual {v5, v7}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_e

    .line 151
    .end local v40    # "taskCount":I
    .end local v41    # "isFreeformTask":Z
    .restart local v5    # "taskCount":I
    .restart local v7    # "isFreeformTask":Z
    :cond_b
    move/from16 v40, v5

    move/from16 v41, v7

    .end local v5    # "taskCount":I
    .end local v7    # "isFreeformTask":Z
    .restart local v40    # "taskCount":I
    .restart local v41    # "isFreeformTask":Z
    :goto_e
    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mTmpLockedUsers:Landroid/util/SparseBooleanArray;

    iget v3, v10, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 154
    .local v2, "isLocked":Z
    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/shared/recents/LockStateController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/shared/recents/LockStateController;

    move-result-object v3

    iget-object v5, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 155
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    iget v7, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 154
    invoke-virtual {v3, v5, v7}, Lcom/android/systemui/shared/recents/LockStateController;->getTaskLockState(Ljava/lang/String;I)Z

    move-result v3

    .line 159
    .local v3, "isTaskLocked":Z
    new-instance v5, Lcom/android/systemui/shared/recents/model/Task;

    iget-boolean v7, v10, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    move/from16 v42, v11

    iget-object v11, v10, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .end local v11    # "windowingMode":I
    .local v42, "windowingMode":I
    move-object/from16 v43, v13

    iget v13, v10, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    .end local v13    # "info":Landroid/content/pm/ActivityInfo;
    .local v43, "info":Landroid/content/pm/ActivityInfo;
    iget-object v14, v10, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v25, v15

    move/from16 v28, v8

    move/from16 v29, v1

    move/from16 v31, v12

    move/from16 v33, v7

    move-object/from16 v34, v11

    move/from16 v35, v13

    move-object/from16 v36, v14

    move/from16 v37, v2

    move/from16 v38, v3

    invoke-direct/range {v22 .. v38}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;ZZ)V

    .line 167
    .local v5, "task":Lcom/android/systemui/shared/recents/model/Task;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v1    # "backgroundColor":I
    .end local v2    # "isLocked":Z
    .end local v3    # "isTaskLocked":Z
    .end local v5    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v6    # "taskKey":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .end local v8    # "activityColor":I
    .end local v10    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v12    # "isStackTask":Z
    .end local v15    # "thumbnail":Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .end local v16    # "sourceComponent":Landroid/content/ComponentName;
    .end local v24    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v26    # "title":Ljava/lang/String;
    .end local v27    # "titleDescription":Ljava/lang/String;
    .end local v30    # "isLaunchTarget":Z
    .end local v32    # "isSystemApp":Z
    .end local v41    # "isFreeformTask":Z
    .end local v42    # "windowingMode":I
    .end local v43    # "info":Landroid/content/pm/ActivityInfo;
    :goto_f
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v17

    move-object/from16 v3, v39

    move/from16 v5, v40

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v7, p4

    const/4 v8, 0x0

    goto/16 :goto_1

    .line 171
    .end local v9    # "i":I
    .end local v39    # "res":Landroid/content/res/Resources;
    .end local v40    # "taskCount":I
    .local v3, "res":Landroid/content/res/Resources;
    .local v5, "taskCount":I
    :cond_c
    move-object/from16 v39, v3

    move/from16 v40, v5

    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v5    # "taskCount":I
    .restart local v39    # "res":Landroid/content/res/Resources;
    .restart local v40    # "taskCount":I
    new-instance v1, Lcom/android/systemui/shared/recents/model/TaskStack;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    .line 172
    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/shared/recents/model/TaskStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->setTasks(Ljava/util/List;Z)V

    .line 173
    return-void
.end method
