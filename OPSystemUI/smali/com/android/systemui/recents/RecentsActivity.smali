.class public Lcom/android/systemui/recents/RecentsActivity;
.super Landroid/app/Activity;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;
    }
.end annotation


# instance fields
.field private mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mFinishedOnStartup:Z

.field private mHandler:Landroid/os/Handler;

.field private mHomeIntent:Landroid/content/Intent;

.field private mIgnoreAltTabRelease:Z

.field private mIncompatibleAppOverlay:Landroid/view/View;

.field private mIsVisible:Z

.field private mLastConfig:Landroid/content/res/Configuration;

.field private mLastTabKeyEventTime:J

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRecentsStartRequested:Z

.field private mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field private mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

.field private mUsingDarkText:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 115
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$1;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    .line 194
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$2;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$3;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/views/RecentsView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsActivity;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    return-object v0
.end method

.method private reloadStackView()V
    .locals 12

    .line 421
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 422
    .local v0, "loader":Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v1

    .line 423
    .local v1, "loadPlan":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    if-nez v1, :cond_0

    .line 424
    new-instance v2, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-direct {v2, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 428
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    .line 429
    .local v2, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    .line 430
    .local v3, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v4

    if-nez v4, :cond_1

    .line 431
    iget v4, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    .line 434
    :cond_1
    new-instance v4, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 435
    .local v4, "loadOpts":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;
    iget v5, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput v5, v4, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 436
    iget v5, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iput v5, v4, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 437
    iget v5, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    iput v5, v4, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 438
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 439
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v5

    .line 440
    .local v5, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    invoke-virtual {v6, v5, v7}, Lcom/android/systemui/recents/views/RecentsView;->onReload(Lcom/android/systemui/shared/recents/model/TaskStack;Z)V

    .line 443
    iget-boolean v6, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    .line 444
    .local v6, "animateNavBarScrim":Z
    iget-object v8, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    const/4 v10, 0x0

    if-lez v9, :cond_2

    move v9, v7

    goto :goto_0

    :cond_2
    move v9, v10

    :goto_0
    const/4 v11, 0x0

    invoke-virtual {v8, v6, v9, v11}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->updateNavBarScrim(ZZLcom/android/systemui/shared/recents/utilities/AnimationProps;)V

    .line 448
    iget-boolean v8, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v8, :cond_3

    iget-boolean v8, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-nez v8, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v10

    .line 450
    .local v8, "wasLaunchedByAm":Z
    :goto_1
    if-eqz v8, :cond_4

    .line 451
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v9

    new-instance v11, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v11}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v9, v11}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 455
    :cond_4
    iget-boolean v9, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v9, :cond_5

    .line 456
    const-string v9, "overview_trigger_alttab"

    invoke-static {p0, v9, v7}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 458
    :cond_5
    const-string v9, "overview_trigger_nav_btn"

    invoke-static {p0, v9, v7}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 462
    :goto_2
    iget-boolean v9, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v9, :cond_7

    .line 463
    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v9

    .line 464
    .local v9, "launchTarget":Lcom/android/systemui/shared/recents/model/Task;
    if-eqz v9, :cond_6

    .line 465
    invoke-virtual {v5, v9}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v10

    goto :goto_3

    .line 466
    :cond_6
    nop

    .line 467
    .local v10, "launchTaskIndexInStack":I
    :goto_3
    const-string v11, "overview_source_app"

    invoke-static {p0, v11, v7}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 469
    const-string v11, "overview_source_app_index"

    invoke-static {p0, v11, v10}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 470
    .end local v9    # "launchTarget":Lcom/android/systemui/shared/recents/model/Task;
    .end local v10    # "launchTaskIndexInStack":I
    goto :goto_4

    .line 471
    :cond_7
    const-string v9, "overview_source_home"

    invoke-static {p0, v9, v7}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 475
    :goto_4
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    .line 476
    .local v9, "taskCount":I
    const-string v10, "overview_task_count"

    invoke-static {p0, v10, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 479
    iput-boolean v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    .line 480
    return-void
.end method

.method private reloadTaskStack(ZZ)V
    .locals 13
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "sendConfigChangedEvent"    # Z

    .line 811
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 812
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 813
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 814
    .local v2, "loader":Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    new-instance v3, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    invoke-direct {v3, p0}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;)V

    .line 815
    .local v3, "loadPlan":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;
    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;I)V

    .line 817
    new-instance v4, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 818
    .local v4, "loadOpts":Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;
    iget v5, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iput v5, v4, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 819
    iget v5, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    iput v5, v4, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 820
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->loadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 822
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v5

    .line 823
    .local v5, "stack":Lcom/android/systemui/shared/recents/model/TaskStack;
    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    .line 824
    .local v6, "numStackTasks":I
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v8

    .line 826
    .local v9, "showDeferredAnimation":Z
    :goto_0
    if-eqz p2, :cond_2

    .line 827
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    if-lez v6, :cond_1

    move v12, v7

    goto :goto_1

    :cond_1
    move v12, v8

    :goto_1
    invoke-direct {v11, v7, v8, v8, v12}, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;-><init>(ZZZZ)V

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 831
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    invoke-direct {v8, p1, v9, v5}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;-><init>(ZZLcom/android/systemui/shared/recents/model/TaskStack;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 833
    return-void
.end method


# virtual methods
.method dismissRecentsToFocusedTaskOrHome()Z
    .locals 3

    .line 257
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 258
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 262
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 263
    return v2

    .line 265
    :cond_1
    return v2
.end method

.method dismissRecentsToHome(Z)V
    .locals 1
    .param p1, "animateTaskViews"    # Z

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(ZLandroid/app/ActivityOptions;)V

    .line 273
    return-void
.end method

.method dismissRecentsToHome(ZLandroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "animateTaskViews"    # Z
    .param p2, "overrideAnimation"    # Landroid/app/ActivityOptions;

    .line 282
    new-instance v0, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;-><init>(Z)V

    .line 284
    .local v0, "dismissEvent":Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;
    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v1, p0, v2, p2}, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 286
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 288
    return-void
.end method

.method dismissRecentsToHomeIfVisible(Z)Z
    .locals 2
    .param p1, "animated"    # Z

    .line 292
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 293
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 296
    const/4 v1, 0x1

    return v1

    .line 298
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToLaunchTargetTaskOrHome()Z
    .locals 3

    .line 243
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 244
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 248
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 250
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 848
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 849
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/systemui/recents/events/EventBus;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 850
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 852
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "RecentsActivity"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 855
    const-string v1, " visible="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v1, :cond_0

    const-string v1, "Y"

    goto :goto_0

    :cond_0
    const-string v1, "N"

    :goto_0
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 856
    const-string v1, " currentTime="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 857
    const-string v1, " [0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "]"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 860
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v1, :cond_1

    .line 861
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/views/RecentsView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 863
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 578
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 579
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 580
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 653
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 654
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    .line 703
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 704
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 705
    .local v1, "launchToTaskId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq v1, v2, :cond_1

    .line 707
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    .line 708
    .local v2, "am":Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    iget v3, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->cancelWindowTransition(I)V

    .line 710
    .end local v2    # "am":Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;

    .line 698
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 699
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 700
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    .line 797
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 798
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 799
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;

    .line 688
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 689
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 690
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;

    .line 693
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 694
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 695
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideRecentsEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    .line 672
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    if-eqz v0, :cond_0

    .line 674
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    if-nez v0, :cond_1

    .line 675
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome()Z

    goto :goto_0

    .line 677
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromHomeKey:Z

    if-eqz v0, :cond_1

    .line 678
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 681
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 685
    :cond_1
    :goto_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    .line 781
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 783
    const-string v1, "overview_task_launch_failed"

    invoke-static {p0, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 784
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    .line 776
    const-string v0, "overview_task_launch_index"

    iget v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;->taskIndexFromStackFront:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 777
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsStartRequested:Z

    .line 669
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    .line 659
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 660
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v1, :cond_0

    .line 661
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToLaunchTargetTaskOrHome()Z

    .line 665
    :goto_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ActivityUnpinnedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ActivityUnpinnedEvent;

    .line 802
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recents/RecentsActivity;->reloadTaskStack(ZZ)V

    .line 807
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;

    .line 787
    const-string v0, "overview_screen_pinned"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 788
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .line 763
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 764
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget v2, p1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->msgResId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->showEmptyView(I)V

    goto :goto_0

    .line 768
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 772
    :goto_0
    const-string v1, "overview_task_all_dismissed"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 773
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    .line 751
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 752
    .local v0, "loader":Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/shared/recents/model/Task;Z)V

    .line 755
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    .line 756
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;

    .line 740
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 742
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 743
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 744
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 747
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    .line 714
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 715
    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 716
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 717
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 718
    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v4, v2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)I

    .line 722
    const-string v1, "overview_app_info"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 723
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;

    .line 726
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    if-nez v0, :cond_0

    .line 727
    const v0, 0x7f0a01b2

    invoke-static {p0, v0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->findViewStubById(Landroid/app/Activity;I)Landroid/view/ViewStub;

    move-result-object v0

    .line 728
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    .line 729
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 730
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 733
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 734
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 735
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 737
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    .line 793
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 794
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;

    .line 759
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->updateScrimOpacity()V

    .line 760
    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 4
    .param p1, "colorExtractor"    # Lcom/android/internal/colorextraction/ColorExtractor;
    .param p2, "which"    # I

    .line 398
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(IIZ)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    .line 404
    .local v0, "colors":Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    .line 405
    .local v2, "darkText":Z
    iget-boolean v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mUsingDarkText:Z

    if-eq v2, v3, :cond_1

    .line 406
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mUsingDarkText:Z

    .line 407
    iget-boolean v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mUsingDarkText:Z

    if-eqz v3, :cond_0

    const v3, 0x7f1202f9

    goto :goto_0

    .line 408
    :cond_0
    const v3, 0x7f1202f8

    .line 407
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/RecentsActivity;->setTheme(I)V

    .line 409
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->reevaluateStyles()V

    .line 411
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setScrimColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 413
    .end local v0    # "colors":Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .end local v2    # "darkText":Z
    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 507
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 510
    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 511
    .local v0, "newDeviceConfiguration":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    .line 512
    .local v1, "numStackTasks":I
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    iget v8, v0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v5, v8, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :goto_2
    invoke-direct {v3, v7, v4, v5, v6}, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;-><init>(ZZZZ)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 516
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 517
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 304
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    .line 309
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 310
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 311
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    .line 313
    return-void

    .line 317
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v3}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 320
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p0, v3, v4, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 324
    const-class v2, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 325
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v2, p0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 326
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v2, v1, v1, v1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(IIZ)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mUsingDarkText:Z

    .line 328
    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mUsingDarkText:Z

    if-eqz v2, :cond_1

    const v2, 0x7f1202f9

    goto :goto_0

    .line 329
    :cond_1
    const v2, 0x7f1202f8

    .line 328
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->setTheme(I)V

    .line 332
    const v2, 0x7f0d01a9

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->setContentView(I)V

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->takeKeyEvents(Z)V

    .line 334
    const v1, 0x7f0a0355

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 335
    new-instance v1, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 338
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isLowRamDevice:Z

    if-eqz v1, :cond_2

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 342
    :cond_2
    new-instance v1, Landroid/content/res/Configuration;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastConfig:Landroid/content/res/Configuration;

    .line 345
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->updateBackgroundScrim(Landroid/view/Window;Z)V

    .line 348
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    .line 349
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 354
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 355
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 360
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 560
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 563
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    if-eqz v0, :cond_0

    .line 564
    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 571
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 573
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 584
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 585
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 586
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 3

    .line 484
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 485
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 490
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 491
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 598
    const/16 v0, 0x3d

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x43

    if-eq p1, v0, :cond_0

    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 624
    :pswitch_0
    invoke-static {p1}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;->getDirectionFromKeyCode(I)Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;

    move-result-object v0

    .line 625
    .local v0, "direction":Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;

    invoke-direct {v3, v0}, Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent;-><init>(Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 626
    return v2

    .line 630
    .end local v0    # "direction":Lcom/android/systemui/recents/events/ui/focus/NavigateTaskViewEvent$Direction;
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 631
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;-><init>()V

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 634
    const-string v0, "overview_task_dismissed_source"

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 636
    return v2

    .line 642
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 600
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b007e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 601
    .local v0, "altTabKeyDelay":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    sub-long/2addr v3, v5

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    .line 603
    .local v3, "hasRepKeyTimeElapsed":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_4

    if-eqz v3, :cond_6

    .line 605
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    .line 606
    .local v4, "backward":Z
    if-eqz v4, :cond_5

    .line 607
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    invoke-direct {v6}, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_2

    .line 609
    :cond_5
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v6}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 611
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    .line 614
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 615
    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 618
    .end local v4    # "backward":Z
    :cond_6
    return v2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z

    .line 521
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 524
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/recents/views/RecentsView;->updateBackgroundScrim(Landroid/view/Window;Z)V

    .line 528
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 529
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/RecentsActivity;->reloadTaskStack(ZZ)V

    .line 531
    :cond_0
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 842
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onPackageChanged(Ljava/lang/String;)V

    .line 843
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 844
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 500
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 503
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 838
    const/4 v0, 0x1

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .line 495
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onStart()V
    .locals 4

    .line 364
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 367
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->reloadStackView()V

    .line 370
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 371
    const/16 v0, 0xe0

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getColors(IIZ)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    .line 378
    .local v0, "systemColors":Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/recents/views/RecentsView;->setScrimColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 381
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 386
    .local v1, "isRelaunching":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    .line 388
    .local v3, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iput-boolean v2, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 389
    iput-boolean v2, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    .line 390
    iput-boolean v2, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->onEnterAnimationComplete()V

    .line 393
    .end local v3    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsStartRequested:Z

    .line 394
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 535
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    .line 539
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 540
    const/16 v1, 0xe0

    invoke-static {p0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 541
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->getHighResThumbnailLoader()Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/model/HighResThumbnailLoader;->setVisible(Z)V

    .line 545
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsStartRequested:Z

    if-nez v0, :cond_0

    .line 549
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 550
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 551
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->reset()V

    .line 555
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->gc()V

    .line 556
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 590
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 591
    .local v0, "loader":Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 594
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .line 647
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 648
    return-void
.end method
