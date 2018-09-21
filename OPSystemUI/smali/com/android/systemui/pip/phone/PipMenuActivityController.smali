.class public Lcom/android/systemui/pip/phone/PipMenuActivityController;
.super Ljava/lang/Object;
.source "PipMenuActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;
    }
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAppActions:Landroid/content/pm/ParceledListSlice;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

.field private mMediaActions:Landroid/content/pm/ParceledListSlice;

.field private mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

.field private mMenuState:I

.field private mMessenger:Landroid/os/Messenger;

.field private mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

.field private mStartActivityRequested:Z

.field private mStartActivityRequestedTime:J

.field private mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

.field private mTmpDismissFractionData:Landroid/os/Bundle;

.field private mToActivityMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMediaController;Lcom/android/systemui/shared/system/InputConsumerController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "mediaController"    # Lcom/android/systemui/pip/phone/PipMediaController;
    .param p4, "inputConsumerController"    # Lcom/android/systemui/shared/system/InputConsumerController;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    .line 137
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    .line 186
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMessenger:Landroid/os/Messenger;

    .line 188
    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$46Yr3xVHMZsGyZiGhSKF_IPBnzk;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$46Yr3xVHMZsGyZiGhSKF_IPBnzk;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

    .line 197
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    .line 207
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    .line 208
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mActivityManager:Landroid/app/IActivityManager;

    .line 209
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    .line 210
    iput-object p4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    .line 212
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onMenuStateChanged(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/shared/system/InputConsumerController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/phone/PipMenuActivityController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "x1"    # Z

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "x1"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "x1"    # Landroid/content/pm/ParceledListSlice;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActions:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->updateMenuActions()V

    return-void
.end method

.method private isStartActivityRequestedElapsed()Z
    .locals 4

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidActions(Landroid/content/pm/ParceledListSlice;)Z
    .locals 1
    .param p1, "actions"    # Landroid/content/pm/ParceledListSlice;

    .line 453
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V
    .locals 2

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 194
    :cond_0
    const-string v0, "PipMenuActController"

    const-string v1, "Expected start menu activity request timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method static synthetic lambda$onMenuStateChanged$1(IZLcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0
    .param p0, "menuState"    # I
    .param p1, "resize"    # Z
    .param p2, "l"    # Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    .line 478
    invoke-interface {p2, p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipMenuStateChanged(IZ)V

    return-void
.end method

.method private onMenuStateChanged(IZ)V
    .locals 2
    .param p1, "menuState"    # I
    .param p2, "resize"    # Z

    .line 472
    if-nez p1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputConsumerController;->registerInputConsumer()V

    goto :goto_0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputConsumerController;->unregisterInputConsumer()V

    .line 477
    :goto_0
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    if-eq p1, v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$oZuzXTzYX29YiUgUX8-q8QZcGtw;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$oZuzXTzYX29YiUgUX8-q8QZcGtw;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 479
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipMediaController;->addListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V

    goto :goto_1

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipMediaController;->removeListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V

    .line 489
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    .line 490
    return-void
.end method

.method private resolveMenuActions()Landroid/content/pm/ParceledListSlice;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isValidActions(Landroid/content/pm/ParceledListSlice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    return-object v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActions:Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method private setStartActivityRequested(Z)V
    .locals 2
    .param p1, "requested"    # Z

    .line 493
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 494
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    .line 495
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTime:J

    .line 496
    return-void
.end method

.method private startMenuActivity(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 8
    .param p1, "menuState"    # I
    .param p2, "stackBounds"    # Landroid/graphics/Rect;
    .param p3, "movementBounds"    # Landroid/graphics/Rect;
    .param p4, "allowMenuTimeout"    # Z
    .param p5, "willResizeMenu"    # Z

    .line 387
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 389
    .local v1, "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v2, v2

    if-lez v2, :cond_2

    .line 391
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "messenger"

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 393
    const-string v3, "actions"

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->resolveMenuActions()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 394
    if-eqz p2, :cond_0

    .line 395
    const-string v3, "stack_bounds"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 397
    :cond_0
    if-eqz p3, :cond_1

    .line 398
    const-string v3, "movement_bounds"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 400
    :cond_1
    const-string v3, "menu_state"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    const-string v3, "allow_timeout"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 402
    const-string v3, "resize_menu_on_show"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 404
    .local v3, "options":Landroid/app/ActivityOptions;
    iget-object v4, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v5, v1, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 406
    invoke-virtual {v3, v6, v6}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 407
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 408
    invoke-direct {p0, v6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    .line 409
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "options":Landroid/app/ActivityOptions;
    goto :goto_0

    .line 410
    :cond_2
    const-string v2, "PipMenuActController"

    const-string v3, "No PIP tasks found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v1    # "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    :goto_0
    goto :goto_1

    .line 412
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    .line 414
    const-string v0, "PipMenuActController"

    const-string v2, "Error showing PIP menu activity"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private updateMenuActions()V
    .locals 6

    .line 422
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 424
    const/4 v0, 0x0

    .line 426
    .local v0, "stackBounds":Landroid/graphics/Rect;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 428
    .local v1, "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v1, :cond_0

    .line 429
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 433
    .end local v1    # "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_0
    goto :goto_0

    .line 431
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PipMenuActController"

    const-string v3, "Error showing PIP menu activity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 436
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "stack_bounds"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 437
    const-string v2, "actions"

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->resolveMenuActions()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 438
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 439
    .local v2, "m":Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    .line 440
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 442
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 445
    goto :goto_1

    .line 443
    :catch_1
    move-exception v3

    .line 444
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "PipMenuActController"

    const-string v5, "Could not notify menu activity to update actions"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v0    # "stackBounds":Landroid/graphics/Rect;
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v2    # "m":Landroid/os/Message;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PipMenuActController"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mMenuState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mToActivityMessenger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mListeners="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mStartActivityRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mStartActivityRequestedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public hideMenu()V
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 344
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 345
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    goto :goto_0

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PipMenuActController"

    const-string v3, "Could not notify menu to hide"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    .end local v0    # "m":Landroid/os/Message;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public hideMenuWithoutResize()V
    .locals 1

    .line 360
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onMenuStateChanged(IZ)V

    .line 361
    return-void
.end method

.method public isMenuActivityVisible()Z
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityPinned()V
    .locals 1

    .line 220
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputConsumerController;->registerInputConsumer()V

    .line 225
    :cond_0
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenu()V

    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    .line 230
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    .line 499
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 503
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 511
    :cond_0
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 236
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PipMenuActController"

    const-string v3, "Could not notify menu pinned animation ended"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v0    # "m":Landroid/os/Message;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public pokeMenu()V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 325
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PipMenuActController"

    const-string v3, "Could not notify poke menu"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    .end local v0    # "m":Landroid/os/Message;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setAppActions(Landroid/content/pm/ParceledListSlice;)V
    .locals 0
    .param p1, "appActions"    # Landroid/content/pm/ParceledListSlice;

    .line 367
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->updateMenuActions()V

    .line 369
    return-void
.end method

.method public setDismissFraction(F)V
    .locals 7
    .param p1, "fraction"    # F

    .line 262
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    const-string v1, "dismiss_fraction"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 265
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 266
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 267
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    goto :goto_0

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PipMenuActController"

    const-string v3, "Could not notify menu to update dismiss fraction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    .end local v0    # "m":Landroid/os/Message;
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isStartActivityRequestedElapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->startMenuActivity(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 280
    :cond_2
    :goto_1
    return-void
.end method

.method public showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 5
    .param p1, "menuState"    # I
    .param p2, "stackBounds"    # Landroid/graphics/Rect;
    .param p3, "movementBounds"    # Landroid/graphics/Rect;
    .param p4, "allowMenuTimeout"    # Z
    .param p5, "willResizeMenu"    # Z

    .line 293
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 295
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "menu_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    const-string v1, "stack_bounds"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 297
    const-string v1, "movement_bounds"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 298
    const-string v1, "allow_timeout"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    const-string v1, "resize_menu_on_show"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 301
    .local v1, "m":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 302
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    goto :goto_0

    .line 305
    :catch_0
    move-exception v2

    .line 306
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PipMenuActController"

    const-string v4, "Could not notify menu to show"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "m":Landroid/os/Message;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isStartActivityRequestedElapsed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->startMenuActivity(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 314
    :cond_2
    :goto_1
    return-void
.end method
