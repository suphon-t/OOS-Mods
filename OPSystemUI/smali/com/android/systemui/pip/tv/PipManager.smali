.class public Lcom/android/systemui/pip/tv/PipManager;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Lcom/android/systemui/pip/BasePipManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/tv/PipManager$MediaListener;,
        Lcom/android/systemui/pip/tv/PipManager$Listener;,
        Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static sPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private static sSettingsPackageAndClassNamePairList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClosePipRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurrentPipBounds:Landroid/graphics/Rect;

.field private mCustomActions:Landroid/content/pm/ParceledListSlice;

.field private mDefaultPipBounds:Landroid/graphics/Rect;

.field private final mHandler:Landroid/os/Handler;

.field private mImeHeightAdjustment:I

.field private mImeVisible:Z

.field private mInitialized:Z

.field private mLastOrientation:I

.field private mLastPackagesResourceGranted:[Ljava/lang/String;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/pip/tv/PipManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/pip/tv/PipManager$MediaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mMenuModePipBounds:Landroid/graphics/Rect;

.field private mPinnedStackId:I

.field private final mPinnedStackListener:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

.field private mPipBounds:Landroid/graphics/Rect;

.field private mPipComponentName:Landroid/content/ComponentName;

.field private mPipMediaController:Landroid/media/session/MediaController;

.field private mPipNotification:Lcom/android/systemui/pip/tv/PipNotification;

.field private mPipTaskId:I

.field private final mResizePinnedStackRunnable:Ljava/lang/Runnable;

.field private mResumeResizePinnedStackRunnableState:I

.field private mSettingsPipBounds:Landroid/graphics/Rect;

.field private mState:I

.field private mSuspendPipResizingReason:I

.field private mTaskStackListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    const-string v0, "PipManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    .line 114
    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    .line 115
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    .line 120
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    .line 123
    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    .line 126
    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    .line 137
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;-><init>(Lcom/android/systemui/pip/tv/PipManager;Lcom/android/systemui/pip/tv/PipManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackListener:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

    .line 139
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$1;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResizePinnedStackRunnable:Ljava/lang/Runnable;

    .line 145
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$2;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$3;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$4;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 628
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipManager$5;-><init>(Lcom/android/systemui/pip/tv/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mTaskStackListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

    .line 228
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/tv/PipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/pip/tv/PipManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/pip/tv/PipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/pip/tv/PipManager;)Landroid/app/ActivityManager$StackInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/pip/tv/PipManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "x1"    # Z

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->closePipInternal(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/pip/tv/PipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/pip/tv/PipManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "x1"    # I

    .line 64
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/pip/tv/PipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->isSettingsShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/pip/tv/PipManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "x1"    # I

    .line 64
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    return p1
.end method

.method static synthetic access$1902(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/tv/PipManager;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->handleMediaResourceGranted([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/systemui/pip/tv/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/pip/tv/PipManager;)Landroid/media/session/MediaSessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/pip/tv/PipManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "x1"    # Z

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->updatePipVisibility(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/pip/tv/PipManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->showPipMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/tv/PipManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->updateMediaController(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/tv/PipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/pip/tv/PipManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "x1"    # I

    .line 64
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/tv/PipManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mImeVisible:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/pip/tv/PipManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mImeVisible:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/pip/tv/PipManager;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/pip/tv/PipManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/tv/PipManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mImeHeightAdjustment:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/pip/tv/PipManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "x1"    # I

    .line 64
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mImeHeightAdjustment:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/pip/tv/PipManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/pip/tv/PipManager;)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mCustomActions:Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/pip/tv/PipManager;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipManager;
    .param p1, "x1"    # Landroid/content/pm/ParceledListSlice;

    .line 64
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCustomActions:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method private closePipInternal(Z)V
    .locals 5
    .param p1, "removePipStack"    # Z

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    .line 341
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    .line 342
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    .line 343
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mActiveMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 344
    if-eqz p1, :cond_0

    .line 346
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->removeStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :goto_0
    iput v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    .line 351
    goto :goto_2

    .line 350
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 347
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "PipManager"

    const-string v4, "removeStack failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 350
    :goto_1
    iput v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    throw v0

    .line 353
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_3
    if-ltz v1, :cond_1

    .line 354
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipActivityClosed()V

    .line 353
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 356
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->updatePipVisibility(Z)V

    .line 358
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/pip/tv/PipManager;
    .locals 1

    .line 745
    sget-object v0, Lcom/android/systemui/pip/tv/PipManager;->sPipManager:Lcom/android/systemui/pip/tv/PipManager;

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Lcom/android/systemui/pip/tv/PipManager;

    invoke-direct {v0}, Lcom/android/systemui/pip/tv/PipManager;-><init>()V

    sput-object v0, Lcom/android/systemui/pip/tv/PipManager;->sPipManager:Lcom/android/systemui/pip/tv/PipManager;

    .line 748
    :cond_0
    sget-object v0, Lcom/android/systemui/pip/tv/PipManager;->sPipManager:Lcom/android/systemui/pip/tv/PipManager;

    return-object v0
.end method

.method private getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;
    .locals 4

    .line 512
    const/4 v0, 0x0

    .line 514
    .local v0, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 518
    goto :goto_0

    .line 516
    :catch_0
    move-exception v1

    .line 517
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PipManager"

    const-string v3, "getStackInfo failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method private getState()I
    .locals 1

    .line 447
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    if-eqz v0, :cond_0

    .line 448
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    return v0

    .line 450
    :cond_0
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    return v0
.end method

.method private handleMediaResourceGranted([Ljava/lang/String;)V
    .locals 10
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 523
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 524
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    goto :goto_3

    .line 526
    :cond_0
    const/4 v0, 0x0

    .line 527
    .local v0, "requestedFromLastPackages":Z
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 528
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .end local v0    # "requestedFromLastPackages":Z
    .local v4, "requestedFromLastPackages":Z
    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v5, v1, v0

    .line 529
    .local v5, "packageName":Ljava/lang/String;
    array-length v6, p1

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, p1, v7

    .line 530
    .local v8, "newPackageName":Ljava/lang/String;
    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 531
    const/4 v4, 0x1

    .line 532
    goto :goto_2

    .line 529
    .end local v8    # "newPackageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 528
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    :cond_3
    move v0, v4

    .end local v4    # "requestedFromLastPackages":Z
    .restart local v0    # "requestedFromLastPackages":Z
    :cond_4
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastPackagesResourceGranted:[Ljava/lang/String;

    .line 538
    if-nez v0, :cond_5

    .line 539
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipManager;->closePip()V

    .line 542
    .end local v0    # "requestedFromLastPackages":Z
    :cond_5
    :goto_3
    return-void
.end method

.method private isSettingsShown()Z
    .locals 9

    .line 607
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v1

    .line 608
    .local v1, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 609
    return v0

    .line 614
    :cond_0
    nop

    .line 613
    nop

    .line 615
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 616
    .local v3, "topActivity":Landroid/content/ComponentName;
    sget-object v4, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 617
    .local v5, "componentName":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 618
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 619
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 620
    .local v7, "className":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 621
    :cond_1
    return v2

    .line 624
    .end local v5    # "componentName":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 625
    :cond_3
    return v0

    .line 611
    .end local v1    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "topActivity":Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 612
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PipManager"

    const-string v3, "Failed to detect top activity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    return v0
.end method

.method private loadConfigurationsAndApply(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 295
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 298
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    .line 299
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 303
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f110478

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    .line 305
    const v1, 0x7f11046c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mMenuModePipBounds:Landroid/graphics/Rect;

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->isSettingsShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mSettingsPipBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mDefaultPipBounds:Landroid/graphics/Rect;

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getPinnedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 313
    return-void
.end method

.method private showPipMenu()V
    .locals 3

    .line 465
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PipManager"

    const-string v1, "showPipMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    .line 467
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 468
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v1}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onShowPipMenu()V

    .line 467
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 470
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/pip/tv/PipMenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 472
    const-string v1, "custom_actions"

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mCustomActions:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 473
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 474
    return-void
.end method

.method private updateMediaController(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 545
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    const/4 v0, 0x0

    .line 546
    .local v0, "mediaController":Landroid/media/session/MediaController;
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 547
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 548
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    .line 551
    .local v2, "controller":Landroid/media/session/MediaController;
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    move-object v0, v2

    .line 553
    goto :goto_1

    .line 547
    .end local v2    # "controller":Landroid/media/session/MediaController;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 557
    .end local v1    # "i":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-eq v1, v0, :cond_4

    .line 558
    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    .line 559
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_2

    .line 560
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    invoke-interface {v2}, Lcom/android/systemui/pip/tv/PipManager$MediaListener;->onMediaControllerChanged()V

    .line 559
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 562
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    if-nez v1, :cond_3

    .line 563
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 566
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mClosePipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 569
    :cond_4
    :goto_3
    return-void
.end method

.method private updatePipVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 752
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setPipVisibility(Z)V

    .line 753
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/tv/PipManager$Listener;

    .line 480
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    return-void
.end method

.method public addMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    .line 494
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method public closePip()V
    .locals 1

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->closePipInternal(Z)V

    .line 337
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 758
    return-void
.end method

.method getMediaController()Landroid/media/session/MediaController;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method getPlaybackState()I
    .locals 11

    .line 584
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    .line 588
    .local v0, "state":I
    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    .line 595
    .local v2, "isPlaying":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v5

    .line 596
    .local v5, "actions":J
    const-wide/16 v7, 0x0

    if-nez v2, :cond_3

    const-wide/16 v9, 0x4

    and-long/2addr v9, v5

    cmp-long v9, v9, v7

    if-eqz v9, :cond_3

    .line 597
    return v3

    .line 598
    :cond_3
    if-eqz v2, :cond_4

    const-wide/16 v9, 0x2

    and-long/2addr v9, v5

    cmp-long v3, v9, v7

    if-eqz v3, :cond_4

    .line 599
    return v4

    .line 601
    :cond_4
    return v1

    .line 585
    .end local v0    # "state":I
    .end local v2    # "isPlaying":Z
    .end local v5    # "actions":J
    :cond_5
    :goto_2
    return v1
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .line 234
    iget-boolean v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mInitialized:Z

    .line 238
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    .line 240
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    .line 241
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 242
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mTaskStackListener:Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 243
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    sget-object v2, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 248
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f030132

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "settings":[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    .line 251
    if-eqz v2, :cond_3

    .line 252
    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 253
    const/4 v5, 0x0

    .line 254
    .local v5, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    aget-object v6, v2, v4

    const-string v7, "/"

    .line 255
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, "packageAndClassName":[Ljava/lang/String;
    array-length v7, v6

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 261
    :pswitch_0
    aget-object v7, v6, v0

    if-eqz v7, :cond_1

    aget-object v7, v6, v0

    const-string v8, "."

    .line 262
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 263
    aget-object v7, v6, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v6, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_1

    .line 258
    :pswitch_1
    aget-object v7, v6, v3

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 259
    nop

    .line 268
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 269
    sget-object v7, Lcom/android/systemui/pip/tv/PipManager;->sSettingsPackageAndClassNamePairList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 271
    :cond_2
    const-string v7, "PipManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring malformed settings name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v5    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "packageAndClassName":[Ljava/lang/String;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 278
    .end local v2    # "settings":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 279
    .local v0, "initialConfig":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mLastOrientation:I

    .line 280
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->loadConfigurationsAndApply(Landroid/content/res/Configuration;)V

    .line 282
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    const-string v4, "media_session"

    .line 283
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSessionManager;

    iput-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackListener:Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_3

    .line 287
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "PipManager"

    const-string v4, "Failed to register pinned stack listener"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3
    new-instance v2, Lcom/android/systemui/pip/tv/PipNotification;

    invoke-direct {v2, p1}, Lcom/android/systemui/pip/tv/PipNotification;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipNotification:Lcom/android/systemui/pip/tv/PipNotification;

    .line 292
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isPipShown()Z
    .locals 1

    .line 508
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method movePipToFullscreen()V
    .locals 2

    .line 364
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipTaskId:I

    .line 365
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v1}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onMoveToFullscreen()V

    .line 365
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 368
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 369
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->updatePipVisibility(Z)V

    .line 370
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 319
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/tv/PipManager;->loadConfigurationsAndApply(Landroid/content/res/Configuration;)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipNotification:Lcom/android/systemui/pip/tv/PipNotification;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipNotification;->onConfigurationChanged(Landroid/content/Context;)V

    .line 321
    return-void
.end method

.method public removeListener(Lcom/android/systemui/pip/tv/PipManager$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/tv/PipManager$Listener;

    .line 487
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 488
    return-void
.end method

.method public removeMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    .line 501
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mMediaListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 502
    return-void
.end method

.method resizePinnedStack(I)V
    .locals 9
    .param p1, "state"    # I

    .line 401
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PipManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resizePinnedStack() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    :cond_0
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 403
    .local v0, "wasStateNoPip":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    if-ltz v1, :cond_2

    .line 404
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pip/tv/PipManager$Listener;

    invoke-interface {v2}, Lcom/android/systemui/pip/tv/PipManager$Listener;->onPipResizeAboutToStart()V

    .line 403
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 406
    .end local v2    # "i":I
    :cond_2
    iget v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    if-eqz v1, :cond_4

    .line 407
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    .line 408
    sget-boolean v1, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "PipManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizePinnedStack() deferring mSuspendPipResizingReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mResumeResizePinnedStackRunnableState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mResumeResizePinnedStackRunnableState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_3
    return-void

    .line 414
    :cond_4
    iput p1, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    .line 415
    iget v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 431
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 425
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mMenuModePipBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 426
    goto :goto_2

    .line 428
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mPipBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 429
    goto :goto_2

    .line 417
    :pswitch_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    .line 420
    if-eqz v0, :cond_5

    .line 421
    return-void

    .line 435
    :cond_5
    :goto_2
    const/4 v1, -0x1

    .line 436
    .local v1, "animationDurationMs":I
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget v3, p0, Lcom/android/systemui/pip/tv/PipManager;->mPinnedStackId:I

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipManager;->mCurrentPipBounds:Landroid/graphics/Rect;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move v8, v1

    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .end local v1    # "animationDurationMs":I
    goto :goto_3

    .line 438
    :catch_0
    move-exception v1

    .line 439
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PipManager"

    const-string v3, "resizeStack failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resumePipResizing(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 387
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 388
    return-void

    .line 390
    :cond_0
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "PipManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumePipResizing() reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 391
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    .line 393
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipManager;->mResizePinnedStackRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 2

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipManager;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 328
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipManager;->resizePinnedStack(I)V

    .line 330
    :cond_0
    return-void
.end method

.method public suspendPipResizing(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 377
    sget-boolean v0, Lcom/android/systemui/pip/tv/PipManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PipManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "suspendPipResizing() reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 378
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    iget v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/pip/tv/PipManager;->mSuspendPipResizingReason:I

    .line 380
    return-void
.end method
