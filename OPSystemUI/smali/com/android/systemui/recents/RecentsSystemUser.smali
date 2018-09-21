.class public Lcom/android/systemui/recents/RecentsSystemUser;
.super Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;
.source "RecentsSystemUser.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImpl:Lcom/android/systemui/recents/RecentsImpl;

.field private final mNonSystemUserRecents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "impl"    # Lcom/android/systemui/recents/RecentsImpl;

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mNonSystemUserRecents:Landroid/util/SparseArray;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/RecentsSystemUser;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsSystemUser;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mNonSystemUserRecents:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static synthetic lambda$startScreenPinning$1(Lcom/android/systemui/recents/RecentsSystemUser;I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 92
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/recents/RecentsImpl;->onStartScreenPinning(Landroid/content/Context;I)V

    .line 93
    return-void
.end method

.method public static synthetic lambda$updateRecentsVisibility$0(Lcom/android/systemui/recents/RecentsSystemUser;Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 85
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/recents/RecentsImpl;->onVisibilityChanged(Landroid/content/Context;Z)V

    .line 86
    return-void
.end method


# virtual methods
.method public getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    .locals 1
    .param p1, "userId"    # I

    .line 79
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mNonSystemUserRecents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    return-object v0
.end method

.method public registerNonSystemUserCallbacks(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "nonSystemUserCallbacks"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .line 59
    nop

    .line 60
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 61
    .local v0, "callback":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    new-instance v1, Lcom/android/systemui/recents/RecentsSystemUser$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/systemui/recents/RecentsSystemUser$1;-><init>(Lcom/android/systemui/recents/RecentsSystemUser;Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;I)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 70
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mNonSystemUserRecents:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    const v1, 0x8cdc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 71
    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "callback":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RecentsSystemUser"

    const-string v2, "Failed to register NonSystemUserCallbacks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public sendDockedFirstAnimationFrameEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 114
    return-void
.end method

.method public sendDockingTopTaskEvent(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "dragMode"    # I
    .param p2, "initialRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 104
    return-void
.end method

.method public sendLaunchRecentsEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 109
    return-void
.end method

.method public sendRecentsDrawnEvent()V
    .locals 2

    .line 98
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 99
    return-void
.end method

.method public setWaitingForTransitionStartEvent(Z)V
    .locals 2
    .param p1, "waitingForTransitionStart"    # Z

    .line 118
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/component/SetWaitingForTransitionStartEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 120
    return-void
.end method

.method public startScreenPinning(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 91
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$RecentsSystemUser$RuMGq01oJynKESbiTF6h02bxcQ4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$RecentsSystemUser$RuMGq01oJynKESbiTF6h02bxcQ4;-><init>(Lcom/android/systemui/recents/RecentsSystemUser;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method

.method public updateRecentsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 84
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$RecentsSystemUser$mq7gzWWE-rKCOgjCgOrRqm6b0eU;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/-$$Lambda$RecentsSystemUser$mq7gzWWE-rKCOgjCgOrRqm6b0eU;-><init>(Lcom/android/systemui/recents/RecentsSystemUser;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method
