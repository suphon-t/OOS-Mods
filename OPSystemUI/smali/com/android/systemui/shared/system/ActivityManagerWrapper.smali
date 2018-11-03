.class public Lcom/android/systemui/shared/system/ActivityManagerWrapper;
.super Ljava/lang/Object;
.source "ActivityManagerWrapper.java"


# static fields
.field private static sCurrentDockedPackageName:Ljava/lang/String;

.field private static sCurrentInputMethodPackageName:Ljava/lang/String;

.field private static sCurrentLauncherPackageName:Ljava/lang/String;

.field private static sCurrentWallpaperPackageName:Ljava/lang/String;

.field private static final sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;


# instance fields
.field mAm:Landroid/app/ActivityManager;

.field mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

.field mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 477
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sCurrentInputMethodPackageName:Ljava/lang/String;

    .line 478
    sput-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sCurrentLauncherPackageName:Ljava/lang/String;

    .line 479
    sput-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sCurrentWallpaperPackageName:Ljava/lang/String;

    .line 480
    sput-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sCurrentDockedPackageName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 99
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 100
    invoke-static {}, Lcom/android/systemui/shared/system/BackgroundExecutor;->get()Lcom/android/systemui/shared/system/BackgroundExecutor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

    .line 101
    new-instance v1, Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 104
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 105
    const-class v1, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManager;

    iput-object v1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 106
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 107
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mAm:Landroid/app/ActivityManager;

    .line 109
    return-void
.end method

.method private getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 217
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    :cond_0
    return-object p1
.end method

.method public static getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .locals 1

    .line 112
    sget-object v0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-object v0
.end method


# virtual methods
.method public cancelWindowTransition(I)V
    .locals 4
    .param p1, "taskId"    # I

    .line 423
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->cancelTaskWindowTransition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManagerWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cancel window transition for task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public closeSystemWindows(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

    new-instance v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$6;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 400
    return-void
.end method

.method public getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .line 184
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedApplicationLabel(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;
    .locals 1
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .line 191
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I
    .param p3, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 201
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    .local v0, "activityLabel":Ljava/lang/String;
    goto :goto_0

    .line 204
    .end local v0    # "activityLabel":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .restart local v0    # "activityLabel":Ljava/lang/String;
    :goto_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "applicationLabel":Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getBadgedLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "badgedApplicationLabel":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    nop

    .line 208
    move-object v3, v2

    goto :goto_1

    .line 210
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    :goto_1
    return-object v3
.end method

.method public getCurrentUserId()I
    .locals 2

    .line 121
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 122
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 123
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRecentTasks(II)Ljava/util/List;
    .locals 3
    .param p1, "numTasks"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 155
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    return-object v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityManagerWrapper"

    const-string v2, "Failed to get recent tasks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    .line 132
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTask(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4
    .param p1, "ignoreActivityType"    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param

    .line 139
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {v1, v2, p1, v3}, Landroid/app/IActivityManager;->getFilteredTasks(III)Ljava/util/List;

    move-result-object v1

    .line 141
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    return-object v0

    .line 144
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 145
    .end local v1    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Landroid/os/RemoteException;
    return-object v0
.end method

.method public getTaskThumbnail(IZ)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "reducedResolution"    # Z

    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 172
    goto :goto_0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ActivityManagerWrapper"

    const-string v3, "Failed to retrieve task snapshot"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v0, :cond_0

    .line 174
    new-instance v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v1, v0}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/app/ActivityManager$TaskSnapshot;)V

    return-object v1

    .line 176
    :cond_0
    new-instance v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-direct {v1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>()V

    return-object v1
.end method

.method public isLockToAppActive()Z
    .locals 2

    .line 453
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getLockTaskModeState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 454
    :catch_0
    move-exception v1

    .line 455
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public isScreenPinningActive()Z
    .locals 3

    .line 434
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getLockTaskModeState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 435
    :catch_0
    move-exception v1

    .line 436
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public isScreenPinningEnabled()Z
    .locals 3

    .line 444
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 445
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "lock_to_app_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 371
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    monitor-enter v0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->addListener(Landroid/app/IActivityManager;Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 373
    monitor-exit v0

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeTask(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 406
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

    new-instance v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$7;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 416
    return-void
.end method

.method public startActivityFromRecents(ILandroid/app/ActivityOptions;)Z
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 358
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 359
    .local v0, "optsBundle":Landroid/os/Bundle;
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    const/4 v1, 0x1

    return v1

    .line 361
    .end local v0    # "optsBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 8
    .param p1, "taskKey"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "windowingMode"    # I
    .param p4, "activityType"    # I
    .param p6, "resultCallbackHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Landroid/app/ActivityOptions;",
            "II",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 312
    .local p5, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 315
    if-nez p2, :cond_0

    .line 316
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    .line 318
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    goto :goto_0

    .line 319
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_4

    .line 321
    :cond_2
    if-nez p2, :cond_3

    .line 322
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    .line 324
    :cond_3
    invoke-virtual {p2, p3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 325
    invoke-virtual {p2, p4}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 327
    :cond_4
    :goto_0
    move-object v3, p2

    .line 331
    .local v3, "finalOptions":Landroid/app/ActivityOptions;
    iget-object v6, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mBackgroundExecutor:Lcom/android/systemui/shared/system/BackgroundExecutor;

    new-instance v7, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/system/ActivityManagerWrapper$5;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/shared/system/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 351
    return-void
.end method

.method public startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 7
    .param p1, "taskKey"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p4, "resultCallbackHandler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Landroid/app/ActivityOptions;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 299
    .local p3, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecentsAsync(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;IILjava/util/function/Consumer;Landroid/os/Handler;)V

    .line 301
    return-void
.end method

.method public unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 381
    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    monitor-enter v0

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-virtual {v1, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->removeListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 383
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
